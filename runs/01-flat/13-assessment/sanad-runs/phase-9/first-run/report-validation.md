# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `0e36b6f3db09a6ff4c7b4c0b4533d4342ae2af44`

**Commit date:** `2026-09-27T00:49:05+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `73cefee784dee2f82b17b2bc0916ef096e2870b33c173e9c2bd748da1f696138`

**Input hash:** `2c9742367e0e4914da64b949650aa12559cc4a12cbd486d6fa66bf31cf58601b`

**Inputs:** `69 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 71 — 6 errors · 7 warnings · 58 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Errors (6)](#errors-6)
    - [`dead-requirement` (1)](#dead-requirement-1)
    - [`forbidden-dependency` (5)](#forbidden-dependency-5)
  - [Warnings (7)](#warnings-7)
    - [`implementation-outside-component` (7)](#implementation-outside-component-7)
  - [Information (58)](#information-58)
    - [`indefinite-article` (18)](#indefinite-article-18)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (1)](#logical-expression-1)
    - [`requirement-pattern` (2)](#requirement-pattern-2)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`sysml-unresolved-import` (23)](#sysml-unresolved-import-23)
    - [`under-decomposition` (4)](#under-decomposition-4)
    - [`wide-impact` (5)](#wide-impact-5)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (6)](#repository-6)
  - [/tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-xchclitreeejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-xchclitreeejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-xchclitreeejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-xchclitreeejadahrewtemplatessystemmd-1)
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
  - [10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (3)](#10-srcfirmwarecomponentsalarmmgrsrcalarmmgrc-3)
  - [10-src/firmware/components/display_mgr/src/display_mgr.cpp (3)](#10-srcfirmwarecomponentsdisplaymgrsrcdisplaymgrcpp-3)
  - [10-src/firmware/components/history_ring/src/history_ring.c (1)](#10-srcfirmwarecomponentshistoryringsrchistoryringc-1)
  - [MRTM-ENV-002 (1)](#mrtm-env-002-1)
  - [MRTM-ENV-003 (1)](#mrtm-env-003-1)
  - [MRTM-ENV-004 (1)](#mrtm-env-004-1)
  - [MRTM-IFC-003 (1)](#mrtm-ifc-003-1)
  - [MRTM-IFC-004 (1)](#mrtm-ifc-004-1)
  - [MRTM-MNT-001 (1)](#mrtm-mnt-001-1)
  - [MRTM-PRF-001 (1)](#mrtm-prf-001-1)
  - [MRTM-PRF-004 (1)](#mrtm-prf-004-1)
  - [MRTM-SAF-001 (1)](#mrtm-saf-001-1)
  - [MRTM-SAF-003 (1)](#mrtm-saf-003-1)
  - [MRTM-SAF-004 (1)](#mrtm-saf-004-1)
  - [MRTM-SAF-011 (2)](#mrtm-saf-011-2)
  - [MRTM-SAF-013 (1)](#mrtm-saf-013-1)
  - [MRTM-SAF-015 (1)](#mrtm-saf-015-1)
  - [MRTM-SAF-021 (1)](#mrtm-saf-021-1)
  - [MRTM-SAF-022 (1)](#mrtm-saf-022-1)
  - [MRTM-STK-003 (1)](#mrtm-stk-003-1)
  - [MRTM-STK-004 (1)](#mrtm-stk-004-1)
  - [MRTM-STK-006 (1)](#mrtm-stk-006-1)
  - [MRTM-STK-007 (1)](#mrtm-stk-007-1)
  - [MRTM-STK-008 (2)](#mrtm-stk-008-2)
  - [MRTM-SYS-004 (2)](#mrtm-sys-004-2)
  - [MRTM-SYS-011 (1)](#mrtm-sys-011-1)
  - [MRTM-SYS-012 (1)](#mrtm-sys-012-1)
  - [MRTM-SYS-014 (1)](#mrtm-sys-014-1)
  - [MRTM-SYS-020 (2)](#mrtm-sys-020-2)
  - [MRTM-SYS-021 (1)](#mrtm-sys-021-1)

## Findings by severity

### Errors (6)

#### `dead-requirement` (1)

| Requirement | Message |
|---|---|
| (repository) | tools/config-phase7.cjs#add claims to implement "DOGFOOD-4", which no requirement in this repository declares. The requirement was renamed or deleted and the code still points at the old id, so the code's own traceability is now to nothing. |

#### `forbidden-dependency` (5)

| Requirement | Message |
|---|---|
| (repository) | Component "diagnostics" depends on "wdtKicker", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/diagnostics/src/diagnostics.c:8 (`wdt_kicker.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| (repository) | Component "displayMgr" depends on "eventLog", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/display_mgr/src/display_mgr.cpp:9 (`event_log.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| (repository) | Component "historyRing" depends on "eventLog", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/history_ring/include/history_ring.h:7 (`event_log.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| (repository) | Component "limitEvaluator" depends on "sensorSampler", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/limit_evaluator/include/limit_evaluator.h:6 (`sensor_sampler.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| (repository) | Component "rtcClock" depends on "eventLog", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/rtc_clock/src/rtc_clock.c:5 (`event_log.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |

### Warnings (7)

#### `implementation-outside-component` (7)

| Requirement | Message |
|---|---|
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-008 is allocated to batterySenseLine, powerMon, powerMonApi, powerService, powerSupervisor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-010 is allocated to firmware.alarmService, firmware.supervisor, wdtKicker, wdtKickerApi but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-017 is allocated to configMgr, configMgrApi, firmware.supervisor but claimed by code in alarmMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-002 is allocated to statusDisplay but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to selfTest but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to selfTest but claimed by code in displayMgr. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-SAF-018 is allocated to eventLog, eventLogApi, firmware.logService but claimed by code in historyRing. |

### Information (58)

#### `indefinite-article` (18)

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

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

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
| 06-design/software/MrtmSeqExcursion.sysml | line 5: `import ScalarValues` names nothing this project declares |
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

#### `wide-impact` (5)

| Requirement | Message |
|---|---|
| MRTM-STK-003 | Changing MRTM-STK-003 reaches 11 other artifacts — 5 already implemented, 6 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 24 other artifacts — 9 already implemented, 11 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-006 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 11 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-007 | Changing MRTM-STK-007 reaches 14 other artifacts — 4 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-008 | Changing MRTM-STK-008 reaches 14 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

## Findings by requirement

### (repository) (6)

| Severity | Rule | Message |
|---|---|---|
| error | `dead-requirement` | tools/config-phase7.cjs#add claims to implement "DOGFOOD-4", which no requirement in this repository declares. The requirement was renamed or deleted and the code still points at the old id, so the code's own traceability is now to nothing. |
| error | `forbidden-dependency` | Component "diagnostics" depends on "wdtKicker", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/diagnostics/src/diagnostics.c:8 (`wdt_kicker.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| error | `forbidden-dependency` | Component "displayMgr" depends on "eventLog", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/display_mgr/src/display_mgr.cpp:9 (`event_log.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| error | `forbidden-dependency` | Component "historyRing" depends on "eventLog", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/history_ring/include/history_ring.h:7 (`event_log.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| error | `forbidden-dependency` | Component "limitEvaluator" depends on "sensorSampler", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/limit_evaluator/include/limit_evaluator.h:6 (`sensor_sampler.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |
| error | `forbidden-dependency` | Component "rtcClock" depends on "eventLog", which its architecture artifact does not list under `uses:`. Declared at 10-src/firmware/components/rtc_clock/src/rtc_clock.c:5 (`event_log.h`). Either the dependency is wrong and the code should not reach across, or the architecture is out of date and should say so. |

### /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-XCHCLI/tree/.ejadah/rew/templates/system.md (1)

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
| info | `sysml-unresolved-import` | line 5: `import ScalarValues` names nothing this project declares |

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

### 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to batterySenseLine, powerMon, powerMonApi, powerService, powerSupervisor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to firmware.alarmService, firmware.supervisor, wdtKicker, wdtKickerApi but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to configMgr, configMgrApi, firmware.supervisor but claimed by code in alarmMgr. |

### 10-src/firmware/components/display_mgr/src/display_mgr.cpp (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-MNT-002 is allocated to statusDisplay but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to selfTest but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to selfTest but claimed by code in displayMgr. |

### 10-src/firmware/components/history_ring/src/history_ring.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to eventLog, eventLogApi, firmware.logService but claimed by code in historyRing. |

### MRTM-ENV-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-IFC-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-IFC-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-MNT-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PRF-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PRF-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-001 (1)

| Severity | Rule | Message |
|---|---|---|
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

### MRTM-SAF-013 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-SAF-015 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-SAF-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-022 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-STK-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-003 reaches 11 other artifacts — 5 already implemented, 6 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-004 reaches 24 other artifacts — 9 already implemented, 11 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 11 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-007 reaches 14 other artifacts — 4 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `wide-impact` | Changing MRTM-STK-008 reaches 14 other artifacts — 4 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

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

### MRTM-SYS-020 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SYS-020 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

