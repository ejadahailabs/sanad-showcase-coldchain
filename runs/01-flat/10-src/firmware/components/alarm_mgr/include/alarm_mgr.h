/* alarm_mgr.h — alarm state machine, buzzer and red light (contract: ../contracts.md).
 * IEC 62304 §5.4.2, Class C. States = MrtmSwStates::AlarmStates. */
#ifndef ALARM_MGR_H
#define ALARM_MGR_H
#include <stdbool.h>
#include <stdint.h>
#include "mrtm_errors.h"

typedef enum { ALARM_QUIET = 0, ALARM_SOUNDING, ALARM_SILENCED, ALARM_PROBE_FAULT, ALARM_BUZZER_FAULT, ALARM_EARLY } alarm_state_t;   /* EARLY last: NVS values stay */
/* SIG_FAIL_SAFE is not in the Phase-8 contract: SystemModes::failSafe (config CRC, self-test fail)
   needs the buzzer and had no signal into this unit. REVIEW (F-86). */
typedef enum { SIG_EXCURSION_CONFIRMED = 1, SIG_EXCURSION_ENDED, SIG_ACK_PRESSED, SIG_PROBE_FAULT,
               SIG_PROBE_RECOVERED, SIG_BATTERY_LOW, SIG_FAIL_SAFE,
               SIG_EXCURSION_EARLY, SIG_EARLY_CLEARED } alarm_signal_t;   /* early tier, ADR-0030 */

mrtm_err_t alarm_mgr_init(void);
mrtm_err_t alarm_mgr_post(alarm_signal_t sig);
mrtm_err_t alarm_mgr_post_from_isr(alarm_signal_t sig);
void alarm_mgr_step(uint32_t now_ms);
void alarm_mgr_button_isr(void *arg);
void alarm_mgr_button_debounced(void);   /* the 50 ms one-shot's callback */
uint32_t alarm_mgr_heartbeat(void);
alarm_state_t alarm_mgr_state(void);
bool alarm_mgr_fail_safe(void);

#endif
