# Artifact table — every artifact of the run, and how Sanad helped

> Phase 12 (a). IEC 62304 §5–§9, ISO 14971, IEC 60601-1 frame · Class C · DRAFT — needs Masood's review.
> **How to read it.** One row per artifact (a group of files counts as one row when one tool made all of them). *Board step* is the feature's overall stage on `Office_Projects/features/BOARD.md` → "Feature states" (proposed → building → built → verified → released); "not on board" means no feature row exists.
> **AI generated:** *Sanad* = written by Sanad's own code (no AI) · *Claude* = drafted by the AI worker by hand · *Claude → Sanad* = Claude's text put in place by a Sanad writer. **No artifact came from Sanad's own AI features** (no `llm:` key, F-95).
> **Human review needed:** every row is a draft for Masood. *EE* = also an electrical engineer. *Bench* = needs a real board.

## Picture first
| Count | |
|---|---|
| Artifact rows | **96** |
| Made by Sanad's own code | 24 |
| Claude's text through a Sanad writer or reader | 9 |
| By hand (Claude), Sanad only reads or nothing | 63 |
| Board step of the feature used | built 17 · building 31 · proposed 5 · not on board 43 |

## Phase 0 — Setup and project documents
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 1 | `.ejadah/rew/config.yaml` | IEC 62304 §5.1.1, §8.1 | Setup writers (`starterConfig`, `applyConfigEdits`) | setup · building | Sanad (+ hand keys F-02/F-04) | yes — every choice is his (A-02…A-08) | org choices unconfirmed | no CLI Setup (F-01) | Headless Setup from a plan file |
| 2 | 7 templates `.ejadah/rew/templates/*.md` | IEC 62304 §5.2.1 | `starterTemplate` | setup · building | Sanad (+ hazard/implements/allocation fields by hand) | yes | which roles a Class-C repo needs | Setup never offers roles (F-47, F-71, F-86) | Setup steps for roles |
| 3 | Rule pack `requirements-writing.yaml` | IEC 62304 §5.2.6 | rule packs | rule-packs · building | Sanad | yes | Class-C rigour bands | one pack only (F-19) | Several packs per repo |
| 4 | `sanad-product.yaml` | IEC 62304 §8.1.1 | `productFileText` | setup · building | Sanad | light | — | — | — |
| 5 | Charter, scope, stakeholders (00-project/) | IEC 62304 §5.1.1 | none | not on board | Claude | yes | real stakeholders (A-06) | no template (F-03) | Project document templates |
| 6 | Software development plan | IEC 62304 §5.1 | none | not on board | Claude | yes | org process | no plan artifact (F-05) | SDP template |
| 7 | Risk management plan | ISO 14971 §4.4 | none | not on board | Claude | yes | real acceptability table (A-09) | no safety capability (F-06) | Risk management file |
| 8 | SOUP list | IEC 62304 §5.3.3, §7.1.2 | none | not on board | Claude | yes | exact ESP-IDF tag (Q-16) | SOUP not an artifact (F-07) | SOUP as traced artifact |
| 9 | Configuration management plan | IEC 62304 §8 | none | not on board | Claude | yes | remote, release process | no CM-plan kind (F-08) | CM plan template |
| 10 | Glossary + data dictionary (01-data-dictionary/) | IEC 62304 §5.2.2 | glossary + data-dictionary lanes | not on board | Claude (read by Sanad) | yes | value resolutions (F-98) | Setup field (F-02) | Dictionary resolution |
| 11 | Registers: ASSUMPTIONS, RISKS, OPEN-QUESTIONS | IEC 62304 §4.2 | none | not on board | Claude | yes — every A-/Q- row | owner answers | registers not artifacts (F-11) | Registers with trace |
| 12 | ADR-0001…0003 | IEC 62304 §5.1 | none | not on board | Claude | yes | — | ADR not an artifact (F-09) | ADR as artifact |

## Phase 1 — ConOps
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 13 | Problem statement, operational concept, vision | IEC 62304 §5.2.1 input; IEC 62366 frame | none | not on board | Claude | yes | real users (A-22) | no ConOps template (F-12) | ConOps templates |
| 14 | User stories | IEC 62304 §5.2.1 | none | capture · not on board | Claude | yes | interviews (A-06) | no capture flow (F-13) | Capture with provenance |
| 15 | Scenarios SC-1…SC-4 (Mermaid) | IEC 62366 use scenarios | none | not on board | Claude | yes | — | — | — |
| 16 | `MrtmUseCases.sysml` (use cases + context) | IEC 62304 §5.2.1 | SysML reader | v4-sysml-v2 · built | Claude | yes | — | canvas edit UI-only (F-16) | Headless canvas check |
| 17 | Views `MrtmUseCasesView`, `MrtmContextView` + SVG | — | view writer + `canvasFor` | design-panel · building | Sanad | C-02, C-03 | — | — | — |

