# Contract — `limit_evaluator` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::LimitEvaluatorApi` from one table (tools/detail-design.py).
> **Component:** `limitEvaluator` (.ejadah/rew/architecture/limitEvaluator.md) · **Satisfies:** MRTM-SYS-002, MRTM-SYS-017, MRTM-SYS-018

**What it does:** Decide when an excursion starts and ends.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef enum { LIMIT_NONE = 0, LIMIT_CONFIRMED, LIMIT_ENDED } limit_event_t;
typedef struct { int16_t low, high, hyst; uint8_t out_run, in_run; bool excursion; int16_t peak; } limit_eval_t;
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `void limit_evaluator_init(limit_eval_t *st, int16_t low_tenths, int16_t high_tenths);` | st != NULL, low < high. | No excursion, both runs 0. | none (asserts) |
| `limit_event_t limit_evaluator_step(limit_eval_t *st, const mrtm_sample_t *s);` | Called once per sample, straight after sensor_sampler_read. | Returns LIMIT_CONFIRMED on the 7th consecutive out-of-band sample, LIMIT_ENDED on the 7th consecutive in-band sample during an excursion. | none |
| `int16_t limit_evaluator_peak(const limit_eval_t *st);` | st != NULL. | The most extreme temperature of the current or last excursion, 0.1 degC. | none |

## Algorithms

- **`limit_evaluator_step`** — Invalid samples are skipped: they neither count nor reset (A-29). out = t < low - hyst OR t > high + hyst while no excursion; in = low + hyst <= t <= high - hyst while in excursion; hyst = MRTM_HYSTERESIS_TENTHS = 0 (A-26). out_run counts consecutive out samples, in_run consecutive in samples; each resets the other. Early alarm (ADR-0030): returns LIMIT_EARLY on the first valid out sample, LIMIT_EARLY_CLEARED when an in sample breaks a run before confirmation. Confirm at out_run == MRTM_CONFIRM_SAMPLES (60 s / 2 s + 1 = 31 -> spans 60 s); end at in_run == 31. Peak = max |distance outside band| sample, kept from the first out sample.

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_limit_evaluator.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
