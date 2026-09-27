# Judgement — ten areas, one score each

> Phase 12 (b). DRAFT — needs Masood's review. Scores are 0–5: **0** nothing · **1** Sanad reads it but a person does the work · **2** Sanad does part and proves little · **3** Sanad does the main job, gaps need hand tools · **4** Sanad does the job, gaps are polish · **5** done in Sanad and proved by its own check.
> MANUAL and UI-ONLY items come from the four-line blocks in DOGFOOD-STATE.md (Phases 0–11); numbers are FINDINGS rows.

| Area | Score | One-line reason |
|---|---:|---|
| Requirements | **4** | Allocator ids, 7 templates, 7 analysis engines and the SRS report all worked headless. It cannot see a clash between two requirements. |
| Architecture | **3** | A 40-file SysML model, 22 views and the OMG Pilot all work. Behaviour elements are not trace nodes, and the reader and the Pilot disagree. |
| Safety | **1** | Hazard ids on safety requirements switch on a coverage number. The hazard register, FMEA, FTA and risk matrix are all by hand. |
| Hardware | **1** | The SysML reader parses every pin and milliamp. Nothing in Sanad uses them. |
| Software | **3** | Profile, component inventory, SDD export, conformance engine and code index all ran. C/C++ gaps and unchecked contracts remain. |
| Verification | **2** | Coverage model, results and coverage readers work. C tests, Unity output, procedures and plan approval needed hand tools or a click. |
| Traceability | **3** | Requirement → code → case → verdict shows in one audit. Design detail, hazards-to-tests and the hardware matrix need hand tools. |
| Impact analysis | **1** | The lens walks downstream only. A new requirement shows 0 impact, with no clash found and no model or hazards reached. |
| Configuration management | **2** | Baselines, finding drift and config diff work. There is no text freeze, no change-request record, and evidence can sit outside git unnoticed. |
| Knowledge management | **2** | Glossary and dictionary lanes are read. ADRs, registers, SOUP and plans have no home, and the AI context cuts the safety files. |
| **Average** | **2.2** | |

## The ten rows in full

### 1. Requirements — 4/5
- **What Sanad did:** `createRequirement` + `planSerials` made all 70 ids (no hand-typed id). The 7 templates, `safetyClass` → rigour 4, and 7 analysis engines ran (validation, traceability, quality, structure, verification, consistency, impact). Suppressions carried the reasons. The SRS came out of `--report requirements --trace --layout document`.
- **MANUAL:** the requirement text; testability misses counts and % (F-17, F-33); sibling levels (F-18); TBD placeholders (F-22); SRS cover (F-21); ADR ids read as references (F-54); new-requirement clash found by hand (F-106); relative-path error (F-114).
- **UI-ONLY:** New Requirement form (F-20, C-04, C-09, C-14).

### 2. Architecture (system) — 3/5
- **What Sanad did:** the reader loaded 40 files (262 satisfy links). The view writer and `canvasFor` drew 22 views. `writeRequirementsPackage` generated the requirement package. `validateWithPilot` ran the OMG Pilot (0 issues). The architecture engine gave 98 % allocation coverage.
- **MANUAL:** the model text; `allocate` misread (F-35); reader looser than the Pilot (F-37); stale layouts (F-38); matrices (F-40); actions, states and transitions are not trace nodes (F-41, F-73); successions not drawn (F-36); redefinitions not drawn (F-60); sequence scoping (F-67); "not read" noise (F-68); stdlib imports (F-15); views folder (F-14).
- **UI-ONLY:** canvas checks (F-16, F-42, F-76, F-83; C-02, C-03, C-10, C-13, C-15, C-17, C-20); Pilot command (F-43; C-11, C-16, C-19).

### 3. Safety — 1/5
- **What Sanad did:** the `hazard` role turned 28 hazard ids into `mitigates` edges. `safety.hazardCoverage` read 100 %, `single-point-failure` fired, and the rigour check ran.
- **MANUAL:** risk management plan and file (F-06, F-48); hazard role set up by hand (F-47); SysML hazards not in the graph (F-49); only safety requirements can name a hazard (F-50); fault tree (F-51); hazard picture (F-52); the hazard chain (F-97). Coverage can never drop below 100 %, because a hazard with no control is invisible (F-48).
- **UI-ONLY:** safety views and Problems group (F-56; C-13, C-14).

