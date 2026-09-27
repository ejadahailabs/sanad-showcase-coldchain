/* test_usb_export.c — unit verification of the read-only USB volume (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"
#include "usb_export.h"

static uint8_t s[512];
void setUp(void) { ts_fresh(); TEST_ASSERT_EQUAL(MRTM_OK, usb_export_init(&ts_ring)); }
void tearDown(void) {}

static void add(uint32_t n)
{
    for (uint32_t i = 0; i < n; i++) event_log_post(MRTM_EV_EXCURSION_START, (int16_t)(81 + i), 0);
    event_log_step(0);
}

/* @verifies MRTM-IFC-003 */
void test_boot_sector_is_a_fat12_volume(void)
{
    TEST_ASSERT_EQUAL_INT32(512, usb_export_read10(0, 0, s, 512));
    TEST_ASSERT_EQUAL_HEX8(0x55, s[510]);
    TEST_ASSERT_EQUAL_HEX8(0xAA, s[511]);
    TEST_ASSERT_EQUAL_MEMORY("FAT12   ", s + 54, 8);
    TEST_ASSERT_EQUAL_UINT16(USB_TOTAL_SECTORS, (uint16_t)(s[19] | s[20] << 8));
    TEST_ASSERT_TRUE(host.usb_ready);
}

/* @verifies MRTM-SYS-014 MRTM-IFC-003 */
void test_history_csv_is_marked_read_only(void)
{
    add(3);
    usb_export_read10(5 - 1, 0, s, 512);                 /* root directory sector */
    TEST_ASSERT_EQUAL_MEMORY("HISTORY CSV", s, 11);
    TEST_ASSERT_EQUAL_HEX8(0x01, s[11] & 0x01);
    TEST_ASSERT_EQUAL_UINT32(4 * USB_LINE, (uint32_t)(s[28] | s[29] << 8 | s[30] << 16 | (uint32_t)s[31] << 24));
}

/* @verifies MRTM-SYS-014 MRTM-IFC-003 MRTM-STK-006 */
void test_every_write_is_refused(void)
{
    uint8_t junk[512] = { 0 };
    for (uint32_t lba = 0; lba < USB_TOTAL_SECTORS; lba += 97) TEST_ASSERT_EQUAL_INT32(-1, usb_export_write10(lba, 0, junk, 512));
}

/* @verifies MRTM-IFC-003 MRTM-SYS-008 */
void test_csv_lines_oldest_first_newest_last(void)
{
    add(3);
    usb_export_read10(5, 0, s, 512);                     /* first data sector */
    TEST_ASSERT_EQUAL_MEMORY("seq,utc_s,kind", s, 14);
    TEST_ASSERT_EQUAL_MEMORY("0000000001,", s + 48, 11);
    TEST_ASSERT_EQUAL_MEMORY("0000000003,", s + 3 * 48, 11);
    TEST_ASSERT_EQUAL_MEMORY("\r\n", s + 2 * 48 - 2, 2);
}

/* A record that fails both CRCs becomes a CORRUPT line, and the rest still export. */
/* @verifies MRTM-SYS-021 */
void test_unreadable_record_is_a_corrupt_line(void)
{
    add(3);
    host_flash(0)[2 * 32 + 12] ^= 0xFF;
    host_flash(1)[2 * 32 + 12] ^= 0xFF;
    usb_export_read10(5, 0, s, 512);
    TEST_ASSERT_EQUAL_MEMORY("CORRUPT", s + 2 * 48, 7);
    TEST_ASSERT_EQUAL_MEMORY("0000000003,", s + 3 * 48, 11);
}

/* 10 000 records fit the volume; the FAT chains every data cluster to the end mark. */
/* @verifies MRTM-SYS-015 MRTM-PRF-003 */
void test_full_history_fits_and_fat_chain_ends(void)
{
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(USB_DATA_SECTORS, ((10000u + 1u) * USB_LINE + 511u) / 512u);
    for (int k = 0; k < 10; k++) add(32);                 /* 320 records, one logTask pass each */
    uint32_t clusters = ((history_ring_count(&ts_ring) + 1u) * USB_LINE + 511u) / 512u;
    uint32_t last = 1u + clusters, o = last * 3u / 2u;    /* data clusters are 2 .. 1 + n */
    usb_export_read10(1, 0, s, 512);
    TEST_ASSERT_EQUAL_HEX8(0xF8, s[0]);
    uint16_t v = (uint16_t)(s[o] | s[o + 1] << 8);
    TEST_ASSERT_EQUAL_HEX16(0xFFF, last % 2u ? v >> 4 : v & 0xFFFu);
    o = (last - 1u) * 3u / 2u;
    v = (uint16_t)(s[o] | s[o + 1] << 8);
    TEST_ASSERT_EQUAL_HEX16(last, (last - 1u) % 2u ? v >> 4 : v & 0xFFFu);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_boot_sector_is_a_fat12_volume);
    RUN_TEST(test_history_csv_is_marked_read_only);
    RUN_TEST(test_every_write_is_refused);
    RUN_TEST(test_csv_lines_oldest_first_newest_last);
    RUN_TEST(test_unreadable_record_is_a_corrupt_line);
    RUN_TEST(test_full_history_fits_and_fat_chain_ends);
    return UNITY_END();
}
