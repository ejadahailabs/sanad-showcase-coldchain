# Contract — `diagnostics` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::DiagnosticsApi` from one table (tools/detail-design.py).
> **Component:** `diagnostics` (.ejadah/rew/architecture/diagnostics.md) · **Satisfies:** MRTM-SAF-007, MRTM-SAF-023

**What it does:** Run the power-up tests and the running checks.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef struct { bool buzzer_ok, backup_ok, config_ok, clock_ok; } diag_result_t;
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t diagnostics_power_up(diag_result_t *out);` | Before monitoring starts (SystemModes::selfTest). | Within 5 s: buzzer driven 200 ms and current seen (MRTM-SAF-007); within 15 s: pulses held back 12 s and the backup alarm's sense seen, then pulses resumed (MRTM-SAF-023); result logged as SELF_TEST_PASS or SELF_TEST_FAIL. | MRTM_ERR_HW |
| `void diagnostics_step(uint32_t now_ms);` | supervisorTask every 500 ms. | Hourly: task stack high-water marks logged (Phase 10 evidence). | none |

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_diagnostics.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
