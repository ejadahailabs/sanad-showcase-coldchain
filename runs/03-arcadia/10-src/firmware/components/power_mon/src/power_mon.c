/* power_mon.c — MrtmSwDetail::PowerMonApi. IEC 62304 §5.5.1, Class C.
 * The switch to battery itself (MRTM-SYS-016) is the power path's, not this code's. */
#include <stdbool.h>
#include "power_mon.h"
#include "alarm_mgr.h"
#include "event_log.h"
#include "mrtm_config.h"
#include "mrtm_hal.h"

static bool mains, low_latched;
static uint8_t low_reads;

mrtm_err_t power_mon_init(void)
{
    mains = hal_mains_present();
    low_latched = false;
    low_reads = 0;
    return MRTM_OK;
}

/* @implements MRTM-SAF-005 MRTM-SYS-023 MRTM-SW-014 */
void power_mon_isr(void *arg)
{
    (void)arg;
    bool now = hal_mains_present();
    if (now == mains) return;
    mains = now;
    (void)event_log_post_from_isr(now ? MRTM_EV_POWER_RESTORE : MRTM_EV_POWER_LOSS, 0, 0);
}

/* @implements MRTM-SAF-008 MRTM-SW-015 */
void power_mon_step(uint32_t now_ms)
{
    (void)now_ms;
    uint32_t mv = hal_battery_mv();
    low_reads = mv < MRTM_BATTERY_LOW_MV ? (uint8_t)(low_reads < 2 ? low_reads + 1 : 2) : 0;
    if (low_reads >= 2 && !low_latched) {
        low_latched = true;
        (void)alarm_mgr_post(SIG_BATTERY_LOW);
        (void)event_log_post(MRTM_EV_LOW_BATTERY, (int16_t)(mv / 10u), 0);
    }
}
