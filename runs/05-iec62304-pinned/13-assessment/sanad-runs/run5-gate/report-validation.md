# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `0abc378672ee0cce17fdfec2a38db9acdbf9fa0e`

**Commit date:** `2026-09-27T11:26:12+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `5d3eaed4672357a3f152b73777c549e12f3322dc0cf3140ae32f1f4452e0dccc`

**Input hash:** `8afa911daa89f59110144cefae29f982bb8a365a8b802a0d832ba03bd35b377c`

**Inputs:** `146 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 398 — 0 errors · 143 warnings · 255 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (143)](#warnings-143)
    - [`allocation-target-undeclared` (23)](#allocation-target-undeclared-23)
    - [`duplicate-requirement` (2)](#duplicate-requirement-2)
    - [`empty-component` (12)](#empty-component-12)
    - [`implementation-outside-component` (46)](#implementation-outside-component-46)
    - [`missing-case` (1)](#missing-case-1)
    - [`missing-result` (36)](#missing-result-36)
    - [`parent-child-inconsistency` (7)](#parent-child-inconsistency-7)
    - [`passive-voice` (1)](#passive-voice-1)
    - [`sysml-not-read` (7)](#sysml-not-read-7)
    - [`testability` (1)](#testability-1)
    - [`undeclared-id-prefix` (7)](#undeclared-id-prefix-7)
  - [Information (255)](#information-255)
    - [`decimal-format` (1)](#decimal-format-1)
    - [`indefinite-article` (43)](#indefinite-article-43)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (3)](#logical-expression-3)
    - [`requirement-pattern` (3)](#requirement-pattern-3)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`sysml-unresolved-import` (89)](#sysml-unresolved-import-89)
    - [`temporal-keyword` (3)](#temporal-keyword-3)
    - [`undeclared-hazard` (40)](#undeclared-hazard-40)
    - [`under-decomposition` (62)](#under-decomposition-62)
    - [`wide-impact` (6)](#wide-impact-6)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (12)](#repository-12)
  - [/tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-irqscotreeruns05-iec62304-pinnedejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-irqscotreeruns05-iec62304-pinnedejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-irqscotreeruns05-iec62304-pinnedejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-irqscotreeruns05-iec62304-pinnedejadahrewtemplatessystemmd-1)
  - [06-design/L1-device/LevelPorts.sysml (1)](#06-designl1-devicelevelportssysml-1)
  - [06-design/L1-device/NodeDevice.sysml (2)](#06-designl1-devicenodedevicesysml-2)
  - [06-design/L1-device/NodeDeviceContext.sysml (1)](#06-designl1-devicenodedevicecontextsysml-1)
  - [06-design/L1-device/NodeDeviceWhiteBox.sysml (1)](#06-designl1-devicenodedevicewhiteboxsysml-1)
  - [06-design/L2-hardware-item/NodeHardwareItem.sysml (2)](#06-designl2-hardware-itemnodehardwareitemsysml-2)
  - [06-design/L2-hardware-item/NodeHardwareItemParts.sysml (1)](#06-designl2-hardware-itemnodehardwareitempartssysml-1)
  - [06-design/L2-software-system/L2SeqExcursion.sysml (8)](#06-designl2-software-systeml2seqexcursionsysml-8)
  - [06-design/L2-software-system/NodeSoftwareSystem.sysml (2)](#06-designl2-software-systemnodesoftwaresystemsysml-2)
  - [06-design/L2-software-system/NodeSoftwareSystemArchitecture.sysml (1)](#06-designl2-software-systemnodesoftwaresystemarchitecturesysml-1)
  - [06-design/L2-software-system/NodeSoftwareSystemHardwareInterface.sysml (1)](#06-designl2-software-systemnodesoftwaresystemhardwareinterfacesysml-1)
  - [06-design/L3-software-items/alarm-item/NodeAlarmItem.sysml (3)](#06-designl3-software-itemsalarm-itemnodealarmitemsysml-3)
  - [06-design/L3-software-items/alarm-item/NodeAlarmItemStructure.sysml (1)](#06-designl3-software-itemsalarm-itemnodealarmitemstructuresysml-1)
  - [06-design/L3-software-items/display-item/NodeDisplayItem.sysml (3)](#06-designl3-software-itemsdisplay-itemnodedisplayitemsysml-3)
  - [06-design/L3-software-items/display-item/NodeDisplayItemStructure.sysml (1)](#06-designl3-software-itemsdisplay-itemnodedisplayitemstructuresysml-1)
  - [06-design/L3-software-items/excursion-item/NodeExcursionItem.sysml (3)](#06-designl3-software-itemsexcursion-itemnodeexcursionitemsysml-3)
  - [06-design/L3-software-items/excursion-item/NodeExcursionItemStructure.sysml (1)](#06-designl3-software-itemsexcursion-itemnodeexcursionitemstructuresysml-1)
  - [06-design/L3-software-items/log-item/NodeLogItem.sysml (3)](#06-designl3-software-itemslog-itemnodelogitemsysml-3)
  - [06-design/L3-software-items/log-item/NodeLogItemStructure.sysml (1)](#06-designl3-software-itemslog-itemnodelogitemstructuresysml-1)
  - [06-design/L3-software-items/power-item/NodePowerItem.sysml (3)](#06-designl3-software-itemspower-itemnodepoweritemsysml-3)
  - [06-design/L3-software-items/power-item/NodePowerItemStructure.sysml (1)](#06-designl3-software-itemspower-itemnodepoweritemstructuresysml-1)
  - [06-design/L3-software-items/sensor-item/NodeSensorItem.sysml (3)](#06-designl3-software-itemssensor-itemnodesensoritemsysml-3)
  - [06-design/L3-software-items/sensor-item/NodeSensorItemStructure.sysml (1)](#06-designl3-software-itemssensor-itemnodesensoritemstructuresysml-1)
  - [06-design/L3-software-items/supervisor-item/NodeSupervisorItem.sysml (3)](#06-designl3-software-itemssupervisor-itemnodesupervisoritemsysml-3)
  - [06-design/L3-software-items/supervisor-item/NodeSupervisorItemStructure.sysml (1)](#06-designl3-software-itemssupervisor-itemnodesupervisoritemstructuresysml-1)
  - [06-design/L3-software-items/usb-item/NodeUsbItem.sysml (3)](#06-designl3-software-itemsusb-itemnodeusbitemsysml-3)
  - [06-design/L3-software-items/usb-item/NodeUsbItemStructure.sysml (1)](#06-designl3-software-itemsusb-itemnodeusbitemstructuresysml-1)
  - [06-design/L4-software-units/alarm-mgr/NodeAlarmMgr.sysml (3)](#06-designl4-software-unitsalarm-mgrnodealarmmgrsysml-3)
  - [06-design/L4-software-units/config-mgr/NodeConfigMgr.sysml (3)](#06-designl4-software-unitsconfig-mgrnodeconfigmgrsysml-3)
  - [06-design/L4-software-units/diagnostics/NodeDiagnostics.sysml (3)](#06-designl4-software-unitsdiagnosticsnodediagnosticssysml-3)
  - [06-design/L4-software-units/display-mgr/NodeDisplayMgr.sysml (3)](#06-designl4-software-unitsdisplay-mgrnodedisplaymgrsysml-3)
  - [06-design/L4-software-units/event-log/NodeEventLog.sysml (3)](#06-designl4-software-unitsevent-lognodeeventlogsysml-3)
  - [06-design/L4-software-units/history-ring/NodeHistoryRing.sysml (3)](#06-designl4-software-unitshistory-ringnodehistoryringsysml-3)
  - [06-design/L4-software-units/limit-evaluator/NodeLimitEvaluator.sysml (3)](#06-designl4-software-unitslimit-evaluatornodelimitevaluatorsysml-3)
  - [06-design/L4-software-units/power-mon/NodePowerMon.sysml (3)](#06-designl4-software-unitspower-monnodepowermonsysml-3)
  - [06-design/L4-software-units/rtc-clock/NodeRtcClock.sysml (3)](#06-designl4-software-unitsrtc-clocknodertcclocksysml-3)
  - [06-design/L4-software-units/sensor-sampler/NodeSensorSampler.sysml (3)](#06-designl4-software-unitssensor-samplernodesensorsamplersysml-3)
  - [06-design/L4-software-units/usb-export/NodeUsbExport.sysml (3)](#06-designl4-software-unitsusb-exportnodeusbexportsysml-3)
  - [06-design/L4-software-units/wdt-kicker/NodeWdtKicker.sysml (3)](#06-designl4-software-unitswdt-kickernodewdtkickersysml-3)
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
  - [06-design/views/L1_device_blockView.sysml (1)](#06-designviewsl1deviceblockviewsysml-1)
  - [06-design/views/L1_device_contextView.sysml (1)](#06-designviewsl1devicecontextviewsysml-1)
  - [06-design/views/L1_device_usecasesView.sysml (1)](#06-designviewsl1deviceusecasesviewsysml-1)
  - [06-design/views/L2_hardware_item_partsView.sysml (1)](#06-designviewsl2hardwareitem_partsviewsysml-1)
  - [06-design/views/L2_software_system_architectureView.sysml (1)](#06-designviewsl2softwaresystem_architectureviewsysml-1)
  - [06-design/views/L2_software_system_hardwareView.sysml (1)](#06-designviewsl2softwaresystem_hardwareviewsysml-1)
  - [06-design/views/L3_alarm_item_structureView.sysml (1)](#06-designviewsl3alarmitem_structureviewsysml-1)
  - [06-design/views/L3_display_item_structureView.sysml (1)](#06-designviewsl3displayitem_structureviewsysml-1)
  - [06-design/views/L3_excursion_item_structureView.sysml (1)](#06-designviewsl3excursionitem_structureviewsysml-1)
  - [06-design/views/L3_log_item_structureView.sysml (1)](#06-designviewsl3logitem_structureviewsysml-1)
  - [06-design/views/L3_power_item_structureView.sysml (1)](#06-designviewsl3poweritem_structureviewsysml-1)
  - [06-design/views/L3_sensor_item_structureView.sysml (1)](#06-designviewsl3sensoritem_structureviewsysml-1)
  - [06-design/views/L3_supervisor_item_structureView.sysml (1)](#06-designviewsl3supervisoritem_structureviewsysml-1)
  - [06-design/views/L3_usb_item_structureView.sysml (1)](#06-designviewsl3usbitem_structureviewsysml-1)
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
  - [MRTM-ALI-001 (2)](#mrtm-ali-001-2)
  - [MRTM-ALI-002 (2)](#mrtm-ali-002-2)
  - [MRTM-ALI-003 (2)](#mrtm-ali-003-2)
  - [MRTM-ALI-004 (2)](#mrtm-ali-004-2)
  - [MRTM-AMG-001 (1)](#mrtm-amg-001-1)
  - [MRTM-AMG-002 (1)](#mrtm-amg-002-1)
  - [MRTM-AMG-003 (2)](#mrtm-amg-003-2)
  - [MRTM-AMG-004 (2)](#mrtm-amg-004-2)
  - [MRTM-CFG-001 (1)](#mrtm-cfg-001-1)
  - [MRTM-DGN-001 (1)](#mrtm-dgn-001-1)
  - [MRTM-DMG-001 (2)](#mrtm-dmg-001-2)
  - [MRTM-DMG-002 (1)](#mrtm-dmg-002-1)
  - [MRTM-DSI-001 (4)](#mrtm-dsi-001-4)
  - [MRTM-DSI-002 (2)](#mrtm-dsi-002-2)
  - [MRTM-ENV-001 (2)](#mrtm-env-001-2)
  - [MRTM-ENV-002 (2)](#mrtm-env-002-2)
  - [MRTM-ENV-003 (2)](#mrtm-env-003-2)
  - [MRTM-ENV-004 (3)](#mrtm-env-004-3)
  - [MRTM-EVL-001 (1)](#mrtm-evl-001-1)
  - [MRTM-EVL-002 (1)](#mrtm-evl-002-1)
  - [MRTM-EXI-001 (1)](#mrtm-exi-001-1)
  - [MRTM-EXI-002 (3)](#mrtm-exi-002-3)
  - [MRTM-EXI-003 (1)](#mrtm-exi-003-1)
  - [MRTM-HRG-001 (2)](#mrtm-hrg-001-2)
  - [MRTM-HRG-002 (1)](#mrtm-hrg-002-1)
  - [MRTM-HWI-001 (1)](#mrtm-hwi-001-1)
  - [MRTM-HWI-002 (3)](#mrtm-hwi-002-3)
  - [MRTM-HWI-003 (3)](#mrtm-hwi-003-3)
  - [MRTM-HWI-004 (3)](#mrtm-hwi-004-3)
  - [MRTM-HWI-005 (2)](#mrtm-hwi-005-2)
  - [MRTM-HWI-006 (3)](#mrtm-hwi-006-3)
  - [MRTM-HWI-007 (1)](#mrtm-hwi-007-1)
  - [MRTM-HWI-008 (3)](#mrtm-hwi-008-3)
  - [MRTM-HWI-009 (3)](#mrtm-hwi-009-3)
  - [MRTM-HWI-010 (3)](#mrtm-hwi-010-3)
  - [MRTM-HWI-011 (2)](#mrtm-hwi-011-2)
  - [MRTM-HWI-012 (2)](#mrtm-hwi-012-2)
  - [MRTM-HWI-013 (2)](#mrtm-hwi-013-2)
  - [MRTM-IFC-002 (1)](#mrtm-ifc-002-1)
  - [MRTM-IFC-003 (2)](#mrtm-ifc-003-2)
  - [MRTM-IFC-004 (3)](#mrtm-ifc-004-3)
  - [MRTM-LEV-001 (1)](#mrtm-lev-001-1)
  - [MRTM-LEV-002 (2)](#mrtm-lev-002-2)
  - [MRTM-LEV-003 (1)](#mrtm-lev-003-1)
  - [MRTM-LGI-001 (2)](#mrtm-lgi-001-2)
  - [MRTM-LGI-002 (1)](#mrtm-lgi-002-1)
  - [MRTM-LGI-003 (1)](#mrtm-lgi-003-1)
  - [MRTM-MNT-001 (2)](#mrtm-mnt-001-2)
  - [MRTM-PMN-001 (2)](#mrtm-pmn-001-2)
  - [MRTM-PMN-002 (2)](#mrtm-pmn-002-2)
  - [MRTM-PRF-001 (2)](#mrtm-prf-001-2)
  - [MRTM-PRF-002 (1)](#mrtm-prf-002-1)
  - [MRTM-PRF-003 (1)](#mrtm-prf-003-1)
  - [MRTM-PRF-004 (2)](#mrtm-prf-004-2)
  - [MRTM-PWI-001 (1)](#mrtm-pwi-001-1)
  - [MRTM-PWI-002 (2)](#mrtm-pwi-002-2)
  - [MRTM-RTK-001 (2)](#mrtm-rtk-001-2)
  - [MRTM-SAF-001 (3)](#mrtm-saf-001-3)
  - [MRTM-SAF-003 (2)](#mrtm-saf-003-2)
  - [MRTM-SAF-004 (2)](#mrtm-saf-004-2)
  - [MRTM-SAF-005 (1)](#mrtm-saf-005-1)
  - [MRTM-SAF-007 (1)](#mrtm-saf-007-1)
  - [MRTM-SAF-008 (1)](#mrtm-saf-008-1)
  - [MRTM-SAF-009 (1)](#mrtm-saf-009-1)
  - [MRTM-SAF-010 (1)](#mrtm-saf-010-1)
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
  - [MRTM-SMP-001 (2)](#mrtm-smp-001-2)
  - [MRTM-SMP-002 (2)](#mrtm-smp-002-2)
  - [MRTM-SNI-001 (2)](#mrtm-sni-001-2)
  - [MRTM-SNI-002 (1)](#mrtm-sni-002-1)
  - [MRTM-SRS-001 (3)](#mrtm-srs-001-3)
  - [MRTM-SRS-002 (1)](#mrtm-srs-002-1)
  - [MRTM-SRS-003 (1)](#mrtm-srs-003-1)
  - [MRTM-SRS-004 (1)](#mrtm-srs-004-1)
  - [MRTM-SRS-005 (3)](#mrtm-srs-005-3)
  - [MRTM-SRS-006 (1)](#mrtm-srs-006-1)
  - [MRTM-SRS-007 (2)](#mrtm-srs-007-2)
  - [MRTM-SRS-008 (3)](#mrtm-srs-008-3)
  - [MRTM-SRS-009 (1)](#mrtm-srs-009-1)
  - [MRTM-SRS-010 (3)](#mrtm-srs-010-3)
  - [MRTM-SRS-011 (2)](#mrtm-srs-011-2)
  - [MRTM-SRS-012 (2)](#mrtm-srs-012-2)
  - [MRTM-SRS-013 (2)](#mrtm-srs-013-2)
  - [MRTM-SRS-014 (1)](#mrtm-srs-014-1)
  - [MRTM-SRS-015 (2)](#mrtm-srs-015-2)
  - [MRTM-SRS-017 (1)](#mrtm-srs-017-1)
  - [MRTM-SRS-018 (2)](#mrtm-srs-018-2)
  - [MRTM-SRS-019 (2)](#mrtm-srs-019-2)
  - [MRTM-STK-001 (1)](#mrtm-stk-001-1)
  - [MRTM-STK-002 (1)](#mrtm-stk-002-1)
  - [MRTM-STK-003 (2)](#mrtm-stk-003-2)
  - [MRTM-STK-004 (2)](#mrtm-stk-004-2)
  - [MRTM-STK-005 (1)](#mrtm-stk-005-1)
  - [MRTM-STK-006 (1)](#mrtm-stk-006-1)
  - [MRTM-STK-007 (2)](#mrtm-stk-007-2)
  - [MRTM-STK-008 (3)](#mrtm-stk-008-3)
  - [MRTM-SVI-001 (2)](#mrtm-svi-001-2)
  - [MRTM-SVI-002 (1)](#mrtm-svi-002-1)
  - [MRTM-SVI-003 (1)](#mrtm-svi-003-1)
  - [MRTM-SYS-002 (1)](#mrtm-sys-002-1)
  - [MRTM-SYS-004 (1)](#mrtm-sys-004-1)
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
  - [MRTM-USI-001 (4)](#mrtm-usi-001-4)
  - [MRTM-USI-002 (3)](#mrtm-usi-002-3)
  - [MRTM-UXP-001 (2)](#mrtm-uxp-001-2)
  - [MRTM-UXP-002 (2)](#mrtm-uxp-002-2)
  - [MRTM-WDK-001 (1)](#mrtm-wdk-001-1)

## Findings by severity

### Warnings (143)

#### `allocation-target-undeclared` (23)

| Requirement | Message |
|---|---|
| 06-design/L1-device/NodeDevice.sysml | The model allocates to "device", which no component artifact declares |
| 06-design/L2-hardware-item/NodeHardwareItem.sysml | The model allocates to "hardwareItem", which no component artifact declares |
| 06-design/L2-software-system/NodeSoftwareSystem.sysml | The model allocates to "softwareSystem", which no component artifact declares |
| 06-design/L3-software-items/alarm-item/NodeAlarmItem.sysml | The model allocates to "alarmSwItem", which no component artifact declares |
| 06-design/L3-software-items/display-item/NodeDisplayItem.sysml | The model allocates to "displaySwItem", which no component artifact declares |
| 06-design/L3-software-items/excursion-item/NodeExcursionItem.sysml | The model allocates to "excursionSwItem", which no component artifact declares |
| 06-design/L3-software-items/log-item/NodeLogItem.sysml | The model allocates to "logSwItem", which no component artifact declares |
| 06-design/L3-software-items/power-item/NodePowerItem.sysml | The model allocates to "powerSwItem", which no component artifact declares |
| 06-design/L3-software-items/sensor-item/NodeSensorItem.sysml | The model allocates to "sensorSwItem", which no component artifact declares |
| 06-design/L3-software-items/supervisor-item/NodeSupervisorItem.sysml | The model allocates to "supervisorSwItem", which no component artifact declares |
| 06-design/L3-software-items/usb-item/NodeUsbItem.sysml | The model allocates to "usbSwItem", which no component artifact declares |
| 06-design/L4-software-units/alarm-mgr/NodeAlarmMgr.sysml | The model allocates to "alarmMgrUnit", which no component artifact declares |
| 06-design/L4-software-units/config-mgr/NodeConfigMgr.sysml | The model allocates to "configMgrUnit", which no component artifact declares |
| 06-design/L4-software-units/diagnostics/NodeDiagnostics.sysml | The model allocates to "diagnosticsUnit", which no component artifact declares |
| 06-design/L4-software-units/display-mgr/NodeDisplayMgr.sysml | The model allocates to "displayMgrUnit", which no component artifact declares |
| 06-design/L4-software-units/event-log/NodeEventLog.sysml | The model allocates to "eventLogUnit", which no component artifact declares |
| 06-design/L4-software-units/history-ring/NodeHistoryRing.sysml | The model allocates to "historyRingUnit", which no component artifact declares |
| 06-design/L4-software-units/limit-evaluator/NodeLimitEvaluator.sysml | The model allocates to "limitEvaluatorUnit", which no component artifact declares |
| 06-design/L4-software-units/power-mon/NodePowerMon.sysml | The model allocates to "powerMonUnit", which no component artifact declares |
| 06-design/L4-software-units/rtc-clock/NodeRtcClock.sysml | The model allocates to "rtcClockUnit", which no component artifact declares |
| 06-design/L4-software-units/sensor-sampler/NodeSensorSampler.sysml | The model allocates to "sensorSamplerUnit", which no component artifact declares |
| 06-design/L4-software-units/usb-export/NodeUsbExport.sysml | The model allocates to "usbExportUnit", which no component artifact declares |
| 06-design/L4-software-units/wdt-kicker/NodeWdtKicker.sysml | The model allocates to "wdtKickerUnit", which no component artifact declares |

#### `duplicate-requirement` (2)

| Requirement | Message |
|---|---|
| MRTM-EXI-002 | _(candidate — inferred, needs human judgement)_ MRTM-EXI-002 repeats MRTM-EXI-003 (92 % of its words) — merge them, or say what differs |
| MRTM-LEV-002 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002 repeats MRTM-LEV-003 (93 % of its words) — merge them, or say what differs |

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
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-IFC-002 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-IFC-002 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-PRF-002 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-002 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-002 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-006 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-008 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-010 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-011 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-014 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-015 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-017 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-019 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-019 is allocated to device but claimed by code in alarmMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-SAF-017 is allocated to device but claimed by code in configMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-SAF-017 is allocated to device but claimed by code in configMgr. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-SAF-007 is allocated to device but claimed by code in diagnostics. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-SAF-023 is allocated to device but claimed by code in diagnostics. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-IFC-004 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-002 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-PRF-004 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-PRF-004 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-012 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-021 is allocated to device but claimed by code in displayMgr. |
| 10-src/firmware/components/event_log/src/event_log.c | MRTM-SAF-018 is allocated to device but claimed by code in eventLog. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-SAF-018 is allocated to device but claimed by code in historyRing. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-SAF-005 is allocated to device but claimed by code in powerMon. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-SAF-008 is allocated to device but claimed by code in powerMon. |
| 10-src/firmware/components/rtc_clock/src/rtc_clock.c | MRTM-SAF-022 is allocated to device but claimed by code in rtcClock. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-IFC-001 is allocated to device but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-IFC-001 is allocated to device but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-PRF-001 is allocated to device but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-SAF-003 is allocated to device but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-SAF-003 is allocated to device but claimed by code in sensorSampler. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to device but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to device but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to device but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-PRF-003 is allocated to device but claimed by code in usbExport. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-004 is allocated to device but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-009 is allocated to device but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-010 is allocated to device but claimed by code in wdtKicker. |

#### `missing-case` (1)

| Requirement | Message |
|---|---|
| MRTM-SRS-008 | Nothing verifies MRTM-SRS-008 — write a case for it, or record why it needs none |

#### `missing-result` (36)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-002 | Nothing in the declared test reports says what happened when MRTM-ENV-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-003 | Nothing in the declared test reports says what happened when MRTM-ENV-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-004 | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-002 | Nothing in the declared test reports says what happened when MRTM-HWI-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-003 | Nothing in the declared test reports says what happened when MRTM-HWI-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-004 | Nothing in the declared test reports says what happened when MRTM-HWI-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-005 | Nothing in the declared test reports says what happened when MRTM-HWI-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-006 | Nothing in the declared test reports says what happened when MRTM-HWI-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-008 | Nothing in the declared test reports says what happened when MRTM-HWI-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-009 | Nothing in the declared test reports says what happened when MRTM-HWI-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-010 | Nothing in the declared test reports says what happened when MRTM-HWI-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-011 | Nothing in the declared test reports says what happened when MRTM-HWI-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-012 | Nothing in the declared test reports says what happened when MRTM-HWI-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-HWI-013 | Nothing in the declared test reports says what happened when MRTM-HWI-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-004 | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-001 | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-001 | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-013 | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-020 | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-001 | Nothing in the declared test reports says what happened when MRTM-SRS-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-005 | Nothing in the declared test reports says what happened when MRTM-SRS-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-010 | Nothing in the declared test reports says what happened when MRTM-SRS-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-011 | Nothing in the declared test reports says what happened when MRTM-SRS-011's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-012 | Nothing in the declared test reports says what happened when MRTM-SRS-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-013 | Nothing in the declared test reports says what happened when MRTM-SRS-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-014 | Nothing in the declared test reports says what happened when MRTM-SRS-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-015 | Nothing in the declared test reports says what happened when MRTM-SRS-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SRS-018 | Nothing in the declared test reports says what happened when MRTM-SRS-018's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-001 | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-003 | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-004 | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-005 | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-007 | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-008 | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-016 | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

#### `parent-child-inconsistency` (7)

| Requirement | Message |
|---|---|
| MRTM-IFC-002 | MRTM-IFC-002 is refined at 2 different levels — move the odd child |
| MRTM-LGI-001 | MRTM-LGI-001 is refined at 2 different levels — move the odd child |
| MRTM-LGI-003 | MRTM-LGI-003 is refined at 2 different levels — move the odd child |
| MRTM-SAF-003 | MRTM-SAF-003 is refined at 2 different levels — move the odd child |
| MRTM-SAF-009 | MRTM-SAF-009 is refined at 2 different levels — move the odd child |
| MRTM-SRS-002 | MRTM-SRS-002 is refined at 3 different levels — move the odd child |
| MRTM-SRS-017 | MRTM-SRS-017 is refined at 2 different levels — move the odd child |

#### `passive-voice` (1)

| Requirement | Message |
|---|---|
| MRTM-SRS-008 | Doesn't say who does this — name the system or component |

#### `sysml-not-read` (7)

| Requirement | Message |
|---|---|
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "buzzerOn→warning" was read but not drawn |
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "confirmed→buzzerOn" was read but not drawn |
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "early→redFlash" was read but not drawn |
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "redFlash→confirmed" was read but not drawn |
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "sample→validSample" was read but not drawn |
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "validSample→early" was read but not drawn |
| 06-design/L2-software-system/L2SeqExcursion.sysml | `succession` naming "warning→startRecord" was read but not drawn |

#### `testability` (1)

| Requirement | Message |
|---|---|
| MRTM-UXP-001 | Nothing here a test could check — add a number, or name what changes |

#### `undeclared-id-prefix` (7)

| Requirement | Message |
|---|---|
| MRTM-ALI-002 | 23 reference(s) use the prefix "ADR", which no type declares |
| MRTM-ALI-004 | 1 reference(s) use the prefix "SRS", which no type declares |
| MRTM-AMG-003 | 1 reference(s) use the prefix "IFC", which no type declares |
| MRTM-DSI-001 | 6 reference(s) use the prefix "SAF", which no type declares |
| MRTM-EXI-002 | 2 reference(s) use the prefix "STK", which no type declares |
| MRTM-SYS-024 | 1 reference(s) use the prefix "CR", which no type declares |
| MRTM-USI-001 | 2 reference(s) use the prefix "USI", which no type declares |

### Information (255)

#### `decimal-format` (1)

| Requirement | Message |
|---|---|
| MRTM-LGI-001 | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |

#### `indefinite-article` (43)

| Requirement | Message |
|---|---|
| MRTM-ALI-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-AMG-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-DSI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HRG-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWI-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWI-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWI-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWI-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWI-009 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-HWI-010 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-MNT-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PMN-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-RTK-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SMP-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SNI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SRS-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SRS-005 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SRS-007 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SRS-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SRS-010 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SRS-019 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SVI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-024 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-USI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-USI-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-UXP-002 | an indefinite article leaves which one open - use "the" and name the item |

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `logical-expression` (3)

| Requirement | Message |
|---|---|
| MRTM-HWI-008 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-SAF-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-SMP-001 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

#### `requirement-pattern` (3)

| Requirement | Message |
|---|---|
| MRTM-ALI-001 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SAF-015 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SYS-004 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

#### `single-point-failure` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-011 | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

#### `sysml-unresolved-import` (89)

| Requirement | Message |
|---|---|
| 06-design/L1-device/LevelPorts.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L1-device/NodeDevice.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L1-device/NodeDeviceContext.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L1-device/NodeDeviceWhiteBox.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L2-hardware-item/NodeHardwareItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L2-hardware-item/NodeHardwareItemParts.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L2-software-system/L2SeqExcursion.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L2-software-system/NodeSoftwareSystem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L2-software-system/NodeSoftwareSystemArchitecture.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L2-software-system/NodeSoftwareSystemHardwareInterface.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/alarm-item/NodeAlarmItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/alarm-item/NodeAlarmItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/alarm-item/NodeAlarmItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/display-item/NodeDisplayItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/display-item/NodeDisplayItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/display-item/NodeDisplayItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/excursion-item/NodeExcursionItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/excursion-item/NodeExcursionItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/excursion-item/NodeExcursionItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/log-item/NodeLogItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/log-item/NodeLogItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/log-item/NodeLogItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/power-item/NodePowerItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/power-item/NodePowerItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/power-item/NodePowerItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/sensor-item/NodeSensorItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/sensor-item/NodeSensorItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/sensor-item/NodeSensorItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/supervisor-item/NodeSupervisorItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/supervisor-item/NodeSupervisorItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/supervisor-item/NodeSupervisorItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/usb-item/NodeUsbItem.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L3-software-items/usb-item/NodeUsbItem.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L3-software-items/usb-item/NodeUsbItemStructure.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/alarm-mgr/NodeAlarmMgr.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/alarm-mgr/NodeAlarmMgr.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/config-mgr/NodeConfigMgr.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/config-mgr/NodeConfigMgr.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/diagnostics/NodeDiagnostics.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/diagnostics/NodeDiagnostics.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/display-mgr/NodeDisplayMgr.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/display-mgr/NodeDisplayMgr.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/event-log/NodeEventLog.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/event-log/NodeEventLog.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/history-ring/NodeHistoryRing.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/history-ring/NodeHistoryRing.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/limit-evaluator/NodeLimitEvaluator.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/limit-evaluator/NodeLimitEvaluator.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/power-mon/NodePowerMon.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/power-mon/NodePowerMon.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/rtc-clock/NodeRtcClock.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/rtc-clock/NodeRtcClock.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/sensor-sampler/NodeSensorSampler.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/sensor-sampler/NodeSensorSampler.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/usb-export/NodeUsbExport.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/usb-export/NodeUsbExport.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
| 06-design/L4-software-units/wdt-kicker/NodeWdtKicker.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/L4-software-units/wdt-kicker/NodeWdtKicker.sysml | line 7: `import SoftwareProfile` names nothing this project declares |
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
| 06-design/views/L1_device_blockView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L1_device_contextView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L1_device_usecasesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L2_hardware_item_partsView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L2_software_system_architectureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L2_software_system_hardwareView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_alarm_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_display_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_excursion_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_log_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_power_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_sensor_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_supervisor_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/L3_usb_item_structureView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |

#### `temporal-keyword` (3)

| Requirement | Message |
|---|---|
| MRTM-DMG-001 | "after" states an order, not a time - give the bound |
| MRTM-PMN-002 | "after" states an order, not a time - give the bound |
| MRTM-PWI-002 | "after" states an order, not a time - give the bound |

#### `undeclared-hazard` (40)

| Requirement | Message |
|---|---|
| MRTM-AMG-001 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-AMG-002 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-AMG-003 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-AMG-004 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-CFG-001 | _(candidate — inferred, needs human judgement)_ MRTM-CFG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DGN-001 | _(candidate — inferred, needs human judgement)_ MRTM-DGN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DMG-001 | _(candidate — inferred, needs human judgement)_ MRTM-DMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DMG-002 | _(candidate — inferred, needs human judgement)_ MRTM-DMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DSI-001 | _(candidate — inferred, needs human judgement)_ MRTM-DSI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DSI-002 | _(candidate — inferred, needs human judgement)_ MRTM-DSI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-EVL-001 | _(candidate — inferred, needs human judgement)_ MRTM-EVL-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-EVL-002 | _(candidate — inferred, needs human judgement)_ MRTM-EVL-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HRG-001 | _(candidate — inferred, needs human judgement)_ MRTM-HRG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HRG-002 | _(candidate — inferred, needs human judgement)_ MRTM-HRG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-001 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-002 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-003 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-004 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-005 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-006 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-007 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-008 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-009 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-010 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-011 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-012 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-013 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LEV-001 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LEV-002 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LEV-003 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PMN-001 | _(candidate — inferred, needs human judgement)_ MRTM-PMN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PMN-002 | _(candidate — inferred, needs human judgement)_ MRTM-PMN-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-RTK-001 | _(candidate — inferred, needs human judgement)_ MRTM-RTK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-SMP-001 | _(candidate — inferred, needs human judgement)_ MRTM-SMP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-SMP-002 | _(candidate — inferred, needs human judgement)_ MRTM-SMP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-USI-001 | _(candidate — inferred, needs human judgement)_ MRTM-USI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-USI-002 | _(candidate — inferred, needs human judgement)_ MRTM-USI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-UXP-001 | _(candidate — inferred, needs human judgement)_ MRTM-UXP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-UXP-002 | _(candidate — inferred, needs human judgement)_ MRTM-UXP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-WDK-001 | _(candidate — inferred, needs human judgement)_ MRTM-WDK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

#### `under-decomposition` (62)

| Requirement | Message |
|---|---|
| MRTM-ALI-001 | MRTM-ALI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALI-002 | MRTM-ALI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALI-003 | MRTM-ALI-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALI-004 | MRTM-ALI-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-DSI-001 | MRTM-DSI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-DSI-002 | MRTM-DSI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-001 | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-004 | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-EXI-001 | MRTM-EXI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-EXI-002 | MRTM-EXI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-EXI-003 | MRTM-EXI-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-003 | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-004 | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LGI-002 | MRTM-LGI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-001 | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-002 | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-003 | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-004 | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PWI-001 | MRTM-PWI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PWI-002 | MRTM-PWI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-001 | MRTM-SAF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-004 | MRTM-SAF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-005 | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-007 | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-008 | MRTM-SAF-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-010 | MRTM-SAF-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-012 | MRTM-SAF-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-013 | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-016 | MRTM-SAF-016 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-017 | MRTM-SAF-017 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-018 | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-022 | MRTM-SAF-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-023 | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SNI-001 | MRTM-SNI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SNI-002 | MRTM-SNI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-001 | MRTM-SRS-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-003 | MRTM-SRS-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-004 | MRTM-SRS-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-005 | MRTM-SRS-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-006 | MRTM-SRS-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-007 | MRTM-SRS-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-009 | MRTM-SRS-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-010 | MRTM-SRS-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-011 | MRTM-SRS-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-012 | MRTM-SRS-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-013 | MRTM-SRS-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-015 | MRTM-SRS-015 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-018 | MRTM-SRS-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-019 | MRTM-SRS-019 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SVI-001 | MRTM-SVI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SVI-002 | MRTM-SVI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SVI-003 | MRTM-SVI-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-002 | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-007 | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-009 | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-010 | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-013 | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-018 | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-022 | MRTM-SYS-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-023 | MRTM-SYS-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-USI-001 | MRTM-USI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-USI-002 | MRTM-USI-002 has one child, which restates it — merge the two, or add the sibling |

#### `wide-impact` (6)

| Requirement | Message |
|---|---|
| MRTM-STK-002 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 40 other artifacts — 13 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 17 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-003 | Changing MRTM-STK-003 reaches 29 other artifacts — 9 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 61 other artifacts — 17 already implemented, 13 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-006 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 35 other artifacts — 11 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 12 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-007 | Changing MRTM-STK-007 reaches 35 other artifacts — 8 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-008 | Changing MRTM-STK-008 reaches 31 other artifacts — 8 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

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

### /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-IrQsCO/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### 06-design/L1-device/LevelPorts.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L1-device/NodeDevice.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "device", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L1-device/NodeDeviceContext.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L1-device/NodeDeviceWhiteBox.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L2-hardware-item/NodeHardwareItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "hardwareItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L2-hardware-item/NodeHardwareItemParts.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L2-software-system/L2SeqExcursion.sysml (8)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "buzzerOn→warning" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "confirmed→buzzerOn" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "early→redFlash" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "redFlash→confirmed" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "sample→validSample" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "validSample→early" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "warning→startRecord" was read but not drawn |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L2-software-system/NodeSoftwareSystem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "softwareSystem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L2-software-system/NodeSoftwareSystemArchitecture.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L2-software-system/NodeSoftwareSystemHardwareInterface.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/alarm-item/NodeAlarmItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/alarm-item/NodeAlarmItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/display-item/NodeDisplayItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "displaySwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/display-item/NodeDisplayItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/excursion-item/NodeExcursionItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "excursionSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/excursion-item/NodeExcursionItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/log-item/NodeLogItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "logSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/log-item/NodeLogItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/power-item/NodePowerItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "powerSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/power-item/NodePowerItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/sensor-item/NodeSensorItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "sensorSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/sensor-item/NodeSensorItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/supervisor-item/NodeSupervisorItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "supervisorSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/supervisor-item/NodeSupervisorItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L3-software-items/usb-item/NodeUsbItem.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "usbSwItem", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L3-software-items/usb-item/NodeUsbItemStructure.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/L4-software-units/alarm-mgr/NodeAlarmMgr.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmMgrUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/config-mgr/NodeConfigMgr.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "configMgrUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/diagnostics/NodeDiagnostics.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "diagnosticsUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/display-mgr/NodeDisplayMgr.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "displayMgrUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/event-log/NodeEventLog.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "eventLogUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/history-ring/NodeHistoryRing.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "historyRingUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/limit-evaluator/NodeLimitEvaluator.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "limitEvaluatorUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/power-mon/NodePowerMon.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "powerMonUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/rtc-clock/NodeRtcClock.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "rtcClockUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/sensor-sampler/NodeSensorSampler.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "sensorSamplerUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/usb-export/NodeUsbExport.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "usbExportUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

### 06-design/L4-software-units/wdt-kicker/NodeWdtKicker.sysml (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "wdtKickerUnit", which no component artifact declares |
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |
| info | `sysml-unresolved-import` | line 7: `import SoftwareProfile` names nothing this project declares |

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

### 06-design/views/L1_device_blockView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L1_device_contextView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L1_device_usecasesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L2_hardware_item_partsView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L2_software_system_architectureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L2_software_system_hardwareView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_alarm_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_display_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_excursion_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_log_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_power_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_sensor_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_supervisor_item_structureView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/L3_usb_item_structureView.sysml (1)

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
| warning | `implementation-outside-component` | MRTM-IFC-002 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-IFC-002 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-002 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-002 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-002 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-006 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-011 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-014 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-015 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-019 is allocated to device but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-019 is allocated to device but claimed by code in alarmMgr. |

### 10-src/firmware/components/config_mgr/src/config_mgr.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to device but claimed by code in configMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to device but claimed by code in configMgr. |

### 10-src/firmware/components/diagnostics/src/diagnostics.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-007 is allocated to device but claimed by code in diagnostics. |
| warning | `implementation-outside-component` | MRTM-SAF-023 is allocated to device but claimed by code in diagnostics. |

### 10-src/firmware/components/display_mgr/src/display_mgr.cpp (11)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-004 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-002 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-004 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-004 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-012 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to device but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-021 is allocated to device but claimed by code in displayMgr. |

### 10-src/firmware/components/event_log/src/event_log.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to device but claimed by code in eventLog. |

### 10-src/firmware/components/history_ring/src/history_ring.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to device but claimed by code in historyRing. |

### 10-src/firmware/components/power_mon/src/power_mon.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-005 is allocated to device but claimed by code in powerMon. |
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to device but claimed by code in powerMon. |

### 10-src/firmware/components/rtc_clock/src/rtc_clock.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-022 is allocated to device but claimed by code in rtcClock. |

### 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-001 is allocated to device but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-IFC-001 is allocated to device but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-PRF-001 is allocated to device but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-SAF-003 is allocated to device but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-SAF-003 is allocated to device but claimed by code in sensorSampler. |

### 10-src/firmware/components/usb_export/src/usb_export.c (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to device but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to device but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to device but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-PRF-003 is allocated to device but claimed by code in usbExport. |

### 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-004 is allocated to device but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-SAF-009 is allocated to device but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to device but claimed by code in wdtKicker. |

### MRTM-ALI-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `under-decomposition` | MRTM-ALI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 23 reference(s) use the prefix "ADR", which no type declares |
| info | `under-decomposition` | MRTM-ALI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALI-003 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-ALI-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALI-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "SRS", which no type declares |
| info | `under-decomposition` | MRTM-ALI-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-AMG-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-AMG-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-AMG-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "IFC", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-AMG-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-CFG-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-CFG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DGN-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DGN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DMG-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DMG-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DSI-001 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 6 reference(s) use the prefix "SAF", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DSI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-DSI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-DSI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DSI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-DSI-002 has one child, which restates it — merge the two, or add the sibling |

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

### MRTM-EVL-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-EVL-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-EVL-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-EVL-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-EXI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-EXI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-EXI-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-EXI-002 repeats MRTM-EXI-003 (92 % of its words) — merge them, or say what differs |
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "STK", which no type declares |
| info | `under-decomposition` | MRTM-EXI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-EXI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-EXI-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HRG-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HRG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HRG-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HRG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-005 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-006 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-006's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-009 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-009's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-010 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-011 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-011's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-012 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-013 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-HWI-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-IFC-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-IFC-002 is refined at 2 different levels — move the odd child |

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

### MRTM-LEV-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LEV-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002 repeats MRTM-LEV-003 (93 % of its words) — merge them, or say what differs |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LEV-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LGI-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LGI-001 is refined at 2 different levels — move the odd child |
| info | `decimal-format` | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |

### MRTM-LGI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-LGI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LGI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LGI-003 is refined at 2 different levels — move the odd child |

### MRTM-MNT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PMN-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PMN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PMN-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PMN-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

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

### MRTM-PWI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-PWI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PWI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |
| info | `under-decomposition` | MRTM-PWI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-RTK-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-RTK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-SAF-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SAF-003 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SAF-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |

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
| warning | `parent-child-inconsistency` | MRTM-SAF-009 is refined at 2 different levels — move the odd child |

### MRTM-SAF-010 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SAF-010 has one child, which restates it — merge the two, or add the sibling |

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

### MRTM-SMP-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-SMP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-SMP-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-SMP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-SNI-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SNI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SNI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SNI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SRS-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SRS-002 is refined at 3 different levels — move the odd child |

### MRTM-SRS-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-005 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SRS-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-006 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-007 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SRS-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-SRS-008 — write a case for it, or record why it needs none |
| warning | `passive-voice` | Doesn't say who does this — name the system or component |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SRS-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-010 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-010's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SRS-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-011 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-011's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SRS-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-012 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-012's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SRS-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-013 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SRS-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-014 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-014's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-SRS-015 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-015's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SRS-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-017 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SRS-017 is refined at 2 different levels — move the odd child |

### MRTM-SRS-018 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SRS-018's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SRS-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-019 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SRS-019 has one child, which restates it — merge the two, or add the sibling |

### MRTM-STK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 40 other artifacts — 13 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 17 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-003 reaches 29 other artifacts — 9 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-004 reaches 61 other artifacts — 17 already implemented, 13 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-005 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 35 other artifacts — 11 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 12 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-007 reaches 35 other artifacts — 8 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `wide-impact` | Changing MRTM-STK-008 reaches 31 other artifacts — 8 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-SVI-001 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SVI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SVI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SVI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SVI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SVI-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

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

### MRTM-USI-001 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "USI", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-USI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-USI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-USI-002 (3)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-USI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-USI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-UXP-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `testability` | Nothing here a test could check — add a number, or name what changes |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-UXP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-UXP-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-UXP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-WDK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-WDK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

