# Where every domain figure comes from

> MODEL-LEVELS, 2026-09-27. DRAFT — needs Masood's review. **Sources are ASSUMED** — WHO PQS E006 (temperature monitoring devices) and the CDC Vaccine Storage and Handling Toolkit were NOT opened in this run; each line is "to confirm against the edition the customer uses". Everything else is a numbered assumption.

**In one line:** every number in the requirements should say where it came from, so a reviewer can check it — like a recipe that says "200 °C, from the oven maker's manual".

| Figure | Requirement(s) | Source | Status |
|---|---|---|---|
| Allowed band 2 °C to 8 °C | MRTM-SYS-017 | CDC toolkit (refrigerated vaccines); WHO PQS E006 | assumed source — to confirm |
| Excursion = outside the band for 60 s (31 samples at 2 s) | MRTM-SYS-002, MRTM-SYS-018, MRTM-ALM-002 | no published figure found in memory; product choice to filter door openings | **A-04** (+ ADR-0031) |
| Sampling period 2 s | MRTM-SYS-001, MRTM-SEN-001 | derived from the 5 s early alarm (ADR-0031); CDC recommends continuous monitoring with a digital data logger, interval not fixed at 2 s | **A-04**, ADR-0031 |
| Accuracy ±0.5 °C (0 °C to 15 °C) | MRTM-PRF-001, MRTM-SEN-003 | CDC toolkit (data logger accuracy ±0.5 °C); WHO PQS E006 | assumed source — to confirm |
| Log retention 10 000 events | MRTM-SYS-015, MRTM-LOG-002 | CDC toolkit asks records be kept (years, not a count) | **A-04** (count is a product choice) |
| Clock drift ≤ 2 s/day | MRTM-SYS-020, MRTM-LOG-004 | typical compensated clock part | **A-14** |
| Battery 4 h | MRTM-ENV-001, MRTM-PWR-002 | none | **A-11** |
| Early alarm ≤ 5 s | MRTM-SYS-024 | change request CR-001 | ADR-0030, A-37 |
| Buzzer ≥ 65 dB(A) at 1 m | MRTM-SAF-001 | IEC 60601-1-8 disclosure (D-7) | synthetic — A-40 |
| Re-sound after 15 min | MRTM-SYS-019 | IEC 60601-1-8 leaves the pause duration to the maker (D-4) | **A-13** |
| Part figures (750 ms conversion, 9 s timer, 2000 mAh, 5 mm digits) | leaf requirements (PRB, BKT, BAT, OLD) | part classes, synthetic | **A-40** |

## Four blocks
- **Assumptions:** A-04, A-11, A-13, A-14, A-37, A-39, A-40. **Open questions:** Q-20. **Trace links:** tools/levels_data.py (each node requirement's rationale carries its source line).
