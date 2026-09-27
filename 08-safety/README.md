# 08-safety — the risk management file (ISO 14971)

> **Standard:** ISO 14971:2019 cl. 4.5 (risk management file), 5–8; IEC 62304 cl. 7 (software risk management); IEC 60601-1 cl. 4.2 (risk management for ME equipment). Plan: `00-project/risk-management-plan.md`. DRAFT — needs Masood's review.

**In one line:** this folder answers "what could hurt someone, how did we stop it, and how will we prove it?" — one file per question.

**Files are numbered in ISO 14971's own order** (MODEL-LEVELS): analysis → evaluation → control → residual risk → overall residual risk → report.

| File | ISO 14971 clause | What it holds | Sanad home? |
|---|---|---|---|
| 01-risk-analysis.md | 5.2–5.5 | 8 hazards, sequences, harms, scores before/after | links yes (`hazard:` field → Safety engine); table no (F-48) |
| 01a-risk-analysis-fmea.md | 5.4 (via IEC 60812) | 27 failure modes over 16 model elements | no (F-48) |
| 01b-risk-analysis-fault-tree.md | 5.4 (via IEC 61025) | top event "excursion not alarmed in 65 s", 9 cut sets | no (F-51) |
| 02-risk-evaluation.md | 6 | each hazard against the ADR-0012 table | no — **new** |
| 03-risk-control.md | 7.1–7.2 | option analysis per hazard, node of each control | links yes; option analysis no — **new** |
| 03b-risk-control-single-fault-assessment.md | 7.3, 7.4, 7.6 (+ IEC 60601-1 cl. 4.7) | single-fault check, residuals R1–R4 | no (F-48) |
| 04-residual-risk.md | 7.3–7.6 | residual per hazard, benefit-risk (owner), risks from controls | no — **new** |
| 05-overall-residual-risk.md | 8 | all residuals together; not accepted yet | no — **new** |
| 06-risk-management-report.md | 9, 10 | release review; cl. 10 not started | no — **new** |
| `../06-design/system/MrtmSafety.sysml` | 5.4, 7.1, 7.2 | hazards as SysML concerns, control → hazard dependencies | model yes |
| `../03-requirements/safety/` | 7.1 | 23 risk-control requirements, `hazard:` links | yes (create path, allocator ids) |
| `../07-adr/ADR-0012…0014` | 4.2, 7.1 | risk matrix, backup alarm, alarm timing budget | no (F-09) |

## The chain: hazard → control → part → verification
Generated from the files on 2026-09-27 (controls from each requirement's `hazard:` field; parts from the SysML `satisfy` lines). Verification cases arrive in Phase 10 through Sanad's `verifies:` links.

| Hazard | Control requirements | Implemented by (SysML satisfy) | Verification |
|---|---|---|---|
| HAZ-001 | SAF-002, SAF-003, SAF-020 | alarmManager, firmware.alarmService, firmware.sensorService, probeSupervisor | Phase 10 |
| HAZ-002 | SAF-011 | firmware.alarmService | Phase 10 |
| HAZ-003 | SAF-004, SAF-006, SAF-009, SAF-010, SAF-013, SAF-023 | firmware, firmware.alarmService, firmware.supervisor, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.buzzerSenseLine, hardware.holdUpCap, hardware.wdtKickLine, supervisor, watchdog | Phase 10 |
| HAZ-004 | SAF-003, SAF-012 | firmware.displayService, firmware.sensorService, probeSupervisor | Phase 10 |
| HAZ-005 | SAF-005, SAF-006, SAF-008, SAF-013 | batterySenseLine, eventLogger, firmware, firmware.alarmService, firmware.logService, hardware.backupAlarm, hardware.holdUpCap, mains, powerService, powerSupervisor, watchdog | Phase 10 |
| HAZ-006 | SAF-001, SAF-007, SAF-014, SAF-015, SAF-019, SAF-021 | buzzer, firmware.alarmService, firmware.displayService, firmware.supervisor, hardware.buzzerSenseLine, hardware.redLine, selfTest | Phase 10 |
| HAZ-007 | SAF-016, SAF-017 | firmware.displayService, firmware.supervisor | Phase 10 |
| HAZ-008 | SAF-005, SAF-018, SAF-021, SAF-022 | eventLogger, firmware.displayService, firmware.logService, hardware.rtc, mains | Phase 10 |

## How to re-check
- `python3 tools/hazard-link-check.py` — Markdown `hazard:` links equal the SysML `dependency mitigates…` links.
- Sanad gate: `safety.hazardCoverage` 100 %, `safety.rigourViolations` 0 (`13-assessment/sanad-runs/phase-5/`).
- OMG Pilot: 0 issues over the design roots.

## Four blocks
- **Assumptions:** A-18…A-21. **Risks:** R-04, R-11, R-12. **Open questions:** none open (Q-05, Q-12, Q-13 answered by assumption).
- **Trace links:** see the table above.
