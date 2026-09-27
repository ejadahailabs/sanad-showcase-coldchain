# Contract — `config_mgr` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::ConfigMgrApi` from one table (tools/detail-design.py).
> **Component:** `configMgr` (.ejadah/rew/architecture/configMgr.md) · **Satisfies:** MRTM-SAF-017

**What it does:** Load and check the technician values.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef struct { uint16_t version; int16_t band_low_tenths, band_high_tenths, probe_offset_tenths; uint32_t calibration_utc; uint32_t crc32; } mrtm_config_t;
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t config_mgr_load(mrtm_config_t *out);` | NVS initialised. | out valid only when MRTM_OK. There is NO default band in firmware: a missing or bad record means failSafe with the buzzer on within 5 s (MRTM-SAF-017). | MRTM_ERR_NVS, MRTM_ERR_CRC |
| `mrtm_err_t config_mgr_store(const mrtm_config_t *in);` | Technician command over USB (Q-15). | Stored with a fresh CRC; CONFIG_CHANGED logged; takes effect at the next restart. | MRTM_ERR_ARG, MRTM_ERR_NVS |

## Algorithms

- **`config_mgr_load`** — Read NVS blob 'cfg'; CRC-32 over all bytes before crc32 must match; band must satisfy MRTM_BAND_MIN_TENTHS <= low < high <= MRTM_BAND_MAX_TENTHS.

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_config_mgr.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
