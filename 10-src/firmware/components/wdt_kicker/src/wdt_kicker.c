/* wdt_kicker.c — MrtmSwDetail::WdtKickerApi. IEC 62304 §5.5.1, Class C.
 * REVIEW: safety-relevant. Pulses only while the alarm task's heartbeat moves. */
#include "wdt_kicker.h"
#include "mrtm_config.h"
#include "mrtm_hal.h"

static uint32_t last_beat, last_change_ms;
static bool held, primed;

/* @implements MRTM-SAF-004 */
void wdt_kicker_init(void)
{
    hal_task_wdt_init(MRTM_TASK_WDT_S);   /* panic restart on timeout; restart < 2 s */
    primed = false;
    held = false;
}

/* @implements MRTM-SAF-010 MRTM-SAF-009 */
void wdt_kicker_step(uint32_t now_ms, uint32_t alarm_beat)
{
    if (!primed || alarm_beat != last_beat) { primed = true; last_beat = alarm_beat; last_change_ms = now_ms; }
    if (!held && now_ms - last_change_ms <= MRTM_HEARTBEAT_MAX_MS) hal_wdt_pulse(MRTM_WDT_PULSE_MS);
}

void wdt_kicker_hold(bool hold)
{
    held = hold;
}
