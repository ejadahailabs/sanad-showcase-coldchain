# Click list — the only things that need Masood at a keyboard

**Total: 32 clicks · 171 minutes** (161 without C-26, which is only for AI proposals). MODEL-LEVELS added C-30…C-32; C-30 replaces the per-view checks C-02, C-03, C-10, C-13, C-15, C-17, C-20 (their views were archived), so skip those. Run complete 2026-09-27 — do them in one sitting.

**Recommended order** (grouped by the screen you are on, so you open each view once):
1. Setup + config: C-01 (10)
2. Requirement form + Problems panel: C-04, C-09, C-14, C-06 (18)
3. Traceability + structure: C-05, C-22 (9)
4. Baselines: C-07, C-29 (6)
5. Design canvas: C-02, C-03, C-10, C-12, C-13, C-15, C-16, C-17, C-20 (49)
6. OMG Pilot: C-11, C-19 (6)
7. Design lenses: C-18, C-21, C-23 (11)
8. Verification: C-24, C-25, C-27 (14)
9. Impact: C-28 (5)
10. Review (no remote): C-08 (5)
11. Optional, only with an AI key: C-26 (10)

Each line: what to press · on which file · what to check · minutes.

| # | Phase | Press | File | Check afterwards | Min |
|---|---|---|---|---|---|
| C-01 | 0 | Command Palette → "Sanad: Set Up Sanad in This Folder" (re-open on the configured repo) | .ejadah/rew/config.yaml | The form shows the 7 types, ids = provided, profile requirements-writing, the 4 design roots; press Save and check `git diff` is empty or only cosmetic | 10 |
| C-02 | 1 | Sanad: Open Design → view `mrtmUseCases` | 06-design/views/MrtmUseCasesView.sysml | Picture shows 6 use cases, subject Monitor, 5 actors, one include; matches 06-design/views/rendered/mrtmUseCases.svg | 5 |
| C-03 | 1 | Sanad: Open Design → view `mrtmContext` | 06-design/views/MrtmContextView.sysml | Fridge.air connected to Monitor.probe; matches rendered/mrtmContext.svg | 3 |
| C-04 | 2 | Sanad explorer → open 3 requirements (MRTM-SYS-003, MRTM-SAF-001, MRTM-STK-001) in the requirement form | 03-requirements/ | Form shows safetyClass C, uplinks resolve, no red fields | 5 |
| C-05 | 2 | Sanad: Open Traceability view, then the structure / hierarchy view | whole repo | Tree STK → SYS → SAF/PRF/ENV/MNT/IFC matches 13-assessment/sanad-runs/phase-2/report-traceability.md; 46 requirements | 5 |
| C-06 | 2 | Problems panel | whole repo | 0 errors, 0 warnings, 24 info; the 11 suppressions shown as suppressed with reasons | 3 |
| C-07 | 2b | Sanad Baselines view → REQ-BL-1 → Compare | .ejadah/rew/baselines.json | REQ-BL-1 listed with commit 1f9fd908; compare shows no new findings at the baseline commit | 3 |
| C-08 | 3 | Sanad Review view (activity bar) with the repo open | .ejadah/rew/config.yaml `review:` (project `local/dogfood-fridge`, placeholder — Q-11) | The view says plainly that the request cannot be read (no remote), and offers nothing broken. Then Command Palette → report "review-records": 2 records, 0 open majors | 5 |
| C-09 | 3 | Sanad explorer → open MRTM-SYS-017, MRTM-SYS-019, MRTM-SAF-008 in the requirement form; then the Problems panel | 03-requirements/ | Form shows safetyClass C and the uplink; Problems: 0 errors, 0 warnings, 27 info | 5 |
| C-10 | 4 | Sanad: Open Design → views mrtmBlocks, mrtmInterfaces, mrtmExternalInterfaces, mrtmDataFlow, mrtmContainment, mrtmAllocation | 06-design/views/*.sysml | Each picture matches rendered/<view>.svg (allocation: table with 1 mark); ports on part edges in mrtmInterfaces; no red problems | 10 |
| C-11 | 4 | Sanad: Validate SysML with the OMG Pilot (set SYSML_PILOT_HOME first) | 06-design/ | "OMG Pilot" group in Problems is empty — matches 13-assessment/sanad-runs/phase-4/pilot.txt (0 issues, 16 files) | 3 |
| C-12 | 4 | Design panel tree → select `alarmManager`, `probeLink` | 06-design/system/ | Inspector shows the satisfy links (MRTM-SYS-003…, MRTM-IFC-001); generated requirements package refuses an edit | 3 |
| C-13 | 5 | Sanad: Open Design → views mrtmSafetyBlocks, mrtmSafetyReqs, mrtmInterfaces | 06-design/views/MrtmSafety*View.sysml, MrtmInterfacesView.sysml | Pictures match rendered/mrtmSafetyBlocks.svg (8 hazard concerns with scores), mrtmSafetyReqs.svg (risk-control part, 28 satisfy), mrtmInterfaces.svg (backup alarm + hold-up capacitor wired to the buzzer) | 5 |
| C-14 | 5 | Sanad explorer → open MRTM-SAF-009 and MRTM-SAF-011 in the requirement form; then the Problems panel | 03-requirements/safety/ | Form shows the `hazard` field (HAZ-003 / HAZ-002) and the Safety section; Problems: 0 errors, 0 warnings, 41 info, one Safety `single-point-failure` on MRTM-SAF-011 | 5 |
| C-15 | 6 | Sanad: Open Design → views mrtmHwBlocks, mrtmHwInterfaces | 06-design/views/MrtmHwBlocksView.sysml, MrtmHwInterfacesView.sysml | Blocks: 12 components + 6 wiring defs with pin attributes, as rendered/mrtmHwBlocks.svg. Interfaces: does the live panel name the redefined parts (esp32, probe …) and draw probeLink/displayLink with their pins? Headless render did not (F-60) — note what the screen shows | 5 |
| C-16 | 6 | Sanad: Validate SysML with the OMG Pilot; then Design panel tree → MrtmHardware::MrtmBoard → probeLink | 06-design/hardware/MrtmHardware.sysml | Pilot group empty (0 issues over 22 files, as phase-6/pilot.txt); inspector shows `dqGpio = 4`, `pullUpOhms = 4700` | 3 |
| C-17 | 7 | Sanad: Open Design → views mrtmSwComponents, mrtmSwWiring, mrtmAlarmStates, mrtmSystemModes, mrtmSeqExcursion, mrtmSeqPowerLoss, mrtmSeqProbeFault | 06-design/views/MrtmSw*View.sysml, MrtmAlarmStatesView.sysml, MrtmSystemModesView.sysml, MrtmSeq*View.sysml | Each matches rendered/<view>.svg: alarm machine 5 states / 10 transitions with triggers; each sequence shows only its own 5–6 messages; no "no software profile" note | 10 |
| C-18 | 7 | Command Palette → Sanad: Component Inventory, then Software Design Description → Export | .ejadah/rew/architecture/*.md | 12 components, none empty, allocations match 13-assessment/sanad-runs/phase-7/component-inventory.md; export matches phase-7/software-design-description/ | 5 |
| C-19 | 7 | Sanad: Validate SysML with the OMG Pilot | 06-design/ | EXPECTED to show ~179 "metadata usage must be typed" errors (F-64: the command does not pass the profile); note the count. Headless with the profile: 0 issues (phase-7/pilot.txt) | 3 |
| C-20 | 8 | Sanad: Open Design → views mrtmSwContracts, mrtmDisplayClasses, mrtmSwCodes | 06-design/views/MrtmSwContractsView.sysml, MrtmDisplayClassesView.sysml, MrtmSwCodesView.sysml | Match rendered/*.svg: 12 `#Interface` defs with their actions; 7 display classes — note whether «#SoftwareProfile::Class» gets the class-box shape (F-78); ErrorCode 11 values, EventKind 20 | 5 |
| C-21 | 8 | Command Palette → Sanad: Interface Surface | whole repo | Does it list the 12 unit APIs with their operations, or only their 2 ends (headless: ends only, F-79)? Note what the screen shows | 3 |
| C-22 | 9 | Command Palette → Sanad: Refresh Code Index, then open the Traceability view on MRTM-SYS-002 | .ejadah/rew/symbols.json, 10-src/ | Index says 45 traced symbols; SYS-002 shows `limit_evaluator_step` + `app_sensor_step`; Problems shows 0 implementation errors (headless: 13-assessment/sanad-runs/phase-9/gate.txt). Note if `tools/` is indexed (F-84) | 4 |
| C-23 | 9 | Command Palette → Sanad: Design Lenses → Design to Code | whole repo | 38 leaf requirements: 30 "ok", 8 "no file claims it" (hardware/labelling) as phase-9/lenses/software-design-description/design-to-code.csv | 3 |
| C-24 | 10 | Command Palette → Sanad: Open Verification Plan on MRTM-SYS-002, press Approve; then open Test coverage | 03-requirements/system/MRTM-SYS-002.md | Page matches 13-assessment/sanad-runs/phase-10/verification-plan/plan-MRTM-SYS-002.html (4 items, all "not assessable", F-98); after approval the Test coverage summary counts coverage items (headless: "not counted") | 5 |
| C-25 | 10 | Sanad: Test coverage view (and Verification Explorer) | whole repo | 69 of 69 requirements covered, 93 cases, matches phase-10/report-test-coverage.md; check the verification stage shows "confirmed" with the 4 recommended values — change them if you disagree (A-35) | 5 |
| C-26 | 10 | ONLY if you want AI proposals: add an `llm:` provider, then Sanad: Draft Tests on MRTM-SYS-018 | .ejadah/rew/config.yaml | Proposals sit beside the hand cases in the matrix; note what they add (F-95). Skip if no key | 10 |
| C-27 | 10b | Sanad: Test coverage view + Problems panel after the results | 11-verification/results/ | "covered 53 · not covered 16 · 16 blocked"; 16 `missing-result` warnings = the bench-only requirements (F-102); SP-01-H green; matches 13-assessment/sanad-runs/phase-10b/report-test-coverage.md | 4 |
| C-28 | 11 | Open MRTM-SYS-024, then Command Palette → Sanad: Impact of a Requirement → Export | 03-requirements/system/MRTM-SYS-024.md | 11 artifacts (4 code functions, 7 cases), impact to depth 1 — matches 12-impact/sanad-impact-after/impact-of-MRTM-SYS-024.md. Then run it on MRTM-SYS-002 and note: does anything on screen warn of the clash with SYS-024 (headless: no, F-106)? | 5 |
| C-29 | 11 | Sanad Baselines view → REQ-BL-2 listed → Compare with REQ-BL-1 | .ejadah/rew/baselines.json | REQ-BL-2 names the Phase 11 commit; compare shows the new findings (headless: 60 new, 7 gone since REQ-BL-1) — note whether the 4 reworded requirements appear (headless: no, F-112) | 3 |
| C-30 | MODEL-LEVELS | Sanad: Open Design → walk the 23 views in the order of 06-design/DECOMPOSITION.md (context → system → each subsystem → backup alarm) | 06-design/views/*View.sysml | Each picture matches the PNG in its node's `pictures/` folder; no picture shows another node's parts; note any box you would move (the canvas cannot place nested parts, F-129). Replaces C-02, C-03, C-10, C-13, C-15, C-17, C-20 (their views are archived) | 20 |
| C-31 | MODEL-LEVELS | Open MRTM-ALM-001 in the requirement form; then the Traceability view on MRTM-STK-002 | 03-requirements/mrtm/alarm/MRTM-ALM-001.md | The form shows the node template "Alarm requirement"; traceability walks STK-002 → SYS-002 → ALM-002 → EXI-002 → code → test (13-assessment/alarm-path-trace.md) | 5 |
| C-32 | MODEL-LEVELS | Sanad Baselines view → REQ-BL-3 → Compare with REQ-BL-2 | .ejadah/rew/baselines.json | REQ-BL-3 lists the node requirements as new; note whether moved satisfy links show (headless: no, F-112) | 3 |
