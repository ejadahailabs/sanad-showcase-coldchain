# Dogfood state — run 05 (IEC 62304 pinned)

## RESUME HERE — run 05 done (gate 0 errors, 143 warnings; baseline REQ-BL-M1; tag dogfood-run-5). Next: Masood's click list (45 min) and ruling A-5-03 (usb-item class B).

### RUN-05 — pinned medical stack (2026-09-27, worker RUN-05)
- SANAD DID: (headless) `createRequirement` + `planSerials` allocated 76 requirements (SRS 19, HWI 13, items 21, units 23), every id as planned; `writeRequirementsPackage` + `requirementsPackage` per level (5 packages); view writer 20 views, `layoutPackageText` 13 layouts (1 hidden box), `canvasFor` drew them; `validateWithPilot` 76 files; `createBuiltinIndex` 46 symbols → 97 ids; gate + reports; `makeBaseline` REQ-BL-M1.
- PROVED BY: Pilot 0 issues / 76 files (profile); `tools/level-check.py` 23 nodes, 146 requirements, 146 satisfy lines, 20 views (max 12 boxes), 0 violations, selftest 9/9; gate 0 errors / 143 warnings (first run: 12 errors from one YAML colon + one regex read as a marker, F-5-007/008); host tests 85 / 0; test coverage 146 · 109 covered · 36 blocked · 1 missing; alarm path unbroken; all in 13-assessment/sanad-runs/.
- MANUAL: framework.yaml (pinned), tools/pinned_data.py, pinned-build.py, pinned_model.py, pinned-views.sh, pinned-layouts.py, pinned-index.py; level-check.py + node-packages.cjs adapted; 65 marker lines retargeted (run 2 subsystem ids → SRS/HWI; unit ids added); library UsbItem/UsbExport class B; 17 rewords after the first gate; INDEX pages; compliance index; alarm-path trace; F-5-001…016; A-5-01…07.
- UI-ONLY: C-5-01…C-5-04 (45 min).
