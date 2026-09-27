/* rtc_clock.h — UTC seconds from the RTC (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef RTC_CLOCK_H
#define RTC_CLOCK_H
#include <stdbool.h>
#include <stdint.h>
#include "mrtm_errors.h"

mrtm_err_t rtc_clock_init(bool *osc_stopped);
uint32_t rtc_clock_now(void);
mrtm_err_t rtc_clock_set(uint32_t utc_s);
void rtc_clock_tick(void);   /* the 1 s esp_timer callback that refreshes the copy */

#endif
