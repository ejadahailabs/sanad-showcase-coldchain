# ADR-0024 — Configuration: a C header for requirement constants, an NVS record for technician values

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 8 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.4.2 · ISO 14971 cl. 7.1 (HAZ for a wrong band)
- **Model:** `MrtmSoftware::MonitorConfig` (#DataModel), `MrtmSwDetail::ConfigMgrApi`; files 10-src/config/mrtm_config.h, README.md
- **Requirements:** MRTM-SAF-017, MRTM-SYS-017, MRTM-SAF-012

## Context
The job asks: YAML files or a C header? Some values are fixed by a requirement (10 s sampling). Some a technician must set on site (the band, the probe offset). Like a car: the engine size is fixed at the factory, the seat position is set by the driver.

## Decision
1. **`10-src/config/mrtm_config.h`** — every requirement constant as a `#define`, named as the data dictionary's `Software:` line. No YAML: reading it on the device needs a parser (a dependency for a few numbers), and the compiler checks a header.
2. **NVS blob `cfg`** = `mrtm_config_t` {version, band low/high, probe offset, calibration date, CRC-32}. Written at production and by a technician over USB (Q-15). **No default band in the firmware**: missing or bad → failSafe, buzzer on (MRTM-SAF-017).
3. Stored band must sit inside 2.0–8.0 °C (`MRTM_BAND_MIN/MAX_TENTHS`), so a typo cannot widen the band past MRTM-SYS-017.

## Consequences
- A change to a constant is a code change: reviewed, rebuilt, re-verified.
- The production line needs a tool to write the first `cfg` record (Phase 9 build instructions).
