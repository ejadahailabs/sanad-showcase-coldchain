/* test_support.h — shared set-up for the Unity runners on the host stubs. IEC 62304 §5.5.2. */
#ifndef TEST_SUPPORT_H
#define TEST_SUPPORT_H
#include <string.h>
#include "config_mgr.h"
#include "event_log.h"
#include "hal_host.h"
#include "history_ring.h"
#include "mrtm_crc.h"

static history_ring_t ts_ring;

/* Stub hardware power-cycled, flash erased, a valid 2..8 degC config in NVS, empty log. */
static inline void ts_fresh(void)
{
    host_reset();
    host_erase_flash();
    mrtm_config_t c = { .version = 1, .band_low_tenths = 20, .band_high_tenths = 80, .calibration_utc = 1790000000u };
    c.crc32 = mrtm_crc32(&c, 12);
    memcpy(host.nvs_cfg, &c, sizeof c);
    host.nvs_cfg_present = true;
    (void)history_ring_init(&ts_ring);
    event_log_init(&ts_ring);
}

/* Drain the log queue and find the newest record of one kind; returns 1 when found. */
static inline int ts_find(mrtm_event_kind_t kind, event_record_t *out)
{
    event_log_step(0);
    for (uint32_t age = 0; age < history_ring_count(&ts_ring); age++)
        if (history_ring_read(&ts_ring, age, out) == MRTM_OK && out->kind == kind) return 1;
    return 0;
}
#endif
