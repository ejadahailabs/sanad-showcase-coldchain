# Release notes — dogfood run 1 (MRTM firmware and documents at REQ-BL-2)

> **This is a run record, NOT a release.** Only Masood says "release". IEC 62304 §5.8 (software release: version, residual anomalies, how it was built) · Class C · DRAFT — needs Masood's review.
> Like the label on a jar: what is inside, what was checked, and what was not.

## Identity
| Field | Value |
|---|---|
| Repository | `Office_Projects/dogfood-fridge` (local git, no remote) |
| Configuration | baseline **REQ-BL-2** = commit `1e6822a`; run tag `dogfood-run-1` |
| Firmware build proved | host build `c32f4f1` (gcc, `-Werror`), Unity v2.6.1 |
| Firmware build NOT proved | ESP-IDF target build (`10-src/firmware`, `hal_esp32.c`) — never compiled (A-30, Q-16) |
| Tool | Sanad `745ef793` (build `sanad-sysml-r4int3-d388e43e.vsix`), headless |

## What was built
| Item | Count |
|---|---|
| Requirements (all Class C, Sanad allocator ids) | 70: STK 8 · SYS 24 · SAF 23 · PRF 4 · ENV 4 · MNT 3 · IFC 4 |
| SysML v2 model | 40 files (OMG Pilot 0 issues with the profile), 22 views, 262 satisfy links |
| Firmware | 12 units + common / app / HAL; 46 functions traced with `@implements`; C (C++ for the display) |
| Tests | 80 unit + 5 integration Unity tests, 1 host dry run (SP-01-H, 11 checks), 14 bench procedures |
| Risk file | 8 hazards, 23 risk-control requirements, FMEA 27 rows, fault tree 9 cut sets |
| Decisions | ADR-0001…0031 |
| Change in this run | CR-001: early alarm ≤ 5 s (MRTM-SYS-024), two-tier alarm, 2 s sampling (ADR-0030/0031) |

## What passed
- Host build clean. 80/80 unit and 5/5 integration tests pass. SP-01-H 11/11.
- Line coverage 581/598 (97 %). Functions 85/87.
- 53 requirements reach code. The other 17 are 9 hardware/labelling requirements (accepted) and 8 stakeholder requirements.
- The Sanad gate is **red on purpose**: 17 warnings. 16 are `missing-result` for bench-only requirements. 1 is the "CR" id prefix in MRTM-SYS-024.

## What is untested
| Gap | Why | Blocks |
|---|---|---|
| 16 requirements: ENV-001…004, IFC-004, MNT-001, SAF-001, SAF-013, SAF-020, SYS-016, STK-001, STK-003, STK-004, STK-005, STK-007, STK-008 (plus the bench halves of SP-01…SP-14) | no board, no instruments (Q-18, A-30) | system verification record; 3 risk controls with no passing evidence (SAF-001, SAF-013, SAF-020) |
| Every timing on the real ESP32-S3 (task deadlines, 2 s sampling, 5 s early alarm) | host timing only (A-36) | MRTM-SYS-024 is "covered" by the host run only |
| ESP-IDF build, NVS, flash ring on real flash, USB mass storage | not installed (Q-16) | SOUP-1 version |
| Early-alarm text on the screen | not built (12-impact row S-5) | none — the light works |
| All EE-REVIEW values (pins, currents, battery curve, probe self-heating at 2 s) | no electrical review (Q-14) | hardware design |

## Defects
| State | Items |
|---|---|
| Open | **DEF-006** — no backup-alarm sense line, so MRTM-SAF-023 cannot be met on the board as drawn (Q-17, EE decision) |
| Closed in this run | DEF-001…005, DEF-007, DEF-008 (evidence logs were git-ignored; fixed in Phase 12) |
| Tool findings (not product defects) | 118 in FINDINGS.md, to be filed by the coordinator |

## Assumptions to confirm (the ones that change the product)
| # | Assumption |
|---|---|
| A-18 | There is a hardware backup alarm (outside watchdog + hold-up capacitor) |
| A-20 | Synthetic 3 × 3 risk scales |
| A-25 | ESP32-S3 module |
| A-26 / A-29 | Time hysteresis only; bad samples neither count nor reset |
| A-35 / A-36 | Verification stage values; a host pass never closes a bench case |
| A-37 / A-38 | The 5 s is counted from the probe reading; the early tier is not logged |
| All | A-01…A-38 in ASSUMPTIONS.md are synthetic or assumed; none is confirmed yet |

## Four blocks
- **Assumptions:** A-01…A-38. **Risks:** R-01…R-17. **Open questions:** Q-17, Q-18, Q-19 (open); Q-01…Q-16 answered by assumption.
- **Trace links:** REQ-BL-2; 13-assessment/sanad-runs/phase-11/; 11-verification/records/; 05-reviews/defect-log.md.
