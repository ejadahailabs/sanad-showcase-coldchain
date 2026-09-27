/* history_ring.c — MrtmSwDetail::HistoryRingApi. IEC 62304 §5.5.1, Class C.
 * Slot = seq mod HISTORY_SLOTS; the first slot of a sector erases that sector first (erase-ahead,
 * A-21 overwrite oldest), so at worst HISTORY_SLOTS - 127 records stay readable: >= 10 000
 * needs 80 sectors, not the 79 of Phase 8 (defect DEF-001). */
#include <stddef.h>
#include "history_ring.h"
#include "mrtm_crc.h"
#include "mrtm_hal.h"

_Static_assert(HISTORY_SLOTS - MRTM_LOG_SLOTS_PER_SECTOR + 1 >= MRTM_LOG_CAPACITY,
               "ring too small: erase-ahead must still leave MRTM_LOG_CAPACITY records");

static bool record_ok(const event_record_t *e, uint32_t seq)
{
    return e->seq == seq && e->crc32 == mrtm_crc32(e, offsetof(event_record_t, crc32));
}

static bool slot_read(int part, uint32_t slot, event_record_t *out)
{
    return hal_flash_read(part, slot * sizeof *out, out, sizeof *out);
}

/* @implements MRTM-SYS-015 MRTM-LGI-002 */
mrtm_err_t history_ring_init(history_ring_t *r)
{
    if (r == NULL) return MRTM_ERR_ARG;
    r->head_seq = 0;
    r->warned = false;
    for (int part = 0; part < 2; part++) {
        for (uint32_t slot = 0; slot < HISTORY_SLOTS; slot++) {
            event_record_t e;
            if (!slot_read(part, slot, &e)) return MRTM_ERR_FLASH;
            if (e.seq != 0xFFFFFFFFu && e.seq > r->head_seq && e.seq % HISTORY_SLOTS == slot && record_ok(&e, e.seq))
                r->head_seq = e.seq;
        }
    }
    r->count = r->head_seq < MRTM_LOG_CAPACITY ? r->head_seq : MRTM_LOG_CAPACITY;
    r->warned = r->count >= MRTM_LOG_WARN_AT;
    return MRTM_OK;
}

uint32_t history_ring_next_seq(const history_ring_t *r)
{
    return r->head_seq + 1;
}

/* @implements MRTM-SAF-018 MRTM-SYS-015 MRTM-SYS-022 */
mrtm_err_t history_ring_append(history_ring_t *r, const event_record_t *rec)
{
    if (r == NULL || rec == NULL || rec->seq != r->head_seq + 1) return MRTM_ERR_ARG;
    uint32_t slot = rec->seq % HISTORY_SLOTS;
    uint32_t sector = slot / MRTM_LOG_SLOTS_PER_SECTOR;
    for (int part = 0; part < 2; part++) {            /* copy A, then copy B (MRTM-SAF-018) */
        if (slot % MRTM_LOG_SLOTS_PER_SECTOR == 0 && !hal_flash_erase_sector(part, sector)) return MRTM_ERR_FLASH;
        if (!hal_flash_write(part, slot * sizeof *rec, rec, sizeof *rec)) return MRTM_ERR_FLASH;
    }
    r->head_seq = rec->seq;
    if (r->count < MRTM_LOG_CAPACITY) r->count++;
    if (!r->warned && r->count >= MRTM_LOG_WARN_AT) {
        r->warned = true;
        (void)event_log_post(MRTM_EV_LOG_CAPACITY_WARNING, 0, 0);
    }
    return MRTM_OK;
}

/* @implements MRTM-SYS-021 MRTM-SYS-015 */
mrtm_err_t history_ring_read(const history_ring_t *r, uint32_t age, event_record_t *out)
{
    if (r == NULL || out == NULL || age >= r->count) return MRTM_ERR_ARG;
    uint32_t seq = r->head_seq - age;
    for (int part = 0; part < 2; part++)
        if (slot_read(part, seq % HISTORY_SLOTS, out) && record_ok(out, seq)) return MRTM_OK;
    (void)event_log_post(MRTM_EV_LOG_RECORD_CORRUPT, 0, 0);   /* reported at the read (MRTM-SYS-021) */
    return MRTM_ERR_CRC;
}

uint32_t history_ring_count(const history_ring_t *r)
{
    return r->count;
}
