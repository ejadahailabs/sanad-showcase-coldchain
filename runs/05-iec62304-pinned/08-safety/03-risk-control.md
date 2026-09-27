# 03 — Risk control (ISO 14971:2019 cl. 7.1–7.2)

> **Standard:** ISO 14971:2019 cl. 7.1 (option analysis, in priority order), 7.2 (implementation and verification of each measure); IEC 62304 §7.2–7.3 (software risk controls). **MANUAL** — Sanad links hazard → control requirement (`hazard:` field, Safety engine) but holds no option analysis (F-48). DRAFT — needs Masood's review.

**In one line:** for each danger, which fix did we choose, and of which kind. ISO 14971 wants the strongest kind first: change the design so the danger cannot happen; if not, add a protective part; only last, tell people.

| Hazard | 1. Safe by design | 2. Protective measure | 3. Information for safety | Where it lives in the tree (node) |
|---|---|---|---|---|
| HAZ-001 | probe CRC-8 + plausible range (SAF-003) | probe fault alarm (SAF-002, SAF-011) | probe position in the IFU (SAF-020) | sensing → sensor-item; alarm → alarm-item |
| HAZ-002 | 60 s confirmation, silent early tier (SYS-002, SYS-024) | distinct fault pattern (SAF-011) | — | alarm → excursion-item, alarm-item |
| HAZ-003 | — | backup alarm without processor (SAF-009, SAF-013), watchdog (SAF-004, SAF-010), restore state (SAF-006), backup test (SAF-023) | — | alarm → backup-alarm (one step deeper); supervision |
| HAZ-004 | range check (SAF-003) | — | calibration due message (SAF-012) | sensing; display → display-item |
| HAZ-005 | battery + switch-over (SYS-016, ENV-001) | low-battery alarm (SAF-008), power-fail backup (SAF-013), log (SAF-005) | — | power; alarm → backup-alarm |
| HAZ-006 | — | buzzer loudness (SAF-001), buzzer test (SAF-007), buzzer current check (SAF-014, SAF-015), button fault (SAF-019), I2C recovery (SAF-021) | — | alarm → buzzer, indicators; supervision; display |
| HAZ-007 | band fixed 2–8 °C, CRC-32 (SYS-017, SAF-017) | fail-safe sound on bad band (SAF-017) | band shown at power-up (SAF-016) | supervision; display |
| HAZ-008 | two copies (SAF-018) | clock-stop log (SAF-022), I2C recovery (SAF-021) | — | logging → log-item, rtc |

## Implementation and verification (cl. 7.2)
Every control is a requirement with a `hazard:` link (23 requirements, 28 links, Sanad `safety.hazardCoverage` 100 %). Each is now derived into node requirements down the tree (MODEL-LEVELS) and verified by the cases in `../11-verification/hazard-chain.md`.
**Not yet verified on the bench:** MRTM-SAF-001, MRTM-SAF-013, MRTM-SAF-020 (bench blocked). Single-fault check: `03b-risk-control-single-fault-assessment.md`.

## Four blocks
- **Assumptions:** A-18 (backup alarm). **Risks:** R-11, R-12. **Open questions:** none.
- **Trace links:** 02-risk-evaluation.md, 03b-risk-control-single-fault-assessment.md, 04-residual-risk.md, ADR-0013, ADR-0014, ADR-0034 (classes of the items that carry the controls).
