/* wdt_kicker.h — outside watchdog pulses (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef WDT_KICKER_H
#define WDT_KICKER_H
#include <stdbool.h>
#include <stdint.h>

void wdt_kicker_init(void);
void wdt_kicker_step(uint32_t now_ms, uint32_t alarm_beat);
void wdt_kicker_hold(bool hold);   /* power-up backup-alarm test only (MRTM-SAF-023); not in the Phase-8 contract, REVIEW */

#endif