## Phase 2 / 2b / 3 — Requirements, baseline, review
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 18 | Stakeholder requirements STK-001…008 | IEC 62304 §5.2.1 | `createRequirement` + allocator | requirement-authoring · building | Claude → Sanad | yes | real needs (A-06) | no TBD state (F-22) | TBD requirement |
| 19 | System requirements SYS-001…024 | IEC 62304 §5.2.2 | `createRequirement` + allocator, 7 engines | requirement-authoring · building | Claude → Sanad | yes | Q-19 for SYS-024 | no conflict check (F-106) | Conflict check |
| 20 | Safety requirements SAF-001…023 | ISO 14971 §7.1; IEC 62304 §5.2.3 | allocator + Safety engine (`hazard` role) | not on board (safety) | Claude → Sanad | yes | real hazards | hazard role by hand (F-47) | Setup: hazard role |
| 21 | Performance, environmental, maintainability, interface (15) | IEC 62304 §5.2.2 | allocator | requirement-authoring · building | Claude → Sanad | yes; EE for ENV | battery hours (A-11) | units check (F-17) | Counts as units |
| 22 | `accepted-findings.md` + 11 suppressions | IEC 62304 §5.2.6 | `suppressions:` | analysis-and-findings · building | Claude | yes — each reason | — | — | — |
| 23 | `allocation-log.json` | IEC 62304 §8.1 | allocator | requirement-authoring · building | Sanad | no | — | — | — |
| 24 | SRS document (`report-requirements-trace.md`) | IEC 62304 §5.2 | `--report requirements --trace --layout document` | traceability-report · building | Sanad | yes | — | no cover page (F-21) | SRS template |
| 25 | Baseline REQ-BL-1 (`baselines.json`, 04-baselines/REQ-BL-1.md) | IEC 62304 §8.1 | `makeBaseline` | baselines-and-drift · building | Sanad (+ record by Claude) | C-07 | — | no text, no tag (F-25) | Baseline freezes text |
| 26 | Review round 1 (`round.json`, README, checklist) | IEC 62304 §5.2.6 | `reviewExplorer` on a replica | review-capability · building | Claude | yes — the verdicts | real reviewer | no local round (F-26) | Local review round |
| 27 | Review records (approval + merge YAML) | IEC 62304 §5.2.6, §8.1 | `evidenceRecord` + `commitEvidenceRecord` | review-capability · building | Sanad | C-08 | — | status bug (F-28) | Ancestry fix |
| 28 | ADR-0004…0007 | IEC 62304 §5.1 | none | not on board | Claude | yes | — | F-09 | ADR as artifact |

## Phase 4 — System architecture
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 29 | `requirements.sysml` (generated package) | IEC 62304 §5.3.1 | `writeRequirementsPackage` | v4-sysml-v2 · built | Sanad | no | — | — | — |
| 30 | `MrtmInterfaces.sysml` | IEC 62304 §5.3.2 | SysML reader | v4-sysml-v2 · built | Claude | yes | — | ports not trace nodes (F-41) | Ports as trace nodes |
| 31 | `MrtmLogical.sysml` (logical + functional decomposition) | IEC 62304 §5.3.1 | SysML reader | v4-sysml-v2 · built | Claude | yes | — | actions not nodes (F-41); allocate bug (F-35) | Actions as trace nodes |
| 32 | `MrtmPhysical.sysml` | IEC 60601-1 frame | SysML reader | v4-sysml-v2 · built | Claude | yes; EE | — | — | — |
| 33 | `MrtmPartitions.sysml` | IEC 62304 §5.3.5 | SysML reader | v4-sysml-v2 · built | Claude | yes | — | nested allocation matrix (F-40) | Nested matrices |
| 34 | `MrtmSystemContext.sysml` | IEC 62304 §5.2.1 | SysML reader | v4-sysml-v2 · built | Claude | yes | — | — | — |
| 35 | 6 views (blocks, interfaces, external, data flow, containment, allocation) + 5 SVG + matrix | IEC 62304 §5.3 | view writer + `canvasFor` | design-panel · building | Sanad | C-10 | — | successions not drawn (F-36) | Draw successions |
| 36 | OMG Pilot result (phase-4/pilot.txt) | IEC 62304 §5.3.6 | `validateWithPilot` | omg-validator · proposed | Sanad | C-11 | — | no CLI, no record (F-43) | CLI `--pilot` |
| 37 | System architecture README | IEC 62304 §5.3 | none | not on board | Claude | yes | — | no SAD export (F-44) | SAD export |
| 38 | ADR-0008…0011 | IEC 62304 §5.3 | none | not on board | Claude | yes | — | F-09 | ADR as artifact |

