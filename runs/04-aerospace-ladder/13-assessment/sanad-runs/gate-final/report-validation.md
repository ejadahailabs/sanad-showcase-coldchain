# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `fc3274cd4718cb8e8c74a4f760f24fe69af65c09`

**Commit date:** `2026-09-27T11:35:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `9041a18e3d5054badf10a2dbd9e716b12412d851d8e83e7f79ab70f50f8db21d`

**Input hash:** `bb615c09f2a9ab73e6b0f6d0f4891025c8d6ac5fd4c178bf0bf7b305b1f59581`

**Inputs:** `177 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 688 — 0 errors · 367 warnings · 321 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (367)](#warnings-367)
    - [`allocation-target-undeclared` (27)](#allocation-target-undeclared-27)
    - [`empty-component` (12)](#empty-component-12)
    - [`implementation-outside-component` (39)](#implementation-outside-component-39)
    - [`missing-case` (19)](#missing-case-19)
    - [`missing-decomposition` (1)](#missing-decomposition-1)
    - [`missing-result` (70)](#missing-result-70)
    - [`parent-child-inconsistency` (10)](#parent-child-inconsistency-10)
    - [`passive-voice` (5)](#passive-voice-5)
    - [`sysml-not-read` (11)](#sysml-not-read-11)
    - [`sysml-unresolved-id` (17)](#sysml-unresolved-id-17)
    - [`testability` (44)](#testability-44)
    - [`undeclared-id-prefix` (27)](#undeclared-id-prefix-27)
    - [`weak-term` (10)](#weak-term-10)
    - [`wrong-uplink-level` (75)](#wrong-uplink-level-75)
  - [Information (321)](#information-321)
    - [`combinator` (1)](#combinator-1)
    - [`decimal-format` (3)](#decimal-format-3)
    - [`indefinite-article` (65)](#indefinite-article-65)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (17)](#logical-expression-17)
    - [`negation` (1)](#negation-1)
    - [`oblique-symbol` (1)](#oblique-symbol-1)
    - [`over-decomposition` (1)](#over-decomposition-1)
    - [`parenthetical` (6)](#parenthetical-6)
    - [`readability` (1)](#readability-1)
    - [`requirement-pattern` (4)](#requirement-pattern-4)
    - [`structured-statement` (1)](#structured-statement-1)
    - [`sysml-unresolved-import` (49)](#sysml-unresolved-import-49)
    - [`temporal-keyword` (3)](#temporal-keyword-3)
    - [`undeclared-hazard` (102)](#undeclared-hazard-102)
    - [`under-decomposition` (54)](#under-decomposition-54)
    - [`universal-quantifier` (2)](#universal-quantifier-2)
    - [`wide-impact` (6)](#wide-impact-6)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (12)](#repository-12)
  - [/tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-lfqllztreeruns04-aerospace-ladderejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-lfqllztreeruns04-aerospace-ladderejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-lfqllztreeruns04-aerospace-ladderejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-lfqllztreeruns04-aerospace-ladderejadahrewtemplatessystemmd-1)
  - [06-design/aircraft/AircraftFunctions.sysml (1)](#06-designaircraftaircraftfunctionssysml-1)
  - [06-design/aircraft/NodeAircraft.sysml (2)](#06-designaircraftnodeaircraftsysml-2)
  - [06-design/common/AeroPorts.sysml (1)](#06-designcommonaeroportssysml-1)
  - [06-design/common/MrtmHardware.sysml (1)](#06-designcommonmrtmhardwaresysml-1)
  - [06-design/common/MrtmInterfaces.sysml (1)](#06-designcommonmrtminterfacessysml-1)
  - [06-design/common/MrtmLogical.sysml (1)](#06-designcommonmrtmlogicalsysml-1)
  - [06-design/common/MrtmPartitions.sysml (1)](#06-designcommonmrtmpartitionssysml-1)
  - [06-design/common/MrtmPhysical.sysml (1)](#06-designcommonmrtmphysicalsysml-1)
  - [06-design/common/MrtmSafety.sysml (1)](#06-designcommonmrtmsafetysysml-1)
  - [06-design/common/MrtmSeqExcursion.sysml (1)](#06-designcommonmrtmseqexcursionsysml-1)
  - [06-design/common/MrtmSeqPowerLoss.sysml (1)](#06-designcommonmrtmseqpowerlosssysml-1)
  - [06-design/common/MrtmSeqProbeFault.sysml (1)](#06-designcommonmrtmseqprobefaultsysml-1)
  - [06-design/common/MrtmSoftware.sysml (2)](#06-designcommonmrtmsoftwaresysml-2)
  - [06-design/common/MrtmSwCodes.sysml (1)](#06-designcommonmrtmswcodessysml-1)
  - [06-design/common/MrtmSwDetail.sysml (2)](#06-designcommonmrtmswdetailsysml-2)
  - [06-design/common/MrtmSwStates.sysml (1)](#06-designcommonmrtmswstatessysml-1)
  - [06-design/common/MrtmUseCases.sysml (1)](#06-designcommonmrtmusecasessysml-1)
  - [06-design/items/alarm-hw/NodeAlarmHw.sysml (2)](#06-designitemsalarm-hwnodealarmhwsysml-2)
  - [06-design/items/alarm-sw/AlarmSwFunctions.sysml (1)](#06-designitemsalarm-swalarmswfunctionssysml-1)
  - [06-design/items/alarm-sw/NodeAlarmSw.sysml (2)](#06-designitemsalarm-swnodealarmswsysml-2)
  - [06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml (5)](#06-designitemsalarm-swdesignalarmswarchitecturesysml-5)
  - [06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml (5)](#06-designitemsalarm-swdesignnodealarmswdesignsysml-5)
  - [06-design/items/controller-hw/NodeControllerHw.sysml (2)](#06-designitemscontroller-hwnodecontrollerhwsysml-2)
  - [06-design/items/display-hw/NodeDisplayHw.sysml (2)](#06-designitemsdisplay-hwnodedisplayhwsysml-2)
  - [06-design/items/display-sw/NodeDisplaySw.sysml (2)](#06-designitemsdisplay-swnodedisplayswsysml-2)
  - [06-design/items/display-sw/design/DisplaySwArchitecture.sysml (3)](#06-designitemsdisplay-swdesigndisplayswarchitecturesysml-3)
  - [06-design/items/display-sw/design/NodeDisplaySwDesign.sysml (3)](#06-designitemsdisplay-swdesignnodedisplayswdesignsysml-3)
  - [06-design/items/export-sw/NodeExportSw.sysml (2)](#06-designitemsexport-swnodeexportswsysml-2)
  - [06-design/items/export-sw/design/ExportSwArchitecture.sysml (3)](#06-designitemsexport-swdesignexportswarchitecturesysml-3)
  - [06-design/items/export-sw/design/NodeExportSwDesign.sysml (2)](#06-designitemsexport-swdesignnodeexportswdesignsysml-2)
  - [06-design/items/platform-sw/NodePlatformSw.sysml (2)](#06-designitemsplatform-swnodeplatformswsysml-2)
  - [06-design/items/platform-sw/design/NodePlatformSwDesign.sysml (6)](#06-designitemsplatform-swdesignnodeplatformswdesignsysml-6)
  - [06-design/items/platform-sw/design/PlatformSwArchitecture.sysml (6)](#06-designitemsplatform-swdesignplatformswarchitecturesysml-6)
  - [06-design/items/power-hw/NodePowerHw.sysml (2)](#06-designitemspower-hwnodepowerhwsysml-2)
  - [06-design/items/record-sw/NodeRecordSw.sysml (2)](#06-designitemsrecord-swnoderecordswsysml-2)
  - [06-design/items/record-sw/design/NodeRecordSwDesign.sysml (4)](#06-designitemsrecord-swdesignnoderecordswdesignsysml-4)
  - [06-design/items/record-sw/design/RecordSwArchitecture.sysml (5)](#06-designitemsrecord-swdesignrecordswarchitecturesysml-5)
  - [06-design/items/sensor-hw/NodeSensorHw.sysml (2)](#06-designitemssensor-hwnodesensorhwsysml-2)
  - [06-design/system/AlarmPathSequence.sysml (9)](#06-designsystemalarmpathsequencesysml-9)
  - [06-design/system/NodeSystem.sysml (7)](#06-designsystemnodesystemsysml-7)
  - [06-design/views/Aircraft_contextView.sysml (1)](#06-designviewsaircraft_contextviewsysml-1)
  - [06-design/views/SanadRenderings.sysml (1)](#06-designviewssanadrenderingssysml-1)
  - [06-design/views/System_hardwareView.sysml (1)](#06-designviewssystem_hardwareviewsysml-1)
  - [06-design/views/System_itemsView.sysml (1)](#06-designviewssystem_itemsviewsysml-1)
  - [06-design/views/System_softwareView.sysml (1)](#06-designviewssystem_softwareviewsysml-1)
  - [10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (7)](#10-srcfirmwarecomponentsalarmmgrsrcalarmmgrc-7)
  - [10-src/firmware/components/config_mgr/src/config_mgr.c (2)](#10-srcfirmwarecomponentsconfigmgrsrcconfigmgrc-2)
  - [10-src/firmware/components/diagnostics/src/diagnostics.c (1)](#10-srcfirmwarecomponentsdiagnosticssrcdiagnosticsc-1)
  - [10-src/firmware/components/display_mgr/src/display_mgr.cpp (7)](#10-srcfirmwarecomponentsdisplaymgrsrcdisplaymgrcpp-7)
  - [10-src/firmware/components/event_log/src/event_log.c (2)](#10-srcfirmwarecomponentseventlogsrceventlogc-2)
  - [10-src/firmware/components/history_ring/src/history_ring.c (3)](#10-srcfirmwarecomponentshistoryringsrchistoryringc-3)
  - [10-src/firmware/components/limit_evaluator/src/limit_evaluator.c (3)](#10-srcfirmwarecomponentslimitevaluatorsrclimitevaluatorc-3)
  - [10-src/firmware/components/power_mon/src/power_mon.c (2)](#10-srcfirmwarecomponentspowermonsrcpowermonc-2)
  - [10-src/firmware/components/rtc_clock/src/rtc_clock.c (3)](#10-srcfirmwarecomponentsrtcclocksrcrtcclockc-3)
  - [10-src/firmware/components/sensor_sampler/src/sensor_sampler.c (4)](#10-srcfirmwarecomponentssensorsamplersrcsensorsamplerc-4)
  - [10-src/firmware/components/usb_export/src/usb_export.c (3)](#10-srcfirmwarecomponentsusbexportsrcusbexportc-3)
  - [10-src/firmware/components/wdt_kicker/src/wdt_kicker.c (2)](#10-srcfirmwarecomponentswdtkickersrcwdtkickerc-2)
  - [MRTM-ENV-001 (2)](#mrtm-env-001-2)
  - [MRTM-ENV-002 (2)](#mrtm-env-002-2)
  - [MRTM-ENV-003 (2)](#mrtm-env-003-2)
  - [MRTM-ENV-004 (3)](#mrtm-env-004-3)
  - [MRTM-FUN-001 (4)](#mrtm-fun-001-4)
  - [MRTM-FUN-002 (3)](#mrtm-fun-002-3)
  - [MRTM-FUN-003 (4)](#mrtm-fun-003-4)
  - [MRTM-FUN-004 (6)](#mrtm-fun-004-6)
  - [MRTM-FUN-005 (4)](#mrtm-fun-005-4)
  - [MRTM-HLR-001 (4)](#mrtm-hlr-001-4)
  - [MRTM-HLR-002 (3)](#mrtm-hlr-002-3)
  - [MRTM-HLR-003 (3)](#mrtm-hlr-003-3)
  - [MRTM-HLR-004 (3)](#mrtm-hlr-004-3)
  - [MRTM-HLR-005 (2)](#mrtm-hlr-005-2)
  - [MRTM-HLR-006 (2)](#mrtm-hlr-006-2)
  - [MRTM-HLR-007 (3)](#mrtm-hlr-007-3)
  - [MRTM-HLR-008 (3)](#mrtm-hlr-008-3)
  - [MRTM-HLR-009 (3)](#mrtm-hlr-009-3)
  - [MRTM-HLR-010 (3)](#mrtm-hlr-010-3)
  - [MRTM-HLR-011 (3)](#mrtm-hlr-011-3)
  - [MRTM-HLR-012 (6)](#mrtm-hlr-012-6)
  - [MRTM-HLR-013 (5)](#mrtm-hlr-013-5)
  - [MRTM-HLR-014 (4)](#mrtm-hlr-014-4)
  - [MRTM-HLR-015 (4)](#mrtm-hlr-015-4)
  - [MRTM-HLR-016 (5)](#mrtm-hlr-016-5)
  - [MRTM-HLR-017 (4)](#mrtm-hlr-017-4)
  - [MRTM-HLR-018 (4)](#mrtm-hlr-018-4)
  - [MRTM-HLR-019 (3)](#mrtm-hlr-019-3)
  - [MRTM-HLR-020 (5)](#mrtm-hlr-020-5)
  - [MRTM-HLR-021 (4)](#mrtm-hlr-021-4)
  - [MRTM-HLR-022 (5)](#mrtm-hlr-022-5)
  - [MRTM-HLR-023 (8)](#mrtm-hlr-023-8)
  - [MRTM-HLR-024 (7)](#mrtm-hlr-024-7)
  - [MRTM-HLR-025 (3)](#mrtm-hlr-025-3)
  - [MRTM-HLR-026 (2)](#mrtm-hlr-026-2)
  - [MRTM-HLR-027 (3)](#mrtm-hlr-027-3)
  - [MRTM-HLR-028 (5)](#mrtm-hlr-028-5)
  - [MRTM-HLR-029 (3)](#mrtm-hlr-029-3)
  - [MRTM-HLR-030 (5)](#mrtm-hlr-030-5)
  - [MRTM-HLR-031 (2)](#mrtm-hlr-031-2)
  - [MRTM-HLR-032 (3)](#mrtm-hlr-032-3)
  - [MRTM-HLR-033 (3)](#mrtm-hlr-033-3)
  - [MRTM-HLR-034 (3)](#mrtm-hlr-034-3)
  - [MRTM-HLR-035 (5)](#mrtm-hlr-035-5)
  - [MRTM-HLR-036 (4)](#mrtm-hlr-036-4)
  - [MRTM-HLR-037 (4)](#mrtm-hlr-037-4)
  - [MRTM-HLR-038 (6)](#mrtm-hlr-038-6)
  - [MRTM-HWR-001 (3)](#mrtm-hwr-001-3)
  - [MRTM-HWR-002 (5)](#mrtm-hwr-002-5)
  - [MRTM-HWR-003 (6)](#mrtm-hwr-003-6)
  - [MRTM-HWR-004 (5)](#mrtm-hwr-004-5)
  - [MRTM-HWR-005 (4)](#mrtm-hwr-005-4)
  - [MRTM-HWR-006 (4)](#mrtm-hwr-006-4)
  - [MRTM-HWR-007 (6)](#mrtm-hwr-007-6)
  - [MRTM-HWR-008 (4)](#mrtm-hwr-008-4)
  - [MRTM-HWR-009 (6)](#mrtm-hwr-009-6)
  - [MRTM-HWR-010 (4)](#mrtm-hwr-010-4)
  - [MRTM-HWR-011 (5)](#mrtm-hwr-011-5)
  - [MRTM-HWR-012 (3)](#mrtm-hwr-012-3)
  - [MRTM-HWR-013 (4)](#mrtm-hwr-013-4)
  - [MRTM-HWR-014 (5)](#mrtm-hwr-014-5)
  - [MRTM-IFC-001 (1)](#mrtm-ifc-001-1)
  - [MRTM-IFC-002 (1)](#mrtm-ifc-002-1)
  - [MRTM-IFC-003 (3)](#mrtm-ifc-003-3)
  - [MRTM-IFC-004 (3)](#mrtm-ifc-004-3)
  - [MRTM-LLR-001 (1)](#mrtm-llr-001-1)
  - [MRTM-LLR-002 (2)](#mrtm-llr-002-2)
  - [MRTM-LLR-003 (3)](#mrtm-llr-003-3)
  - [MRTM-LLR-004 (1)](#mrtm-llr-004-1)
  - [MRTM-LLR-005 (4)](#mrtm-llr-005-4)
  - [MRTM-LLR-006 (6)](#mrtm-llr-006-6)
  - [MRTM-LLR-007 (3)](#mrtm-llr-007-3)
  - [MRTM-LLR-008 (3)](#mrtm-llr-008-3)
  - [MRTM-LLR-009 (2)](#mrtm-llr-009-2)
  - [MRTM-LLR-010 (2)](#mrtm-llr-010-2)
  - [MRTM-LLR-011 (2)](#mrtm-llr-011-2)
  - [MRTM-LLR-012 (5)](#mrtm-llr-012-5)
  - [MRTM-LLR-013 (5)](#mrtm-llr-013-5)
  - [MRTM-LLR-014 (2)](#mrtm-llr-014-2)
  - [MRTM-LLR-015 (3)](#mrtm-llr-015-3)
  - [MRTM-LLR-016 (3)](#mrtm-llr-016-3)
  - [MRTM-LLR-017 (2)](#mrtm-llr-017-2)
  - [MRTM-LLR-018 (1)](#mrtm-llr-018-1)
  - [MRTM-LLR-019 (6)](#mrtm-llr-019-6)
  - [MRTM-LLR-020 (3)](#mrtm-llr-020-3)
  - [MRTM-LLR-021 (3)](#mrtm-llr-021-3)
  - [MRTM-LLR-022 (3)](#mrtm-llr-022-3)
  - [MRTM-LLR-023 (3)](#mrtm-llr-023-3)
  - [MRTM-LLR-024 (2)](#mrtm-llr-024-2)
  - [MRTM-LLR-025 (4)](#mrtm-llr-025-4)
  - [MRTM-LLR-026 (4)](#mrtm-llr-026-4)
  - [MRTM-LLR-027 (3)](#mrtm-llr-027-3)
  - [MRTM-LLR-028 (3)](#mrtm-llr-028-3)
  - [MRTM-LLR-029 (3)](#mrtm-llr-029-3)
  - [MRTM-LLR-030 (2)](#mrtm-llr-030-2)
  - [MRTM-LLR-031 (1)](#mrtm-llr-031-1)
  - [MRTM-LLR-032 (1)](#mrtm-llr-032-1)
  - [MRTM-LLR-033 (1)](#mrtm-llr-033-1)
  - [MRTM-LLR-034 (3)](#mrtm-llr-034-3)
  - [MRTM-LLR-035 (3)](#mrtm-llr-035-3)
  - [MRTM-LLR-036 (4)](#mrtm-llr-036-4)
  - [MRTM-LLR-037 (2)](#mrtm-llr-037-2)
  - [MRTM-LLR-038 (2)](#mrtm-llr-038-2)
  - [MRTM-LLR-039 (4)](#mrtm-llr-039-4)
  - [MRTM-LLR-040 (2)](#mrtm-llr-040-2)
  - [MRTM-LLR-041 (2)](#mrtm-llr-041-2)
  - [MRTM-LLR-042 (3)](#mrtm-llr-042-3)
  - [MRTM-LLR-043 (3)](#mrtm-llr-043-3)
  - [MRTM-LLR-044 (2)](#mrtm-llr-044-2)
  - [MRTM-LLR-045 (3)](#mrtm-llr-045-3)
  - [MRTM-MNT-001 (2)](#mrtm-mnt-001-2)
  - [MRTM-MNT-002 (1)](#mrtm-mnt-002-1)
  - [MRTM-MNT-003 (1)](#mrtm-mnt-003-1)
  - [MRTM-PRF-001 (3)](#mrtm-prf-001-3)
  - [MRTM-PRF-002 (1)](#mrtm-prf-002-1)
  - [MRTM-PRF-003 (2)](#mrtm-prf-003-2)
  - [MRTM-PRF-004 (3)](#mrtm-prf-004-3)
  - [MRTM-SAF-001 (4)](#mrtm-saf-001-4)
  - [MRTM-SAF-002 (2)](#mrtm-saf-002-2)
  - [MRTM-SAF-003 (5)](#mrtm-saf-003-5)
  - [MRTM-SAF-004 (4)](#mrtm-saf-004-4)
  - [MRTM-SAF-005 (4)](#mrtm-saf-005-4)
  - [MRTM-SAF-006 (2)](#mrtm-saf-006-2)
  - [MRTM-SAF-007 (3)](#mrtm-saf-007-3)
  - [MRTM-SAF-008 (2)](#mrtm-saf-008-2)
  - [MRTM-SAF-009 (3)](#mrtm-saf-009-3)
  - [MRTM-SAF-010 (3)](#mrtm-saf-010-3)
  - [MRTM-SAF-011 (4)](#mrtm-saf-011-4)
  - [MRTM-SAF-012 (2)](#mrtm-saf-012-2)
  - [MRTM-SAF-013 (4)](#mrtm-saf-013-4)
  - [MRTM-SAF-014 (3)](#mrtm-saf-014-3)
  - [MRTM-SAF-015 (4)](#mrtm-saf-015-4)
  - [MRTM-SAF-016 (2)](#mrtm-saf-016-2)
  - [MRTM-SAF-017 (2)](#mrtm-saf-017-2)
  - [MRTM-SAF-018 (3)](#mrtm-saf-018-3)
  - [MRTM-SAF-019 (3)](#mrtm-saf-019-3)
  - [MRTM-SAF-020 (2)](#mrtm-saf-020-2)
  - [MRTM-SAF-021 (5)](#mrtm-saf-021-5)
  - [MRTM-SAF-022 (4)](#mrtm-saf-022-4)
  - [MRTM-SAF-023 (3)](#mrtm-saf-023-3)
  - [MRTM-SOB-001 (5)](#mrtm-sob-001-5)
  - [MRTM-SOB-002 (3)](#mrtm-sob-002-3)
  - [MRTM-SOB-003 (3)](#mrtm-sob-003-3)
  - [MRTM-SOB-004 (4)](#mrtm-sob-004-4)
  - [MRTM-SOB-005 (4)](#mrtm-sob-005-4)
  - [MRTM-STK-001 (2)](#mrtm-stk-001-2)
  - [MRTM-STK-002 (3)](#mrtm-stk-002-3)
  - [MRTM-STK-003 (3)](#mrtm-stk-003-3)
  - [MRTM-STK-004 (3)](#mrtm-stk-004-3)
  - [MRTM-STK-005 (2)](#mrtm-stk-005-2)
  - [MRTM-STK-006 (3)](#mrtm-stk-006-3)
  - [MRTM-STK-007 (3)](#mrtm-stk-007-3)
  - [MRTM-STK-008 (4)](#mrtm-stk-008-4)
  - [MRTM-SYS-002 (1)](#mrtm-sys-002-1)
  - [MRTM-SYS-004 (1)](#mrtm-sys-004-1)
  - [MRTM-SYS-007 (2)](#mrtm-sys-007-2)
  - [MRTM-SYS-008 (1)](#mrtm-sys-008-1)
  - [MRTM-SYS-009 (1)](#mrtm-sys-009-1)
  - [MRTM-SYS-010 (1)](#mrtm-sys-010-1)
  - [MRTM-SYS-011 (1)](#mrtm-sys-011-1)
  - [MRTM-SYS-012 (2)](#mrtm-sys-012-2)
  - [MRTM-SYS-013 (2)](#mrtm-sys-013-2)
  - [MRTM-SYS-014 (1)](#mrtm-sys-014-1)
  - [MRTM-SYS-015 (1)](#mrtm-sys-015-1)
  - [MRTM-SYS-016 (1)](#mrtm-sys-016-1)
  - [MRTM-SYS-017 (1)](#mrtm-sys-017-1)
  - [MRTM-SYS-018 (1)](#mrtm-sys-018-1)
  - [MRTM-SYS-019 (1)](#mrtm-sys-019-1)
  - [MRTM-SYS-020 (2)](#mrtm-sys-020-2)
  - [MRTM-SYS-021 (3)](#mrtm-sys-021-3)
  - [MRTM-SYS-022 (1)](#mrtm-sys-022-1)
  - [MRTM-SYS-023 (1)](#mrtm-sys-023-1)
  - [MRTM-SYS-024 (2)](#mrtm-sys-024-2)

## Findings by severity

### Warnings (367)

#### `allocation-target-undeclared` (27)

| Requirement | Message |
|---|---|
| 06-design/aircraft/NodeAircraft.sysml | The model allocates to "monitor", which no component artifact declares |
| 06-design/items/alarm-hw/NodeAlarmHw.sysml | The model allocates to "alarmHw", which no component artifact declares |
| 06-design/items/alarm-sw/NodeAlarmSw.sysml | The model allocates to "alarmSw", which no component artifact declares |
| 06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml | The model allocates to "alarmSwDesign", which no component artifact declares |
| 06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml | The model allocates to "alarmSwDesign.alarmMgr", which no component artifact declares |
| 06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml | The model allocates to "alarmSwDesign.limitEvaluator", which no component artifact declares |
| 06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml | The model allocates to "alarmSwDesign.sensorSampler", which no component artifact declares |
| 06-design/items/controller-hw/NodeControllerHw.sysml | The model allocates to "controllerHw", which no component artifact declares |
| 06-design/items/display-hw/NodeDisplayHw.sysml | The model allocates to "displayHw", which no component artifact declares |
| 06-design/items/display-sw/NodeDisplaySw.sysml | The model allocates to "displaySw", which no component artifact declares |
| 06-design/items/display-sw/design/NodeDisplaySwDesign.sysml | The model allocates to "displaySwDesign", which no component artifact declares |
| 06-design/items/display-sw/design/NodeDisplaySwDesign.sysml | The model allocates to "displaySwDesign.displayMgr", which no component artifact declares |
| 06-design/items/export-sw/NodeExportSw.sysml | The model allocates to "exportSw", which no component artifact declares |
| 06-design/items/export-sw/design/NodeExportSwDesign.sysml | The model allocates to "exportSwDesign.usbExport", which no component artifact declares |
| 06-design/items/platform-sw/NodePlatformSw.sysml | The model allocates to "platformSw", which no component artifact declares |
| 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml | The model allocates to "platformSwDesign", which no component artifact declares |
| 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml | The model allocates to "platformSwDesign.configMgr", which no component artifact declares |
| 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml | The model allocates to "platformSwDesign.diagnostics", which no component artifact declares |
| 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml | The model allocates to "platformSwDesign.powerMon", which no component artifact declares |
| 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml | The model allocates to "platformSwDesign.wdtKicker", which no component artifact declares |
| 06-design/items/power-hw/NodePowerHw.sysml | The model allocates to "powerHw", which no component artifact declares |
| 06-design/items/record-sw/NodeRecordSw.sysml | The model allocates to "recordSw", which no component artifact declares |
| 06-design/items/record-sw/design/NodeRecordSwDesign.sysml | The model allocates to "recordSwDesign.eventLog", which no component artifact declares |
| 06-design/items/record-sw/design/NodeRecordSwDesign.sysml | The model allocates to "recordSwDesign.historyRing", which no component artifact declares |
| 06-design/items/record-sw/design/NodeRecordSwDesign.sysml | The model allocates to "recordSwDesign.rtcClock", which no component artifact declares |
| 06-design/items/sensor-hw/NodeSensorHw.sysml | The model allocates to "sensorHw", which no component artifact declares |
| 06-design/system/NodeSystem.sysml | The model allocates to "system", which no component artifact declares |

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

#### `implementation-outside-component` (39)

| Requirement | Message |
|---|---|
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-010 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-011 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-012 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-013 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-014 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-015 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-LLR-016 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-LLR-020 is allocated to platformSwDesign.configMgr but claimed by code in configMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-LLR-021 is allocated to platformSwDesign.configMgr but claimed by code in configMgr. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-LLR-019 is allocated to platformSwDesign.diagnostics but claimed by code in diagnostics. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-028 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-029 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-030 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-031 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-032 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-033 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-LLR-034 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| 10-src/firmware/components/event_log/src/event_log.c | MRTM-LLR-035 is allocated to recordSwDesign.eventLog but claimed by code in eventLog. |
| 10-src/firmware/components/event_log/src/event_log.c | MRTM-LLR-036 is allocated to recordSwDesign.eventLog but claimed by code in eventLog. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-LLR-037 is allocated to recordSwDesign.historyRing but claimed by code in historyRing. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-LLR-038 is allocated to recordSwDesign.historyRing but claimed by code in historyRing. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-LLR-039 is allocated to recordSwDesign.historyRing but claimed by code in historyRing. |
| 10-src/firmware/components/limit_evaluator/src/limit_evaluator.c | MRTM-LLR-007 is allocated to alarmSwDesign.limitEvaluator but claimed by code in limitEvaluator. |
| 10-src/firmware/components/limit_evaluator/src/limit_evaluator.c | MRTM-LLR-008 is allocated to alarmSwDesign.limitEvaluator but claimed by code in limitEvaluator. |
| 10-src/firmware/components/limit_evaluator/src/limit_evaluator.c | MRTM-LLR-009 is allocated to alarmSwDesign.limitEvaluator but claimed by code in limitEvaluator. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-LLR-023 is allocated to platformSwDesign.powerMon but claimed by code in powerMon. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-LLR-024 is allocated to platformSwDesign.powerMon but claimed by code in powerMon. |
| 10-src/firmware/components/rtc_clock/src/rtc_clock.c | MRTM-LLR-040 is allocated to recordSwDesign.rtcClock but claimed by code in rtcClock. |
| 10-src/firmware/components/rtc_clock/src/rtc_clock.c | MRTM-LLR-041 is allocated to recordSwDesign.rtcClock but claimed by code in rtcClock. |
| 10-src/firmware/components/rtc_clock/src/rtc_clock.c | MRTM-LLR-042 is allocated to recordSwDesign.rtcClock but claimed by code in rtcClock. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-LLR-001 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-LLR-002 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-LLR-003 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-LLR-004 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-LLR-043 is allocated to exportSwDesign.usbExport but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-LLR-044 is allocated to exportSwDesign.usbExport but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-LLR-045 is allocated to exportSwDesign.usbExport but claimed by code in usbExport. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-LLR-017 is allocated to platformSwDesign.wdtKicker but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-LLR-018 is allocated to platformSwDesign.wdtKicker but claimed by code in wdtKicker. |

#### `missing-case` (19)

| Requirement | Message |
|---|---|
| MRTM-FUN-001 | Nothing verifies MRTM-FUN-001 — write a case for it, or record why it needs none |
| MRTM-FUN-002 | Nothing verifies MRTM-FUN-002 — write a case for it, or record why it needs none |
| MRTM-FUN-003 | Nothing verifies MRTM-FUN-003 — write a case for it, or record why it needs none |
| MRTM-FUN-004 | Nothing verifies MRTM-FUN-004 — write a case for it, or record why it needs none |
| MRTM-FUN-005 | Nothing verifies MRTM-FUN-005 — write a case for it, or record why it needs none |
| MRTM-HLR-022 | Nothing verifies MRTM-HLR-022 — write a case for it, or record why it needs none |
| MRTM-HLR-024 | Nothing verifies MRTM-HLR-024 — write a case for it, or record why it needs none |
| MRTM-HLR-037 | Nothing verifies MRTM-HLR-037 — write a case for it, or record why it needs none |
| MRTM-LLR-006 | Nothing verifies MRTM-LLR-006 — write a case for it, or record why it needs none |
| MRTM-LLR-025 | Nothing verifies MRTM-LLR-025 — write a case for it, or record why it needs none |
| MRTM-LLR-026 | Nothing verifies MRTM-LLR-026 — write a case for it, or record why it needs none |
| MRTM-LLR-027 | Nothing verifies MRTM-LLR-027 — write a case for it, or record why it needs none |
| MRTM-LLR-034 | Nothing verifies MRTM-LLR-034 — write a case for it, or record why it needs none |
| MRTM-LLR-043 | Nothing verifies MRTM-LLR-043 — write a case for it, or record why it needs none |
| MRTM-SOB-001 | Nothing verifies MRTM-SOB-001 — write a case for it, or record why it needs none |
| MRTM-SOB-002 | Nothing verifies MRTM-SOB-002 — write a case for it, or record why it needs none |
| MRTM-SOB-003 | Nothing verifies MRTM-SOB-003 — write a case for it, or record why it needs none |
| MRTM-SOB-004 | Nothing verifies MRTM-SOB-004 — write a case for it, or record why it needs none |
| MRTM-SOB-005 | Nothing verifies MRTM-SOB-005 — write a case for it, or record why it needs none |

#### `missing-decomposition` (1)

| Requirement | Message |
|---|---|
| MRTM-HLR-024 | MRTM-HLR-024 is a High-level requirement (HLR) and nothing traces up to it — decompose it |

#### `missing-result` (70)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-002 | Nothing in the declared test reports says what happened when MRTM-ENV-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-003 | Nothing in the declared test reports says what happened when MRTM-ENV-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-004 | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-001 | Nothing in the declared test reports says what happened when MRTM-HWR-001's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-002 | Nothing in the declared test reports says what happened when MRTM-HWR-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-003 | Nothing in the declared test reports says what happened when MRTM-HWR-003's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-004 | Nothing in the declared test reports says what happened when MRTM-HWR-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-005 | Nothing in the declared test reports says what happened when MRTM-HWR-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-006 | Nothing in the declared test reports says what happened when MRTM-HWR-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-007 | Nothing in the declared test reports says what happened when MRTM-HWR-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-008 | Nothing in the declared test reports says what happened when MRTM-HWR-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-009 | Nothing in the declared test reports says what happened when MRTM-HWR-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-010 | Nothing in the declared test reports says what happened when MRTM-HWR-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-011 | Nothing in the declared test reports says what happened when MRTM-HWR-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-012 | Nothing in the declared test reports says what happened when MRTM-HWR-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-013 | Nothing in the declared test reports says what happened when MRTM-HWR-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWR-014 | Nothing in the declared test reports says what happened when MRTM-HWR-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-001 | Nothing in the declared test reports says what happened when MRTM-IFC-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-003 | Nothing in the declared test reports says what happened when MRTM-IFC-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-004 | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-001 | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-002 | Nothing in the declared test reports says what happened when MRTM-MNT-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-003 | Nothing in the declared test reports says what happened when MRTM-MNT-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PRF-001 | Nothing in the declared test reports says what happened when MRTM-PRF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PRF-003 | Nothing in the declared test reports says what happened when MRTM-PRF-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PRF-004 | Nothing in the declared test reports says what happened when MRTM-PRF-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-001 | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-002 | Nothing in the declared test reports says what happened when MRTM-SAF-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-003 | Nothing in the declared test reports says what happened when MRTM-SAF-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-004 | Nothing in the declared test reports says what happened when MRTM-SAF-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-005 | Nothing in the declared test reports says what happened when MRTM-SAF-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-006 | Nothing in the declared test reports says what happened when MRTM-SAF-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-007 | Nothing in the declared test reports says what happened when MRTM-SAF-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-008 | Nothing in the declared test reports says what happened when MRTM-SAF-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-009 | Nothing in the declared test reports says what happened when MRTM-SAF-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-010 | Nothing in the declared test reports says what happened when MRTM-SAF-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-011 | Nothing in the declared test reports says what happened when MRTM-SAF-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-012 | Nothing in the declared test reports says what happened when MRTM-SAF-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-013 | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-014 | Nothing in the declared test reports says what happened when MRTM-SAF-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-015 | Nothing in the declared test reports says what happened when MRTM-SAF-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-016 | Nothing in the declared test reports says what happened when MRTM-SAF-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-017 | Nothing in the declared test reports says what happened when MRTM-SAF-017's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-018 | Nothing in the declared test reports says what happened when MRTM-SAF-018's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-019 | Nothing in the declared test reports says what happened when MRTM-SAF-019's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-020 | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-021 | Nothing in the declared test reports says what happened when MRTM-SAF-021's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-022 | Nothing in the declared test reports says what happened when MRTM-SAF-022's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-023 | Nothing in the declared test reports says what happened when MRTM-SAF-023's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-001 | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-002 | Nothing in the declared test reports says what happened when MRTM-STK-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-003 | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-004 | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-005 | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-006 | Nothing in the declared test reports says what happened when MRTM-STK-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-007 | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-008 | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-007 | Nothing in the declared test reports says what happened when MRTM-SYS-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-011 | Nothing in the declared test reports says what happened when MRTM-SYS-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-012 | Nothing in the declared test reports says what happened when MRTM-SYS-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-013 | Nothing in the declared test reports says what happened when MRTM-SYS-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-014 | Nothing in the declared test reports says what happened when MRTM-SYS-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-015 | Nothing in the declared test reports says what happened when MRTM-SYS-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-016 | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-017 | Nothing in the declared test reports says what happened when MRTM-SYS-017's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-020 | Nothing in the declared test reports says what happened when MRTM-SYS-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-021 | Nothing in the declared test reports says what happened when MRTM-SYS-021's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-022 | Nothing in the declared test reports says what happened when MRTM-SYS-022's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-023 | Nothing in the declared test reports says what happened when MRTM-SYS-023's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

#### `parent-child-inconsistency` (10)

| Requirement | Message |
|---|---|
| MRTM-FUN-001 | MRTM-FUN-001 is refined at 2 different levels — move the odd child |
| MRTM-FUN-002 | MRTM-FUN-002 is refined at 2 different levels — move the odd child |
| MRTM-FUN-004 | MRTM-FUN-004 is refined at 2 different levels — move the odd child |
| MRTM-FUN-005 | MRTM-FUN-005 is refined at 2 different levels — move the odd child |
| MRTM-IFC-002 | MRTM-IFC-002 is refined at 2 different levels — move the odd child |
| MRTM-SAF-003 | MRTM-SAF-003 is refined at 2 different levels — move the odd child |
| MRTM-SAF-004 | MRTM-SAF-004 is refined at 2 different levels — move the odd child |
| MRTM-SAF-009 | MRTM-SAF-009 is refined at 2 different levels — move the odd child |
| MRTM-SAF-010 | MRTM-SAF-010 is refined at 2 different levels — move the odd child |
| MRTM-SAF-022 | MRTM-SAF-022 is refined at 2 different levels — move the odd child |

#### `passive-voice` (5)

| Requirement | Message |
|---|---|
| MRTM-HLR-012 | Doesn't say who does this — name the system or component |
| MRTM-HLR-015 | Doesn't say who does this — name the system or component |
| MRTM-LLR-015 | Doesn't say who does this — name the system or component |
| MRTM-LLR-019 | Doesn't say who does this — name the system or component |
| MRTM-SOB-003 | Doesn't say who does this — name the system or component |

#### `sysml-not-read` (11)

| Requirement | Message |
|---|---|
| 06-design/aircraft/AircraftFunctions.sysml | `succession` naming "monitorAir→warnExcursion" was read but not drawn |
| 06-design/items/alarm-sw/AlarmSwFunctions.sysml | `succession` naming "decideAlarm→beatHeart" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "ackLine→silence" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "acknowledge→ackLine" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "buzzerDrive→sounding" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "earlyDrive→earlyLight" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "earlyLight→buzzerDrive" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "logStart→acknowledge" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "sample→earlyDrive" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "sounding→logStart" was read but not drawn |
| 06-design/system/AlarmPathSequence.sysml | `succession` naming "warmAir→sample" was read but not drawn |

#### `sysml-unresolved-id` (17)

| Requirement | Message |
|---|---|
| 06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml | `satisfy/allocate` names "alarmMgr", which no requirement declares |
| 06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml | `satisfy/allocate` names "limitEvaluator", which no requirement declares |
| 06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml | `satisfy/allocate` names "sensorSampler", which no requirement declares |
| 06-design/items/display-sw/design/DisplaySwArchitecture.sysml | `satisfy/allocate` names "displayMgr", which no requirement declares |
| 06-design/items/export-sw/design/ExportSwArchitecture.sysml | `satisfy/allocate` names "usbExport", which no requirement declares |
| 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml | `satisfy/allocate` names "configMgr", which no requirement declares |
| 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml | `satisfy/allocate` names "diagnostics", which no requirement declares |
| 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml | `satisfy/allocate` names "powerMon", which no requirement declares |
| 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml | `satisfy/allocate` names "wdtKicker", which no requirement declares |
| 06-design/items/record-sw/design/RecordSwArchitecture.sysml | `satisfy/allocate` names "eventLog", which no requirement declares |
| 06-design/items/record-sw/design/RecordSwArchitecture.sysml | `satisfy/allocate` names "historyRing", which no requirement declares |
| 06-design/items/record-sw/design/RecordSwArchitecture.sysml | `satisfy/allocate` names "rtcClock", which no requirement declares |
| 06-design/system/NodeSystem.sysml | `satisfy/allocate` names "alarmSw", which no requirement declares |
| 06-design/system/NodeSystem.sysml | `satisfy/allocate` names "displaySw", which no requirement declares |
| 06-design/system/NodeSystem.sysml | `satisfy/allocate` names "exportSw", which no requirement declares |
| 06-design/system/NodeSystem.sysml | `satisfy/allocate` names "platformSw", which no requirement declares |
| 06-design/system/NodeSystem.sysml | `satisfy/allocate` names "recordSw", which no requirement declares |

#### `testability` (44)

| Requirement | Message |
|---|---|
| MRTM-FUN-001 | Nothing here a test could check — add a number, or name what changes |
| MRTM-FUN-003 | Nothing here a test could check — add a number, or name what changes |
| MRTM-FUN-004 | Nothing here a test could check — add a number, or name what changes |
| MRTM-FUN-005 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-004 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-006 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-019 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-023 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-024 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-028 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-031 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-034 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-036 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-037 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HLR-038 | Nothing here a test could check — add a number, or name what changes |
| MRTM-HWR-003 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-005 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-006 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-007 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-008 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-009 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-010 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-012 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-016 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-021 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-022 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-023 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-025 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-026 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-027 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-028 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-029 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-030 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-034 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-037 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-039 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-041 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-042 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-043 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-044 | Nothing here a test could check — add a number, or name what changes |
| MRTM-LLR-045 | Nothing here a test could check — add a number, or name what changes |
| MRTM-SOB-001 | Nothing here a test could check — add a number, or name what changes |
| MRTM-SOB-002 | Nothing here a test could check — add a number, or name what changes |
| MRTM-SOB-005 | Nothing here a test could check — add a number, or name what changes |

#### `undeclared-id-prefix` (27)

| Requirement | Message |
|---|---|
| MRTM-HLR-001 | 2 reference(s) use the prefix "MRTM-SNI", which no type declares |
| MRTM-HLR-001 | 6 reference(s) use the prefix "ADR", which no type declares |
| MRTM-HLR-004 | 3 reference(s) use the prefix "MRTM-EXI", which no type declares |
| MRTM-HLR-005 | 5 reference(s) use the prefix "MRTM-ALM", which no type declares |
| MRTM-HLR-007 | 4 reference(s) use the prefix "MRTM-ALI", which no type declares |
| MRTM-HLR-016 | 3 reference(s) use the prefix "MRTM-SVI", which no type declares |
| MRTM-HLR-016 | 4 reference(s) use the prefix "MRTM-SUP", which no type declares |
| MRTM-HLR-020 | 2 reference(s) use the prefix "MRTM-PWI", which no type declares |
| MRTM-HLR-020 | 3 reference(s) use the prefix "MRTM-PWR", which no type declares |
| MRTM-HLR-025 | 2 reference(s) use the prefix "MRTM-DSI", which no type declares |
| MRTM-HLR-025 | 3 reference(s) use the prefix "MRTM-DSP", which no type declares |
| MRTM-HLR-030 | 2 reference(s) use the prefix "MRTM-LGI", which no type declares |
| MRTM-HLR-030 | 4 reference(s) use the prefix "MRTM-LOG", which no type declares |
| MRTM-HLR-035 | 2 reference(s) use the prefix "MRTM-USI", which no type declares |
| MRTM-HWR-001 | 3 reference(s) use the prefix "MRTM-PRB", which no type declares |
| MRTM-HWR-004 | 1 reference(s) use the prefix "MRTM-BZR", which no type declares |
| MRTM-HWR-005 | 2 reference(s) use the prefix "MRTM-IND", which no type declares |
| MRTM-HWR-007 | 1 reference(s) use the prefix "MRTM-BKT", which no type declares |
| MRTM-HWR-007 | 2 reference(s) use the prefix "MRTM-BKA", which no type declares |
| MRTM-HWR-008 | 1 reference(s) use the prefix "MRTM-BKD", which no type declares |
| MRTM-HWR-009 | 1 reference(s) use the prefix "MRTM-BKH", which no type declares |
| MRTM-HWR-010 | 1 reference(s) use the prefix "MRTM-MCU", which no type declares |
| MRTM-HWR-011 | 1 reference(s) use the prefix "MRTM-RTC", which no type declares |
| MRTM-HWR-012 | 1 reference(s) use the prefix "MRTM-PPT", which no type declares |
| MRTM-HWR-013 | 1 reference(s) use the prefix "MRTM-BAT", which no type declares |
| MRTM-HWR-014 | 1 reference(s) use the prefix "MRTM-OLD", which no type declares |
| MRTM-SYS-024 | 1 reference(s) use the prefix "CR", which no type declares |

#### `weak-term` (10)

| Requirement | Message |
|---|---|
| MRTM-FUN-004 | "every" can't be measured — give it a number and a unit |
| MRTM-HLR-024 | "every" can't be measured — give it a number and a unit |
| MRTM-HWR-003 | "every" can't be measured — give it a number and a unit |
| MRTM-LLR-012 | "any" can't be measured — give it a number and a unit |
| MRTM-LLR-014 | "every" can't be measured — give it a number and a unit |
| MRTM-LLR-016 | "every" can't be measured — give it a number and a unit |
| MRTM-LLR-036 | "every" can't be measured — give it a number and a unit |
| MRTM-LLR-045 | "every" can't be measured — give it a number and a unit |
| MRTM-SOB-001 | "every" can't be measured — give it a number and a unit |
| MRTM-SOB-005 | "every" can't be measured — give it a number and a unit |

#### `wrong-uplink-level` (75)

| Requirement | Message |
|---|---|
| MRTM-HLR-002 | MRTM-HLR-002 is a High-level requirement (HLR) and traces up to "MRTM-SAF-003", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-003 | MRTM-HLR-003 is a High-level requirement (HLR) and traces up to "MRTM-SAF-002", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-008 | MRTM-HLR-008 is a High-level requirement (HLR) and traces up to "MRTM-PRF-002", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-009 | MRTM-HLR-009 is a High-level requirement (HLR) and traces up to "MRTM-IFC-002", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-010 | MRTM-HLR-010 is a High-level requirement (HLR) and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-012 | MRTM-HLR-012 is a High-level requirement (HLR) and traces up to "MRTM-SAF-002", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-012 | MRTM-HLR-012 is a High-level requirement (HLR) and traces up to "MRTM-SAF-011", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-013 | MRTM-HLR-013 is a High-level requirement (HLR) and traces up to "MRTM-SAF-014", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-013 | MRTM-HLR-013 is a High-level requirement (HLR) and traces up to "MRTM-SAF-015", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-014 | MRTM-HLR-014 is a High-level requirement (HLR) and traces up to "MRTM-SAF-006", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-015 | MRTM-HLR-015 is a High-level requirement (HLR) and traces up to "MRTM-SAF-019", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-016 | MRTM-HLR-016 is a High-level requirement (HLR) and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-016 | MRTM-HLR-016 is a High-level requirement (HLR) and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-017 | MRTM-HLR-017 is a High-level requirement (HLR) and traces up to "MRTM-SAF-004", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-018 | MRTM-HLR-018 is a High-level requirement (HLR) and traces up to "MRTM-SAF-007", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-018 | MRTM-HLR-018 is a High-level requirement (HLR) and traces up to "MRTM-SAF-023", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-019 | MRTM-HLR-019 is a High-level requirement (HLR) and traces up to "MRTM-SAF-017", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-020 | MRTM-HLR-020 is a High-level requirement (HLR) and traces up to "MRTM-SAF-005", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-021 | MRTM-HLR-021 is a High-level requirement (HLR) and traces up to "MRTM-SAF-008", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-022 | MRTM-HLR-022 is a High-level requirement (HLR) and traces up to "MRTM-MNT-002", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-022 | MRTM-HLR-022 is a High-level requirement (HLR) and traces up to "MRTM-SAF-012", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-023 | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-MNT-003", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-023 | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-SAF-006", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-023 | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-SAF-016", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-026 | MRTM-HLR-026 is a High-level requirement (HLR) and traces up to "MRTM-PRF-004", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-027 | MRTM-HLR-027 is a High-level requirement (HLR) and traces up to "MRTM-MNT-003", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-027 | MRTM-HLR-027 is a High-level requirement (HLR) and traces up to "MRTM-SAF-016", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-028 | MRTM-HLR-028 is a High-level requirement (HLR) and traces up to "MRTM-MNT-002", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-028 | MRTM-HLR-028 is a High-level requirement (HLR) and traces up to "MRTM-SAF-012", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-029 | MRTM-HLR-029 is a High-level requirement (HLR) and traces up to "MRTM-SAF-021", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-030 | MRTM-HLR-030 is a High-level requirement (HLR) and traces up to "MRTM-SAF-018", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-032 | MRTM-HLR-032 is a High-level requirement (HLR) and traces up to "MRTM-SAF-022", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-035 | MRTM-HLR-035 is a High-level requirement (HLR) and traces up to "MRTM-IFC-003", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-035 | MRTM-HLR-035 is a High-level requirement (HLR) and traces up to "MRTM-PRF-003", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-038 | MRTM-HLR-038 is a High-level requirement (HLR) and traces up to "MRTM-SAF-008", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HLR-038 | MRTM-HLR-038 is a High-level requirement (HLR) and traces up to "MRTM-SAF-017", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-002 | MRTM-HWR-002 is a Hardware item requirement and traces up to "MRTM-ENV-004", a Environmental Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-002 | MRTM-HWR-002 is a Hardware item requirement and traces up to "MRTM-PRF-001", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-003 | MRTM-HWR-003 is a Hardware item requirement and traces up to "MRTM-SAF-003", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-004 | MRTM-HWR-004 is a Hardware item requirement and traces up to "MRTM-SAF-001", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-006 | MRTM-HWR-006 is a Hardware item requirement and traces up to "MRTM-IFC-002", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-007 | MRTM-HWR-007 is a Hardware item requirement and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-007 | MRTM-HWR-007 is a Hardware item requirement and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-008 | MRTM-HWR-008 is a Hardware item requirement and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-009 | MRTM-HWR-009 is a Hardware item requirement and traces up to "MRTM-SAF-013", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-010 | MRTM-HWR-010 is a Hardware item requirement and traces up to "MRTM-SAF-004", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-011 | MRTM-HWR-011 is a Hardware item requirement and traces up to "MRTM-SAF-022", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-013 | MRTM-HWR-013 is a Hardware item requirement and traces up to "MRTM-ENV-001", a Environmental Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-HWR-014 | MRTM-HWR-014 is a Hardware item requirement and traces up to "MRTM-IFC-004", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-001 | MRTM-SAF-001 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-002 | MRTM-SAF-002 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-003 | MRTM-SAF-003 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-003 | MRTM-SAF-003 is a Safety Requirement and traces up to "MRTM-SOB-003", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-004 | MRTM-SAF-004 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-005 | MRTM-SAF-005 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-005 | MRTM-SAF-005 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-006 | MRTM-SAF-006 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-007 | MRTM-SAF-007 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-008 | MRTM-SAF-008 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-009 | MRTM-SAF-009 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-010 | MRTM-SAF-010 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-011 | MRTM-SAF-011 is a Safety Requirement and traces up to "MRTM-SOB-004", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-012 | MRTM-SAF-012 is a Safety Requirement and traces up to "MRTM-SOB-003", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-013 | MRTM-SAF-013 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-014 | MRTM-SAF-014 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-015 | MRTM-SAF-015 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-016 | MRTM-SAF-016 is a Safety Requirement and traces up to "MRTM-SOB-002", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-017 | MRTM-SAF-017 is a Safety Requirement and traces up to "MRTM-SOB-002", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-018 | MRTM-SAF-018 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-019 | MRTM-SAF-019 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-020 | MRTM-SAF-020 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-021 | MRTM-SAF-021 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-021 | MRTM-SAF-021 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-022 | MRTM-SAF-022 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| MRTM-SAF-023 | MRTM-SAF-023 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### Information (321)

#### `combinator` (1)

| Requirement | Message |
|---|---|
| MRTM-LLR-019 | "unless" joins a second clause - write one requirement per thought |

#### `decimal-format` (3)

| Requirement | Message |
|---|---|
| MRTM-HLR-024 | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |
| MRTM-HLR-030 | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |
| MRTM-LLR-003 | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |

#### `indefinite-article` (65)

| Requirement | Message |
|---|---|
| MRTM-ENV-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-FUN-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-FUN-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-009 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-013 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-014 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-015 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-017 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-032 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-033 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-035 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-036 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HLR-038 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-005 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWR-014 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-013 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-015 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-017 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-019 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-023 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-028 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-029 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-036 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-038 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-039 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-040 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LLR-042 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-MNT-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SOB-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SOB-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SOB-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SOB-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SOB-005 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-024 | an indefinite article leaves which one open - use "the" and name the item |

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `logical-expression` (17)

| Requirement | Message |
|---|---|
| MRTM-HLR-023 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-HLR-024 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-HLR-028 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-HWR-009 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-003 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-006 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-007 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-012 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-019 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-020 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-025 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-026 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-035 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-036 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-LLR-039 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-SAF-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

#### `negation` (1)

| Requirement | Message |
|---|---|
| MRTM-SOB-004 | "not" says what is excluded - state what the system shall do instead |

#### `oblique-symbol` (1)

| Requirement | Message |
|---|---|
| MRTM-LLR-005 | "/" is read as and, as or, and as both - write the one you mean |

#### `over-decomposition` (1)

| Requirement | Message |
|---|---|
| MRTM-SOB-001 | MRTM-SOB-001 is decomposed into 17 children, more than the 12 this repository's rule pack considers reviewable. Consider an intermediate level, or raise the threshold if this hierarchy is genuinely that wide. |

#### `parenthetical` (6)

| Requirement | Message |
|---|---|
| MRTM-LLR-005 | a bracketed aside hides part of the requirement - state it or drop it |
| MRTM-LLR-011 | a bracketed aside hides part of the requirement - state it or drop it |
| MRTM-LLR-013 | a bracketed aside hides part of the requirement - state it or drop it |
| MRTM-LLR-019 | a bracketed aside hides part of the requirement - state it or drop it |
| MRTM-LLR-022 | a bracketed aside hides part of the requirement - state it or drop it |
| MRTM-LLR-035 | a bracketed aside hides part of the requirement - state it or drop it |

#### `readability` (1)

| Requirement | Message |
|---|---|
| MRTM-LLR-013 | 50 words in one sentence (limit 40) — split it |

#### `requirement-pattern` (4)

| Requirement | Message |
|---|---|
| MRTM-HLR-007 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-HLR-008 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SAF-015 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SYS-004 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

#### `structured-statement` (1)

| Requirement | Message |
|---|---|
| MRTM-LLR-006 | _(candidate — inferred, needs human judgement)_ Starts with a condition but not an EARS word — try "When …, the … shall …" |

#### `sysml-unresolved-import` (49)

| Requirement | Message |
|---|---|
| 06-design/aircraft/NodeAircraft.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/common/AeroPorts.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmHardware.sysml | line 11: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmInterfaces.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmLogical.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmPartitions.sysml | line 5: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmPhysical.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSafety.sysml | line 8: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSeqExcursion.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSeqPowerLoss.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSeqProbeFault.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSoftware.sysml | line 11: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSoftware.sysml | line 12: `import SoftwareProfile` names nothing this project declares |
| 06-design/common/MrtmSwCodes.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSwDetail.sysml | line 6: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmSwDetail.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/common/MrtmSwStates.sysml | line 5: `import ScalarValues` names nothing this project declares |
| 06-design/common/MrtmUseCases.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/items/alarm-hw/NodeAlarmHw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/alarm-sw/NodeAlarmSw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml | line 3: `import SoftwareProfile` names nothing this project declares |
| 06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/controller-hw/NodeControllerHw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/display-hw/NodeDisplayHw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/display-sw/NodeDisplaySw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/display-sw/design/DisplaySwArchitecture.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/display-sw/design/DisplaySwArchitecture.sysml | line 3: `import SoftwareProfile` names nothing this project declares |
| 06-design/items/display-sw/design/NodeDisplaySwDesign.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/export-sw/NodeExportSw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/export-sw/design/ExportSwArchitecture.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/export-sw/design/ExportSwArchitecture.sysml | line 3: `import SoftwareProfile` names nothing this project declares |
| 06-design/items/export-sw/design/NodeExportSwDesign.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/platform-sw/NodePlatformSw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml | line 3: `import SoftwareProfile` names nothing this project declares |
| 06-design/items/power-hw/NodePowerHw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/record-sw/NodeRecordSw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/record-sw/design/NodeRecordSwDesign.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/record-sw/design/RecordSwArchitecture.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/items/record-sw/design/RecordSwArchitecture.sysml | line 3: `import SoftwareProfile` names nothing this project declares |
| 06-design/items/sensor-hw/NodeSensorHw.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/system/NodeSystem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/views/Aircraft_contextView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |
| 06-design/views/System_hardwareView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/System_itemsView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/System_softwareView.sysml | line 22: `import ScalarValues` names nothing this project declares |

#### `temporal-keyword` (3)

| Requirement | Message |
|---|---|
| MRTM-HLR-021 | "after" states an order, not a time - give the bound |
| MRTM-HLR-023 | "after" states an order, not a time - give the bound |
| MRTM-LLR-024 | "after" states an order, not a time - give the bound |

#### `undeclared-hazard` (102)

| Requirement | Message |
|---|---|
| MRTM-FUN-001 | _(candidate — inferred, needs human judgement)_ MRTM-FUN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-FUN-002 | _(candidate — inferred, needs human judgement)_ MRTM-FUN-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-FUN-003 | _(candidate — inferred, needs human judgement)_ MRTM-FUN-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-FUN-004 | _(candidate — inferred, needs human judgement)_ MRTM-FUN-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-FUN-005 | _(candidate — inferred, needs human judgement)_ MRTM-FUN-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-001 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-002 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-003 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-004 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-005 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-006 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-007 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-008 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-009 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-010 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-011 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-012 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-013 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-014 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-015 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-015's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-016 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-016's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-017 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-017's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-018 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-018's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-019 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-019's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-020 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-020's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-021 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-021's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-022 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-022's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-023 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-023's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-024 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-024's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-025 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-025's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-026 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-026's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-027 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-027's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-028 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-028's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-029 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-029's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-030 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-030's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-031 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-031's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-032 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-032's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-033 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-033's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-034 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-034's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-035 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-035's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-036 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-036's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-037 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-037's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HLR-038 | _(candidate — inferred, needs human judgement)_ MRTM-HLR-038's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-001 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-002 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-003 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-004 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-005 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-006 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-007 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-008 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-009 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-010 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-011 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-012 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-013 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWR-014 | _(candidate — inferred, needs human judgement)_ MRTM-HWR-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-001 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-002 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-003 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-004 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-005 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-006 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-007 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-008 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-009 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-010 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-011 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-012 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-013 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-014 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-015 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-015's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-016 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-016's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-017 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-017's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-018 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-018's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-019 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-019's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-020 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-020's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-021 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-021's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-022 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-022's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-023 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-023's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-024 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-024's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-025 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-025's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-026 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-026's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-027 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-027's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-028 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-028's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-029 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-029's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-030 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-030's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-031 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-031's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-032 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-032's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-033 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-033's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-034 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-034's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-035 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-035's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-036 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-036's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-037 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-037's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-038 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-038's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-039 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-039's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-040 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-040's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-041 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-041's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-042 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-042's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-043 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-043's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-044 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-044's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LLR-045 | _(candidate — inferred, needs human judgement)_ MRTM-LLR-045's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

#### `under-decomposition` (54)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-004 | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-010 | MRTM-HLR-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-011 | MRTM-HLR-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-012 | MRTM-HLR-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-013 | MRTM-HLR-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-014 | MRTM-HLR-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-017 | MRTM-HLR-017 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-018 | MRTM-HLR-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-020 | MRTM-HLR-020 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-021 | MRTM-HLR-021 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-022 | MRTM-HLR-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-023 | MRTM-HLR-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-029 | MRTM-HLR-029 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-033 | MRTM-HLR-033 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-034 | MRTM-HLR-034 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-036 | MRTM-HLR-036 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-037 | MRTM-HLR-037 has one child, which restates it — merge the two, or add the sibling |
| MRTM-HLR-038 | MRTM-HLR-038 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-003 | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-004 | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-001 | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-002 | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-003 | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-004 | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-001 | MRTM-SAF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-005 | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-007 | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-011 | MRTM-SAF-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-013 | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-014 | MRTM-SAF-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-015 | MRTM-SAF-015 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-018 | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-019 | MRTM-SAF-019 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-021 | MRTM-SAF-021 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-023 | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SOB-004 | MRTM-SOB-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-001 | MRTM-STK-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-002 | MRTM-STK-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-003 | MRTM-STK-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-004 | MRTM-STK-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-005 | MRTM-STK-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-006 | MRTM-STK-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-007 | MRTM-STK-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-STK-008 | MRTM-STK-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-002 | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-007 | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-008 | MRTM-SYS-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-009 | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-010 | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-013 | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-018 | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-019 | MRTM-SYS-019 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-021 | MRTM-SYS-021 has one child, which restates it — merge the two, or add the sibling |

#### `universal-quantifier` (2)

| Requirement | Message |
|---|---|
| MRTM-HWR-009 | "all power" quantifies a set the sentence never bounds |
| MRTM-LLR-012 | "any monitoring" quantifies a set the sentence never bounds |

#### `wide-impact` (6)

| Requirement | Message |
|---|---|
| MRTM-STK-002 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 199 other artifacts — 32 already implemented, 31 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 38 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-003 | Changing MRTM-STK-003 reaches 48 other artifacts — 8 already implemented, 8 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 103 other artifacts — 18 already implemented, 16 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-006 | Changing MRTM-STK-006 reaches 116 other artifacts — 19 already implemented, 18 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-007 | Changing MRTM-STK-007 reaches 103 other artifacts — 18 already implemented, 16 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-008 | Changing MRTM-STK-008 reaches 146 other artifacts — 22 already implemented, 21 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

## Findings by requirement

### (repository) (12)

| Severity | Rule | Message |
|---|---|---|
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

### /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-lFqLlZ/tree/runs/04-aerospace-ladder/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### 06-design/aircraft/AircraftFunctions.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "monitorAir→warnExcursion" was read but not drawn |

### 06-design/aircraft/NodeAircraft.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "monitor", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/common/AeroPorts.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmHardware.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 11: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmInterfaces.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmLogical.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmPartitions.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 5: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmPhysical.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmSafety.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmSeqExcursion.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmSeqPowerLoss.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmSeqProbeFault.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmSoftware.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 11: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 12: `import SoftwareProfile` names nothing this project declares |

### 06-design/common/MrtmSwCodes.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmSwDetail.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 6: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/common/MrtmSwStates.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 5: `import ScalarValues` names nothing this project declares |

### 06-design/common/MrtmUseCases.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/items/alarm-hw/NodeAlarmHw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmHw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/alarm-sw/AlarmSwFunctions.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "decideAlarm→beatHeart" was read but not drawn |

### 06-design/items/alarm-sw/NodeAlarmSw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmSw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/alarm-sw/design/AlarmSwArchitecture.sysml (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "alarmMgr", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "limitEvaluator", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "sensorSampler", which no requirement declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 3: `import SoftwareProfile` names nothing this project declares |

### 06-design/items/alarm-sw/design/NodeAlarmSwDesign.sysml (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmSwDesign", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "alarmSwDesign.alarmMgr", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "alarmSwDesign.limitEvaluator", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "alarmSwDesign.sensorSampler", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/controller-hw/NodeControllerHw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "controllerHw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/display-hw/NodeDisplayHw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "displayHw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/display-sw/NodeDisplaySw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "displaySw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/display-sw/design/DisplaySwArchitecture.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "displayMgr", which no requirement declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 3: `import SoftwareProfile` names nothing this project declares |

### 06-design/items/display-sw/design/NodeDisplaySwDesign.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "displaySwDesign", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "displaySwDesign.displayMgr", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/export-sw/NodeExportSw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "exportSw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/export-sw/design/ExportSwArchitecture.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "usbExport", which no requirement declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 3: `import SoftwareProfile` names nothing this project declares |

### 06-design/items/export-sw/design/NodeExportSwDesign.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "exportSwDesign.usbExport", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/platform-sw/NodePlatformSw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "platformSw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/platform-sw/design/NodePlatformSwDesign.sysml (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "platformSwDesign", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "platformSwDesign.configMgr", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "platformSwDesign.diagnostics", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "platformSwDesign.powerMon", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "platformSwDesign.wdtKicker", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/platform-sw/design/PlatformSwArchitecture.sysml (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "configMgr", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "diagnostics", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "powerMon", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "wdtKicker", which no requirement declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 3: `import SoftwareProfile` names nothing this project declares |

### 06-design/items/power-hw/NodePowerHw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "powerHw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/record-sw/NodeRecordSw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "recordSw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/record-sw/design/NodeRecordSwDesign.sysml (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "recordSwDesign.eventLog", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "recordSwDesign.historyRing", which no component artifact declares |
| warning | `allocation-target-undeclared` | The model allocates to "recordSwDesign.rtcClock", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/items/record-sw/design/RecordSwArchitecture.sysml (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "eventLog", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "historyRing", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "rtcClock", which no requirement declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 3: `import SoftwareProfile` names nothing this project declares |

### 06-design/items/sensor-hw/NodeSensorHw.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "sensorHw", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/system/AlarmPathSequence.sysml (9)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "ackLine→silence" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "acknowledge→ackLine" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "buzzerDrive→sounding" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "earlyDrive→earlyLight" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "earlyLight→buzzerDrive" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "logStart→acknowledge" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "sample→earlyDrive" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "sounding→logStart" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "warmAir→sample" was read but not drawn |

### 06-design/system/NodeSystem.sysml (7)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "system", which no component artifact declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "alarmSw", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "displaySw", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "exportSw", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "platformSw", which no requirement declares |
| warning | `sysml-unresolved-id` | `satisfy/allocate` names "recordSw", which no requirement declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/views/Aircraft_contextView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/SanadRenderings.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import Views` names nothing this project declares |

### 06-design/views/System_hardwareView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/System_itemsView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/System_softwareView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (7)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-010 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-011 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-012 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-013 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-014 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-015 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-016 is allocated to alarmSwDesign.alarmMgr but claimed by code in alarmMgr. |

### 10-src/firmware/components/config_mgr/src/config_mgr.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-020 is allocated to platformSwDesign.configMgr but claimed by code in configMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-021 is allocated to platformSwDesign.configMgr but claimed by code in configMgr. |

### 10-src/firmware/components/diagnostics/src/diagnostics.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-019 is allocated to platformSwDesign.diagnostics but claimed by code in diagnostics. |

### 10-src/firmware/components/display_mgr/src/display_mgr.cpp (7)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-028 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-029 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-030 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-031 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-032 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-033 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-LLR-034 is allocated to displaySwDesign.displayMgr but claimed by code in displayMgr. |

### 10-src/firmware/components/event_log/src/event_log.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-035 is allocated to recordSwDesign.eventLog but claimed by code in eventLog. |
| warning | `implementation-outside-component` | MRTM-LLR-036 is allocated to recordSwDesign.eventLog but claimed by code in eventLog. |

### 10-src/firmware/components/history_ring/src/history_ring.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-037 is allocated to recordSwDesign.historyRing but claimed by code in historyRing. |
| warning | `implementation-outside-component` | MRTM-LLR-038 is allocated to recordSwDesign.historyRing but claimed by code in historyRing. |
| warning | `implementation-outside-component` | MRTM-LLR-039 is allocated to recordSwDesign.historyRing but claimed by code in historyRing. |

### 10-src/firmware/components/limit_evaluator/src/limit_evaluator.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-007 is allocated to alarmSwDesign.limitEvaluator but claimed by code in limitEvaluator. |
| warning | `implementation-outside-component` | MRTM-LLR-008 is allocated to alarmSwDesign.limitEvaluator but claimed by code in limitEvaluator. |
| warning | `implementation-outside-component` | MRTM-LLR-009 is allocated to alarmSwDesign.limitEvaluator but claimed by code in limitEvaluator. |

### 10-src/firmware/components/power_mon/src/power_mon.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-023 is allocated to platformSwDesign.powerMon but claimed by code in powerMon. |
| warning | `implementation-outside-component` | MRTM-LLR-024 is allocated to platformSwDesign.powerMon but claimed by code in powerMon. |

### 10-src/firmware/components/rtc_clock/src/rtc_clock.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-040 is allocated to recordSwDesign.rtcClock but claimed by code in rtcClock. |
| warning | `implementation-outside-component` | MRTM-LLR-041 is allocated to recordSwDesign.rtcClock but claimed by code in rtcClock. |
| warning | `implementation-outside-component` | MRTM-LLR-042 is allocated to recordSwDesign.rtcClock but claimed by code in rtcClock. |

### 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-001 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-LLR-002 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-LLR-003 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-LLR-004 is allocated to alarmSwDesign.sensorSampler but claimed by code in sensorSampler. |

### 10-src/firmware/components/usb_export/src/usb_export.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-043 is allocated to exportSwDesign.usbExport but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-LLR-044 is allocated to exportSwDesign.usbExport but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-LLR-045 is allocated to exportSwDesign.usbExport but claimed by code in usbExport. |

### 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-LLR-017 is allocated to platformSwDesign.wdtKicker but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-LLR-018 is allocated to platformSwDesign.wdtKicker but claimed by code in wdtKicker. |

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

### MRTM-FUN-001 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-FUN-001 — write a case for it, or record why it needs none |
| warning | `parent-child-inconsistency` | MRTM-FUN-001 is refined at 2 different levels — move the odd child |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-FUN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-FUN-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-FUN-002 — write a case for it, or record why it needs none |
| warning | `parent-child-inconsistency` | MRTM-FUN-002 is refined at 2 different levels — move the odd child |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-FUN-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-FUN-003 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-FUN-003 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-FUN-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-FUN-004 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-FUN-004 — write a case for it, or record why it needs none |
| warning | `parent-child-inconsistency` | MRTM-FUN-004 is refined at 2 different levels — move the odd child |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-FUN-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-FUN-005 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-FUN-005 — write a case for it, or record why it needs none |
| warning | `parent-child-inconsistency` | MRTM-FUN-005 is refined at 2 different levels — move the odd child |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-FUN-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-001 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-SNI", which no type declares |
| warning | `undeclared-id-prefix` | 6 reference(s) use the prefix "ADR", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-002 is a High-level requirement (HLR) and traces up to "MRTM-SAF-003", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-003 is a High-level requirement (HLR) and traces up to "MRTM-SAF-002", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `undeclared-id-prefix` | 3 reference(s) use the prefix "MRTM-EXI", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-005 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 5 reference(s) use the prefix "MRTM-ALM", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-006 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-007 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 4 reference(s) use the prefix "MRTM-ALI", which no type declares |
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-008 is a High-level requirement (HLR) and traces up to "MRTM-PRF-002", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-009 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-009 is a High-level requirement (HLR) and traces up to "MRTM-IFC-002", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-010 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-010 is a High-level requirement (HLR) and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-011 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-012 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| warning | `wrong-uplink-level` | MRTM-HLR-012 is a High-level requirement (HLR) and traces up to "MRTM-SAF-002", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-012 is a High-level requirement (HLR) and traces up to "MRTM-SAF-011", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-013 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-013 is a High-level requirement (HLR) and traces up to "MRTM-SAF-014", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-013 is a High-level requirement (HLR) and traces up to "MRTM-SAF-015", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-014 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-014 is a High-level requirement (HLR) and traces up to "MRTM-SAF-006", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-014 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-015 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| warning | `wrong-uplink-level` | MRTM-HLR-015 is a High-level requirement (HLR) and traces up to "MRTM-SAF-019", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-015's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-016 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 3 reference(s) use the prefix "MRTM-SVI", which no type declares |
| warning | `undeclared-id-prefix` | 4 reference(s) use the prefix "MRTM-SUP", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HLR-016 is a High-level requirement (HLR) and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-016 is a High-level requirement (HLR) and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-016's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-017 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-017 is a High-level requirement (HLR) and traces up to "MRTM-SAF-004", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-017's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-017 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-018 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-018 is a High-level requirement (HLR) and traces up to "MRTM-SAF-007", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-018 is a High-level requirement (HLR) and traces up to "MRTM-SAF-023", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-018's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-019 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `wrong-uplink-level` | MRTM-HLR-019 is a High-level requirement (HLR) and traces up to "MRTM-SAF-017", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-019's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-020 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-PWI", which no type declares |
| warning | `undeclared-id-prefix` | 3 reference(s) use the prefix "MRTM-PWR", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HLR-020 is a High-level requirement (HLR) and traces up to "MRTM-SAF-005", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-020's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-020 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-021 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-021 is a High-level requirement (HLR) and traces up to "MRTM-SAF-008", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-021's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-021 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-022 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-HLR-022 — write a case for it, or record why it needs none |
| warning | `wrong-uplink-level` | MRTM-HLR-022 is a High-level requirement (HLR) and traces up to "MRTM-MNT-002", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-022 is a High-level requirement (HLR) and traces up to "MRTM-SAF-012", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-022's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-022 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-023 (8)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `wrong-uplink-level` | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-MNT-003", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-SAF-006", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-SAF-016", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-023's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-023 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-024 (7)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-HLR-024 — write a case for it, or record why it needs none |
| warning | `missing-decomposition` | MRTM-HLR-024 is a High-level requirement (HLR) and nothing traces up to it — decompose it |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `decimal-format` | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-024's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-025 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-DSI", which no type declares |
| warning | `undeclared-id-prefix` | 3 reference(s) use the prefix "MRTM-DSP", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-025's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-026 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-026 is a High-level requirement (HLR) and traces up to "MRTM-PRF-004", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-026's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-027 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-027 is a High-level requirement (HLR) and traces up to "MRTM-MNT-003", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-027 is a High-level requirement (HLR) and traces up to "MRTM-SAF-016", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-027's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-028 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `wrong-uplink-level` | MRTM-HLR-028 is a High-level requirement (HLR) and traces up to "MRTM-MNT-002", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-028 is a High-level requirement (HLR) and traces up to "MRTM-SAF-012", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-028's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-029 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-029 is a High-level requirement (HLR) and traces up to "MRTM-SAF-021", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-029's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-029 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-030 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-LGI", which no type declares |
| warning | `undeclared-id-prefix` | 4 reference(s) use the prefix "MRTM-LOG", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HLR-030 is a High-level requirement (HLR) and traces up to "MRTM-SAF-018", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `decimal-format` | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-030's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-031 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-031's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-032 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `wrong-uplink-level` | MRTM-HLR-032 is a High-level requirement (HLR) and traces up to "MRTM-SAF-022", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-032's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-033 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-033's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-033 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-034 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-034's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-034 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-035 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-USI", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HLR-035 is a High-level requirement (HLR) and traces up to "MRTM-IFC-003", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-035 is a High-level requirement (HLR) and traces up to "MRTM-PRF-003", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-035's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HLR-036 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-036's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-036 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-037 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-HLR-037 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-037's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-037 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HLR-038 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `wrong-uplink-level` | MRTM-HLR-038 is a High-level requirement (HLR) and traces up to "MRTM-SAF-008", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HLR-038 is a High-level requirement (HLR) and traces up to "MRTM-SAF-017", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HLR-038's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-HLR-038 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HWR-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-001's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 3 reference(s) use the prefix "MRTM-PRB", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-002 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-HWR-002 is a Hardware item requirement and traces up to "MRTM-ENV-004", a Environmental Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HWR-002 is a Hardware item requirement and traces up to "MRTM-PRF-001", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-003 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-003's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| warning | `wrong-uplink-level` | MRTM-HWR-003 is a Hardware item requirement and traces up to "MRTM-SAF-003", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-004 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-BZR", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-004 is a Hardware item requirement and traces up to "MRTM-SAF-001", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-005 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-IND", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-006 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-HWR-006 is a Hardware item requirement and traces up to "MRTM-IFC-002", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-007 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-BKT", which no type declares |
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "MRTM-BKA", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-007 is a Hardware item requirement and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-HWR-007 is a Hardware item requirement and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-008 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-BKD", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-008 is a Hardware item requirement and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-009 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-BKH", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-009 is a Hardware item requirement and traces up to "MRTM-SAF-013", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `universal-quantifier` | "all power" quantifies a set the sentence never bounds |

### MRTM-HWR-010 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-MCU", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-010 is a Hardware item requirement and traces up to "MRTM-SAF-004", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-011 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-RTC", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-011 is a Hardware item requirement and traces up to "MRTM-SAF-022", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-012 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-PPT", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-013 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-BAT", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-013 is a Hardware item requirement and traces up to "MRTM-ENV-001", a Environmental Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWR-014 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWR-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "MRTM-OLD", which no type declares |
| warning | `wrong-uplink-level` | MRTM-HWR-014 is a Hardware item requirement and traces up to "MRTM-IFC-004", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWR-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-IFC-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IFC-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-IFC-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-IFC-002 is refined at 2 different levels — move the odd child |

### MRTM-IFC-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IFC-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-IFC-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LLR-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-003 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `decimal-format` | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-005 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `oblique-symbol` | "/" is read as and, as or, and as both - write the one you mean |
| info | `parenthetical` | a bracketed aside hides part of the requirement - state it or drop it |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-006 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LLR-006 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `structured-statement` | _(candidate — inferred, needs human judgement)_ Starts with a condition but not an EARS word — try "When …, the … shall …" |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-007 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-009 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-010 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-011 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `parenthetical` | a bracketed aside hides part of the requirement - state it or drop it |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-012 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "any" can't be measured — give it a number and a unit |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `universal-quantifier` | "any monitoring" quantifies a set the sentence never bounds |

### MRTM-LLR-013 (5)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `parenthetical` | a bracketed aside hides part of the requirement - state it or drop it |
| info | `readability` | 50 words in one sentence (limit 40) — split it |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-014 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-014's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-015 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-015's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-016 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-016's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-017 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-017's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-018 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-018's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-019 (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| info | `combinator` | "unless" joins a second clause - write one requirement per thought |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `parenthetical` | a bracketed aside hides part of the requirement - state it or drop it |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-019's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-020 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-020's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-021 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-021's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-022 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `parenthetical` | a bracketed aside hides part of the requirement - state it or drop it |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-022's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-023 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-023's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-024 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-024's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-025 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LLR-025 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-025's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-026 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LLR-026 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-026's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-027 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LLR-027 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-027's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-028 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-028's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-029 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-029's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-030 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-030's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-031 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-031's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-032 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-032's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-033 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-033's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-034 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LLR-034 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-034's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-035 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `parenthetical` | a bracketed aside hides part of the requirement - state it or drop it |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-035's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-036 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-036's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-037 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-037's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-038 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-038's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-039 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-039's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-040 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-040's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-041 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-041's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-042 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-042's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-043 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-LLR-043 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-043's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-044 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-044's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LLR-045 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LLR-045's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-MNT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-MNT-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-MNT-003 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-PRF-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PRF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PRF-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PRF-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-001 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-001 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-002 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-003 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SAF-003 is refined at 2 different levels — move the odd child |
| warning | `wrong-uplink-level` | MRTM-SAF-003 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-SAF-003 is a Safety Requirement and traces up to "MRTM-SOB-003", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-004 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SAF-004 is refined at 2 different levels — move the odd child |
| warning | `wrong-uplink-level` | MRTM-SAF-004 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-005 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-005 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-SAF-005 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `under-decomposition` | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-006 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-006 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-007 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-007 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `under-decomposition` | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-008 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-008 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-009 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SAF-009 is refined at 2 different levels — move the odd child |
| warning | `wrong-uplink-level` | MRTM-SAF-009 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-010 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SAF-010 is refined at 2 different levels — move the odd child |
| warning | `wrong-uplink-level` | MRTM-SAF-010 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-011 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-011 is a Safety Requirement and traces up to "MRTM-SOB-004", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-012 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-012 is a Safety Requirement and traces up to "MRTM-SOB-003", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-013 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-013 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `under-decomposition` | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-014 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-014 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `under-decomposition` | MRTM-SAF-014 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-015 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-015 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `under-decomposition` | MRTM-SAF-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-016 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-016 is a Safety Requirement and traces up to "MRTM-SOB-002", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-017 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-017's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-017 is a Safety Requirement and traces up to "MRTM-SOB-002", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-018 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-018's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-018 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `under-decomposition` | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-019 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-019's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-019 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `under-decomposition` | MRTM-SAF-019 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-020 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-020 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

### MRTM-SAF-021 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-021's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-021 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| warning | `wrong-uplink-level` | MRTM-SAF-021 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-021 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-022 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-022's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SAF-022 is refined at 2 different levels — move the odd child |
| warning | `wrong-uplink-level` | MRTM-SAF-022 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-023 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-023's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `wrong-uplink-level` | MRTM-SAF-023 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| info | `under-decomposition` | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SOB-001 (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-SOB-001 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `over-decomposition` | MRTM-SOB-001 is decomposed into 17 children, more than the 12 this repository's rule pack considers reviewable. Consider an intermediate level, or raise the threshold if this hierarchy is genuinely that wide. |

### MRTM-SOB-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-SOB-002 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SOB-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-SOB-003 — write a case for it, or record why it needs none |
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SOB-004 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-SOB-004 — write a case for it, or record why it needs none |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `negation` | "not" says what is excluded - state what the system shall do instead |
| info | `under-decomposition` | MRTM-SOB-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SOB-005 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-SOB-005 — write a case for it, or record why it needs none |
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| warning | `weak-term` | "every" can't be measured — give it a number and a unit |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-STK-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-STK-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-002 has one child, which restates it — merge the two, or add the sibling |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 199 other artifacts — 32 already implemented, 31 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 38 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-003 has one child, which restates it — merge the two, or add the sibling |
| info | `wide-impact` | Changing MRTM-STK-003 reaches 48 other artifacts — 8 already implemented, 8 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-004 has one child, which restates it — merge the two, or add the sibling |
| info | `wide-impact` | Changing MRTM-STK-004 reaches 103 other artifacts — 18 already implemented, 16 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-005 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-STK-006 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-006 has one child, which restates it — merge the two, or add the sibling |
| info | `wide-impact` | Changing MRTM-STK-006 reaches 116 other artifacts — 19 already implemented, 18 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-007 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-STK-007 has one child, which restates it — merge the two, or add the sibling |
| info | `wide-impact` | Changing MRTM-STK-007 reaches 103 other artifacts — 18 already implemented, 16 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-STK-008 has one child, which restates it — merge the two, or add the sibling |
| info | `wide-impact` | Changing MRTM-STK-008 reaches 146 other artifacts — 22 already implemented, 21 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-SYS-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-SYS-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-008 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-008 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-010 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-011 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-012 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-013 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-014 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-015 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-016 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-017 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-017's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-018 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-019 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-019 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-020 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-021 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-021's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SYS-021 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-022 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-022's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-023 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SYS-023's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SYS-024 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "CR", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

