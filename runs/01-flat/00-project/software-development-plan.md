# Software Development Plan — MRTM (skeleton)

> **Standard:** IEC 62304:2006+A1:2015 clause 5.1 (software development planning), Software Safety Class **C** (clause 4.3).
> **MANUAL** — Class-C artifact "software development plan" has no Sanad home (FINDINGS F-05). DRAFT — needs Masood's review.

A plan is the recipe: which steps, in which order, who checks what.

| 62304 clause | Activity | Where it lives in this repo | Sanad feature | Phase |
|---|---|---|---|---|
| 5.1 | This plan | 00-project/software-development-plan.md | none — MANUAL | 0 |
| 5.2 | Software requirements (with safety class per item) | 03-requirements/ | requirement templates, allocator, analysis engines | 2 |
| 5.3 | Software architecture | 06-design/software (SysML v2) | design roots, software profile, views | 7 |
| 5.3.3 / 8.1.2 | SOUP list | 00-project/soup-list.md | none — MANUAL | 0, 6, 9 |
| 5.4 | Detailed design | 06-design/software + 10-src contracts | SysML model editor | 8 |
| 5.5 | Unit implementation and verification | 10-src/, 11-verification/results | `@implements` / `@verifies` markers, results producer | 9, 10b |
| 5.6 | Integration and integration testing | 11-verification/ | test coverage model | 10, 10b |
| 5.7 | Software system testing | 11-verification/ | verification plan, test coverage | 10, 10b |
| 5.8 | Software release | 13-assessment/release-notes.md | none — MANUAL | 12 |
| 7 | Risk management | 00-project/risk-management-plan.md, 08-safety/ | none — MANUAL (F-06) | 0, 5 |
| 8 | Configuration management | 00-project/configuration-management-plan.md | Git + baselines | 0, 2b |
| 9 | Problem resolution | FINDINGS.md + 05-reviews/defect-log.md | review ledger (problem-reports report) | every phase |

## Rules that apply because this is Class C
- Every requirement has a `safetyClass` field (default C, inherited downward).
- Every software unit has a detailed design and a unit test (62304 5.4.2–5.4.4, 5.5.5).
- Traceability runs both ways: hazard → control → requirement → design → code → test.
- Independence of reviewer is **not** required in this run (owner order 2026-09-27).

## Four blocks
- **Assumptions:** A-07, A-08. **Risks:** R-04. **Open questions:** Q-04.
- **Trace links:** risk-management-plan.md, configuration-management-plan.md, soup-list.md, ADR-0003.
