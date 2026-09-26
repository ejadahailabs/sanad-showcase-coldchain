# Dogfood run state — keep current; a fresh session reads this first

## RESUME HERE (2026-09-27, DOGFOOD-1 stopped after Phase 2b) — Next: **Phase 3 (requirements review)** with Sanad's Review capability. Headless tools in `tools/` (setup, author-requirements, new-view, render-view, baseline, sanad-checks.sh) run against the unpacked vsix at `~/.cache/tmp-dogfood1/vsix/extension` (unzip `builds/sanad-sysml-r4int3-d388e43e.vsix` there if missing; source snapshot of 745ef793 in `~/.cache/tmp-dogfood1/src745` via `git archive`). Apply PROMPT.md "Owner orders added 2026-09-27 00:05" (Class C, SysML weight). Baseline = REQ-BL-1. Click list C-01..C-07 waits for Masood.

## Phase log (newest first; one block per finished phase, the four lines verbatim)

### Phase 2b — Baseline (2026-09-27, DOGFOOD-1)
- SANAD DID: (headless) Sanad's baseline code wrote `.ejadah/rew/baselines.json` — baseline **REQ-BL-1** at commit `1f9fd908` (clean), 24 finding identities.
- PROVED BY: `erew --report traceability-audit --baseline REQ-BL-1` → "no trace changes"; `erew --diff-config REQ-BL-1` resolves the label to the commit (13-assessment/sanad-runs/phase-2b/).
- MANUAL: git tag REQ-BL-1, 04-baselines/REQ-BL-1.md, ADR-0006. F-24, F-25.
- UI-ONLY: Baselines view + compare (C-07); Set Baseline command (F-23, done headless).

### Phase 2 — Requirements (2026-09-27, DOGFOOD-1)
- SANAD DID: (headless) 46 requirements created by `createRequirement` from the 7 templates with allocator ids (`planSerials`, atomic claim) — STK 8 · SYS 16 · SAF 7 · PRF 4 · ENV 4 · MNT 3 · IFC 4; analysis engines validation, traceability, quality (requirements-writing pack), structure, verification, consistency, impact; criticality resolved C → rigour 4 for all 46; accepted findings held in Sanad's `suppressions:`; reports traceability, traceability-audit (+CSV), requirements (+trace, document layout = the SRS), statistics, validation, eiwr, test-coverage generated as files.
- PROVED BY: `erew --gate warning` → gate passed, 0 errors, 0 warnings, 24 info (was 33 warnings on first draft); `--check-config` 0 refusals; files in `13-assessment/sanad-runs/phase-2/`.
- MANUAL: requirement text; 11 rewordings; reasons for 11 suppressions; accepted-findings register; 7 not-yet-derivable placeholders; glossary `Defined by:` links; ADR-0005. F-17..F-22.
- UI-ONLY: requirement form, traceability view, structure view, Problems panel (C-04..C-06).

### Phase 1 — ConOps (2026-09-27, DOGFOOD-1)
- SANAD DID: (headless) Sanad's view writer (`newViewFile` + `ensureRenderingsPackage` + `writeViewFile`, through the mutation engine) wrote `06-design/views/MrtmUseCasesView.sysml`, `MrtmContextView.sysml`, `SanadRenderings.sysml`; Sanad's canvas code (`canvasFor`) drew both views to SVG in `06-design/views/rendered/`; the SysML reader loaded the project (4 files, 11 elements).
- PROVED BY: `erew --gate warning` → sysml project read, 0 errors, 2 info unresolved standard-library imports; outputs in `13-assessment/sanad-runs/phase-1/`.
- MANUAL: problem statement, operational concept, user stories, scenarios (Mermaid), vision; the use-case/context model package `06-design/system/MrtmUseCases.sysml`; open questions Q-06..Q-09; ADR-0004 (one design root). F-12..F-15.
- UI-ONLY: canvas check of both views (C-02, C-03); capture flow does not exist at all (F-13, MANUAL not UI-ONLY).

### Phase 0 — Sanad setup (2026-09-27, headless worker DOGFOOD-1)
- SANAD DID: (headless) Setup's own writers from the packaged build — `starterConfig`, `starterTemplate` ×7, the requirements-writing pack, `productFileText`, `applyConfigEdits` — driven by `tools/setup-headless.cjs`; wrote `.ejadah/rew/config.yaml`, 7 templates (MRTM-STK/SYS/SAF/PRF/ENV/MNT/IFC, `safetyClass` → dal role), `sanad-product.yaml`.
- PROVED BY: `erew --check-config` → "0 refusals, 0 warnings"; `erew --gate warning` → 7 analyses ran, 1 warning (clean % has no denominator: no requirements yet), rule pack requirements-writing loaded, glossary + data dictionary lanes read; all outputs in `13-assessment/sanad-runs/phase-0/` (empty-folder run in `phase-0-empty/`: "no Sanad repository", exit 2).
- MANUAL: charter, scope, stakeholder list, SDP / risk-management plan / SOUP list / CM plan skeletons (Class C), glossary + data dictionary text, ADR-0001..0003, registers; `producers.glossary`, `criticality:` and `ignore:` config keys (Setup has no step for them). F-02..F-11.
- UI-ONLY: Setup form itself (C-01 — re-open it on the written config to confirm it reads back).

## Open questions to Masood
_(none yet)_
