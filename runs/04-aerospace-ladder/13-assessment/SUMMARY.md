# Run 4 — aerospace ladder: summary

**In one line:** the same fridge monitor, built the way an aircraft system is built — product, system, items, then HLR → LLR → code inside each software item — and Sanad, whose own words ARE DO-178C's, followed this ladder better than the medical one, but has no home for the safety half (FHA, PSSA, partitioning). DRAFT — needs Masood's review.

## The ladder

| Rung | Nodes | Pictures (graded after looking) | Requirements | DAL |
|---|---|---|---|---|
| aircraft (product) | 1 | aircraft_context B · aircraft_functions B | 18: STK 8 · FUN 5 · SOB 5 | A (FUN-004 C) |
| system | 1 | system_functions A · system_items B · system_hardware C · system_software C · system_alarm_sequence A | 62: SYS 24 · SAF 23 · PRF 4 · ENV 4 · MNT 3 · IFC 4 | A 52 · B 3 · C 15 (incl. aircraft) |
| item | 10 (5 HW, 5 SW) | alarm_sw_functions B | 52: HWR 14 · HLR 38 (2 derived) | A: sensor/alarm/controller-hw, alarm/platform-sw · B: power-hw, display-hw/sw · C: record-sw · D: export-sw |
| software design | 5 | alarm_sw_design_architecture B · alarm_sw_design_states B | 45 LLR (one per code site) | as its item |
| code + tests | — | — | 45 code sites → LLR only; 99 cases | — |

## Numbers

| Check | Result |
|---|---|
| `tools/level-check.py` | 17 nodes · 177 requirements · 177 satisfy lines · 45 code links · **0 violations** (selftest 8/8) |
| OMG Pilot 0.61.0 (with profile) | **0 issues / 59 files** — after renaming the library so it loads first (F-4-006) |
| Sanad gate | **0 errors**, 367 warnings, 321 info (gate rounds: 121 → 5 → 1 → 0 errors) |
| Test coverage (Sanad) | required 177 · covered 88 · 70 blocked (bench) · 19 missing; **HLR 35/38 · LLR 39/45** |
| Host build | `-Werror` clean; 79 unit + 5 integration Unity tests pass; SP-01-H pass; lines 581/598 |
| Baseline | **REQ-BL-B1** (Sanad makeBaseline, 688 finding identities, at `b3ad9be`) |
| DO-178C Annex A, DAL A (71) | Sanad home **yes 15 · partly 22 · no 32** · n/a 2 |
| Alarm path | STK-001 → FUN-002 → SYS-024 → HLR-004 → LLR-008 → `limit_evaluator_step` → test **pass**, unbroken |
| Findings | 20 (F-4-001…F-4-020), 1 positive |
| Click list | 6 clicks, 55 min |

## What a reviewer can follow
The story reads top to bottom in `06-design/DECOMPOSITION.md`: every requirement points one rung up, every item has a DAL with a one-line reason (`08-safety/02-pssa.md`), and every line of code names exactly one LLR. The two hardware/software interconnection pictures are still hard to read (floating port labels, F-4-018).
