# Dogfood run state — keep current; a fresh session reads this first

## RESUME HERE (2026-09-26 23:30 IST — folder set up by the coordinator; NOTHING RUN YET. Next: Phase 0 headless — find Sanad's headless setup path (CLI / plan file) or write .ejadah/rew/config.yaml by hand and log it as UI-ONLY in CLICK-LIST.md.)

## Phase log (newest first; one block per finished phase, the four lines verbatim)

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
