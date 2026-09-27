/* diagnostics.h — power-up tests and running checks (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef DIAGNOSTICS_H
#define DIAGNOSTICS_H
#include <stdbool.h>
#include <stdint.h>
#include "mrtm_errors.h"

typedef struct { bool buzzer_ok, backup_ok, config_ok, clock_ok; } diag_result_t;

/* Tests the buzzer and the backup alarm; config_ok and clock_ok are filled by the caller,
   which ran config_mgr_load and rtc_clock_init first. */
mrtm_err_t diagnostics_power_up(diag_result_t *out);
void diagnostics_step(uint32_t now_ms);

#endif
