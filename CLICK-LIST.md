# Click list — the only things that need Masood at a keyboard

Do these in one sitting after Phase 12, in this order. Each line: what to press · on which file · what to check · minutes.

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
