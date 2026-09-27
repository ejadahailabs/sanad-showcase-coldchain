/* display_mgr.h — the screen, C interface outside, C++ classes inside (ADR-0022; contract: ../contracts.md).
 * IEC 62304 §5.4.2, Class C. */
#ifndef DISPLAY_MGR_H
#define DISPLAY_MGR_H
#include <stdbool.h>
#include <stdint.h>
#include "alarm_mgr.h"
#include "mrtm_errors.h"
#ifdef __cplusplus
extern "C" {
#endif

/* battery_pct and fw_version are not in the Phase-8 contract: MRTM-MNT-002 / MNT-003 had no
   software unit (F-85). REVIEW. */
typedef struct { int16_t temp_tenths; bool temp_valid; alarm_state_t alarm; bool calib_due; bool log_warn;
                 bool show_band; int16_t band_low, band_high; uint8_t battery_pct; uint16_t fw_version; } display_model_t;

typedef enum { MSG_NONE = 0, MSG_EXCURSION, MSG_PROBE_FAULT, MSG_BUZZER_FAULT, MSG_CALIBRATION_DUE,
               MSG_LOG_CAPACITY, MSG_BAND, MSG_VERSION } display_msg_t;

mrtm_err_t display_mgr_init(void);
void display_mgr_update(const display_model_t *m);
void display_mgr_tick(void);
/* What the screen shows now — for tests and the diagnostics console. */
display_msg_t display_mgr_banner(void);
int16_t display_mgr_shown_tenths(void);
uint8_t display_mgr_shown_battery_pct(void);

#ifdef __cplusplus
}
#endif
#endif
