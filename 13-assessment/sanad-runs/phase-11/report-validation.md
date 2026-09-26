# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `139d80087b653abfdd5cc8e2cd99e1aeb8e97399`

**Commit date:** `2026-09-27T01:18:36+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `487a4fd5e8ce5de9267614d0b47a8e4e47131ee956e6215a17489534772f519c`

**Input hash:** `840978fbf3fbea2157c7b10e6120666d50c36a9a578c44bd2bc537fd94e82cce`

**Inputs:** `70 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 77 — 0 errors · 17 warnings · 60 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (17)](#warnings-17)
    - [`missing-result` (16)](#missing-result-16)
    - [`undeclared-id-prefix` (1)](#undeclared-id-prefix-1)
  - [Information (60)](#information-60)
    - [`indefinite-article` (19)](#indefinite-article-19)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (1)](#logical-expression-1)
    - [`requirement-pattern` (2)](#requirement-pattern-2)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`sysml-unresolved-import` (23)](#sysml-unresolved-import-23)
    - [`under-decomposition` (4)](#under-decomposition-4)
    - [`wide-impact` (6)](#wide-impact-6)
- [Findings by requirement](#findings-by-requirement)
  - [/tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-qyp7sbtreeejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-qyp7sbtreeejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-qyp7sbtreeejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-qyp7sbtreeejadahrewtemplatessystemmd-1)
  - [06-design/hardware/MrtmHardware.sysml (1)](#06-designhardwaremrtmhardwaresysml-1)
  - [06-design/software/MrtmSeqExcursion.sysml (1)](#06-designsoftwaremrtmseqexcursionsysml-1)
  - [06-design/software/MrtmSeqPowerLoss.sysml (1)](#06-designsoftwaremrtmseqpowerlosssysml-1)
  - [06-design/software/MrtmSeqProbeFault.sysml (1)](#06-designsoftwaremrtmseqprobefaultsysml-1)
  - [06-design/software/MrtmSoftware.sysml (2)](#06-designsoftwaremrtmsoftwaresysml-2)
  - [06-design/software/MrtmSwCodes.sysml (1)](#06-designsoftwaremrtmswcodessysml-1)
  - [06-design/software/MrtmSwDetail.sysml (2)](#06-designsoftwaremrtmswdetailsysml-2)
  - [06-design/software/MrtmSwStates.sysml (1)](#06-designsoftwaremrtmswstatessysml-1)
  - [06-design/system/MrtmInterfaces.sysml (1)](#06-designsystemmrtminterfacessysml-1)
  - [06-design/system/MrtmLogical.sysml (1)](#06-designsystemmrtmlogicalsysml-1)
  - [06-design/system/MrtmPartitions.sysml (1)](#06-designsystemmrtmpartitionssysml-1)
  - [06-design/system/MrtmPhysical.sysml (1)](#06-designsystemmrtmphysicalsysml-1)
  - [06-design/system/MrtmSafety.sysml (1)](#06-designsystemmrtmsafetysysml-1)
  - [06-design/system/MrtmUseCases.sysml (1)](#06-designsystemmrtmusecasessysml-1)
  - [06-design/views/MrtmBlocksView.sysml (1)](#06-designviewsmrtmblocksviewsysml-1)
  - [06-design/views/MrtmContextView.sysml (1)](#06-designviewsmrtmcontextviewsysml-1)
  - [06-design/views/MrtmDataFlowView.sysml (1)](#06-designviewsmrtmdataflowviewsysml-1)
  - [06-design/views/MrtmExternalInterfacesView.sysml (1)](#06-designviewsmrtmexternalinterfacesviewsysml-1)
  - [06-design/views/MrtmInterfacesView.sysml (1)](#06-designviewsmrtminterfacesviewsysml-1)
  - [06-design/views/MrtmUseCasesView.sysml (1)](#06-designviewsmrtmusecasesviewsysml-1)
  - [06-design/views/SanadRenderings.sysml (1)](#06-designviewssanadrenderingssysml-1)
  - [MRTM-ENV-001 (1)](#mrtm-env-001-1)
  - [MRTM-ENV-002 (2)](#mrtm-env-002-2)
  - [MRTM-ENV-003 (2)](#mrtm-env-003-2)
  - [MRTM-ENV-004 (2)](#mrtm-env-004-2)
  - [MRTM-IFC-003 (1)](#mrtm-ifc-003-1)
  - [MRTM-IFC-004 (2)](#mrtm-ifc-004-2)
  - [MRTM-MNT-001 (2)](#mrtm-mnt-001-2)
  - [MRTM-PRF-001 (1)](#mrtm-prf-001-1)
  - [MRTM-PRF-004 (1)](#mrtm-prf-004-1)
  - [MRTM-SAF-001 (2)](#mrtm-saf-001-2)
  - [MRTM-SAF-003 (1)](#mrtm-saf-003-1)
  - [MRTM-SAF-004 (1)](#mrtm-saf-004-1)
  - [MRTM-SAF-011 (2)](#mrtm-saf-011-2)
  - [MRTM-SAF-013 (2)](#mrtm-saf-013-2)
  - [MRTM-SAF-015 (1)](#mrtm-saf-015-1)
  - [MRTM-SAF-020 (1)](#mrtm-saf-020-1)
  - [MRTM-SAF-021 (1)](#mrtm-saf-021-1)
  - [MRTM-SAF-022 (1)](#mrtm-saf-022-1)
  - [MRTM-STK-001 (1)](#mrtm-stk-001-1)
  - [MRTM-STK-002 (1)](#mrtm-stk-002-1)
  - [MRTM-STK-003 (2)](#mrtm-stk-003-2)
  - [MRTM-STK-004 (2)](#mrtm-stk-004-2)
  - [MRTM-STK-005 (1)](#mrtm-stk-005-1)
  - [MRTM-STK-006 (1)](#mrtm-stk-006-1)
  - [MRTM-STK-007 (2)](#mrtm-stk-007-2)
  - [MRTM-STK-008 (3)](#mrtm-stk-008-3)
  - [MRTM-SYS-004 (2)](#mrtm-sys-004-2)
  - [MRTM-SYS-011 (1)](#mrtm-sys-011-1)
  - [MRTM-SYS-012 (1)](#mrtm-sys-012-1)
  - [MRTM-SYS-014 (1)](#mrtm-sys-014-1)
  - [MRTM-SYS-016 (1)](#mrtm-sys-016-1)
  - [MRTM-SYS-020 (2)](#mrtm-sys-020-2)
  - [MRTM-SYS-021 (1)](#mrtm-sys-021-1)
  - [MRTM-SYS-024 (2)](#mrtm-sys-024-2)

## Findings by severity

### Warnings (17)

#### `missing-result` (16)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-002 | Nothing in the declared test reports says what happened when MRTM-ENV-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-003 | Nothing in the declared test reports says what happened when MRTM-ENV-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-004 | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-004 | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-001 | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-001 | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-013 | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-020 | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-001 | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-003 | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-004 | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-005 | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-007 | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-008 | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-016 | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

#### `undeclared-id-prefix` (1)

| Requirement | Message |
|---|---|
| MRTM-SYS-024 | 1 reference(s) use the prefix "CR", which no type declares |

### Information (60)

#### `indefinite-article` (19)

| Requirement | Message |
|---|---|
| MRTM-ENV-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-MNT-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-024 | an indefinite article leaves which one open - use "the" and name the item |

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `logical-expression` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

#### `requirement-pattern` (2)

| Requirement | Message |
|---|---|
| MRTM-SAF-015 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SYS-004 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

#### `single-point-failure` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-011 | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

#### `sysml-unresolved-import` (23)

| Requirement | Message |
|---|---|
| 06-design/hardware/MrtmHardware.sysml | line 11: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSeqExcursion.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSeqPowerLoss.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSeqProbeFault.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSoftware.sysml | line 10: `import SoftwareProfile` names nothing this project declares |
| 06-design/software/MrtmSoftware.sysml | line 9: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSwCodes.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSwDetail.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/software/MrtmSwDetail.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/software/MrtmSwStates.sysml | line 5: `import ScalarValues` names nothing this project declares |
| 06-design/system/MrtmInterfaces.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/system/MrtmLogical.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/system/MrtmPartitions.sysml | line 5: `import ScalarValues` names nothing this project declares |
| 06-design/system/MrtmPhysical.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/system/MrtmSafety.sysml | line 8: `import ScalarValues` names nothing this project declares |
| 06-design/system/MrtmUseCases.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmBlocksView.sysml | line 24: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmContextView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmDataFlowView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmExternalInterfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmInterfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmUseCasesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |

#### `under-decomposition` (4)

| Requirement | Message |
|---|---|
| MRTM-SYS-004 | MRTM-SYS-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-011 | MRTM-SYS-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-014 | MRTM-SYS-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-020 | MRTM-SYS-020 has one child, which restates it — merge the two, or add the sibling |

#### `wide-impact` (6)

| Requirement | Message |
|---|---|
| MRTM-STK-002 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 23 other artifacts — 3 already implemented, 5 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 6 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-003 | Changing MRTM-STK-003 reaches 18 other artifacts — 5 already implemented, 6 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 42 other artifacts — 9 already implemented, 12 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-006 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 26 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 8 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-007 | Changing MRTM-STK-007 reaches 23 other artifacts — 4 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-008 | Changing MRTM-STK-008 reaches 23 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

## Findings by requirement

### /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-QYP7sb/tree/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### 06-design/hardware/MrtmHardware.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 11: `import ScalarValues` names nothing this project declares |

### 06-design/software/MrtmSeqExcursion.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |

### 06-design/software/MrtmSeqPowerLoss.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/software/MrtmSeqProbeFault.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/software/MrtmSoftware.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 10: `import SoftwareProfile` names nothing this project declares |
| info | `sysml-unresolved-import` | line 9: `import ScalarValues` names nothing this project declares |

### 06-design/software/MrtmSwCodes.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/software/MrtmSwDetail.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/software/MrtmSwStates.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 5: `import ScalarValues` names nothing this project declares |

### 06-design/system/MrtmInterfaces.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/system/MrtmLogical.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/system/MrtmPartitions.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 5: `import ScalarValues` names nothing this project declares |

### 06-design/system/MrtmPhysical.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |

### 06-design/system/MrtmSafety.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import ScalarValues` names nothing this project declares |

### 06-design/system/MrtmUseCases.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmBlocksView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 24: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmContextView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmDataFlowView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmExternalInterfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmInterfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmUseCasesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/SanadRenderings.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import Views` names nothing this project declares |

### MRTM-ENV-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-ENV-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ENV-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ENV-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-IFC-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-IFC-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-MNT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PRF-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PRF-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-011 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `single-point-failure` | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

### MRTM-SAF-013 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-SAF-015 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-SAF-020 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SAF-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-022 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-STK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 23 other artifacts — 3 already implemented, 5 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 6 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-003 reaches 18 other artifacts — 5 already implemented, 6 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-004 reaches 42 other artifacts — 9 already implemented, 12 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-005 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 26 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 8 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-007 reaches 23 other artifacts — 4 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `wide-impact` | Changing MRTM-STK-008 reaches 23 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-SYS-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `under-decomposition` | MRTM-SYS-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-011 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-012 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-014 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-014 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-016 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-020 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SYS-020 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-024 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "CR", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

