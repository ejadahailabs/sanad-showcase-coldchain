/* mrtm_app.c — wiring of the 12 units into the six task bodies. IEC 62304 §5.5.1 / §5.6, Class C.
 * A restored alarm is driven before the self-tests start, and the buzzer test leaves a sounding
 * alarm alone (DEF-002), so MRTM-SAF-006 holds even while diagnostics blocks for ~12 s.
 * REVIEW: on the target the six tasks start after this function returns (main/app_main.c). */
#include <string.h>
#include "mrtm_app.h"
#include "alarm_mgr.h"
#include "config_mgr.h"
#include "diagnostics.h"
#include "display_mgr.h"
#include "event_log.h"
#include "limit_evaluator.h"
#include "mrtm_config.h"
#include "mrtm_hal.h"
#include "power_mon.h"
#include "rtc_clock.h"
#include "sensor_sampler.h"
#include "usb_export.h"
#include "wdt_kicker.h"

#define FW_VERSION 0x0100u   /* 1.0 */

static struct {
    mrtm_mode_t mode;
    mrtm_config_t cfg;
    limit_eval_t lim;
    history_ring_t ring;
    bool probe_fault;
    display_model_t view;
} app;

mrtm_mode_t app_mode(void) { return app.mode; }
history_ring_t *app_history(void) { return &app.ring; }

/* SystemModes::selfTest -> monitoring | failSafe. */
/* @implements MRTM-SAF-017 MRTM-SAF-006 MRTM-SAF-022 MRTM-SAF-016 MRTM-MNT-003 */
mrtm_mode_t app_power_up(uint32_t now_ms)
{
    memset(&app, 0, sizeof app);
    app.mode = MODE_SELF_TEST;
    (void)history_ring_init(&app.ring);
    event_log_init(&app.ring);
    (void)alarm_mgr_init();                             /* restores an unacknowledged alarm */
    alarm_mgr_step(now_ms);
    wdt_kicker_init();

    diag_result_t d = { 0 };
    bool osc_stopped = false;
    d.clock_ok = rtc_clock_init(&osc_stopped) == MRTM_OK && !osc_stopped;
    d.config_ok = config_mgr_load(&app.cfg) == MRTM_OK;
    if (!d.config_ok) {                                 /* no default band: failSafe, buzzer now */
        (void)event_log_post(MRTM_EV_CONFIG_CRC_FAULT, 0, 0);
        (void)alarm_mgr_post(SIG_FAIL_SAFE);
        alarm_mgr_step(now_ms);
        app.mode = MODE_FAIL_SAFE;
        return app.mode;
    }
    app.view = (display_model_t){ .show_band = true, .band_low = app.cfg.band_low_tenths,
                                  .band_high = app.cfg.band_high_tenths, .fw_version = FW_VERSION };
    display_mgr_update(&app.view);
    (void)display_mgr_init();                           /* band + version for the first 3 s */
    (void)power_mon_init();
    (void)usb_export_init(&app.ring);
    (void)sensor_sampler_init(&app.cfg);
    limit_evaluator_init(&app.lim, app.cfg.band_low_tenths, app.cfg.band_high_tenths);
    app.mode = diagnostics_power_up(&d) == MRTM_OK ? MODE_MONITORING : MODE_FAIL_SAFE;
    if (app.mode == MODE_FAIL_SAFE) (void)alarm_mgr_post(SIG_FAIL_SAFE);
    return app.mode;
}

/* @implements MRTM-SYS-024 MRTM-SYS-001 MRTM-SYS-002 MRTM-SYS-008 MRTM-SYS-009 MRTM-SYS-012 MRTM-SAF-002 */
void app_sensor_step(uint32_t now_ms)
{
    if (app.mode != MODE_MONITORING) return;
    uint32_t now_s = now_ms / 1000u;                    /* monotonic: a clock set never fakes a fault */
    mrtm_sample_t s;
    (void)sensor_sampler_read(now_s, &s);
    bool fault = sensor_sampler_probe_fault(now_s);
    if (fault != app.probe_fault) {
        app.probe_fault = fault;
        (void)alarm_mgr_post(fault ? SIG_PROBE_FAULT : SIG_PROBE_RECOVERED);
        (void)event_log_post(fault ? MRTM_EV_PROBE_FAULT : MRTM_EV_PROBE_RECOVERED, s.tenths, 0);
    }
    switch (limit_evaluator_step(&app.lim, &s)) {
    case LIMIT_CONFIRMED:
        (void)alarm_mgr_post(SIG_EXCURSION_CONFIRMED);
        (void)event_log_post(MRTM_EV_EXCURSION_START, s.tenths, 0);
        break;
    case LIMIT_ENDED:
        (void)alarm_mgr_post(SIG_EXCURSION_ENDED);
        (void)event_log_post(MRTM_EV_EXCURSION_END, s.tenths, limit_evaluator_peak(&app.lim));
        break;
    case LIMIT_EARLY:                                   /* not logged: A-38 (log capacity, HAZ-008) */
        (void)alarm_mgr_post(SIG_EXCURSION_EARLY);
        break;
    case LIMIT_EARLY_CLEARED:
        (void)alarm_mgr_post(SIG_EARLY_CLEARED);
        break;
    case LIMIT_NONE:
        break;
    }
    app.view.temp_tenths = s.tenths;
    app.view.temp_valid = s.valid;
}

void app_alarm_step(uint32_t now_ms)
{
    alarm_mgr_step(now_ms);
}

/* Battery percent from 3.4 V (0 %) to 4.2 V (100 %), linear. EE-REVIEW: a Li-ion curve is not linear. */
static uint8_t battery_pct(uint32_t mv)
{
    if (mv <= MRTM_BATTERY_LOW_MV) return 0;
    if (mv >= 4200u) return 100;
    return (uint8_t)((mv - MRTM_BATTERY_LOW_MV) * 100u / (4200u - MRTM_BATTERY_LOW_MV));
}

/* @implements MRTM-SAF-010 MRTM-SAF-012 MRTM-SYS-022 MRTM-MNT-002 MRTM-SYS-008 MRTM-SYS-020 MRTM-SW-009 */
void app_supervisor_step(uint32_t now_ms)
{
    rtc_clock_tick();                                   /* DEF-003: nothing refreshed the UTC copy */
    wdt_kicker_step(now_ms, alarm_mgr_heartbeat());
    power_mon_step(now_ms);
    diagnostics_step(now_ms);
    uint32_t utc = rtc_clock_now();
    app.view.calib_due = app.cfg.calibration_utc != 0 &&
                         utc - app.cfg.calibration_utc >= MRTM_CALIBRATION_DAYS * 86400u;
    app.view.log_warn = history_ring_count(&app.ring) >= MRTM_LOG_WARN_AT;
    app.view.battery_pct = battery_pct(hal_battery_mv());
}

void app_log_step(void)
{
    event_log_step(0);
}

/* @implements MRTM-SYS-005 MRTM-SYS-013 MRTM-SW-008 */
void app_display_step(void)
{
    app.view.alarm = alarm_mgr_state();
    display_mgr_update(&app.view);
    display_mgr_tick();
}