## Phase 5 — Risk management file
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 39 | Hazard analysis (8 hazards) | ISO 14971 §5, §6 | none (hazard ids read by the Safety engine) | not on board | Claude | yes — safety gate | real use environment | no hazard register (F-48) | Hazard register |
| 40 | FMEA (27 rows) | ISO 14971 §5.4; IEC 60812 | none | not on board | Claude | yes; EE | failure rates | no FMEA table | FMEA table view |
| 41 | Fault tree (Mermaid, 9 cut sets) | IEC 61025 | none | not on board | Claude | yes | — | no FTA (F-51) | Fault tree view |
| 42 | Failure-mode assessment (residuals) | ISO 14971 §7.3, §8 | none | not on board | Claude | yes — risk acceptance is his | benefit-risk | no residual record | Residual risk record |
| 43 | `MrtmSafety.sysml` | ISO 14971 §7 | SysML reader | v4-sysml-v2 · built | Claude | yes | — | concerns not in graph (F-49) | SysML hazards in graph |
| 44 | Safety views + SVG | ISO 14971 §7 | view writer + `canvasFor` | design-panel · building | Sanad | C-13 | — | no hazard picture (F-52) | Hazard ↔ control picture |
| 45 | ADR-0012…0014 | ISO 14971 §4.2, §7 | none | not on board | Claude | yes | severity scales (A-20) | F-09 | ADR as artifact |

## Phase 6 — Hardware
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 46 | `MrtmHardware.sysml` | IEC 60601-1 frame | SysML reader | v4-sysml-v2 · built | Claude | EE | real parts (synthetic) | redefinitions dropped (F-61) | Redefined parts in graph |
| 47 | Hardware design description, component selection | IEC 60601-1 frame | none | not on board | Claude | EE | EE review (Q-14) | no skill (F-58) | HDD skill |
| 48 | Pin map, power budget, BOM, HW trace matrix | IEC 60601-1 frame | `parseSysml` feeding `tools/hw-tables.cjs` | not on board | Sanad reader + Claude tool | EE | — | no parametric roll-up (F-57, F-59) | Parametric roll-up |
| 49 | HW views + SVG | — | view writer + `canvasFor` | design-panel · building | Sanad | C-15 | — | pins not drawn (F-60) | Draw redefinitions |
| 50 | ADR-0015…0017 | IEC 60601-1 frame | none | not on board | Claude | EE | — | F-09 | ADR as artifact |

