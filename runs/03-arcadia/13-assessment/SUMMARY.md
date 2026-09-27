# Run 03 — Arcadia — summary

**In one line:** Arcadia gave the clearest top-down story of the three runs, but Sanad could check none of its layers or transitions itself — our own script did.

DRAFT — needs Masood's review. 2026-09-27, RUN-03-ARCADIA (headless).

## Layers

| Layer | Elements | Pictures (grade after looking) | Requirements |
|---|---|---|---|
| OA — Operational Analysis | 3 people + 3 things, 4 capabilities, 6 activities | oa_capabilities **A** · oa_architecture **A** | 8 STK (byte-identical to `shared/`) |
| SA — System Analysis | 1 system, 4 actors, 5 ports, 9 functions, 1 functional chain | sa_context **A-** · sa_functions **A-** · sa_alarm_chain **A-** | 62 (SYS 24 · SAF 23 · PRF 4 · ENV 4 · MNT 3 · IFC 4) |
| LA — Logical Architecture | 6 logical components, 7 logical interfaces | la_architecture **B** · la_interfaces **A** | 26 LA |
| PA — Physical Architecture | 9 node parts (+3 inside the backup board), 8 software items, 21 links, 8 deployments | pa_architecture **A-** · pa_interconnection **B-** · pa_backup_alarm **B+** · pa_software **A-** | 36 (PH 16 · SW 20) |
| EPBS | 6 configuration items | epbs_breakdown **A** | 6 CI |
| Transitions | 66 `allocate` in 4 tables | transition_sa_la (matrix, canvas only) | — |

12 pictures, most boxes 10, none over 12. Grades: A 5 · A- 4 · B+ 1 · B 1 · B- 1.

## Numbers

| Check | Result | Evidence |
|---|---|---|
| level-check (5 layers) | **0 violations**; selftest 8/8; derive crosses a transition 3× (info, F-3-014) | `python3 tools/level-check.py -v` |
| OMG Pilot 0.61.0 (profile passed in) | **0 issues / 44 files** | ~/.cache run log; `tools/pilot-headless.cjs` |
| Sanad gate | **0 errors**, 114 warnings (52 missing-result = bench + inspection not runnable, 46 implementation-outside-component + 12 empty-component = run 2 F-132, 3 undeclared prefix, 1 missing case LA-006 = run 2 ALM-006), 197 info | sanad-runs/run3-final/gate.txt |
| Test coverage | required 138 · covered 91 · blocked 46 · missing 1 | run3-final/report-test-coverage.md |
| Host tests | 80 unit + 5 integration, 0 failures; SP-01-H host dry run PASS | run3-final/host-tests.txt, 11-verification/evidence/ |
| Baseline | **REQ-BL-A1** by Sanad's baseline code, 311 finding identities; read back: no trace change | .ejadah/rew/baselines.json, run3-final/report-traceability-audit-since-REQ-BL-A1.md |
| Alarm path | STK-001 → SYS-024 → LA-001 → SW-005 → `limit_evaluator_step` → `test_early_alarm_budget_fits_5_s` PASS — **unbroken** | alarm-path-trace.md |
| IEC 62304 index | 28 clauses: yes 13 · partly 3 · no 12 | iec62304-compliance-index.md |
| Findings | 16 (F-3-001…016) | ../FINDINGS.md |
| Click list | 5 rows, 45 min | ../CLICK-LIST.md |

## The four lines
- **SANAD DID (headless):** allocator + create path for 130 requirements (`planSerials`, `createRequirement`); view writer for 13 views; canvas for 12 pictures; layout writer for 9 arrangements; requirement package + 5 per-layer packages; Pilot runner; code index; gate + all reports; results/coverage producers; baseline REQ-BL-A1.
- **PROVED BY:** Pilot 0 / 44; gate 0 errors; level-check 0 violations; 85 tests pass; baseline read-back clean.
- **MANUAL:** framework.yaml; every layer model (OA/SA/LA/PA/EPBS SysML text); function-per-requirement table; transitions and their tables; level-check; id remap; CI texts; suppressions; this assessment.
- **UI-ONLY:** CLICK-LIST C-3-01…05.
