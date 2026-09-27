# Class-C artifact checklist — IEC 62304 §5 (+ §6, §8, §9) and ISO 14971

> Phase 12 (d). DRAFT — needs Masood's review. Independence not required (owner order 3).
> **Sanad home** = Sanad has an artifact kind, reader or producer for it (yes), or it is a plain file Sanad does not know (no). **Relation links** = the artifact carries trace links to the artifacts around it that a tool can follow (yes), only in prose or by a hand tool (partly), or none (no).
> Like a packing list before a trip: is each item in the bag, in the right pocket, and tied to the others?

## Picture first
| | yes | partly | no |
|---|---:|---:|---:|
| Sanad home | **8** | 5 | **13** |
| Relation links present | **14** | 8 | **4** |
| Artifacts on the list | **26** | | |

## The list
| # | Class-C artifact | Clause | Where in this repo | Sanad home | Relation links |
|---|---|---|---|---|---|
| 1 | Software development plan | IEC 62304 §5.1 | 00-project/software-development-plan.md | no (F-05) | partly — names folders and standards in prose |
| 2 | Software verification plan | IEC 62304 §5.1.6, §5.7.1 | 11-verification/strategy/ + Sanad plan pages (phase-10/verification-plan/) | partly — plan window, approval is a click (F-99) | yes — per requirement |
| 3 | Software requirements specification, safety class per item | IEC 62304 §5.2, §4.3 | 03-requirements/ (70 files, `safetyClass: C`) + report-requirements-trace.md | yes | yes — uplinks, allocation, implements, cases |
| 4 | Requirements review / re-evaluation | IEC 62304 §5.2.6 | 05-reviews/ (round 1, records) | yes — review records (local round is a replica, F-26) | yes — record ids per requirement |
| 5 | Software architecture | IEC 62304 §5.3 | 06-design/software/ (SysML) + 06-design/software/README.md | yes — model, views, SDD export | yes — 262 satisfy links |
| 6 | SOUP list (functional and performance needs, known anomalies) | IEC 62304 §5.3.3–5.3.4, §7.1.2–7.1.3 | 00-project/soup-list.md | no (F-07) | no |
| 7 | Segregation for risk control | IEC 62304 §5.3.5 | MrtmPartitions.sysml, ADR-0019 (cores) | yes — model | yes — satisfy |
| 8 | Detailed design of each unit + interfaces | IEC 62304 §5.4.2–5.4.3 | MrtmSwDetail.sysml + 12 contracts.md | partly — model yes, contracts no (F-77) | partly — contracts vs code by hand (F-90) |
| 9 | Unit implementation | IEC 62304 §5.5.1 | 10-src/firmware/ | yes — code index | yes — 46 `@implements` functions |
| 10 | Unit acceptance criteria + verification (Class C extras §5.5.4) | IEC 62304 §5.5.2–5.5.4 | ADR-0028 coding rules, static-analysis result, unit tests | partly — cases via a hand-made matrix (F-93) | yes — `@verifies` |
| 11 | Unit verification record | IEC 62304 §5.5.5 | 11-verification/records/unit-verification-record.md | no (F-105) | yes — case → result → build |
| 12 | Integration testing + record | IEC 62304 §5.6 | 11-verification/procedures/integration-procedures.md, records/integration-verification-record.md | no — record by hand (F-105) | yes |
| 13 | System testing + record | IEC 62304 §5.7 | procedures/system-procedures.md, records/system-verification-record.md | no — record by hand; 14 of 15 blocked (Q-18) | yes |
| 14 | Software release (documented version, known residual anomalies) | IEC 62304 §5.8 | 13-assessment/RELEASE-NOTES.md | no (F-117) | partly — names defects and findings in prose |
| 15 | Software maintenance plan | IEC 62304 §6.1 | not written (out of this run's minimum set) | no | no |
| 16 | Change request analysis + approval | IEC 62304 §6.2.3–6.2.4, §8.2 | 12-impact/impact-report.md, ADR-0030/0031 | partly — impact lens only (F-108, F-111) | yes — impact rows + ADR trace |
| 17 | Configuration management plan | IEC 62304 §8 | 00-project/configuration-management-plan.md | no (F-08) | partly |
| 18 | Configuration identification — baselines | IEC 62304 §8.1 | .ejadah/rew/baselines.json (REQ-BL-1, REQ-BL-2), 04-baselines/, git tags | yes — baselines (no text, F-25) | yes — commit + finding keys |
| 19 | Problem resolution log | IEC 62304 §9 | 05-reviews/defect-log.md (DEF-001…008), FINDINGS.md (tool) | no (F-94) | partly — DEF ↔ requirement in prose |
| 20 | Traceability requirement → architecture → design → code → unit → integration → system test | IEC 62304 §5.1.1, §5.7.4 | report-traceability-audit.md (phase-11) | yes | partly — detailed-design states and actions are not nodes (F-73) |
| 21 | Risk management plan | ISO 14971 §4.4 | 00-project/risk-management-plan.md | no (F-06) | no |
| 22 | Hazard analysis (hazards, sequences, situations) | ISO 14971 §5 | 08-safety/01-risk-analysis.md, MrtmSafety.sysml | partly — hazard ids only (F-48) | yes — hazard ↔ control |
| 23 | Risk evaluation + risk-control measures | ISO 14971 §6, §7.1–7.2 | SAF-001…023 with `hazard:`; FMEA; fault tree | yes — Safety engine `mitigates` | yes |
| 24 | Verification of risk controls (hazard → control → requirement → test) | ISO 14971 §7.2, §7.3 | 11-verification/hazard-chain.md | no — hand tool (F-97) | partly — 3 controls with no passing evidence |
| 25 | Residual risk + benefit-risk, risk management review | ISO 14971 §7.4–§9 | 08-safety/03b-risk-control-single-fault-assessment.md | no | no |
| 26 | Risks arising from risk control / from changes | ISO 14971 §7.6, §10 | 01-risk-analysis.md § "Change CR-001" | no | partly |

## What the list says (plain words)
- Everything that is **a requirement, a model element, code or a test** has a home in Sanad and is linked.
- Everything that is **a plan, a record, a risk-file table or a release** is a hand-written file. It is linked only in prose, or by a script we wrote.
- The biggest single hole is **ISO 14971**: 4 of its 6 rows have no Sanad home, and 1 has only half a home.
