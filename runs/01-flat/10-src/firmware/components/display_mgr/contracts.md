# Contract — `display_mgr` (C++)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::DisplayMgrApi` from one table (tools/detail-design.py).
> **Component:** `displayMgr` (.ejadah/rew/architecture/displayMgr.md) · **Satisfies:** MRTM-SYS-005, MRTM-SYS-007, MRTM-SYS-011, MRTM-SYS-013, MRTM-SYS-022, MRTM-PRF-004, MRTM-IFC-004, MRTM-SAF-012, MRTM-SAF-016, MRTM-SAF-021

**What it does:** Draw the screen. C interface outside, classes inside.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef struct { int16_t temp_tenths; bool temp_valid; alarm_state_t alarm; bool calib_due; bool log_warn; bool show_band; int16_t band_low, band_high; } display_model_t;
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `extern "C" mrtm_err_t display_mgr_init(void);` | I2C master on the display bus ready. | SSD1306 initialised, screen cleared, band shown for 3 s (MRTM-SAF-016). | MRTM_ERR_BUS |
| `extern "C" void display_mgr_update(const display_model_t *m);` | Any task; copies the model under a mutex. | Next tick draws the new model. | none |
| `extern "C" void display_mgr_tick(void);` | displayTask every 500 ms. | Dirty widgets redrawn and the frame sent; a stuck bus is reset within 1 s (MRTM-SAF-021). | none (bus errors are logged as I2C_BUS_RESET) |

## Algorithms

- **`display_mgr_tick`** — Screen::render(): for each widget, if dirty, draw into the 1024-byte frame buffer; send the changed pages over I2C with a 100 ms transaction timeout; on timeout: clock 9 pulses on SCL, re-init the SSD1306, log I2C_BUS_RESET, total <= 1 s. Temperature refreshed every 10 s (MRTM-PRF-004) from the model; digits 32 px tall = 5.1 mm on the 0.96 in panel (MRTM-IFC-004).

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_display_mgr.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
