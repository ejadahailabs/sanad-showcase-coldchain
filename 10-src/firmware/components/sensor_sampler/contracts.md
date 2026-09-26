# Contract — `sensor_sampler` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::SensorSamplerApi` from one table (tools/detail-design.py).
> **Component:** `sensorSampler` (.ejadah/rew/architecture/sensorSampler.md) · **Satisfies:** MRTM-SYS-001, MRTM-SYS-012, MRTM-SAF-003, MRTM-IFC-001, MRTM-PRF-001

**What it does:** Read the probe, check it, and say when it has failed.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef struct { int16_t tenths; uint32_t utc_s; bool valid; } mrtm_sample_t;  /* valid = CRC ok AND -30..50 degC */
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t sensor_sampler_init(const mrtm_config_t *cfg);` | cfg != NULL, config CRC already checked. | Bus reset done, first conversion started. | MRTM_ERR_ARG, MRTM_ERR_BUS |
| `mrtm_err_t sensor_sampler_read(uint32_t now_s, mrtm_sample_t *out);` | Called by sensorTask every MRTM_SAMPLE_PERIOD_MS (2 s, ADR-0031). | out->valid is false on CRC or range failure; tenths = raw/1.6 + probe offset, rounded to 0.1 degC. | MRTM_ERR_BUS, MRTM_ERR_CRC, MRTM_ERR_RANGE |
| `bool sensor_sampler_probe_fault(uint32_t now_s);` | none | true when the last valid sample is 30 s old or older (MRTM_PROBE_FAULT_S), or the last reading was out of range. | none |

## Algorithms

- **`sensor_sampler_read`** — Read 9-byte scratchpad; CRC-8 (Dallas/Maxim, poly 0x31) over bytes 0..7 must equal byte 8; raw 12-bit two's complement / 16 = degC; outside -30..50 degC -> RANGE (MRTM-SAF-003, declares probe fault at once); start the next 750 ms conversion.
- **`sensor_sampler_probe_fault`** — fault = (now_s - last_valid_s >= 30) OR last_out_of_range. Clears on the next valid sample (event PROBE_RECOVERED).

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_sensor_sampler.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
