# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `f09a78fd09bbc0667ee9c6f113dce569554b766e`

**Commit date:** `2026-09-27T11:31:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `eb993bc900028f9dfe670b03a7b38ec3cc25a38a376cbf3731db7e2e1aadbaa8`

**Input hash:** `0ca93832910388c53f96571c3376a59531ed720a5dfed8d469a1aebc4e8b899e`

**Inputs:** `138 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 462 — 6 errors · 253 warnings · 203 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Errors (6)](#errors-6)
    - [`atomicity` (5)](#atomicity-5)
    - [`dead-requirement` (1)](#dead-requirement-1)
  - [Warnings (253)](#warnings-253)
    - [`allocation-target-undeclared` (50)](#allocation-target-undeclared-50)
    - [`duplicate-requirement` (1)](#duplicate-requirement-1)
    - [`empty-component` (12)](#empty-component-12)
    - [`implementation-outside-component` (46)](#implementation-outside-component-46)
    - [`missing-case` (7)](#missing-case-7)
    - [`missing-result` (46)](#missing-result-46)
    - [`parent-child-inconsistency` (8)](#parent-child-inconsistency-8)
    - [`passive-voice` (1)](#passive-voice-1)
    - [`sysml-unresolved-id` (74)](#sysml-unresolved-id-74)
    - [`testability` (4)](#testability-4)
    - [`undeclared-id-prefix` (4)](#undeclared-id-prefix-4)
  - [Information (203)](#information-203)
    - [`decimal-format` (1)](#decimal-format-1)
    - [`indefinite-article` (46)](#indefinite-article-46)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (9)](#logical-expression-9)
    - [`requirement-pattern` (3)](#requirement-pattern-3)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`sysml-file-package-mismatch` (3)](#sysml-file-package-mismatch-3)
    - [`sysml-unresolved-import` (30)](#sysml-unresolved-import-30)
    - [`temporal-keyword` (1)](#temporal-keyword-1)
    - [`undeclared-hazard` (16)](#undeclared-hazard-16)
    - [`under-decomposition` (82)](#under-decomposition-82)
    - [`universal-quantifier` (1)](#universal-quantifier-1)
    - [`wide-impact` (6)](#wide-impact-6)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (13)](#repository-13)
  - [/tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-p9zsxytreeruns03-arcadiaejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-p9zsxytreeruns03-arcadiaejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-p9zsxytreeruns03-arcadiaejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-p9zsxytreeruns03-arcadiaejadahrewtemplatessystemmd-1)
  - [06-design/epbs/EpbsTrace.sysml (6)](#06-designepbsepbstracesysml-6)
  - [06-design/la/LaArchitecture.sysml (1)](#06-designlalaarchitecturesysml-1)
  - [06-design/la/LaComponents.sysml (1)](#06-designlalacomponentssysml-1)
  - [06-design/la/LaInterfaces.sysml (1)](#06-designlalainterfacessysml-1)
  - [06-design/la/LaTrace.sysml (6)](#06-designlalatracesysml-6)
  - [06-design/library/hardware/MrtmHardware.sysml (1)](#06-designlibraryhardwaremrtmhardwaresysml-1)
  - [06-design/library/software/MrtmSeqExcursion.sysml (1)](#06-designlibrarysoftwaremrtmseqexcursionsysml-1)
  - [06-design/library/software/MrtmSeqPowerLoss.sysml (1)](#06-designlibrarysoftwaremrtmseqpowerlosssysml-1)
  - [06-design/library/software/MrtmSeqProbeFault.sysml (1)](#06-designlibrarysoftwaremrtmseqprobefaultsysml-1)
  - [06-design/library/software/MrtmSoftware.sysml (2)](#06-designlibrarysoftwaremrtmsoftwaresysml-2)
  - [06-design/library/software/MrtmSwCodes.sysml (1)](#06-designlibrarysoftwaremrtmswcodessysml-1)
  - [06-design/library/software/MrtmSwDetail.sysml (2)](#06-designlibrarysoftwaremrtmswdetailsysml-2)
  - [06-design/library/software/MrtmSwStates.sysml (1)](#06-designlibrarysoftwaremrtmswstatessysml-1)
  - [06-design/library/system/MrtmInterfaces.sysml (1)](#06-designlibrarysystemmrtminterfacessysml-1)
  - [06-design/library/system/MrtmPhysical.sysml (1)](#06-designlibrarysystemmrtmphysicalsysml-1)
  - [06-design/oa/OaModel.sysml (1)](#06-designoaoamodelsysml-1)
  - [06-design/oa/OaTrace.sysml (4)](#06-designoaoatracesysml-4)
  - [06-design/pa/PaHardware.sysml (2)](#06-designpapahardwaresysml-2)
  - [06-design/pa/PaSoftware.sysml (9)](#06-designpapasoftwaresysml-9)
  - [06-design/pa/PaTrace.sysml (19)](#06-designpapatracesysml-19)
  - [06-design/sa/SaActors.sysml (1)](#06-designsasaactorssysml-1)
  - [06-design/sa/SaContext.sysml (1)](#06-designsasacontextsysml-1)
  - [06-design/sa/SaFunctions.sysml (2)](#06-designsasafunctionssysml-2)
  - [06-design/sa/SaTrace.sysml (10)](#06-designsasatracesysml-10)
  - [06-design/transitions/Transitions.sysml (71)](#06-designtransitionstransitionssysml-71)
  - [06-design/views/Epbs_breakdownView.sysml (1)](#06-designviewsepbs_breakdownviewsysml-1)
  - [06-design/views/La_architectureView.sysml (1)](#06-designviewsla_architectureviewsysml-1)
  - [06-design/views/Oa_architectureView.sysml (1)](#06-designviewsoa_architectureviewsysml-1)
  - [06-design/views/Oa_capabilitiesView.sysml (1)](#06-designviewsoa_capabilitiesviewsysml-1)
  - [06-design/views/Pa_architectureView.sysml (1)](#06-designviewspa_architectureviewsysml-1)
  - [06-design/views/Pa_backup_alarmView.sysml (1)](#06-designviewspabackupalarmviewsysml-1)
  - [06-design/views/Pa_interconnectionView.sysml (1)](#06-designviewspa_interconnectionviewsysml-1)
  - [06-design/views/Pa_softwareView.sysml (1)](#06-designviewspa_softwareviewsysml-1)
  - [06-design/views/Sa_contextView.sysml (1)](#06-designviewssa_contextviewsysml-1)
  - [06-design/views/SanadRenderings.sysml (1)](#06-designviewssanadrenderingssysml-1)
  - [10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (14)](#10-srcfirmwarecomponentsalarmmgrsrcalarmmgrc-14)
  - [10-src/firmware/components/config_mgr/src/config_mgr.c (2)](#10-srcfirmwarecomponentsconfigmgrsrcconfigmgrc-2)
  - [10-src/firmware/components/diagnostics/src/diagnostics.c (2)](#10-srcfirmwarecomponentsdiagnosticssrcdiagnosticsc-2)
  - [10-src/firmware/components/display_mgr/src/display_mgr.cpp (11)](#10-srcfirmwarecomponentsdisplaymgrsrcdisplaymgrcpp-11)
  - [10-src/firmware/components/event_log/src/event_log.c (1)](#10-srcfirmwarecomponentseventlogsrceventlogc-1)
  - [10-src/firmware/components/history_ring/src/history_ring.c (1)](#10-srcfirmwarecomponentshistoryringsrchistoryringc-1)
  - [10-src/firmware/components/power_mon/src/power_mon.c (2)](#10-srcfirmwarecomponentspowermonsrcpowermonc-2)
  - [10-src/firmware/components/rtc_clock/src/rtc_clock.c (1)](#10-srcfirmwarecomponentsrtcclocksrcrtcclockc-1)
  - [10-src/firmware/components/sensor_sampler/src/sensor_sampler.c (5)](#10-srcfirmwarecomponentssensorsamplersrcsensorsamplerc-5)
  - [10-src/firmware/components/usb_export/src/usb_export.c (4)](#10-srcfirmwarecomponentsusbexportsrcusbexportc-4)
  - [10-src/firmware/components/wdt_kicker/src/wdt_kicker.c (3)](#10-srcfirmwarecomponentswdtkickersrcwdtkickerc-3)
  - [MRTM-CI-001 (7)](#mrtm-ci-001-7)
  - [MRTM-CI-002 (5)](#mrtm-ci-002-5)
  - [MRTM-CI-003 (4)](#mrtm-ci-003-4)
  - [MRTM-CI-004 (4)](#mrtm-ci-004-4)
  - [MRTM-CI-005 (6)](#mrtm-ci-005-6)
  - [MRTM-CI-006 (3)](#mrtm-ci-006-3)
  - [MRTM-ENV-001 (2)](#mrtm-env-001-2)
  - [MRTM-ENV-002 (2)](#mrtm-env-002-2)
  - [MRTM-ENV-003 (2)](#mrtm-env-003-2)
  - [MRTM-ENV-004 (3)](#mrtm-env-004-3)
  - [MRTM-IFC-002 (1)](#mrtm-ifc-002-1)
  - [MRTM-IFC-003 (2)](#mrtm-ifc-003-2)
  - [MRTM-IFC-004 (3)](#mrtm-ifc-004-3)
  - [MRTM-LA-001 (1)](#mrtm-la-001-1)
  - [MRTM-LA-002 (1)](#mrtm-la-002-1)
  - [MRTM-LA-003 (1)](#mrtm-la-003-1)
  - [MRTM-LA-004 (2)](#mrtm-la-004-2)
  - [MRTM-LA-005 (1)](#mrtm-la-005-1)
  - [MRTM-LA-006 (2)](#mrtm-la-006-2)
  - [MRTM-LA-007 (1)](#mrtm-la-007-1)
  - [MRTM-LA-008 (2)](#mrtm-la-008-2)
  - [MRTM-LA-009 (1)](#mrtm-la-009-1)
  - [MRTM-LA-010 (3)](#mrtm-la-010-3)
  - [MRTM-LA-011 (2)](#mrtm-la-011-2)
  - [MRTM-LA-012 (2)](#mrtm-la-012-2)
  - [MRTM-LA-013 (2)](#mrtm-la-013-2)
  - [MRTM-LA-014 (1)](#mrtm-la-014-1)
  - [MRTM-LA-015 (3)](#mrtm-la-015-3)
  - [MRTM-LA-016 (2)](#mrtm-la-016-2)
  - [MRTM-LA-017 (2)](#mrtm-la-017-2)
  - [MRTM-LA-019 (3)](#mrtm-la-019-3)
  - [MRTM-LA-020 (1)](#mrtm-la-020-1)
  - [MRTM-LA-021 (3)](#mrtm-la-021-3)
  - [MRTM-LA-022 (3)](#mrtm-la-022-3)
  - [MRTM-LA-023 (3)](#mrtm-la-023-3)
  - [MRTM-LA-024 (2)](#mrtm-la-024-2)
  - [MRTM-LA-025 (2)](#mrtm-la-025-2)
  - [MRTM-LA-026 (1)](#mrtm-la-026-1)
  - [MRTM-MNT-001 (2)](#mrtm-mnt-001-2)
  - [MRTM-PH-001 (2)](#mrtm-ph-001-2)
  - [MRTM-PH-002 (3)](#mrtm-ph-002-3)
  - [MRTM-PH-003 (3)](#mrtm-ph-003-3)
  - [MRTM-PH-004 (3)](#mrtm-ph-004-3)
  - [MRTM-PH-005 (5)](#mrtm-ph-005-5)
  - [MRTM-PH-006 (4)](#mrtm-ph-006-4)
  - [MRTM-PH-007 (3)](#mrtm-ph-007-3)
  - [MRTM-PH-008 (4)](#mrtm-ph-008-4)
  - [MRTM-PH-009 (4)](#mrtm-ph-009-4)
  - [MRTM-PH-010 (4)](#mrtm-ph-010-4)
  - [MRTM-PH-011 (3)](#mrtm-ph-011-3)
  - [MRTM-PH-012 (3)](#mrtm-ph-012-3)
  - [MRTM-PH-013 (3)](#mrtm-ph-013-3)
  - [MRTM-PH-014 (4)](#mrtm-ph-014-4)
  - [MRTM-PH-015 (4)](#mrtm-ph-015-4)
  - [MRTM-PH-016 (3)](#mrtm-ph-016-3)
  - [MRTM-PRF-001 (2)](#mrtm-prf-001-2)
  - [MRTM-PRF-002 (1)](#mrtm-prf-002-1)
  - [MRTM-PRF-003 (1)](#mrtm-prf-003-1)
  - [MRTM-PRF-004 (2)](#mrtm-prf-004-2)
  - [MRTM-SAF-001 (2)](#mrtm-saf-001-2)
  - [MRTM-SAF-003 (2)](#mrtm-saf-003-2)
  - [MRTM-SAF-004 (2)](#mrtm-saf-004-2)
  - [MRTM-SAF-005 (1)](#mrtm-saf-005-1)
  - [MRTM-SAF-006 (1)](#mrtm-saf-006-1)
  - [MRTM-SAF-007 (1)](#mrtm-saf-007-1)
  - [MRTM-SAF-008 (1)](#mrtm-saf-008-1)
  - [MRTM-SAF-009 (1)](#mrtm-saf-009-1)
  - [MRTM-SAF-011 (2)](#mrtm-saf-011-2)
  - [MRTM-SAF-012 (1)](#mrtm-saf-012-1)
  - [MRTM-SAF-013 (3)](#mrtm-saf-013-3)
  - [MRTM-SAF-015 (1)](#mrtm-saf-015-1)
  - [MRTM-SAF-016 (1)](#mrtm-saf-016-1)
  - [MRTM-SAF-017 (1)](#mrtm-saf-017-1)
  - [MRTM-SAF-018 (1)](#mrtm-saf-018-1)
  - [MRTM-SAF-020 (1)](#mrtm-saf-020-1)
  - [MRTM-SAF-021 (1)](#mrtm-saf-021-1)
  - [MRTM-SAF-022 (2)](#mrtm-saf-022-2)
  - [MRTM-SAF-023 (1)](#mrtm-saf-023-1)
  - [MRTM-STK-001 (1)](#mrtm-stk-001-1)
  - [MRTM-STK-002 (1)](#mrtm-stk-002-1)
  - [MRTM-STK-003 (2)](#mrtm-stk-003-2)
  - [MRTM-STK-004 (2)](#mrtm-stk-004-2)
  - [MRTM-STK-005 (1)](#mrtm-stk-005-1)
  - [MRTM-STK-006 (1)](#mrtm-stk-006-1)
  - [MRTM-STK-007 (2)](#mrtm-stk-007-2)
  - [MRTM-STK-008 (3)](#mrtm-stk-008-3)
  - [MRTM-SW-001 (2)](#mrtm-sw-001-2)
  - [MRTM-SW-002 (1)](#mrtm-sw-002-1)
  - [MRTM-SW-003 (2)](#mrtm-sw-003-2)
  - [MRTM-SW-004 (1)](#mrtm-sw-004-1)
  - [MRTM-SW-005 (1)](#mrtm-sw-005-1)
  - [MRTM-SW-006 (2)](#mrtm-sw-006-2)
  - [MRTM-SW-007 (1)](#mrtm-sw-007-1)
  - [MRTM-SW-008 (3)](#mrtm-sw-008-3)
  - [MRTM-SW-009 (1)](#mrtm-sw-009-1)
  - [MRTM-SW-010 (2)](#mrtm-sw-010-2)
  - [MRTM-SW-011 (1)](#mrtm-sw-011-1)
  - [MRTM-SW-012 (3)](#mrtm-sw-012-3)
  - [MRTM-SW-013 (3)](#mrtm-sw-013-3)
  - [MRTM-SW-014 (1)](#mrtm-sw-014-1)
  - [MRTM-SW-015 (2)](#mrtm-sw-015-2)
  - [MRTM-SW-016 (2)](#mrtm-sw-016-2)
  - [MRTM-SW-017 (1)](#mrtm-sw-017-1)
  - [MRTM-SW-018 (2)](#mrtm-sw-018-2)
  - [MRTM-SW-019 (1)](#mrtm-sw-019-1)
  - [MRTM-SW-020 (1)](#mrtm-sw-020-1)
  - [MRTM-SYS-002 (1)](#mrtm-sys-002-1)
  - [MRTM-SYS-004 (2)](#mrtm-sys-004-2)
  - [MRTM-SYS-007 (1)](#mrtm-sys-007-1)
  - [MRTM-SYS-009 (1)](#mrtm-sys-009-1)
  - [MRTM-SYS-010 (1)](#mrtm-sys-010-1)
  - [MRTM-SYS-012 (1)](#mrtm-sys-012-1)
  - [MRTM-SYS-013 (1)](#mrtm-sys-013-1)
  - [MRTM-SYS-016 (1)](#mrtm-sys-016-1)
  - [MRTM-SYS-018 (1)](#mrtm-sys-018-1)
  - [MRTM-SYS-020 (1)](#mrtm-sys-020-1)
  - [MRTM-SYS-021 (1)](#mrtm-sys-021-1)
  - [MRTM-SYS-022 (1)](#mrtm-sys-022-1)
  - [MRTM-SYS-023 (1)](#mrtm-sys-023-1)
  - [MRTM-SYS-024 (2)](#mrtm-sys-024-2)

## Findings by severity

### Errors (6)

#### `atomicity` (5)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | 2 requirements in one sentence — split them into 2 |
| MRTM-CI-002 | 2 requirements in one sentence — split them into 2 |
| MRTM-CI-003 | 2 requirements in one sentence — split them into 2 |
| MRTM-CI-004 | 2 requirements in one sentence — split them into 2 |
| MRTM-CI-005 | 2 requirements in one sentence — split them into 2 |

#### `dead-requirement` (1)

| Requirement | Message |
|---|---|
| (repository) | tools/arcadia_spec.py#FUNCTION claims to implement "ENV-002", which no requirement in this repository declares. The requirement was renamed or deleted and the code still points at the old id, so the code's own traceability is now to nothing. |

### Warnings (253)

#### `allocation-target-undeclared` (50)

| Requirement | Message |
|---|---|
| 06-design/epbs/EpbsTrace.sysml | The model allocates to "EpbsBreakdown::product.backupAlarmBoard", which no component artifact declares |
| 06-design/epbs/EpbsTrace.sysml | The model allocates to "EpbsBreakdown::product.batteryPack", which no component artifact declares |
| 06-design/epbs/EpbsTrace.sysml | The model allocates to "EpbsBreakdown::product.displayModule", which no component artifact declares |
| 06-design/epbs/EpbsTrace.sysml | The model allocates to "EpbsBreakdown::product.firmwareImage", which no component artifact declares |
| 06-design/epbs/EpbsTrace.sysml | The model allocates to "EpbsBreakdown::product.mainBoard", which no component artifact declares |
| 06-design/epbs/EpbsTrace.sysml | The model allocates to "EpbsBreakdown::product.probeAssembly", which no component artifact declares |
| 06-design/la/LaTrace.sysml | The model allocates to "LaArchitecture::alarm", which no component artifact declares |
| 06-design/la/LaTrace.sysml | The model allocates to "LaArchitecture::display", which no component artifact declares |
| 06-design/la/LaTrace.sysml | The model allocates to "LaArchitecture::logging", which no component artifact declares |
| 06-design/la/LaTrace.sysml | The model allocates to "LaArchitecture::power", which no component artifact declares |
| 06-design/la/LaTrace.sysml | The model allocates to "LaArchitecture::sensing", which no component artifact declares |
| 06-design/la/LaTrace.sysml | The model allocates to "LaArchitecture::supervision", which no component artifact declares |
| 06-design/oa/OaTrace.sysml | The model allocates to "OaCapabilities::knowTheFridgeIsSafe", which no component artifact declares |
| 06-design/oa/OaTrace.sysml | The model allocates to "OaCapabilities::proveTheStorageHistory", which no component artifact declares |
| 06-design/oa/OaTrace.sysml | The model allocates to "OaCapabilities::respondToAnExcursion", which no component artifact declares |
| 06-design/oa/OaTrace.sysml | The model allocates to "OaCapabilities::trustTheWatching", which no component artifact declares |
| 06-design/pa/PaSoftware.sysml | The model allocates to "PaInterconnection::mcu", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaBackupAlarm::driver", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaBackupAlarm::holdUp", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaBackupAlarm::timer", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::backupAlarm", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::battery", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::buzzer", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::indicators", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::oled", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::powerPath", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::probe", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaInterconnection::rtc", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::alarmItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::displayItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::excursionItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::logItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::powerItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::sensorItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::supervisorItem", which no component artifact declares |
| 06-design/pa/PaTrace.sysml | The model allocates to "PaSoftware::usbItem", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaContext::monitor", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::acquireTemperature", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::alarmOnOwnFailure", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::announceAlarm", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::detectExcursion", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::exportHistory", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::keepPowered", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::recordEvents", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::showStatus", which no component artifact declares |
| 06-design/sa/SaTrace.sysml | The model allocates to "SaFunctions::superviseItself", which no component artifact declares |
| 06-design/transitions/Transitions.sysml | The model allocates to "SaContext::fridge", which no component artifact declares |
| 06-design/transitions/Transitions.sysml | The model allocates to "SaContext::mains", which no component artifact declares |
| 06-design/transitions/Transitions.sysml | The model allocates to "SaContext::recordsComputer", which no component artifact declares |
| 06-design/transitions/Transitions.sysml | The model allocates to "SaContext::staff", which no component artifact declares |

#### `duplicate-requirement` (1)

| Requirement | Message |
|---|---|
| MRTM-SW-006 | _(candidate — inferred, needs human judgement)_ MRTM-SW-006 repeats MRTM-SW-007 (92 % of its words) — merge them, or say what differs |

#### `empty-component` (12)

| Requirement | Message |
|---|---|
| (repository) | Component "alarmMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "configMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "diagnostics" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "displayMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "eventLog" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "historyRing" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "limitEvaluator" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "powerMon" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "rtcClock" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "sensorSampler" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "usbExport" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "wdtKicker" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |

#### `implementation-outside-component` (46)

| Requirement | Message |
|---|---|
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-IFC-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-IFC-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-PRF-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-006 is allocated to SaFunctions::superviseItself but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-008 is allocated to SaFunctions::keepPowered but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-010 is allocated to SaFunctions::superviseItself but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-011 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-014 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-015 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-017 is allocated to SaFunctions::superviseItself but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-019 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-019 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-SAF-017 is allocated to SaFunctions::superviseItself but claimed by code in configMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-SAF-017 is allocated to SaFunctions::superviseItself but claimed by code in configMgr. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-SAF-007 is allocated to SaFunctions::superviseItself but claimed by code in diagnostics. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-SAF-023 is allocated to SaFunctions::superviseItself but claimed by code in diagnostics. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-IFC-004 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-002 is allocated to SaFunctions::keepPowered but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to SaFunctions::superviseItself but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to SaFunctions::superviseItself but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-PRF-004 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-PRF-004 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-012 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-021 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| 10-src/firmware/components/event_log/src/event_log.c | MRTM-SAF-018 is allocated to SaFunctions::recordEvents but claimed by code in eventLog. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-SAF-018 is allocated to SaFunctions::recordEvents but claimed by code in historyRing. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-SAF-005 is allocated to SaFunctions::keepPowered but claimed by code in powerMon. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-SAF-008 is allocated to SaFunctions::keepPowered but claimed by code in powerMon. |
| 10-src/firmware/components/rtc_clock/src/rtc_clock.c | MRTM-SAF-022 is allocated to SaFunctions::recordEvents but claimed by code in rtcClock. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-IFC-001 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-IFC-001 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-PRF-001 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-SAF-003 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-SAF-003 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-PRF-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-004 is allocated to SaFunctions::superviseItself but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-009 is allocated to SaFunctions::alarmOnOwnFailure but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-010 is allocated to SaFunctions::superviseItself but claimed by code in wdtKicker. |

#### `missing-case` (7)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | Nothing verifies MRTM-CI-001 — write a case for it, or record why it needs none |
| MRTM-CI-002 | Nothing verifies MRTM-CI-002 — write a case for it, or record why it needs none |
| MRTM-CI-003 | Nothing verifies MRTM-CI-003 — write a case for it, or record why it needs none |
| MRTM-CI-004 | Nothing verifies MRTM-CI-004 — write a case for it, or record why it needs none |
| MRTM-CI-005 | Nothing verifies MRTM-CI-005 — write a case for it, or record why it needs none |
| MRTM-CI-006 | Nothing verifies MRTM-CI-006 — write a case for it, or record why it needs none |
| MRTM-LA-006 | Nothing verifies MRTM-LA-006 — write a case for it, or record why it needs none |

#### `missing-result` (46)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-002 | Nothing in the declared test reports says what happened when MRTM-ENV-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-003 | Nothing in the declared test reports says what happened when MRTM-ENV-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-004 | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-004 | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-008 | Nothing in the declared test reports says what happened when MRTM-LA-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-010 | Nothing in the declared test reports says what happened when MRTM-LA-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-011 | Nothing in the declared test reports says what happened when MRTM-LA-011's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-012 | Nothing in the declared test reports says what happened when MRTM-LA-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-013 | Nothing in the declared test reports says what happened when MRTM-LA-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-014 | Nothing in the declared test reports says what happened when MRTM-LA-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-015 | Nothing in the declared test reports says what happened when MRTM-LA-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-016 | Nothing in the declared test reports says what happened when MRTM-LA-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-017 | Nothing in the declared test reports says what happened when MRTM-LA-017's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-019 | Nothing in the declared test reports says what happened when MRTM-LA-019's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-021 | Nothing in the declared test reports says what happened when MRTM-LA-021's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-022 | Nothing in the declared test reports says what happened when MRTM-LA-022's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-023 | Nothing in the declared test reports says what happened when MRTM-LA-023's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LA-024 | Nothing in the declared test reports says what happened when MRTM-LA-024's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-001 | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-001 | Nothing in the declared test reports says what happened when MRTM-PH-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-002 | Nothing in the declared test reports says what happened when MRTM-PH-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-003 | Nothing in the declared test reports says what happened when MRTM-PH-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-004 | Nothing in the declared test reports says what happened when MRTM-PH-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-005 | Nothing in the declared test reports says what happened when MRTM-PH-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-006 | Nothing in the declared test reports says what happened when MRTM-PH-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-007 | Nothing in the declared test reports says what happened when MRTM-PH-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-008 | Nothing in the declared test reports says what happened when MRTM-PH-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-009 | Nothing in the declared test reports says what happened when MRTM-PH-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-010 | Nothing in the declared test reports says what happened when MRTM-PH-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-011 | Nothing in the declared test reports says what happened when MRTM-PH-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-012 | Nothing in the declared test reports says what happened when MRTM-PH-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-013 | Nothing in the declared test reports says what happened when MRTM-PH-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-014 | Nothing in the declared test reports says what happened when MRTM-PH-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-015 | Nothing in the declared test reports says what happened when MRTM-PH-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PH-016 | Nothing in the declared test reports says what happened when MRTM-PH-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
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

#### `parent-child-inconsistency` (8)

| Requirement | Message |
|---|---|
| MRTM-LA-001 | MRTM-LA-001 is refined at 2 different levels — move the odd child |
| MRTM-LA-003 | MRTM-LA-003 is refined at 2 different levels — move the odd child |
| MRTM-LA-004 | MRTM-LA-004 is refined at 2 different levels — move the odd child |
| MRTM-LA-005 | MRTM-LA-005 is refined at 2 different levels — move the odd child |
| MRTM-LA-010 | MRTM-LA-010 is refined at 2 different levels — move the odd child |
| MRTM-LA-020 | MRTM-LA-020 is refined at 2 different levels — move the odd child |
| MRTM-LA-022 | MRTM-LA-022 is refined at 2 different levels — move the odd child |
| MRTM-LA-023 | MRTM-LA-023 is refined at 2 different levels — move the odd child |

#### `passive-voice` (1)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | Doesn't say who does this — name the system or component |

#### `sysml-unresolved-id` (74)

| Requirement | Message |
|---|---|
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "alarmItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "displayItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "excursionItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "logItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "powerItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "sensorItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "supervisorItem", which no requirement declares |
| 06-design/pa/PaSoftware.sysml | `satisfy/allocate` names "usbItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::display", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::display", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::logging", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::logging", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::logging", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::power", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::power", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::power", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::sensing", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::sensing", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::supervision", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "LaArchitecture::supervision", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaArchitecture::fridge", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaArchitecture::mains", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaArchitecture::manager", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaArchitecture::nurse", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaArchitecture::stock", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaArchitecture::technician", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::auditStorageHistory", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::auditStorageHistory", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::auditStorageHistory", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::respondToWarmFridge", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::respondToWarmFridge", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::respondToWarmFridge", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::rideThroughPowerCut", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::rideThroughPowerCut", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::serviceMeasuringEquipment", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::serviceMeasuringEquipment", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::storeVaccinesCold", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::watchFridgeTemperature", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::watchFridgeTemperature", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "OaModel::watchFridgeTemperature", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaBackupAlarm::driver", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaBackupAlarm::holdUp", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaBackupAlarm::timer", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::backupAlarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::battery", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::buzzer", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::indicators", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::mcu", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::oled", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::powerPath", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::probe", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaInterconnection::rtc", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::alarmItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::displayItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::excursionItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::logItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::powerItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::sensorItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::supervisorItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "PaSoftware::usbItem", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::acquireTemperature", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::alarmOnOwnFailure", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::announceAlarm", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::detectExcursion", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::exportHistory", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::keepPowered", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::recordEvents", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::showStatus", which no requirement declares |
| 06-design/transitions/Transitions.sysml | `satisfy/allocate` names "SaFunctions::superviseItself", which no requirement declares |

#### `testability` (4)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | Nothing here a test could check — add a number, or name what changes |
| MRTM-CI-002 | Nothing here a test could check — add a number, or name what changes |
| MRTM-CI-005 | Nothing here a test could check — add a number, or name what changes |
| MRTM-CI-006 | Nothing here a test could check — add a number, or name what changes |

#### `undeclared-id-prefix` (4)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | 1 reference(s) use the prefix "SHA", which no type declares |
| MRTM-CI-005 | 32 reference(s) use the prefix "ADR", which no type declares |
| MRTM-SW-008 | 4 reference(s) use the prefix "SAF", which no type declares |
| MRTM-SYS-024 | 1 reference(s) use the prefix "CR", which no type declares |

### Information (203)

#### `decimal-format` (1)

| Requirement | Message |
|---|---|
| MRTM-SW-010 | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |

#### `indefinite-article` (46)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-CI-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-CI-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-CI-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-CI-005 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-CI-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-010 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-015 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-019 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-023 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LA-025 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-MNT-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PH-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PH-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PH-009 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PH-010 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PH-014 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PH-015 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SW-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SW-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SW-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SW-013 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SW-016 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SW-018 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-024 | an indefinite article leaves which one open - use "the" and name the item |

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `logical-expression` (9)

| Requirement | Message |
|---|---|
| MRTM-CI-001 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-CI-002 | 3 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-CI-003 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-CI-004 | 3 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-CI-005 | 3 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LA-008 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-PH-002 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-PH-005 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-SAF-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

#### `requirement-pattern` (3)

| Requirement | Message |
|---|---|
| MRTM-SAF-015 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SW-001 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SYS-004 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

#### `single-point-failure` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-011 | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

#### `sysml-file-package-mismatch` (3)

| Requirement | Message |
|---|---|
| 06-design/pa/PaHardware.sysml | this file declares 3 packages — `PaNodes`, `PaInterconnection`, `PaBackupAlarm` — one per file is the recommendation |
| 06-design/sa/SaFunctions.sysml | this file declares 3 packages — `SaFunctions`, `SaAlarmChain`, `SaDataFlow` — one per file is the recommendation |
| 06-design/transitions/Transitions.sysml | this file declares 4 packages — `TransitionOaToSa`, `TransitionSaToLa`, `TransitionLaToPa`, `TransitionPaToEpbs` — one per file is the recommendation |

#### `sysml-unresolved-import` (30)

| Requirement | Message |
|---|---|
| 06-design/la/LaArchitecture.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/la/LaComponents.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/la/LaInterfaces.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/library/hardware/MrtmHardware.sysml | line 11: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSeqExcursion.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSeqPowerLoss.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSeqProbeFault.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSoftware.sysml | line 10: `import SoftwareProfile` names nothing this project declares |
| 06-design/library/software/MrtmSoftware.sysml | line 9: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSwCodes.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSwDetail.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/library/software/MrtmSwDetail.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/library/software/MrtmSwStates.sysml | line 5: `import ScalarValues` names nothing this project declares |
| 06-design/library/system/MrtmInterfaces.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/library/system/MrtmPhysical.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/oa/OaModel.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/pa/PaHardware.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/sa/SaActors.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/sa/SaContext.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/sa/SaFunctions.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/views/Epbs_breakdownView.sysml | line 23: `import ScalarValues` names nothing this project declares |
| 06-design/views/La_architectureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Oa_architectureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Oa_capabilitiesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Pa_architectureView.sysml | line 23: `import ScalarValues` names nothing this project declares |
| 06-design/views/Pa_backup_alarmView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Pa_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Pa_softwareView.sysml | line 24: `import ScalarValues` names nothing this project declares |
| 06-design/views/Sa_contextView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |

#### `temporal-keyword` (1)

| Requirement | Message |
|---|---|
| MRTM-SW-015 | "after" states an order, not a time - give the bound |

#### `undeclared-hazard` (16)

| Requirement | Message |
|---|---|
| MRTM-PH-003 | _(candidate — inferred, needs human judgement)_ MRTM-PH-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-004 | _(candidate — inferred, needs human judgement)_ MRTM-PH-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-005 | _(candidate — inferred, needs human judgement)_ MRTM-PH-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-006 | _(candidate — inferred, needs human judgement)_ MRTM-PH-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-007 | _(candidate — inferred, needs human judgement)_ MRTM-PH-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-008 | _(candidate — inferred, needs human judgement)_ MRTM-PH-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-009 | _(candidate — inferred, needs human judgement)_ MRTM-PH-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-010 | _(candidate — inferred, needs human judgement)_ MRTM-PH-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-011 | _(candidate — inferred, needs human judgement)_ MRTM-PH-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-012 | _(candidate — inferred, needs human judgement)_ MRTM-PH-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-013 | _(candidate — inferred, needs human judgement)_ MRTM-PH-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-014 | _(candidate — inferred, needs human judgement)_ MRTM-PH-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-015 | _(candidate — inferred, needs human judgement)_ MRTM-PH-015's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PH-016 | _(candidate — inferred, needs human judgement)_ MRTM-PH-016's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-SW-012 | _(candidate — inferred, needs human judgement)_ MRTM-SW-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-SW-013 | _(candidate — inferred, needs human judgement)_ MRTM-SW-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

#### `under-decomposition` (82)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-004 | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-002 | MRTM-IFC-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-003 | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-004 | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-002 | MRTM-LA-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-007 | MRTM-LA-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-009 | MRTM-LA-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-011 | MRTM-LA-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-012 | MRTM-LA-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-013 | MRTM-LA-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-015 | MRTM-LA-015 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-016 | MRTM-LA-016 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-017 | MRTM-LA-017 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-019 | MRTM-LA-019 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-021 | MRTM-LA-021 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-024 | MRTM-LA-024 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-025 | MRTM-LA-025 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LA-026 | MRTM-LA-026 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-001 | MRTM-PH-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-002 | MRTM-PH-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-003 | MRTM-PH-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-004 | MRTM-PH-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-005 | MRTM-PH-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-006 | MRTM-PH-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-007 | MRTM-PH-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-008 | MRTM-PH-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-009 | MRTM-PH-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-010 | MRTM-PH-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-011 | MRTM-PH-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-012 | MRTM-PH-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-013 | MRTM-PH-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-014 | MRTM-PH-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-015 | MRTM-PH-015 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PH-016 | MRTM-PH-016 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-001 | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-002 | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-003 | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-004 | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-003 | MRTM-SAF-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-004 | MRTM-SAF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-005 | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-006 | MRTM-SAF-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-007 | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-008 | MRTM-SAF-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-009 | MRTM-SAF-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-012 | MRTM-SAF-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-013 | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-016 | MRTM-SAF-016 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-017 | MRTM-SAF-017 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-018 | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-022 | MRTM-SAF-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-023 | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-001 | MRTM-SW-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-002 | MRTM-SW-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-003 | MRTM-SW-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-004 | MRTM-SW-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-005 | MRTM-SW-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-006 | MRTM-SW-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-007 | MRTM-SW-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-008 | MRTM-SW-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-009 | MRTM-SW-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-010 | MRTM-SW-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-011 | MRTM-SW-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-012 | MRTM-SW-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-013 | MRTM-SW-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-014 | MRTM-SW-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-015 | MRTM-SW-015 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-016 | MRTM-SW-016 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-017 | MRTM-SW-017 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-018 | MRTM-SW-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-019 | MRTM-SW-019 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SW-020 | MRTM-SW-020 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-002 | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-004 | MRTM-SYS-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-007 | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-009 | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-010 | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-013 | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-018 | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-022 | MRTM-SYS-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-023 | MRTM-SYS-023 has one child, which restates it — merge the two, or add the sibling |

#### `universal-quantifier` (1)

| Requirement | Message |
|---|---|
| MRTM-PH-005 | "all power" quantifies a set the sentence never bounds |

#### `wide-impact` (6)

| Requirement | Message |
|---|---|
| MRTM-STK-002 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 40 other artifacts — 8 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 24 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-003 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-003 reaches 29 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 2 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-004 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-004 reaches 70 other artifacts — 15 already implemented, 15 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 4 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-006 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 32 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 14 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-007 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-007 reaches 35 other artifacts — 6 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 1 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-008 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-008 reaches 37 other artifacts — 6 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 5 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

## Findings by requirement

### (repository) (13)

| Severity | Rule | Message |
|---|---|---|
| error | `dead-requirement` | tools/arcadia_spec.py#FUNCTION claims to implement "ENV-002", which no requirement in this repository declares. The requirement was renamed or deleted and the code still points at the old id, so the code's own traceability is now to nothing. |
| warning | `empty-component` | Component "alarmMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "configMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "diagnostics" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "displayMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "eventLog" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "historyRing" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "limitEvaluator" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "powerMon" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "rtcClock" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "sensorSampler" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "usbExport" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "wdtKicker" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |

### /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-p9zsXy/tree/runs/03-arcadia/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### 06-design/epbs/EpbsTrace.sysml (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "EpbsBreakdown::product.backupAlarmBoard", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "EpbsBreakdown::product.batteryPack", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "EpbsBreakdown::product.displayModule", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "EpbsBreakdown::product.firmwareImage", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "EpbsBreakdown::product.mainBoard", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "EpbsBreakdown::product.probeAssembly", which no component artifact declares |

### 06-design/la/LaArchitecture.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/la/LaComponents.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/la/LaInterfaces.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/la/LaTrace.sysml (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "LaArchitecture::alarm", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "LaArchitecture::display", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "LaArchitecture::logging", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "LaArchitecture::power", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "LaArchitecture::sensing", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "LaArchitecture::supervision", which no component artifact declares |

### 06-design/library/hardware/MrtmHardware.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 11: `import ScalarValues` names nothing this project declares |

### 06-design/library/software/MrtmSeqExcursion.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |

### 06-design/library/software/MrtmSeqPowerLoss.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/library/software/MrtmSeqProbeFault.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/library/software/MrtmSoftware.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 10: `import SoftwareProfile` names nothing this project declares |
| info | `sysml-unresolved-import` | line 9: `import ScalarValues` names nothing this project declares |

### 06-design/library/software/MrtmSwCodes.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/library/software/MrtmSwDetail.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/library/software/MrtmSwStates.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 5: `import ScalarValues` names nothing this project declares |

### 06-design/library/system/MrtmInterfaces.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/library/system/MrtmPhysical.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |

### 06-design/oa/OaModel.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/oa/OaTrace.sysml (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "OaCapabilities::knowTheFridgeIsSafe", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "OaCapabilities::proveTheStorageHistory", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "OaCapabilities::respondToAnExcursion", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "OaCapabilities::trustTheWatching", which no component artifact declares |

### 06-design/pa/PaHardware.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-file-package-mismatch` | this file declares 3 packages — `PaNodes`, `PaInterconnection`, `PaBackupAlarm` — one per file is the recommendation |
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/pa/PaSoftware.sysml (9)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::mcu", which no component artifact declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "alarmItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "displayItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "excursionItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "logItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "powerItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "sensorItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "supervisorItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "usbItem", which no requirement declares |

### 06-design/pa/PaTrace.sysml (19)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "PaBackupAlarm::driver", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaBackupAlarm::holdUp", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaBackupAlarm::timer", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::backupAlarm", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::battery", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::buzzer", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::indicators", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::oled", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::powerPath", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::probe", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaInterconnection::rtc", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::alarmItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::displayItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::excursionItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::logItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::powerItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::sensorItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::supervisorItem", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "PaSoftware::usbItem", which no component artifact declares |

### 06-design/sa/SaActors.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/sa/SaContext.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/sa/SaFunctions.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-file-package-mismatch` | this file declares 3 packages — `SaFunctions`, `SaAlarmChain`, `SaDataFlow` — one per file is the recommendation |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/sa/SaTrace.sysml (10)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "SaContext::monitor", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::acquireTemperature", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::alarmOnOwnFailure", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::announceAlarm", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::detectExcursion", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::exportHistory", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::keepPowered", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::recordEvents", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::showStatus", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaFunctions::superviseItself", which no component artifact declares |

### 06-design/transitions/Transitions.sysml (71)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "SaContext::fridge", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaContext::mains", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaContext::recordsComputer", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "SaContext::staff", which no component artifact declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::alarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::display", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::display", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::logging", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::logging", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::logging", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::power", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::power", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::power", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::sensing", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::sensing", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::supervision", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "LaArchitecture::supervision", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaArchitecture::fridge", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaArchitecture::mains", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaArchitecture::manager", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaArchitecture::nurse", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaArchitecture::stock", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaArchitecture::technician", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::auditStorageHistory", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::auditStorageHistory", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::auditStorageHistory", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::respondToWarmFridge", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::respondToWarmFridge", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::respondToWarmFridge", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::rideThroughPowerCut", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::rideThroughPowerCut", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::serviceMeasuringEquipment", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::serviceMeasuringEquipment", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::storeVaccinesCold", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::watchFridgeTemperature", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::watchFridgeTemperature", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "OaModel::watchFridgeTemperature", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaBackupAlarm::driver", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaBackupAlarm::holdUp", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaBackupAlarm::timer", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::backupAlarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::battery", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::buzzer", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::indicators", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::mcu", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::oled", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::powerPath", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::probe", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaInterconnection::rtc", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::alarmItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::displayItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::excursionItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::logItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::powerItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::sensorItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::supervisorItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "PaSoftware::usbItem", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::acquireTemperature", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::alarmOnOwnFailure", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::announceAlarm", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::detectExcursion", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::exportHistory", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::keepPowered", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::recordEvents", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::showStatus", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "SaFunctions::superviseItself", which no requirement declares |
| info | `sysml-file-package-mismatch` | this file declares 4 packages — `TransitionOaToSa`, `TransitionSaToLa`, `TransitionLaToPa`, `TransitionPaToEpbs` — one per file is the recommendation |

### 06-design/views/Epbs_breakdownView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 23: `import ScalarValues` names nothing this project declares |

### 06-design/views/La_architectureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Oa_architectureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Oa_capabilitiesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Pa_architectureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 23: `import ScalarValues` names nothing this project declares |

### 06-design/views/Pa_backup_alarmView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Pa_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Pa_softwareView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 24: `import ScalarValues` names nothing this project declares |

### 06-design/views/Sa_contextView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/SanadRenderings.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import Views` names nothing this project declares |

### 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (14)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-IFC-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-002 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-006 is allocated to SaFunctions::superviseItself but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to SaFunctions::keepPowered but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to SaFunctions::superviseItself but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-011 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-014 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-015 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to SaFunctions::superviseItself but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-019 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-019 is allocated to SaFunctions::announceAlarm but claimed by code in alarmMgr. |

### 10-src/firmware/components/config_mgr/src/config_mgr.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to SaFunctions::superviseItself but claimed by code in configMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to SaFunctions::superviseItself but claimed by code in configMgr. |

### 10-src/firmware/components/diagnostics/src/diagnostics.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-007 is allocated to SaFunctions::superviseItself but claimed by code in diagnostics. |
| warning | `implementation-outside-component` | MRTM-SAF-023 is allocated to SaFunctions::superviseItself but claimed by code in diagnostics. |

### 10-src/firmware/components/display_mgr/src/display_mgr.cpp (11)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-004 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-002 is allocated to SaFunctions::keepPowered but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to SaFunctions::superviseItself but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to SaFunctions::superviseItself but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-004 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-004 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-012 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-021 is allocated to SaFunctions::showStatus but claimed by code in displayMgr. |

### 10-src/firmware/components/event_log/src/event_log.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to SaFunctions::recordEvents but claimed by code in eventLog. |

### 10-src/firmware/components/history_ring/src/history_ring.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to SaFunctions::recordEvents but claimed by code in historyRing. |

### 10-src/firmware/components/power_mon/src/power_mon.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-005 is allocated to SaFunctions::keepPowered but claimed by code in powerMon. |
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to SaFunctions::keepPowered but claimed by code in powerMon. |

### 10-src/firmware/components/rtc_clock/src/rtc_clock.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-022 is allocated to SaFunctions::recordEvents but claimed by code in rtcClock. |

### 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-001 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-IFC-001 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-PRF-001 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-SAF-003 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-SAF-003 is allocated to SaFunctions::acquireTemperature but claimed by code in sensorSampler. |

### 10-src/firmware/components/usb_export/src/usb_export.c (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-PRF-003 is allocated to SaFunctions::exportHistory but claimed by code in usbExport. |

### 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-004 is allocated to SaFunctions::superviseItself but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-SAF-009 is allocated to SaFunctions::alarmOnOwnFailure but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to SaFunctions::superviseItself but claimed by code in wdtKicker. |

### MRTM-CI-001 (7)

| Severity | Rule | Message |
|---|---|---|
| error | `atomicity` | 2 requirements in one sentence — split them into 2 |
| warning | `missing-case` | Nothing verifies MRTM-CI-001 — write a case for it, or record why it needs none |
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "SHA", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-CI-002 (5)

| Severity | Rule | Message |
|---|---|---|
| error | `atomicity` | 2 requirements in one sentence — split them into 2 |
| warning | `missing-case` | Nothing verifies MRTM-CI-002 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 3 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-CI-003 (4)

| Severity | Rule | Message |
|---|---|---|
| error | `atomicity` | 2 requirements in one sentence — split them into 2 |
| warning | `missing-case` | Nothing verifies MRTM-CI-003 — write a case for it, or record why it needs none |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-CI-004 (4)

| Severity | Rule | Message |
|---|---|---|
| error | `atomicity` | 2 requirements in one sentence — split them into 2 |
| warning | `missing-case` | Nothing verifies MRTM-CI-004 — write a case for it, or record why it needs none |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 3 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-CI-005 (6)

| Severity | Rule | Message |
|---|---|---|
| error | `atomicity` | 2 requirements in one sentence — split them into 2 |
| warning | `missing-case` | Nothing verifies MRTM-CI-005 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `undeclared-id-prefix` | 32 reference(s) use the prefix "ADR", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 3 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-CI-006 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-CI-006 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |

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

### MRTM-ENV-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-IFC-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-IFC-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-IFC-003 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-IFC-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LA-001 is refined at 2 different levels — move the odd child |

### MRTM-LA-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-LA-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-003 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LA-003 is refined at 2 different levels — move the odd child |

### MRTM-LA-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LA-004 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-LA-005 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LA-005 is refined at 2 different levels — move the odd child |

### MRTM-LA-006 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LA-006 — write a case for it, or record why it needs none |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-LA-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-LA-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-008 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-LA-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-LA-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-010 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-LA-010 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-LA-011 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-011's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LA-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-012 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LA-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-013 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LA-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-014 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-LA-015 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-LA-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-016 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LA-016 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-017 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-017's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LA-017 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-019 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-019's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-LA-019 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-020 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LA-020 is refined at 2 different levels — move the odd child |

### MRTM-LA-021 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-021's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-LA-021 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-022 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-022's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-LA-022 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-LA-023 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-023's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-LA-023 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-LA-024 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LA-024's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LA-024 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-025 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-LA-025 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LA-026 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-LA-026 has one child, which restates it — merge the two, or add the sibling |

### MRTM-MNT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PH-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-PH-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `under-decomposition` | MRTM-PH-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-005 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-005 has one child, which restates it — merge the two, or add the sibling |
| info | `universal-quantifier` | "all power" quantifies a set the sentence never bounds |

### MRTM-PH-006 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-006 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-007 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-008 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-008 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-009 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-010 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-011 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-012 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-013 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-014 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-014 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-015 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-015's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PH-016 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PH-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PH-016's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-PH-016 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-003 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-006 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-008 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-008 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-011 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `single-point-failure` | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

### MRTM-SAF-012 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-013 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `under-decomposition` | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-015 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-SAF-016 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-016 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-017 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-017 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-018 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-020 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SAF-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-022 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-022 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-023 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |

### MRTM-STK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 40 other artifacts — 8 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 24 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-003 reaches 29 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 2 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-004 reaches 70 other artifacts — 15 already implemented, 15 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 4 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-005 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 32 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 14 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-007 reaches 35 other artifacts — 6 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 1 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-008 reaches 37 other artifacts — 6 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 5 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-SW-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `under-decomposition` | MRTM-SW-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-003 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SW-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-006 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-SW-006 repeats MRTM-SW-007 (92 % of its words) — merge them, or say what differs |
| info | `under-decomposition` | MRTM-SW-006 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 4 reference(s) use the prefix "SAF", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SW-008 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-010 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `decimal-format` | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |
| info | `under-decomposition` | MRTM-SW-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-011 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-012 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-SW-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-SW-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-013 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-SW-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-SW-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-014 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-014 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-015 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `under-decomposition` | MRTM-SW-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-016 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SW-016 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-017 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-017 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-018 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SW-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-019 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-019 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SW-020 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SW-020 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `under-decomposition` | MRTM-SYS-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-010 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-012 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-013 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-016 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-018 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-020 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-022 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-022 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-023 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-023 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-024 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "CR", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