## Phase 7 / 8 — Software architecture and detailed design
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 51 | `SoftwareProfile.sysml` | IEC 62304 §5.3 | `writeSoftwareProfile`, `addDiagramMarker` | v4b-v7-profile-and-palette · built | Sanad (+ 3 markers by hand) | yes | — | profile gaps (F-63, F-75) | Richer profile |
| 52 | `MrtmSoftware.sysml` (items, components, tasks, deployment) | IEC 62304 §5.3.1–5.3.5 | SysML reader, conformance engine | v4b-v7 · built | Claude | yes | timing on target (A-16) | Pilot misses profile (F-64) | Pilot loads profile |
| 53 | `MrtmSwStates.sysml` (alarm machine, modes) | IEC 62304 §5.3.1 | state transition view | v4-sysml-v2 · built | Claude | yes | — | states not nodes (F-73) | Behaviour as trace nodes |
| 54 | 3 sequence packages | IEC 62304 §5.3.2 | sequence view | v4-sysml-v2 · built | Claude | yes | — | lifeline scoping (F-67) | Scoped sequences |
| 55 | 12 component files `.ejadah/rew/architecture/` | IEC 62304 §5.3.1 | component inventory reader | component-inventory · proposed | Claude | yes | — | not from model (F-72) | Inventory from model |
| 56 | Component inventory + SDD export (phase-7, phase-8 runs) | IEC 62304 §5.3, §5.4 | Design Lenses builders, `designDescriptionFolder` | design-description · proposed | Sanad | C-18 | — | cites DO-178C (F-74) | IEC 62304 framing |
| 57 | Software architecture description (06-design/software/README.md) | IEC 62304 §5.3 | none | not on board | Claude | yes | — | F-44 | SAD export |
| 58 | `MrtmSwDetail.sysml` (12 unit contracts, 7 classes) | IEC 62304 §5.4.2 | SysML reader | v4-sysml-v2 · built | Claude (generated by `tools/detail-design.py`) | yes | — | no contract template (F-77) | Contract template + check |
| 59 | 12 `contracts.md` | IEC 62304 §5.4.2–5.4.3 | none | not on board | Claude (generated) | yes | — | F-77, F-90 | Contract ↔ code check |
| 60 | `MrtmSwCodes.sysml` (ErrorCode, EventKind) | IEC 62304 §5.4.2 | SysML reader + dictionary | data-items · proposed | Claude | yes | — | no enum compare (F-81) | Dictionary ↔ model check |
| 61 | 10 software views + SVG | IEC 62304 §5.3–5.4 | view writer + `canvasFor` | design-panel · building | Sanad | C-17, C-20 | — | class shape (F-78) | — |
| 62 | Interface surface / data items / low-level requirements lenses | IEC 62304 §5.4 | Design Lenses builders | interface-surface / data-items / low-level-requirements · proposed | Sanad | C-21 | — | ends, not operations (F-79) | Operations in surface |
| 63 | `mrtm_config.h` + NVS record design | IEC 62304 §5.4.2 | none | not on board | Claude | yes | field-change approval (Q-15) | macros not traced (F-89) | Trace C macros |
| 64 | ADR-0018…0025 | IEC 62304 §5.3–5.4 | none | not on board | Claude | yes | — | F-09 | ADR as artifact |

## Phase 9 — Implementation
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 65 | 12 units C/C++ (`firmware/components/*/src`, `include`) | IEC 62304 §5.5.1 | code index (`@implements`), conformance engine | engineering-facts · built | Claude | yes — REVIEW marks | target timing | C++ class ids (F-87) | Class-qualified ids |
| 66 | `mrtm_common`, `mrtm_app`, `mrtm_hal` (host + ESP32 HAL) | IEC 62304 §5.5.1 | code index | engineering-facts · built | Claude | yes; Bench | ESP-IDF build (A-30) | no design home reported (F-88) | Unassigned-code report |
| 67 | Generated `mrtm_errors.h`, `mrtm_events.h` | IEC 62304 §5.4.2 | none | not on board | Claude (`tools/gen-codes.py`) | light | — | no model-to-code (F-92) | Model-to-code generation |
| 68 | Build: Makefile, CMake, sdkconfig, partitions, BUILD.md | IEC 62304 §5.1.4, §8.1 | none | not on board | Claude | yes; Bench | ESP-IDF tag (Q-16) | — | — |
| 69 | Code index `symbols.json` | IEC 62304 §5.1.1 traceability | `createBuiltinIndex` | engineering-facts · built | Sanad | C-22 | — | index scope (F-84) | Index scope setting |
| 70 | Static analysis result (gcc `-fanalyzer`) | IEC 62304 §5.5.3 | none | not on board | Claude | yes | MISRA checker | no SARIF lane (F-91) | SARIF lane |
| 71 | Defect log (DEF-001…008) | IEC 62304 §9 | none | not on board | Claude | yes | — | no problem-report register (F-94) | Problem-report register |
| 72 | ADR-0026…0029 | IEC 62304 §5.5 | none | not on board | Claude | yes | — | F-09 | ADR as artifact |

