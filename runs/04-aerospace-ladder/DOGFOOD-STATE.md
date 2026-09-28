# Dogfood state — run 4, aerospace ladder

## RESUME HERE — run 4 done (gate 0 errors, level-check 0 violations, REQ-BL-B1, tag `dogfood-run-4`). Next: Masood's click list (55 min) and his word on A-4-04, A-4-06, A-4-07.

## Log (newest first; the four lines per step)

### Step 4 — gate, baseline, assessment (2026-09-27, RUN-04)
- SANAD DID: (headless) gate + every report over the tree (4 rounds, 121 → 0 errors); `createBuiltinIndex` code index (45 LLR sites); `writeRequirementsPackage` + `requirementsPackage` per rung (4 packages in 04-baselines/packages-per-level); `makeBaseline` wrote **REQ-BL-B1**; results + coverage producers read 99 JUnit rows + LCOV; test coverage counted by level itself (HLR 35/38, LLR 39/45).
- PROVED BY: 13-assessment/sanad-runs/gate-final/ (0 errors, 367 warnings, 321 info); `tools/level-check.py` 0 violations (selftest 8/8); OMG Pilot 0 issues / 59 files; host build + 84 tests + SP-01-H pass.
- MANUAL: implements role kept on the LLR template only (F-4-007); 6 rewords + one split (MRTM-HLR-038 via Sanad's create path); 11 PSSA suppressions (F-4-011, A-4-07); trace words taken out of tool comments (F-4-010); DO-178C objectives index, alarm-path trace, SUMMARY, FINDINGS (20), ASSUMPTIONS (10), CLICK-LIST (6).
- UI-ONLY: C-4-01…C-4-06.

### Step 3 — views, safety assessment, indexes (2026-09-27, RUN-04)
- SANAD DID: (headless) the view writer wrote 10 views; `canvasFor` drew them; `layoutPackageText` stored 4 arrangements; OMG Pilot through `validateWithPilot`.
- PROVED BY: every PNG LOOKED at (grades: A 2 · B 6 · C 2; two redrawn after a first look: system_functions F → A, system_items D → B, alarm architecture D → B); boxes ≤ 11.
- MANUAL: FHA (08-safety/01-fha.md), PSSA with DAL per item, partitioning argument and 2 derived HLR (08-safety/02-pssa.md); INDEX.md per node (17) and DECOMPOSITION.md (`tools/aero-index.py`); `tools/level-check.py` adapted to the ladder.
- UI-ONLY: C-4-01 (walk the views).

### Step 2 — model (2026-09-27, RUN-04)
- SANAD DID: (headless) `writeRequirementsPackage`; OMG Pilot via `validateWithPilot`.
- PROVED BY: Pilot 0 issues after F-4-006 (file order); 177 satisfy lines, each on its own node.
- MANUAL: `tools/aero_model.py` (aircraft, system, 10 items, 5 designs, 4 helper packages); run 2's library copied to `06-design/common/`, software levels and five software items in `MrtmSoftware.sysml`.
- UI-ONLY: none.

### Step 1 — framework, requirements, markers (2026-09-27, RUN-04)
- SANAD DID: (headless) `createRequirement` + `planSerials` allocated **107** new requirements (FUN 5, SOB 5, HWR 14, HLR 38, LLR 45 — incl. the split) with the create path's own `folder` option; native `do178c` DAL scale; roles `hlr` / `llr`.
- PROVED BY: tools/aero-ids.json (key → id); the allocator never reused an id after the folder fix (F-4-005).
- MANUAL: `.ejadah/rew/framework.yaml`, 5 templates, config (scale, roles, uplink order); `tools/aero_data.py` (texts, re-homing of run 2's node requirements, test mapping); `tools/aero-build.py` (system uplinks STK → FUN, SAF → SOB, DAL per requirement; 45 code sites → LLR, 84 test markers → HLR/LLR, bench rows).
- UI-ONLY: C-4-02.

### Step 0 — starting kit (2026-09-27, RUN-04)
- Copied `shared/` needs and figures, run 2's `tools/`, `10-src/`, `11-verification/`, `.ejadah/rew/`, model library and hazard table. Run 2's baselines REQ-BL-1…3 stay in `baselines.json` as copied history (they name run 2's commits).

### 2026-09-28 — framework file now read by Sanad (SHOWCASE-FW)
Sanad's framework reader (main 3db89087, build in progress) was run over this file. Word changes so it accepts it — node names, depths, aspects and prefixes unchanged:
- `requirement_kinds: {hardware-item: hardware-item, software-item: hlr}` → `[hardware-item, hlr]`. The map was keyed by node kind; the reader reads the keys as templates, and `software-item` is none.
- `children_become: next-rung` → commented out. The schema knows only `black_box` / `white_box`; a fixed ladder writes no `children_become`. The run's word stays in the comment.
- `supply: power` added: the model types its supply ports by `PowerPort`.
Reader result after the change: accepted, 0 refusals.
