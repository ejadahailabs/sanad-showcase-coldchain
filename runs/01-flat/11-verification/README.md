# 11-verification — MRTM verification (Phase 10, 10b)

> **Standard:** IEC 62304 §5.5–5.7 (unit, integration, system verification), ISO 14971 §7.2, Class C. **Status:** DRAFT — needs Masood's review.
> **Plain words:** the list of every test, which promise each one checks, and the proof that it ran. The matrices themselves are Sanad's reports — this page only says where they are.

| What | Where | Made by |
|---|---|---|
| Strategy + environment | strategy/verification-strategy.md | hand (MANUAL) |
| Test cases (matrix Sanad reads) | cases/verification-cases.csv — 93 cases: unit 74, integration 5, system 14 | `tools/verif-matrix.py` from the `@verifies` markers + the procedure index (F-93) |
| Unit tests | 10-src/firmware/components/*/test/test_*.c | hand, Unity |
| Integration procedures | procedures/integration-procedures.md (automated: 10-src/test/integration/) | hand |
| System procedures (pass/fail, minutes) | procedures/system-procedures.md (SP-01…SP-14) | hand — test drafting needs an AI key (NO KEY, F-95) |
| **Verification matrix + requirement-coverage matrix** | 13-assessment/sanad-runs/phase-10/report-test-coverage.md (+ .csv): **69 of 69 requirements have at least one case** | **Sanad** `--report test-coverage` |
| requirement → code → case trace | 13-assessment/sanad-runs/phase-10/report-traceability-audit.md ("Verifying cases", "Implemented by") | **Sanad** |
| Coverage items (test-coverage model) | 13-assessment/sanad-runs/phase-10/verification-plan/ — 40 items on 10 requirements, all "not assessable" (F-98) | **Sanad** `planPageFor`, headless |
| Hazard → control → requirement → test | hazard-chain.md | `tools/hazard-chain.py` (F-97) |
| Results (Phase 10b) | results/unit · results/integration · results/system (JUnit XML Sanad reads) | Phase 10b |
| Evidence (Phase 10b) | evidence/ | Phase 10b |

## Requirements with cases, per level (from the matrix)

| Kind | Requirements with a case | …with a unit test | …with an integration test | …with a system procedure |
|---|---|---|---|---|
| ENV | 4 | 0 | 0 | 4 |
| IFC | 4 | 3 | 0 | 4 |
| MNT | 3 | 2 | 0 | 3 |
| PRF | 4 | 3 | 1 | 4 |
| SAF | 23 | 19 | 5 | 23 |
| STK | 8 | 2 | 0 | 8 |
| SYS | 23 | 22 | 4 | 23 |

Stakeholder requirements are verified mainly through their children and the system procedures; two unit tests name one directly (STK-002, STK-006). Environmental and hardware-only requirements have no unit test on purpose: no software implements them (Phase 9 not-implemented list).

## Coverage gaps

| Gap | Seen by Sanad? | Note |
|---|---|---|
| No requirement without a case | Yes — test-coverage report, 0 not covered | |
| Coverage items not counted: no verification plan approved | Yes — says so on the report | approval is a click (C-24, F-99) |
| All 40 coverage items "not assessable" (no resolution for temperature/duration/count) | Yes — plan page states the reason | fixing it needs a dictionary field Sanad does not read yet (F-98) |
| Required verification levels per requirement kind | Partly — "by requirement level: not declared 69 of 69" | the organisation has not declared level rules |
| 1 design-level test (generated codes = model) cannot be a matrix row | No | `verifies` must name a requirement (F-96) |
| Bench-only requirements (ENV, SAF-001, SAF-013, accuracy, timing on the CPU) cannot run in this run | Only after 10b result rows say "blocked" | no hardware (A-30) |
| Structural coverage on the target | No | host only |
| Independence of the verifier | No — not required by the owner | recorded on every row |
