# Baseline REQ-BL-2 — the product after change CR-001

> IEC 62304 cl. 8.1.1–8.1.3 / 8.3 (configuration identification, change control, status accounting). Taken with Sanad's baseline code, headless (`tools/baseline-headless.cjs`, the logic behind "Sanad: Set Baseline"). DRAFT — needs Masood's review.

A baseline is a photo of the project at one moment. REQ-BL-1 was the photo before design; REQ-BL-2 is the photo after the whole build and the first change.

| Field | Value |
|---|---|
| Baseline id (label) | **REQ-BL-2** |
| Commit it names | `1e6822a4f753f7e021b5ca9803612b67426d8aa3` ("phase 11: change impact + drift …"), git tag `REQ-BL-2` (by hand, F-25) |
| Working tree when taken | clean |
| Stored in | `.ejadah/rew/baselines.json` (Sanad's file), beside REQ-BL-1 |
| What Sanad stores | the commit + 77 finding identities (0 errors, 17 warnings, 60 info — from the Phase 11 gate run, 13-assessment/sanad-runs/phase-11/evidence.json) |
| Requirement set | 70 requirements: STK 8 · SYS 24 · SAF 23 · PRF 4 · ENV 4 · MNT 3 · IFC 4, all safetyClass C |
| Model / code / tests | 40 SysML files (Pilot clean with profile) · 46 traced C/C++ functions · 99 declared cases, 100 result rows (86 pass, 14 blocked) |
| Known open at this baseline | 16 bench-blocked requirements (F-102, Q-18), DEF-006 (Q-17), Q-19 (two-tier alarm) |

## What changed since REQ-BL-1
See 12-impact/drift-report.md: 109 trace changes, 60 new / 7 gone findings, 24 requirements added, 13 reworded.
