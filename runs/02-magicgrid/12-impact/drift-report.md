# Drift report — what moved since baseline REQ-BL-1

> **Standard:** IEC 62304 §8.1.2–8.1.3 (configuration identification, change control), §8.2 · Class C.
> **Status:** DRAFT — needs Masood's review. **Phase 11, 2026-09-27, DOGFOOD-6.**
> **What this is:** REQ-BL-1 is the photo we took of the requirements before design began (Phase 2b, commit `1f9fd908`). Drift is "spot the difference" between that photo and today.

## Picture first
| Kind of drift | Sanad's number | Sanad's source | The true number (git + model) | Gap |
|---|---|---|---|---|
| Trace links since REQ-BL-1 | **109 changes** (105 at Phase 10b; Phase 11 added 4: requirement MRTM-SYS-024, its uplink, 2 prose references) | `erew --report traceability-audit --baseline REQ-BL-1` | the same 109 **plus 262 SysML `satisfy` links** that exist now and did not then | satisfy links invisible (F-46); hazard links counted twice (F-53) |
| Findings since REQ-BL-1 | **60 new, 7 gone** (24 then → 77 now); Phase 11 alone: +2 on MRTM-SYS-024 (`indefinite-article`, `undeclared-id-prefix` "CR") | Baselines view "Compare" code (`baselineDiff`, `tools/drift-headless.cjs`) | same | none — this part works |
| Requirement text | **0 rewordings shown** | — (the baseline keeps a commit + finding keys, no text) | 24 requirements added (46 → 70), **13 reworded** (PRF-003, SAF-001…007, STK-002, SYS-001, SYS-002, SYS-004, SYS-012); Phase 11 reworded 4: STK-002, SYS-001, SYS-002, SYS-018 | text drift invisible (F-25, F-30) |
| Configuration | **6 rows** changed since REQ-BL-1; **0 in Phase 11** | `erew --diff-config REQ-BL-1` | same keys; the suppressions list is one row (F-32) | coarse, but right |
| Design + code + tests | not reported | — | 189 files added, 12 changed under 06-design, 10-src, 11-verification since REQ-BL-1 | no design/code drift view |

## What this means (plain words)
- Sanad tells you well **which findings are new** since the photo, and **which trace links** appeared — but only links written in requirement files.
- It cannot tell you **that a sentence changed**. Four requirement sentences changed in this phase alone (7 → 31 samples, 10 s → 2 s, "no alert" → "no audible alert"); none shows in Sanad's drift. We read them from `git diff REQ-BL-1 -- 03-requirements`.
- It cannot see the model. 262 design links since REQ-BL-1, 8 of them from this phase, are not in the drift.

## New baseline
**REQ-BL-2** — taken with Sanad's baseline code (`makeBaseline` / `serializeBaselines`, `tools/baseline-headless.cjs`) at the Phase 11 commit, from the findings of the Phase 11 gate run; git tag `REQ-BL-2` added by hand (F-25). Record: 04-baselines/REQ-BL-2.md.

## Sanad outputs
13-assessment/sanad-runs/phase-11/: `report-traceability-audit-since-REQ-BL-1.md` (section "Trace changes since baseline"), `diff-config-since-REQ-BL-1.txt`, `finding-drift-since-REQ-BL-1.txt`, `finding-drift-at-phase-10b.txt`.

## Four blocks
- **Assumptions:** A-38. **Risks:** R-17. **Open questions:** Q-19.
- **Trace links:** REQ-BL-1, REQ-BL-2; MRTM-SYS-024, STK-002, SYS-001, SYS-002, SYS-018; ADR-0006, ADR-0030, ADR-0031.
