# ADR-0027 — Hardware behind one thin C interface (`mrtm_hal.h`) with host stubs

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 9 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.3 (interfaces of SOUP/hardware), §5.5.2 (unit verification), §5.6.2 (integration)
- **Model:** `MrtmSoftware` hardware-facing ports; 09-hardware/pin-map.md

## Context
Units must run on the PC for unit and integration tests, but they drive GPIO, flash, I2C, 1-Wire and NVS. Like practising a play with cardboard props before the real stage.

## Options
| Option | For | Against |
|---|---|---|
| **One header of ~30 plain functions, two .c files (target / host)** | Simple; units never see ESP-IDF; a test sets the "hardware" through one struct | Link-time choice, not run-time; one global stub state |
| Function-pointer tables per unit | Swap per test | More code in every unit; ADR-0023 said "only if a test asks" |
| CMock-generated mocks | Rich call checks | New SOUP; more to qualify |

## Decision
`components/mrtm_common/include/mrtm_hal.h` is the only hardware door. `hal_esp32.c` (target, UNTESTED) and `host/hal_host.c` (host) implement it. The host stub is a small model of the board: fake clock (ms), probe temperature with a correct or broken CRC, buzzer current sense, the backup alarm's 10 s timer, NOR-flash (writes only clear bits), NVS blobs, I2C timeouts, RTC with an oscillator-stop flag.

## Consequences
- Unit tests use the real neighbouring software units and stub only hardware (A-31).
- The backup alarm and power path are MODELS on the host; their real behaviour is verified on hardware (11-verification, blocked rows).
- `hal_esp32.c` must be reviewed line by line on first target bring-up (REVIEW markers).
