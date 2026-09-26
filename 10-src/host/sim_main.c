/* sim_main.c — system-level procedure runner on the host stubs (11-verification/procedures).
 * Usage: sim_main excursion   Prints a time-stamped trace and one CHECK line per pass/fail criterion.
 * Host only; the target runs the same mrtm_app code under FreeRTOS. IEC 62304 §5.7 (dry run). */
#include <stdio.h>
#include <string.h>
#include "alarm_mgr.h"
#include "config_mgr.h"
#include "display_mgr.h"
#include "hal_host.h"
#include "history_ring.h"
#include "mrtm_app.h"
#include "mrtm_crc.h"
#include "sim.h"

static int fails;
static void check(const char *id, int ok, const char *what)
{
    printf("CHECK %s %s — %s\n", id, ok ? "PASS" : "FAIL", what);
    if (!ok) fails++;
}

static void provision(void)
{
    mrtm_config_t c = { .version = 1, .band_low_tenths = 20, .band_high_tenths = 80, .calibration_utc = 1790000000u };
    c.crc32 = mrtm_crc32(&c, 12);
    memcpy(host.nvs_cfg, &c, sizeof c);
    host.nvs_cfg_present = true;
}

static uint32_t wait_until(int (*cond)(void), uint32_t max_ms)
{
    uint32_t start = host.now_ms;
    while (!cond() && host.now_ms - start < max_ms) sim_run(100);
    return host.now_ms - start;
}
static int buzzing(void) { return host.buzzer_on; }
static int silent(void) { return !host.buzzer_on; }
static int quiet(void) { return alarm_mgr_state() == ALARM_QUIET; }

static int excursion(void)
{
    host_reset(); host_erase_flash(); provision(); sim_reset();
    printf("t=%6u ms power-up -> mode %d\n", host.now_ms, app_power_up(host.now_ms));
    sim_run(60000);                                                   /* one quiet minute at 5.0 degC */
    check("SP-01.1", !host.buzzer_on && host.green, "quiet in band: buzzer off, green on");

    sim_run(9000);                                                    /* change just before a sample */
    host.probe_tenths = 95;                                           /* 9.5 degC: door left open */
    uint32_t dt = wait_until(buzzing, 120000);
    printf("t=%6u ms buzzer on, %u ms after the change\n", host.now_ms, dt);
    check("SP-01.2", dt <= 65000u, "buzzer within 65 s of the first out-of-band sample (MRTM-PRF-002)");
    check("SP-01.3", host.red_hz == 2, "red indicator 2 Hz (MRTM-SYS-004)");
    sim_run(1000);
    check("SP-01.4", display_mgr_banner() == MSG_EXCURSION, "excursion warning on the display (MRTM-SYS-005)");

    host.button = true; alarm_mgr_button_isr(NULL); host_advance(20);             /* a 20 ms bounce */
    host.button = false; alarm_mgr_button_isr(NULL);
    sim_run(1000);
    check("SP-01.5", host.buzzer_on, "a 20 ms bounce is not a press (MRTM-IFC-002)");
    host.button = true; alarm_mgr_button_isr(NULL);
    uint32_t t_press = host.now_ms;
    dt = wait_until(silent, 5000);
    printf("t=%6u ms buzzer off, %u ms after the press\n", host.now_ms, dt);
    check("SP-01.6", host.now_ms - t_press <= 1000u, "buzzer stops within 1 s of the press (MRTM-SYS-006)");
    host.button = false; alarm_mgr_button_isr(NULL); sim_run(200);

    dt = wait_until(buzzing, 16u * 60u * 1000u);
    printf("t=%6u ms buzzer on again, %u ms after silence\n", host.now_ms, dt);
    check("SP-01.7", dt >= 14u * 60u * 1000u && dt <= 15u * 60u * 1000u + 1000u, "re-sounds 15 min after the press (MRTM-SYS-019)");

    host.probe_tenths = 50;
    dt = wait_until(quiet, 120000);
    printf("t=%6u ms quiet, %u ms after back in band\n", host.now_ms, dt);
    check("SP-01.8", dt >= 60000u && dt <= 80000u, "excursion ends after 7 in-band samples (MRTM-SYS-018)");
    sim_run(2000);

    history_ring_t *r = app_history();
    int start = 0, ack = 0, end = 0, realarm = 0; int16_t peak = 0;
    for (uint32_t age = 0; age < history_ring_count(r); age++) {
        event_record_t e;
        if (history_ring_read(r, age, &e) != MRTM_OK) continue;
        printf("log seq=%u utc=%u kind=%u tenths=%d peak=%d\n", e.seq, e.utc_s, e.kind, e.tenths, e.peak_tenths);
        start += e.kind == MRTM_EV_EXCURSION_START; ack += e.kind == MRTM_EV_ACK;
        realarm += e.kind == MRTM_EV_REALARM;
        if (e.kind == MRTM_EV_EXCURSION_END) { end++; peak = e.peak_tenths; }
    }
    check("SP-01.9", start == 1 && ack == 1 && end == 1 && realarm == 1, "start, ack, re-alarm and end events logged once each (SYS-008/010/019)");
    check("SP-01.10", peak == 95, "end event carries the 9.5 degC peak (MRTM-SYS-009)");
    return fails;
}

int main(int argc, char **argv)
{
    if (argc == 2 && strcmp(argv[1], "excursion") == 0) {
        int f = excursion();
        printf("RESULT %s (%d failed checks)\n", f ? "FAIL" : "PASS", f);
        return f ? 1 : 0;
    }
    fprintf(stderr, "usage: sim_main excursion\n");
    return 2;
}
