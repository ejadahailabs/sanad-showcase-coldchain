# Domain figures — every number and where it came from

> Copied from run 2 (`runs/02-magicgrid/13-assessment/domain-figures-sources.md`, tag `dogfood-run-2`). DRAFT — needs Masood's review. Read-only truth for runs 03+.

**In one line:** every number in the requirements says where it came from, so a reviewer can check it — like a recipe that says "200 °C, from the oven maker's manual".

**Watch out:** the published sources (WHO PQS E006, CDC Vaccine Storage and Handling Toolkit) were **not opened**. They are assumed. Each one still needs checking against the edition the customer uses. Every other figure is a numbered assumption (A-nn in `runs/02-magicgrid/ASSUMPTIONS.md`).

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

The settings the monitor stores (band limits, timeouts, battery threshold, log size) are in `glossary.md`, part 2, with their units and ranges. Their values are synthetic: assumption **A-04** unless a row above says otherwise.
