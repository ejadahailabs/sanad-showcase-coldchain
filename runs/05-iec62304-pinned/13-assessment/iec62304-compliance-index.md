# IEC 62304 compliance index — per level (run 05)

> **Standard:** IEC 62304:2006+A1:2015 — edition ASSUMED (A-39, to confirm). Reuses run 2's 28-row index (`runs/02-magicgrid/13-assessment/iec62304-compliance-index.md`) so the rows compare; what is new is the **"owed at"** column. MANUAL — Sanad has no clause checklist per level (F-5-015). DRAFT — needs Masood's review.

**In one line:** each row is one clause; "owed at" says which floor of the building must show it; "Sanad home" says whether Sanad holds it (yes), holds part (partly) or it is a loose file (no) — like a school report that also says which teacher marks each subject.

## Per level at a glance

| Level | Clauses it owes | Sanad home yes / partly / no | Verdict | Main gap |
|---|---|---|---|---|
| L1 device (60601-1 PEMS, ISO 14971) | §4.1, §4.2, §4.3 (class, also used by L3/L4), §5.1 plans (4 rows), §7 risk — 8 rows | 2 / 1 / 5 | **partly** | plans and the risk file are files Sanad cannot see; hazards are links only |
| L2 software system | §5.2 SRS, §5.3.1–5.3.4, §5.3.6, §5.7 system test — 7 rows | 4 / 1 / 2 | **partly** | SOUP (§5.3.3–5.3.4) has no home; levels not checked by Sanad |
| L3 software items | §5.3.5 segregation, §5.6 integration — 2 rows (+ §4.3 per item, counted at L1) | 1 / 0 / 1 | **partly** | segregation is text plus a suppression (F-5-003) |
| L4 software units | §5.4 detailed design, §5.5 unit implementation + verification — 2 rows | 2 / 0 / 0 | **yes** (with a weak picture, F-5-005) | the contract picture shows names only |
| Across levels | §4.4, §5.1.9–5.1.12, §5.8, §6, §8, §9 — 9 rows | 4 / 0 / 5 | partly | release notes, maintenance plan, problem records |

**Counts (same 28 rows as run 2): yes 13 · partly 2 · no 13.** The pinned stack did not give Sanad any new home; it made the "owed at" column obvious.

## The rows

| Clause | What it asks | Owed at | Artifact in this run | Sanad home |
|---|---|---|---|---|
| §4.1 | Quality management system | L1 | out of scope (A-09 frame) | no |
| §4.2 | Risk management (ISO 14971) | L1 | 08-safety/ 01…06 in ISO 14971 order (run 2's file, now the device's) | no (links yes: `hazard:` → Safety engine) |
| §4.3 | Software safety classification | L1 system C · L3 per item · L4 inherited | framework.yaml `class:` per node; `safetyClass` on every requirement; usb-item B | **yes** (`safetyClass` → rigour) — reason text no |
| §4.4 | Legacy software | — | none | no (n/a) |
| §5.1.1–5.1.3 | Development plan | L1 | 00-project/software-development-plan.md | no |
| §5.1.4–5.1.5 | Standards, tools | L1 | ADR-0026, ADR-0028, 10-src/BUILD.md | no |
| §5.1.6–5.1.7 | Verification + risk planning | L1 | 11-verification/strategy/, 00-project/risk-management-plan.md | **yes** (verification stage) / no |
| §5.1.8 | Documentation planning | L1 | 06-design/DECOMPOSITION.md, framework.yaml | no |
| §5.1.9 | Configuration management planning | across | CM plan; baseline REQ-BL-M1 | **yes** |
| §5.1.10–5.1.12 | Supporting items, defects | across | soup-list, defect log (run 2 copies) | no |
| §5.2.1–5.2.6 | Software requirements (SRS) | **L2** | 03-requirements/L2-software-system/ (19, allocator ids) | **yes** |
| §5.3.1 | Architecture from requirements | **L2** | L2 architecture view + NodeSoftwareSystem (8 items) | **yes** (SysML, satisfy) — levels no (F-5-001) |
| §5.3.2 | Interfaces of items | **L2** | L2 architecture + hardware-interface views | **yes** |
| §5.3.3 | SOUP function/performance | L2 | 00-project/soup-list.md | no |
| §5.3.4 | Hardware/software SOUP needs | L2 | soup list, L2-hardware-item | no |
| §5.3.5 | Segregation | **L3** | usb-item: framework `segregation:`, ADR-0034, USI-002, suppression | no (F-5-003) |
| §5.3.6 | Verify architecture | L2 | level-check (0 violations), Pilot 0 issues, gate | **partly** |
| §5.4.1–5.4.4 | Units, detailed design, interfaces | **L4** | 12 unit nodes, MrtmSwDetail contracts, contracts.md, 23 unit requirements | **yes** (Design Lenses) — picture weak (F-5-005) |
| §5.5.1–5.5.5 | Unit implementation + verification | **L4** | 10-src, `@implements`/`@verifies` unit ids, 85 host tests pass | **yes** — record no |
| §5.6.1–5.6.8 | Integration testing | **L3** | test_int_chains (5), integration record | **yes** (results) — record no |
| §5.7.1–5.7.5 | System testing | **L2** | 15 system procedures (bench blocked, 36 missing results) | **yes** (matrix, coverage) — record no |
| §5.8.1–5.8.8 | Release | across | not written for run 5 | no |
| §6.1 | Maintenance plan | across | none — gap | no |
| §6.2.1–6.2.6 | Problem + modification analysis | across | Impact lens available, not exercised in run 5 | **yes** |
| §6.3 | Modification implementation | across | baselines | **yes** |
| §7.1–7.4 | Software risk management | L1 → L2 | SAF requirements at L1, SRS risk controls cite §5.2.3 | **partly** |
| §8.1–8.3 | Configuration management | across | git, baselines.json, config diff | **yes** |
| §9.1–9.8 | Problem resolution | across | FINDINGS.md | no |

## Four blocks
- **Assumptions:** A-39 (edition), A-5-03 (segregation allowed). **Risks:** R-19 (no memory protection). **Open questions:** Q-20 (60601-1-8 frame).
- **Trace links:** alarm-path-trace.md, ../06-design/DECOMPOSITION.md, F-5-001, F-5-003, F-5-005, F-5-015.
