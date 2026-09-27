# src/test — test harness

> **Standard:** IEC 62304 §5.5.2–5.5.5 (unit verification), §5.6 (integration testing), Class C. **Status:** DRAFT — needs Masood's review.

| Path | What |
|---|---|
| `unity/` | Unity v2.6.1, vendored unmodified (SOUP-7, `unity/SOUP.md`) |
| `test_support.h` | shared set-up: fresh stub hardware, valid 2–8 °C config, empty log |
| `integration/test_int_chains.c` | 5 integration tests (INT-01…05) over the whole app on the host scheduler |
| `../firmware/components/*/test/test_*.c` | unit tests, one file per unit (ADR-0023) |

Every test function carries `/* @verifies <ids> */` on the line above it. Sanad does not read those markers in C files (F-93), so `tools/verif-matrix.py` copies them into `11-verification/cases/verification-cases.csv`, the declared matrix Sanad does read.
