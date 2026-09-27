/* rtc_clock.c — MrtmSwDetail::RtcClockApi. IEC 62304 §5.5.1, Class C.
 * Callers read a copy refreshed once a second, so no caller waits on I2C. */
#include <stddef.h>
#include "rtc_clock.h"
#include "event_log.h"
#include "mrtm_hal.h"

static volatile uint32_t utc_copy;

/* @implements MRTM-SAF-022 */
mrtm_err_t rtc_clock_init(bool *osc_stopped)
{
    if (osc_stopped == NULL) return MRTM_ERR_ARG;
    uint32_t utc = 0;
    mrtm_err_t e = hal_rtc_read(&utc, osc_stopped);
    if (e != MRTM_OK) return MRTM_ERR_BUS;
    utc_copy = utc;
    if (*osc_stopped) (void)event_log_post(MRTM_EV_CLOCK_FAULT, 0, 0);
    return MRTM_OK;
}

/* REVIEW: drift (<= 2 s/day) is the RTC crystal's; the firmware only never keeps its own clock. */
/* @implements MRTM-SYS-020 MRTM-SYS-008 MRTM-SYS-010 MRTM-SYS-023 MRTM-RTK-001 */
uint32_t rtc_clock_now(void)
{
    return utc_copy;
}

/* @implements MRTM-SYS-020 */
void rtc_clock_tick(void)
{
    uint32_t utc;
    bool stopped;
    if (hal_rtc_read(&utc, &stopped) == MRTM_OK) utc_copy = utc;   /* a failed read keeps the last copy */
}

mrtm_err_t rtc_clock_set(uint32_t utc_s)
{
    if (utc_s == 0) return MRTM_ERR_ARG;
    if (hal_rtc_write(utc_s) != MRTM_OK) return MRTM_ERR_BUS;
    utc_copy = utc_s;
    (void)event_log_post(MRTM_EV_CONFIG_CHANGED, 0, 0);
    return MRTM_OK;
}
