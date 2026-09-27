# src/config

Firmware configuration — decided in ADR-0024 (Phase 8).

| File | What | Changes how |
|---|---|---|
| `mrtm_config.h` | Build-time constants fixed by requirements (periods, counts, timeouts, task priorities, log size) | New firmware build |
| NVS record `mrtm_config_t` (no file here) | Technician values: allowed band, probe offset, calibration date, with CRC-32 | Technician command over USB; checked at every power-up (MRTM-SAF-017) |

A C header, not YAML: the firmware cannot read YAML without adding a parser (a dependency for a few constants), and a header is checked by the compiler.
