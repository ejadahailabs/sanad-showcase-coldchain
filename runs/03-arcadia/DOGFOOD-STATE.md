# Dogfood state — run 03 (Arcadia)

## RESUME HERE — run 03 done (tag `dogfood-run-3`, baseline REQ-BL-A1); next: Masood's click list (C-3-01…05, 45 min) and his word on A-3-07 (USB item class B)

**In one line:** the monitor is broken down in Arcadia's five layers, every picture was looked at, every check is green; only clicks and one owner decision are left.

## Note — framework reader cleanup (2026-09-29, follow-up worker, Sanad `proto/fw-samples-2` @ `1f0611dc`)
Sanad now reads this run's `framework.yaml` (closes F-3-001) and warns `framework-unknown-key` (path + line) for any key it does not read. This run's Arcadia layers use a completely different shape (`name`/`title`/`question`/`elements`/`views` per layer) than Sanad's fixed-layer schema (`node_kind`/`requirement_prefix`/`aspects`/`requirement_kinds`/…), so almost every key was flagged (64 warnings). Fixed: `framework:` renamed to `name:`; each layer's `name: oa/sa/la/pa/epbs` renamed to `node_kind:` (a real schema field, and the truest one-line match for "which layer this is"); every other layer/rules/header key turned into a comment. Reader now: **0 refusals, 0 unknown-key warnings** (was 64). Side effect not fixed here: `tools/arcadia.py` (layer titles/elements/transitions), `tools/level-check.py` and `tools/levels_index.py`/`levels-build.py`/`levels_model.py` read the layer's `title`/`question`/`elements`/`views`/`prefixes` fields straight from the YAML; since those are now comments, those scripts need their own update before their next run.

## Done (2026-09-27, RUN-03-ARCADIA, headless)
| Step | Result |
|---|---|
| Framework file | `.ejadah/rew/framework.yaml` — Arcadia, step with depth pinned at 5, views per layer, transitions, rules |
| Requirements | 138 over 5 layers via Sanad's allocator (SA ids came out identical to run 2) |
| Model | OA, SA, LA, PA, EPBS packages + 66 transition `allocate` + 5 trace files; library reused from run 2 |
| Pictures | 12 drawn by Sanad's canvas, looked at, graded (A 5 · A- 4 · B+ 1 · B 1 · B- 1) |
| Checks | level-check 0 violations (8/8 selftest) · Pilot 0 / 44 · gate 0 errors / 114 warnings · 85 tests pass |
| Alarm path | STK-001 → SYS-024 → LA-001 → SW-005 → code → test, unbroken |
| Assessment | 13-assessment/SUMMARY.md, iec62304-compliance-index.md, alarm-path-trace.md, iec60601-1-8-check.md, sanad-runs/ |

## Phase log
### RUN-03 — Arcadia rebuild (2026-09-27)
- SANAD DID: (headless) `planSerials` + `createRequirement` ×130; `newViewFile`/`writeViewFile` ×13; `canvasFor` ×12; `layoutPackageText` ×9; `writeRequirementsPackage` + `requirementsPackage` ×5; `validateWithPilot`; `createBuiltinIndex`; gate + reports; results/coverage producers; `makeBaseline` REQ-BL-A1.
- PROVED BY: Pilot 0 issues / 44 files; gate 0 errors (first run 6 errors: 5 CI atomicity, 1 false trace claim); level-check 0 violations; 85 Unity tests 0 failures, SP-01-H PASS; REQ-BL-A1 read-back "no trace changes".
- MANUAL: framework file, layer models, transitions, level-check, id remap, CI texts, suppressions, assessment — F-3-001…016.
- UI-ONLY: CLICK-LIST C-3-01…05.

## Open with Masood
- A-3-07 / run 2 F-133: keep the USB item class B with segregation, or make it C.

### 2026-09-28 — framework file now read by Sanad (SHOWCASE-FW)
Sanad's framework reader (main 3db89087, build in progress) was run over this file. It accepted it as written:
- Nothing refused. Only the header comment was updated.
- `supply: power` added: the model types its supply ports by `PowerPort`.
Reader result after the change: accepted, 0 refusals.