### 4. Hardware — 1/5
- **What Sanad did:** the SysML reader parsed the hardware model (pins, currents, capacitor). The views were drawn.
- **MANUAL:** pin map, power budget, BOM and the checks on them (F-57, via `tools/hw-tables.cjs`); HDD and component selection (F-58); hardware matrix (F-59); chosen parts missing from the graph (F-61).
- **UI-ONLY:** canvas and inspector (F-62; C-15, C-16).

### 5. Software — 3/5
- **What Sanad did:** `writeSoftwareProfile`; component inventory and SDD export (Design Lenses builders); conformance engine (caught DEF-007); code index (46 functions); implementation engine (the 9 not-implemented, accepted).
- **MANUAL:** profile gaps (F-63, F-75, F-78); Pilot without the profile (F-64); enum short form (F-65); config roles (F-66, F-71); inventory from Markdown, not the model (F-72); duplicate and conformance noise (F-69, F-70); contracts (F-77, F-90); interface surface (F-79); allocation counts (F-80); enums (F-81, F-92); algorithms (F-82); SAD (F-44); code with no design home (F-88); index scope, suppressions, C++ ids, macros (F-84, F-85, F-87, F-89); `implements` opt-in (F-86).
- **UI-ONLY:** SDD export and lenses (F-74; C-18, C-21, C-22, C-23).

### 6. Verification — 2/5
- **What Sanad did:** the case producer read 99 declared cases. The results producer read 100 JUnit rows. The coverage producer read LCOV. `--report test-coverage` gave 70 required · 54 covered · 16 blocked. `planPageFor` built the plan. `missing-result` held the gate red truthfully.
- **MANUAL:** C/C++ test lane (F-93); Unity → JUnit and gcov → LCOV (F-103); design-element tests (F-96); boundary items (F-98); procedures (F-101); blocked vs missing and level rule (F-102); coverage join (F-104); records (F-105); static analysis (F-91); stale results (F-113); untracked evidence (F-118); stage config (F-100).
- **UI-ONLY:** AI test drafting, no key (F-95; C-26); plan approval (F-99; C-24); coverage views (C-25, C-27).

### 7. Traceability — 3/5
- **What Sanad did:** the traceability-audit showed requirement → allocated item → code → case → verdict for all 70 requirements. `--report traceability` showed the tree. The code trace reached 53 requirements, with 0 unexplained.
- **MANUAL:** Class-C mandatory legs (F-19); decomposition vs satisfy (F-39); bare names (F-45); hardware matrix (F-59); hazard chain (F-97); reached count (F-86).
- **UI-ONLY:** Traceability view (C-05, C-22).

### 8. Impact analysis — 1/5
- **What Sanad did:** `impactView`/`impactReport` and the review's `impactReading` gave 100 downstream artifacts for the 6 clashing requirements. The impact engine gave `wide-impact` info per top requirement.
- **MANUAL:** the clash and the ruling (F-106); 30 missed items in the model, hazards, values and documents (F-107); ranking (F-109); timing budget (F-110).
- **UI-ONLY:** Impact lens and export (F-108; C-28).

### 9. Configuration management — 2/5
- **What Sanad did:** `makeBaseline` made REQ-BL-1 and REQ-BL-2. `--baseline` gave the trace drift (109). `baselineDiff` gave the finding drift (60 new / 7 gone). `--diff-config` worked. `evidenceRecord` committed the review records.
- **MANUAL:** git tags and baseline records (F-25); text drift (F-30, F-112); design drift (F-46, F-53); config diff granularity (F-32); change-request record (F-111); CM plan (F-08); project-level records (F-10, F-94); untracked evidence (F-118, DEF-008); config writer noise (F-34).
- **UI-ONLY:** Set Baseline and Baselines view (F-23, F-115; C-07, C-29).

### 10. Knowledge management — 2/5
- **What Sanad did:** the glossary and data-dictionary lanes were read (terms, `Software:` names, enumerations). The context layer ran for AI.
- **MANUAL:** project and ConOps documents (F-03, F-12); capture flow (F-13); SDP, SOUP and CM plans (F-05, F-07, F-08); ADRs (F-09); registers (F-11); AI context cut short on safety files (F-55); dictionary resolution (F-98).
- **UI-ONLY:** Setup form (F-01; C-01).