## Phase 10 / 10b — Verification and evidence
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 73 | Verification strategy + environment | IEC 62304 §5.1.6, §5.7.1 | none | not on board | Claude | yes | bench kit (Q-18) | — | Verification plan template |
| 74 | Unit tests (14 Unity files, 80 tests) | IEC 62304 §5.5.2–5.5.5 | `@verifies` read via declared matrix | test-coverage-model · building | Claude | yes | — | no C lane (F-93) | Unity case lane |
| 75 | Integration tests + 5 procedures | IEC 62304 §5.6 | declared matrix | test-coverage-model · building | Claude | yes | — | procedure type (F-101) | Procedure document type |
| 76 | 15 system procedures SP-01…SP-14, SP-01-H | IEC 62304 §5.7 | declared matrix | test-coverage-model · building | Claude | yes; Bench | bench (Q-18) | F-101 | Procedure document type |
| 77 | Verification matrix `verification-cases.csv` (99 cases) | IEC 62304 §5.7.4 | verification-case producer | test-coverage-model · building | Claude (`tools/verif-matrix.py`) | light | — | F-93 | Unity case lane |
| 78 | Test-coverage report (= verification + coverage matrix) | IEC 62304 §5.7.4 | `--report test-coverage` | views-coverage · building | Sanad | C-25, C-27 | level rule (A-36) | blocked vs missing (F-102) | Evidence level rule |
| 79 | Verification plan pages | IEC 62304 §5.1.6 | `planPageFor` + `verificationPlanHtml` | test-coverage-model · building | Sanad | C-24 (approve) | — | approval UI-only (F-99) | CLI plan approval |
| 80 | Results JUnit (unit, integration, system) | IEC 62304 §5.5.5, §5.6.7, §5.7.5 | results producer | not on board | Claude converter → Sanad reader | light | — | Unity text (F-103) | Unity reader |
| 81 | Coverage LCOV + summaries | IEC 62304 §5.5.5 | coverage producer | views-coverage · building | Claude converter → Sanad reader | light | — | join gaps (F-104) | Full function join |
| 82 | Evidence logs (build, make test, SP-01-H) | IEC 62304 §5.7.5, §8.1 | none | not on board | Claude (`tools/run-10b.sh`) | light | — | untracked evidence unseen (F-118) | Warn on untracked evidence |
| 83 | Unit / integration / system verification records | IEC 62304 §5.5.5, §5.6.7, §5.7.5 | none | not on board | Claude (`tools/verification-records.py`) | yes | — | F-105 | Record export |
| 84 | Hazard chain (hazard → control → test → verdict) | ISO 14971 §7.2, §7.3 | Safety engine `mitigates` + test coverage | not on board | Claude (`tools/hazard-chain.py`) | yes | — | F-97 | Hazard chain view |

## Phase 11 — Change impact and drift
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 85 | MRTM-SYS-024 (+ 4 reworded requirements) | IEC 62304 §6.2.3, §5.2 | `createRequirement` + allocator | requirement-authoring · building | Claude → Sanad | yes — Q-19 | alarm priority wish | — | — |
| 86 | Sanad impact exports (12-impact/sanad-impact*/) | IEC 62304 §6.2.3 | `impactView` + `impactReport` + `impactReading` | views-trace-and-impact · building; impact-assessment · building | Sanad | C-28 | — | no CLI (F-108) | CLI impact report |
| 87 | Impact report (Sanad vs hand list) | IEC 62304 §6.2.3; ISO 14971 §7.6 | none | not on board | Claude | yes | — | F-106, F-107 | Conflict check; impact through model |
| 88 | ADR-0030, ADR-0031 | IEC 62304 §6.2.3 | none | not on board | Claude | yes — the ruling | — | change request record (F-111) | CR record |
| 89 | Model + code + tests changes for CR-001 | IEC 62304 §6.2.5, §8.2.3 | reader, index, producers | as rows 52–77 | Claude | yes | — | stale results (F-113) | Stale marking |
| 90 | Drift report | IEC 62304 §8.1.3 | `--baseline`, `baselineDiff`, `--diff-config` | baselines-and-drift · building | Claude from Sanad numbers | yes | — | text + model drift (F-112) | Text and model drift |
| 91 | Baseline REQ-BL-2 | IEC 62304 §8.1 | `makeBaseline` | baselines-and-drift · building | Sanad (+ record by Claude) | C-29 | — | F-25 | Baseline freezes text |

## Phase 12 — Assessment and release
| # | Artifact | Standard | Sanad feature used | Board step | AI generated | Human review | Missing knowledge | Missing tool support | Future Sanad capability |
|---|---|---|---|---|---|---|---|---|---|
| 92 | This artifact table + Class-C checklist | IEC 62304 §5, ISO 14971 | none | not on board | Claude | yes | — | no artifact inventory (F-116) | Class-C checklist view |
| 93 | Judgement rows + gap list | — | none (gap list generated from FINDINGS) | not on board | Claude | yes | — | — | — |
| 94 | Release notes | IEC 62304 §5.8 | none | not on board | Claude | yes — release is his word | — | F-117 | Release record |
| 95 | FINDINGS.md (118) + CLICK-LIST.md (29) | IEC 62304 §9 (problem resolution of the tool) | none | not on board | Claude | coordinator files them | — | — | — |
| 96 | Sanad run outputs (13-assessment/sanad-runs/phase-*) | IEC 62304 §5.1.1 | CLI gate + all reports | cli · building | Sanad | light | — | project reports exit 2 (F-10) | Project-level records |
