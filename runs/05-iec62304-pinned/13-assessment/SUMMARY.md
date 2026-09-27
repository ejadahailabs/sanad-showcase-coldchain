# Run 05 — summary (IEC 62304 pinned stack)

**In one line:** same fridge monitor, cut into the four floors the medical software standard names — and the floors line up with the clauses an auditor asks for. DRAFT — needs Masood's review. Sanad is a build in progress.

## Levels
| Level | Nodes | Pictures | Requirements | Class |
|---|---|---|---|---|
| L1 device (PEMS) | 1 | 3 | 70 (STK 8 + device 62) | C |
| L2 hardware item | 1 | 1 | 13 | C (hardware risk controls) |
| L2 software system | 1 | 4 | 19 (SRS) | C |
| L3 software items | 8 | 9 | 21 | 7 × C, usb-item B (segregated) |
| L4 software units | 12 | 3 | 23 | 11 × C, usb-export B |
| **Total** | **23** | **20** | **146** | |

## Checks
| Check | Result | Where |
|---|---|---|
| level-check (pinned rules) | 0 violations · selftest 9/9 | sanad-runs/run5-gate/level-check.txt |
| OMG Pilot 0.61.0 (with profile) | 0 issues / 76 files | run log in DOGFOOD-STATE.md |
| Sanad gate | **0 errors**, 143 warnings (46 outside-component, 36 missing bench result, 23 allocation-target, 12 empty-component, 7 parent-child, 7 id-prefix, 7 not-read, 5 other) | sanad-runs/run5-gate/gate.txt, gate-2/gate.txt |
| Test coverage (Sanad) | required 146 · covered 109 · 36 blocked (bench) · 1 missing (SRS-008) | report-test-coverage.md |
| Host tests on this tree | 14 runners, 85 tests, 0 failures | sanad-runs/host-tests/make-test.txt |
| Baseline | REQ-BL-M1, reads back (`--baseline`, `--diff-config`) | .ejadah/rew/baselines.json |
| Alarm path | STK-002 → SYS-002 → SRS-003 → EXI-002 → LEV-002 → `limit_evaluator_step` → unit test, unbroken | alarm-path-trace.md |
| IEC 62304 index | yes 13 · partly 2 · no 13 (same 28 rows as run 2), with "owed at" per level | iec62304-compliance-index.md |

## Pictures (looked at, graded)
A 1 · B 12 · C 4 · D 3. Best: software modes (A). Worst: software-to-hardware interface and the two unit-contract views (D — floating port labels F-5-006; contract functions not drawn F-5-005). Every grade and reason sits in the node's INDEX.md.

## What Sanad did (headless) · what was manual
- **Sanad did:** 76 requirements through `createRequirement` + `planSerials` (every id the allocator's); the requirement package + 5 per-level packages (`requirementsPackage`); 20 views written (`newViewFile`) and drawn (`canvasFor`) with stored layouts (`layoutPackageText`); Pilot (`validateWithPilot`); code index (`createBuiltinIndex`); gate + 14 reports; baseline (`makeBaseline`).
- **Manual:** framework file; node model (tools/pinned_model.py); requirement text (tools/pinned_data.py); marker retarget (tools/pinned-build.py); level-check rules; INDEX pages; compliance index; this summary. 16 findings (F-5-001…016).
