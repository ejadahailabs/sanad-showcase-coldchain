# IEC 62304 compliance index — run 03 (Arcadia)

**In one line:** one row per clause — what it asks, where our answer is, and whether Sanad keeps it — like a school report that also says which subjects the school's system tracks.

> **Standard:** IEC 62304:2006+A1:2015 (edition ASSUMED, A-3-01). System class **C**; USB item class **B** with segregation (ADR-0034; owner decision still open, A-3-07). Same 28 rows as run 2 so the runs compare. **MANUAL** — Sanad has no clause checklist per assurance scheme (run 2 F-116). DRAFT — needs Masood's review.

"Run 2 copy" = a document this run did not redo because the framework does not change it; it lives in `runs/02-magicgrid/` (read-only).

| Clause | What it asks | Artifact (run 03) | Location | Sanad home |
|---|---|---|---|---|
| §4.1 | Quality management system | Out of scope for a dogfood run | — | no |
| §4.2 | Risk management (ISO 14971) | Risk management file, ISO 14971 order 01…06 | 08-safety/ (carried from run 2, ids remapped) | no (links **yes**: `hazard:` → Safety engine) |
| §4.3 | Software safety classification | `safetyClass` on every requirement; model class now agrees with requirement class (USB item B, F-3-007) | 03-requirements/**, 06-design/library/software/MrtmSoftware.sysml, ADR-0034 | **yes** (dal role → rigour) — reason text no |
| §4.4 | Legacy software | None | — | no (n/a) |
| §5.1.1–5.1.3 | Development plan | Run 2 copy + this framework file as the method | runs/02-magicgrid/00-project/, .ejadah/rew/framework.yaml | no |
| §5.1.4–5.1.5 | Standards, tools | Coding rules, build | 07-adr/ADR-0026, ADR-0028, 10-src/BUILD.md | no |
| §5.1.6–5.1.7 | Verification planning; risk planning | Verification strategy; risk plan (run 2 copy) | 11-verification/strategy/ | **yes** (`verification:` stage) / no |
| §5.1.8 | Documentation planning | Layer folders + INDEX per layer | 06-design/DECOMPOSITION.md, 06-design/*/INDEX.md | no |
| §5.1.9 | Configuration management planning | Baseline + EPBS configuration items | .ejadah/rew/baselines.json (REQ-BL-A1), 03-requirements/epbs/ | **yes** |
| §5.1.10–5.1.12 | Supporting items, control, bug identification | SOUP list, defect log (run 2 copy) | runs/02-magicgrid/00-project/soup-list.md, 05-reviews/defect-log.md | no |
| §5.2.1–5.2.6 | Software requirements | 138 requirement files, allocator ids, per-layer packages | 03-requirements/{oa,sa,la,pa,epbs}, 06-design/packages/per-layer/ | **yes** (create path, rule pack) — review round not repeated |
| §5.3.1 | Architecture from requirements | LA + PA layers, transitions | 06-design/la/, pa/, transitions/ | **yes** (SysML read, satisfy) — layers and transitions no (F-3-001, F-3-006) |
| §5.3.2 | Interfaces of software items | Logical interfaces, physical links, item ports | 06-design/la/LaInterfaces.sysml, pa/PaHardware.sysml, library MrtmSoftware | **yes** |
| §5.3.3 | Functional and performance of SOUP | SOUP list (run 2 copy) | runs/02-magicgrid/00-project/soup-list.md | no |
| §5.3.4 | Hardware/software needed by SOUP | SOUP list, hardware design | 09-hardware/ | no |
| §5.3.5 | Segregation for risk control | USB item class B argument | ADR-0034, MRTM-SW-013, config suppression | no (text only; run 2 F-133) |
| §5.3.6 | Verify architecture | level-check (5 layers, 8/8 selftest), Pilot 0 / 44 files, gate 0 errors | tools/level-check.py, 13-assessment/sanad-runs/run3-final/ | **partly** (Pilot + gate yes; layer rules no) |
| §5.4.1–5.4.4 | Units, detailed design | Unit contracts, detail model (library) | 10-src/firmware/components/*/contracts.md, 06-design/library/software/MrtmSwDetail.sysml | **yes** |
| §5.5.1–5.5.5 | Unit implementation and verification | C code, Unity tests (80 pass) | 10-src/, 11-verification/results/unit/ | **yes** (code index, results) — record no |
| §5.6.1–5.6.8 | Integration testing | 5 integration tests pass | 10-src/test/integration/, 11-verification/results/integration/ | **yes** (results) — record no |
| §5.7.1–5.7.5 | System testing | SP-01-H pass; 20 bench rows blocked (no board); 6 CI inspections | 11-verification/procedures/, results/system/ | **yes** (declared matrix, test coverage) — record no |
| §5.8.1–5.8.8 | Release | Firmware CI: one version, checksum, power-up screen | 03-requirements/epbs/MRTM-CI-001.md, INS-CI-001 | **partly** (was no in run 2: the release identity is now a requirement with a case) |
| §6.1 | Maintenance plan | Not written | — | no — **gap** |
| §6.2.1–6.2.6 | Problem and modification analysis | Run 2 CR-001 and impact report | runs/02-magicgrid/12-impact/ | **yes** (Impact lens) — CR record no |
| §6.3 | Modification implementation | Baseline | REQ-BL-A1 | **yes** |
| §7.1–7.4 | Software risk management | Hazard links on SA safety requirements; risk controls down to PA | 03-requirements/sa/safety/, 08-safety/03-risk-control.md | **partly** (Safety engine) |
| §8.1–8.3 | Configuration management | git, baseline, 6 configuration items | baselines.json, 03-requirements/epbs/ | **yes** |
| §9.1–9.8 | Problem resolution | Findings | FINDINGS.md | no |

**Counts:** 28 rows · Sanad home **yes 13** · **partly 3** · **no 12** (run 2: 13 · 2 · 13). The one move: §5.8 release, because Arcadia's EPBS layer gives the firmware image its own requirement and inspection case.

**Also carried:** IEC 60601-1-8 alarm check → `13-assessment/iec60601-1-8-check.md` (every figure an assumption, A-3-06). ISO 14971 risk file order → `08-safety/01…06`.
