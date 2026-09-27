# IEC 62304 compliance index — clause → artifact → where → Sanad home

> **Standard:** IEC 62304:2006+A1:2015 (edition ASSUMED, A-39 — to be confirmed against the customer's edition). Software safety class of the system: **C** (ADR-0003); items per ADR-0034. **MANUAL** — Sanad has no clause checklist per assurance scheme (F-116). DRAFT — needs Masood's review. Written by MODEL-LEVELS, 2026-09-27.

**How to read it:** one row per clause. "Sanad home" = does Sanad hold or check the artifact itself (**yes**), or is it a hand-written file Sanad cannot see (**no**)? Like a school report: each subject, where the homework is, and whether the teacher's system tracks it.

| Clause | What it asks | Artifact | Location | Sanad home |
|---|---|---|---|---|
| §4.1 | Quality management system | Out of scope for a dogfood run (A-09 frame) | — | no |
| §4.2 | Risk management (ISO 14971) | Risk management file | 08-safety/ (01…06 in ISO 14971 order) | no (links yes: `hazard:` → Safety engine) |
| §4.3 | Software safety classification | System class C; item classes with reasons; segregation §5.3.5 | ADR-0003, ADR-0034, `safetyClass` + `## Safety` in every node requirement, .ejadah/rew/framework.yaml `nodes:` | **yes** (`safetyClass` = dal role → rigour) — reason text no |
| §4.4 | Legacy software | None | — | no (n/a) |
| §5.1.1–5.1.3 | Development plan, standards, methods | Software development plan | 00-project/software-development-plan.md | no |
| §5.1.4–5.1.5 | Development standards, tools | Coding rules, build system | ADR-0026, ADR-0028, 10-src/BUILD.md | no |
| §5.1.6–5.1.7 | Verification planning; risk management planning | Verification strategy; risk plan | 11-verification/strategy/, 00-project/risk-management-plan.md | **yes** (verification plan window, `verification:` stage) / no |
| §5.1.8 | Documentation planning | Folder plan | STRUCTURE.md, ADR-0001 | no |
| §5.1.9 | Configuration management planning | CM plan; git; baselines | 00-project/configuration-management-plan.md, 04-baselines/ | **yes** (baselines REQ-BL-1…3) |
| §5.1.10–5.1.12 | Supporting items, control before verification, bug identification | SOUP list; defect log | 00-project/soup-list.md, 05-reviews/defect-log.md | no |
| §5.2.1–5.2.6 | Software requirements: define, content, risk controls, re-evaluate, update, verify | Requirement files; review round | 03-requirements/ (132, allocator ids), 05-reviews/round-1/ | **yes** (create path, rule pack, review records) |
| §5.3.1 | Architecture from requirements | Node tree, black/white box per node | 06-design/DECOMPOSITION.md, 06-design/mrtm/**, library 06-design/software/MrtmSoftware.sysml | **yes** (SysML read, satisfy links) — levels no (F-124) |
| §5.3.2 | Interfaces of software items | Ports and flows per node | 06-design/mrtm/NodePorts.sysml, `*_whitebox_interconnection` | **yes** |
| §5.3.3 | Functional and performance of SOUP | SOUP list | 00-project/soup-list.md | no |
| §5.3.4 | System hardware/software needed by SOUP | SOUP list, hardware design | 00-project/soup-list.md, 09-hardware/ | no |
| §5.3.5 | Segregation for risk control | USB item (class B) segregation argument | ADR-0034, MRTM-USI-002, 03-requirements/mrtm/logging/usb-item/ | no (text only; F-133) |
| §5.3.6 | Verify architecture | level-check, Pilot, gate | tools/level-check.py, 13-assessment/sanad-runs/model-levels/ | **partly** (Pilot + gate yes; level rules no) |
| §5.4.1–5.4.4 | Units, detailed design, interfaces, verify | Unit contracts, detail model | 10-src/firmware/components/*/contracts.md, 06-design/software/MrtmSwDetail.sysml | **yes** (Design Lenses, Interface Surface) |
| §5.5.1–5.5.5 | Unit implementation and verification | C code, Unity tests, records | 10-src/, 11-verification/records/unit-verification-record.md | **yes** (code index, `@implements`, results producer) — record no |
| §5.6.1–5.6.8 | Integration and integration testing | Integration tests, record | 10-src/test/integration/, 11-verification/records/integration-verification-record.md | **yes** (results) — record no |
| §5.7.1–5.7.5 | Software system testing | System procedures, record | 11-verification/procedures/system-procedures.md, records/system-verification-record.md | **yes** (declared matrix, test coverage) — record no |
| §5.8.1–5.8.8 | Release | Release notes, known anomalies, archive | 13-assessment/RELEASE-NOTES.md, git tags | no (F-117) |
| §6.1 | Maintenance plan | Not written | — | no — **gap** |
| §6.2.1–6.2.6 | Problem and modification analysis | Change request CR-001, impact report | 07-adr/ADR-0030, 12-impact/impact-report.md | **yes** (Impact lens) — CR record no (F-111) |
| §6.3 | Modification implementation | Phase 11 commits + baseline | 04-baselines/REQ-BL-2.md | **yes** (baselines) |
| §7.1–7.4 | Software risk management: contribution to hazards, controls, verification, changes | Hazard chain; risk control requirements | 08-safety/03-risk-control.md, 11-verification/hazard-chain.md, 03-requirements/safety/ | **partly** (Safety engine: coverage, rigour) — chain view no (F-97) |
| §8.1–8.3 | Configuration management: identification, change control, status accounting | git, baselines, drift report | .ejadah/rew/baselines.json, 12-impact/drift-report.md | **yes** |
| §9.1–9.8 | Problem resolution | Defect log, findings | 05-reviews/defect-log.md, FINDINGS.md | no |

**Counts:** 28 rows · Sanad home **yes 13** · **partly 2** · **no 13** (two of the "no" rows have no artifact at all: §6.1 maintenance plan — a real gap; §4.1 QMS — out of scope).

## Four blocks
- **Assumptions:** A-39 (edition). **Risks:** R-18. **Open questions:** none.
- **Trace links:** class-c-checklist.md (Phase 12 view of the same), artifact-table.md, F-116, F-117.
