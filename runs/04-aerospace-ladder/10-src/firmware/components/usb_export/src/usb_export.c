/* usb_export.c — MrtmSwDetail::UsbExportApi. IEC 62304 §5.5.1, Class C.
 * One FAT12 volume, one read-only file HISTORY.CSV. Boot sector, FAT and directory are computed,
 * data sectors are CSV lines rendered on demand from the history (oldest first, newest last). */
#include <stdio.h>
#include <string.h>
#include "usb_export.h"
#include "mrtm_hal.h"

#define LBA_FAT 1u
#define LBA_ROOT (LBA_FAT + USB_FAT_SECTORS)
#define LBA_DATA (LBA_ROOT + 1u)

static const history_ring_t *ring;

static uint32_t file_bytes(void) { return (history_ring_count(ring) + 1u) * USB_LINE; }
static uint32_t file_clusters(void) { return (file_bytes() + USB_BLOCK - 1u) / USB_BLOCK; }

static void put16(uint8_t *p, uint16_t v) { p[0] = (uint8_t)v; p[1] = (uint8_t)(v >> 8); }
static void put32(uint8_t *p, uint32_t v) { put16(p, (uint16_t)v); put16(p + 2, (uint16_t)(v >> 16)); }

static uint16_t fat_entry(uint32_t k)
{
    uint32_t n = file_clusters();
    if (k == 0) return 0xFF8;
    if (k == 1) return 0xFFF;
    if (k < 2 || k >= 2 + n) return 0;
    return k == 1 + n ? 0xFFF : (uint16_t)(k + 1);   /* a chain 2 -> 3 -> ... -> end */
}

static void render_line(uint32_t line, char out[USB_LINE + 1])
{
    event_record_t r;
    uint32_t count = history_ring_count(ring);
    if (line == 0) snprintf(out, USB_LINE + 1, "%-46s\r\n", "seq,utc_s,kind,tenths,peak_tenths");
    else if (history_ring_read(ring, count - line, &r) != MRTM_OK) snprintf(out, USB_LINE + 1, "%-46s\r\n", "CORRUPT");
    else {
        char body[USB_LINE - 1];
        snprintf(body, sizeof body, "%010lu,%010lu,%02u,%+06d,%+06d", (unsigned long)r.seq,
                 (unsigned long)r.utc_s, (unsigned)r.kind, (int)r.tenths, (int)r.peak_tenths);
        snprintf(out, USB_LINE + 1, "%-46s\r\n", body);
    }
}

static void sector(uint32_t lba, uint8_t s[USB_BLOCK])
{
    memset(s, 0, USB_BLOCK);
    if (lba == 0) {                                       /* boot sector + BPB */
        memcpy(s, "\xEB\x3C\x90MRTM1.0 ", 11);
        put16(s + 11, USB_BLOCK); s[13] = 1; put16(s + 14, 1); s[16] = 1; put16(s + 17, 16);
        put16(s + 19, USB_TOTAL_SECTORS); s[21] = 0xF8; put16(s + 22, USB_FAT_SECTORS);
        put16(s + 24, 1); put16(s + 26, 1); s[36] = 0x80; s[38] = 0x29; put32(s + 39, 0x4D52544Du);
        memcpy(s + 43, "MRTM LOG   FAT12   ", 19);
        s[510] = 0x55; s[511] = 0xAA;
    } else if (lba < LBA_ROOT) {                          /* FAT12: 3 bytes carry 2 entries */
        for (uint32_t i = 0; i < USB_BLOCK; i++) {
            uint32_t o = (lba - LBA_FAT) * USB_BLOCK + i, e = (o / 3u) * 2u;
            uint16_t lo = fat_entry(e), hi = fat_entry(e + 1);
            s[i] = (uint8_t)(o % 3 == 0 ? lo : o % 3 == 1 ? ((lo >> 8) & 0x0F) | ((hi & 0x0F) << 4) : hi >> 4);
        }
    } else if (lba == LBA_ROOT) {                         /* one entry: HISTORY.CSV, read-only */
        memcpy(s, "HISTORY CSV", 11);
        s[11] = 0x01;                                     /* ATTR_READ_ONLY (MRTM-SYS-014) */
        put16(s + 26, 2); put32(s + 28, file_bytes());
    } else {                                              /* data: CSV lines, 48 bytes each */
        uint32_t base = (lba - LBA_DATA) * USB_BLOCK, lines = history_ring_count(ring) + 1u;
        char line[USB_LINE + 1];
        uint32_t cached = UINT32_MAX;
        for (uint32_t i = 0; i < USB_BLOCK; i++) {
            uint32_t at = base + i, n = at / USB_LINE;
            if (n >= lines) break;
            if (n != cached) { render_line(n, line); cached = n; }
            s[i] = (uint8_t)line[at % USB_LINE];
        }
    }
}

/* @implements MRTM-LLR-043 */
mrtm_err_t usb_export_init(const history_ring_t *r)
{
    if (r == NULL) return MRTM_ERR_ARG;
    ring = r;
    return hal_usb_msc_init(USB_TOTAL_SECTORS) == MRTM_OK ? MRTM_OK : MRTM_ERR_HW;
}

/* REVIEW: timing — 30 s for the whole file is a USB full-speed estimate, measured only on target. */
/* @implements MRTM-LLR-044 */
int32_t usb_export_read10(uint32_t lba, uint32_t offset, void *buf, uint32_t size)
{
    if (ring == NULL || buf == NULL || lba >= USB_TOTAL_SECTORS || offset + size > USB_BLOCK) return -1;
    uint8_t s[USB_BLOCK];
    sector(lba, s);
    memcpy(buf, s + offset, size);
    return (int32_t)size;
}

/* @implements MRTM-LLR-045 */
int32_t usb_export_write10(uint32_t lba, uint32_t offset, const void *buf, uint32_t size)
{
    (void)lba; (void)offset; (void)buf; (void)size;
    return -1;                                            /* the volume is read-only, always */
}
