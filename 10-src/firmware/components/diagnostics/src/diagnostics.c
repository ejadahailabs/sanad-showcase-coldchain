/* diagnostics.c — MrtmSwDetail::DiagnosticsApi. IEC 62304 §5.5.1, Class C.
 * REVIEW: blocks for up to ~12.5 s at power-up, before monitoring starts (SystemModes::selfTest). */
#include <stddef.h>
#include "diagnostics.h"
#include "alarm_mgr.h"
#include "event_log.h"
#include "mrtm_hal.h"
#include "wdt_kicker.h"

#define BUZZER_TEST_MS 200u
#define BACKUP_HOLD_MS 12000u   /* > the backup alarm's 10 s timeout (MRTM-SAF-009) */

/* @implements MRTM-SAF-007 MRTM-SAF-023 MRTM-SVI-002 */
mrtm_err_t diagnostics_power_up(diag_result_t *out)
{
    if (out == NULL) return MRTM_ERR_ARG;
    if (alarm_mgr_state() == ALARM_SOUNDING) {         /* DEF-002: never silence a restored alarm; */
        out->buzzer_ok = hal_buzzer_current_ok();      /* the sounding buzzer is the test          */
    } else {                                           /* buzzer test within 5 s (MRTM-SAF-007)    */
        hal_buzzer_set(true);
        hal_delay_ms(BUZZER_TEST_MS);
        out->buzzer_ok = hal_buzzer_current_ok();
        hal_buzzer_set(false);
    }

    wdt_kicker_hold(true);                             /* backup alarm test within 15 s (MRTM-SAF-023) */
    out->backup_ok = false;
    for (uint32_t t = 0; t < BACKUP_HOLD_MS && !out->backup_ok; t += 100u) {
        hal_delay_ms(100u);
        out->backup_ok = hal_backup_alarm_sensed();
    }
    wdt_kicker_hold(false);

    int16_t failed = (int16_t)((out->buzzer_ok ? 0 : 1) | (out->backup_ok ? 0 : 2) |
                               (out->config_ok ? 0 : 4) | (out->clock_ok ? 0 : 8));
    (void)event_log_post(failed ? MRTM_EV_SELF_TEST_FAIL : MRTM_EV_SELF_TEST_PASS, failed, 0);
    return failed ? MRTM_ERR_HW : MRTM_OK;
}

void diagnostics_step(uint32_t now_ms)
{
    static uint32_t last_ms;
    if (now_ms - last_ms >= 3600000u) { last_ms = now_ms; hal_log_stack_marks(); }
}
