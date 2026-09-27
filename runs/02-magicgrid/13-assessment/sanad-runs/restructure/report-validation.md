# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `1a3a87d826b854265270fa7b4999eedf7224d9b2`

**Commit date:** `2026-09-27T11:04:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `126e70e32bcb2072a0aa85cd22c3a50fc30fa98d88636a90763af29f48857f2a`

**Input hash:** `55b63558513451b2231f16868dc6cf94673fe08037c2cc6bc673600a24505092`

**Inputs:** `132 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 394 — 0 errors · 167 warnings · 227 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (167)](#warnings-167)
    - [`allocation-target-undeclared` (27)](#allocation-target-undeclared-27)
    - [`conflicting-requirements` (1)](#conflicting-requirements-1)
    - [`duplicate-requirement` (1)](#duplicate-requirement-1)
    - [`empty-component` (12)](#empty-component-12)
    - [`implementation-outside-component` (46)](#implementation-outside-component-46)
    - [`missing-case` (1)](#missing-case-1)
    - [`missing-result` (46)](#missing-result-46)
    - [`parent-child-inconsistency` (10)](#parent-child-inconsistency-10)
    - [`sysml-not-read` (19)](#sysml-not-read-19)
    - [`undeclared-id-prefix` (4)](#undeclared-id-prefix-4)
  - [Information (227)](#information-227)
    - [`decimal-format` (1)](#decimal-format-1)
    - [`indefinite-article` (40)](#indefinite-article-40)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (4)](#logical-expression-4)
    - [`not-a-requirement` (39)](#not-a-requirement-39)
    - [`requirement-pattern` (3)](#requirement-pattern-3)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`sysml-unresolved-import` (63)](#sysml-unresolved-import-63)
    - [`temporal-keyword` (1)](#temporal-keyword-1)
    - [`undeclared-hazard` (16)](#undeclared-hazard-16)
    - [`under-decomposition` (48)](#under-decomposition-48)
    - [`universal-quantifier` (1)](#universal-quantifier-1)
    - [`wide-impact` (6)](#wide-impact-6)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (12)](#repository-12)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgridejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgridejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgridejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgridejadahrewtemplatessystemmd-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmalarm-itemmrtm-ali-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmalarm-itemmrtm-ali-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-003.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmalarm-itemmrtm-ali-003md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-004.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmalarm-itemmrtm-ali-004md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/MRTM-BKA-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmbackup-alarmmrtm-bka-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/MRTM-BKA-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmbackup-alarmmrtm-bka-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-driver/MRTM-BKD-001.md (2)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmbackup-alarmbackup-drivermrtm-bkd-001md-2)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-timer/MRTM-BKT-001.md (2)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmbackup-alarmbackup-timermrtm-bkt-001md-2)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/hold-up/MRTM-BKH-001.md (2)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmbackup-alarmhold-upmrtm-bkh-001md-2)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/buzzer/MRTM-BZR-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmbuzzermrtm-bzr-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmexcursion-itemmrtm-exi-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmexcursion-itemmrtm-exi-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-003.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmexcursion-itemmrtm-exi-003md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/indicators/MRTM-IND-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmindicatorsmrtm-ind-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/indicators/MRTM-IND-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmalarmindicatorsmrtm-ind-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/display-item/MRTM-DSI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmdisplaydisplay-itemmrtm-dsi-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/display-item/MRTM-DSI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmdisplaydisplay-itemmrtm-dsi-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/oled/MRTM-OLD-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmdisplayoledmrtm-old-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/log-item/MRTM-LGI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmlogginglog-itemmrtm-lgi-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/log-item/MRTM-LGI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmlogginglog-itemmrtm-lgi-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/rtc/MRTM-RTC-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmloggingrtcmrtm-rtc-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/usb-item/MRTM-USI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmloggingusb-itemmrtm-usi-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/usb-item/MRTM-USI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmloggingusb-itemmrtm-usi-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/battery/MRTM-BAT-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmpowerbatterymrtm-bat-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-item/MRTM-PWI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmpowerpower-itemmrtm-pwi-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-item/MRTM-PWI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmpowerpower-itemmrtm-pwi-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-path/MRTM-PPT-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmpowerpower-pathmrtm-ppt-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsensingprobemrtm-prb-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsensingprobemrtm-prb-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-003.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsensingprobemrtm-prb-003md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/sensor-item/MRTM-SNI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsensingsensor-itemmrtm-sni-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/sensor-item/MRTM-SNI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsensingsensor-itemmrtm-sni-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/mcu/MRTM-MCU-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsupervisionmcumrtm-mcu-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-001.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsupervisionsupervisor-itemmrtm-svi-001md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-002.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsupervisionsupervisor-itemmrtm-svi-002md-1)
  - [/tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-003.md (1)](#tmpsanad-at-hvbw2rtreeruns02-magicgrid03-requirementsmrtmsupervisionsupervisor-itemmrtm-svi-003md-1)
  - [06-design/context/NodeContext.sysml (2)](#06-designcontextnodecontextsysml-2)
  - [06-design/hardware/MrtmHardware.sysml (1)](#06-designhardwaremrtmhardwaresysml-1)
  - [06-design/mrtm/NodeMrtm.sysml (1)](#06-designmrtmnodemrtmsysml-1)
  - [06-design/mrtm/NodePorts.sysml (1)](#06-designmrtmnodeportssysml-1)
  - [06-design/mrtm/SystemExcursion.sysml (9)](#06-designmrtmsystemexcursionsysml-9)
  - [06-design/mrtm/SystemPowerLoss.sysml (6)](#06-designmrtmsystempowerlosssysml-6)
  - [06-design/mrtm/SystemProbeFault.sysml (4)](#06-designmrtmsystemprobefaultsysml-4)
  - [06-design/mrtm/alarm/NodeAlarm.sysml (2)](#06-designmrtmalarmnodealarmsysml-2)
  - [06-design/mrtm/alarm/alarm-item/NodeAlarmItem.sysml (2)](#06-designmrtmalarmalarm-itemnodealarmitemsysml-2)
  - [06-design/mrtm/alarm/backup-alarm/NodeBackupAlarm.sysml (2)](#06-designmrtmalarmbackup-alarmnodebackupalarmsysml-2)
  - [06-design/mrtm/alarm/backup-alarm/backup-driver/NodeBackupDriver.sysml (2)](#06-designmrtmalarmbackup-alarmbackup-drivernodebackupdriversysml-2)
  - [06-design/mrtm/alarm/backup-alarm/backup-timer/NodeBackupTimer.sysml (2)](#06-designmrtmalarmbackup-alarmbackup-timernodebackuptimersysml-2)
  - [06-design/mrtm/alarm/backup-alarm/hold-up/NodeHoldUp.sysml (2)](#06-designmrtmalarmbackup-alarmhold-upnodeholdupsysml-2)
  - [06-design/mrtm/alarm/buzzer/NodeBuzzer.sysml (2)](#06-designmrtmalarmbuzzernodebuzzersysml-2)
  - [06-design/mrtm/alarm/excursion-item/NodeExcursionItem.sysml (2)](#06-designmrtmalarmexcursion-itemnodeexcursionitemsysml-2)
  - [06-design/mrtm/alarm/indicators/NodeIndicators.sysml (2)](#06-designmrtmalarmindicatorsnodeindicatorssysml-2)
  - [06-design/mrtm/display/NodeDisplay.sysml (2)](#06-designmrtmdisplaynodedisplaysysml-2)
  - [06-design/mrtm/display/display-item/NodeDisplayItem.sysml (2)](#06-designmrtmdisplaydisplay-itemnodedisplayitemsysml-2)
  - [06-design/mrtm/display/oled/NodeOled.sysml (2)](#06-designmrtmdisplayolednodeoledsysml-2)
  - [06-design/mrtm/logging/NodeLogging.sysml (2)](#06-designmrtmloggingnodeloggingsysml-2)
  - [06-design/mrtm/logging/log-item/NodeLogItem.sysml (2)](#06-designmrtmlogginglog-itemnodelogitemsysml-2)
  - [06-design/mrtm/logging/rtc/NodeRtc.sysml (2)](#06-designmrtmloggingrtcnodertcsysml-2)
  - [06-design/mrtm/logging/usb-item/NodeUsbItem.sysml (2)](#06-designmrtmloggingusb-itemnodeusbitemsysml-2)
  - [06-design/mrtm/power/NodePower.sysml (2)](#06-designmrtmpowernodepowersysml-2)
  - [06-design/mrtm/power/battery/NodeBattery.sysml (2)](#06-designmrtmpowerbatterynodebatterysysml-2)
  - [06-design/mrtm/power/power-item/NodePowerItem.sysml (2)](#06-designmrtmpowerpower-itemnodepoweritemsysml-2)
  - [06-design/mrtm/power/power-path/NodePowerPath.sysml (2)](#06-designmrtmpowerpower-pathnodepowerpathsysml-2)
  - [06-design/mrtm/sensing/NodeSensing.sysml (2)](#06-designmrtmsensingnodesensingsysml-2)
  - [06-design/mrtm/sensing/probe/NodeProbe.sysml (2)](#06-designmrtmsensingprobenodeprobesysml-2)
  - [06-design/mrtm/sensing/sensor-item/NodeSensorItem.sysml (2)](#06-designmrtmsensingsensor-itemnodesensoritemsysml-2)
  - [06-design/mrtm/supervision/NodeSupervision.sysml (2)](#06-designmrtmsupervisionnodesupervisionsysml-2)
  - [06-design/mrtm/supervision/mcu/NodeMcu.sysml (2)](#06-designmrtmsupervisionmcunodemcusysml-2)
  - [06-design/mrtm/supervision/supervisor-item/NodeSupervisorItem.sysml (2)](#06-designmrtmsupervisionsupervisor-itemnodesupervisoritemsysml-2)
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
  - [06-design/views/Alarm_blackbox_interfacesView.sysml (1)](#06-designviewsalarmblackboxinterfacesviewsysml-1)
  - [06-design/views/Alarm_whitebox_interconnectionView.sysml (1)](#06-designviewsalarmwhiteboxinterconnectionviewsysml-1)
  - [06-design/views/Backup_alarm_blackbox_interfacesView.sysml (1)](#06-designviewsbackupalarmblackbox_interfacesviewsysml-1)
  - [06-design/views/Backup_alarm_whitebox_interconnectionView.sysml (1)](#06-designviewsbackupalarmwhitebox_interconnectionviewsysml-1)
  - [06-design/views/Context_top_usecasesView.sysml (1)](#06-designviewscontexttopusecasesviewsysml-1)
  - [06-design/views/Display_blackbox_interfacesView.sysml (1)](#06-designviewsdisplayblackboxinterfacesviewsysml-1)
  - [06-design/views/Display_whitebox_interconnectionView.sysml (1)](#06-designviewsdisplaywhiteboxinterconnectionviewsysml-1)
  - [06-design/views/Logging_blackbox_interfacesView.sysml (1)](#06-designviewsloggingblackboxinterfacesviewsysml-1)
  - [06-design/views/Logging_whitebox_interconnectionView.sysml (1)](#06-designviewsloggingwhiteboxinterconnectionviewsysml-1)
  - [06-design/views/Power_blackbox_interfacesView.sysml (1)](#06-designviewspowerblackboxinterfacesviewsysml-1)
  - [06-design/views/Power_whitebox_interconnectionView.sysml (1)](#06-designviewspowerwhiteboxinterconnectionviewsysml-1)
  - [06-design/views/SanadRenderings.sysml (1)](#06-designviewssanadrenderingssysml-1)
  - [06-design/views/Sensing_blackbox_interfacesView.sysml (1)](#06-designviewssensingblackboxinterfacesviewsysml-1)
  - [06-design/views/Sensing_whitebox_interconnectionView.sysml (1)](#06-designviewssensingwhiteboxinterconnectionviewsysml-1)
  - [06-design/views/Supervision_blackbox_interfacesView.sysml (1)](#06-designviewssupervisionblackboxinterfacesviewsysml-1)
  - [06-design/views/Supervision_whitebox_interconnectionView.sysml (1)](#06-designviewssupervisionwhiteboxinterconnectionviewsysml-1)
  - [06-design/views/System_blackbox_interfacesView.sysml (1)](#06-designviewssystemblackboxinterfacesviewsysml-1)
  - [06-design/views/System_whitebox_interconnectionView.sysml (1)](#06-designviewssystemwhiteboxinterconnectionviewsysml-1)
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
  - [MRTM-ALI-003 (1)](#mrtm-ali-003-1)
  - [MRTM-ALM-001 (1)](#mrtm-alm-001-1)
  - [MRTM-ALM-002 (1)](#mrtm-alm-002-1)
  - [MRTM-ALM-003 (2)](#mrtm-alm-003-2)
  - [MRTM-ALM-004 (2)](#mrtm-alm-004-2)
  - [MRTM-ALM-005 (1)](#mrtm-alm-005-1)
  - [MRTM-ALM-006 (2)](#mrtm-alm-006-2)
  - [MRTM-ALM-007 (1)](#mrtm-alm-007-1)
  - [MRTM-ALM-008 (3)](#mrtm-alm-008-3)
  - [MRTM-BAT-001 (2)](#mrtm-bat-001-2)
  - [MRTM-BKA-001 (2)](#mrtm-bka-001-2)
  - [MRTM-BKA-002 (3)](#mrtm-bka-002-3)
  - [MRTM-BKD-001 (2)](#mrtm-bkd-001-2)
  - [MRTM-BKH-001 (4)](#mrtm-bkh-001-4)
  - [MRTM-BKT-001 (2)](#mrtm-bkt-001-2)
  - [MRTM-BZR-001 (3)](#mrtm-bzr-001-3)
  - [MRTM-DSI-001 (2)](#mrtm-dsi-001-2)
  - [MRTM-DSP-001 (1)](#mrtm-dsp-001-1)
  - [MRTM-DSP-002 (3)](#mrtm-dsp-002-3)
  - [MRTM-DSP-003 (2)](#mrtm-dsp-003-2)
  - [MRTM-ENV-001 (2)](#mrtm-env-001-2)
  - [MRTM-ENV-002 (2)](#mrtm-env-002-2)
  - [MRTM-ENV-003 (2)](#mrtm-env-003-2)
  - [MRTM-ENV-004 (3)](#mrtm-env-004-3)
  - [MRTM-EXI-002 (1)](#mrtm-exi-002-1)
  - [MRTM-IFC-002 (1)](#mrtm-ifc-002-1)
  - [MRTM-IFC-003 (2)](#mrtm-ifc-003-2)
  - [MRTM-IFC-004 (3)](#mrtm-ifc-004-3)
  - [MRTM-IND-001 (2)](#mrtm-ind-001-2)
  - [MRTM-IND-002 (3)](#mrtm-ind-002-3)
  - [MRTM-LGI-001 (1)](#mrtm-lgi-001-1)
  - [MRTM-LOG-001 (2)](#mrtm-log-001-2)
  - [MRTM-LOG-002 (2)](#mrtm-log-002-2)
  - [MRTM-LOG-003 (1)](#mrtm-log-003-1)
  - [MRTM-LOG-004 (3)](#mrtm-log-004-3)
  - [MRTM-MCU-001 (2)](#mrtm-mcu-001-2)
  - [MRTM-MNT-001 (2)](#mrtm-mnt-001-2)
  - [MRTM-OLD-001 (3)](#mrtm-old-001-3)
  - [MRTM-PPT-001 (2)](#mrtm-ppt-001-2)
  - [MRTM-PRB-001 (2)](#mrtm-prb-001-2)
  - [MRTM-PRB-002 (3)](#mrtm-prb-002-3)
  - [MRTM-PRB-003 (3)](#mrtm-prb-003-3)
  - [MRTM-PRF-001 (2)](#mrtm-prf-001-2)
  - [MRTM-PRF-002 (1)](#mrtm-prf-002-1)
  - [MRTM-PRF-003 (1)](#mrtm-prf-003-1)
  - [MRTM-PRF-004 (2)](#mrtm-prf-004-2)
  - [MRTM-PWI-002 (1)](#mrtm-pwi-002-1)
  - [MRTM-PWR-001 (2)](#mrtm-pwr-001-2)
  - [MRTM-PWR-002 (2)](#mrtm-pwr-002-2)
  - [MRTM-RTC-001 (3)](#mrtm-rtc-001-3)
  - [MRTM-SAF-001 (2)](#mrtm-saf-001-2)
  - [MRTM-SAF-003 (2)](#mrtm-saf-003-2)
  - [MRTM-SAF-004 (2)](#mrtm-saf-004-2)
  - [MRTM-SAF-005 (1)](#mrtm-saf-005-1)
  - [MRTM-SAF-006 (1)](#mrtm-saf-006-1)
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
  - [MRTM-SEN-001 (3)](#mrtm-sen-001-3)
  - [MRTM-SEN-002 (1)](#mrtm-sen-002-1)
  - [MRTM-SEN-003 (3)](#mrtm-sen-003-3)
  - [MRTM-SEN-004 (3)](#mrtm-sen-004-3)
  - [MRTM-SNI-001 (1)](#mrtm-sni-001-1)
  - [MRTM-STK-001 (1)](#mrtm-stk-001-1)
  - [MRTM-STK-002 (1)](#mrtm-stk-002-1)
  - [MRTM-STK-003 (2)](#mrtm-stk-003-2)
  - [MRTM-STK-004 (2)](#mrtm-stk-004-2)
  - [MRTM-STK-005 (1)](#mrtm-stk-005-1)
  - [MRTM-STK-006 (1)](#mrtm-stk-006-1)
  - [MRTM-STK-007 (2)](#mrtm-stk-007-2)
  - [MRTM-STK-008 (3)](#mrtm-stk-008-3)
  - [MRTM-SUP-001 (3)](#mrtm-sup-001-3)
  - [MRTM-SUP-002 (2)](#mrtm-sup-002-2)
  - [MRTM-SUP-003 (2)](#mrtm-sup-003-2)
  - [MRTM-SUP-004 (1)](#mrtm-sup-004-1)
  - [MRTM-SVI-001 (1)](#mrtm-svi-001-1)
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
  - [MRTM-USI-001 (3)](#mrtm-usi-001-3)
  - [MRTM-USI-002 (2)](#mrtm-usi-002-2)

## Findings by severity

### Warnings (167)

#### `allocation-target-undeclared` (27)

| Requirement | Message |
|---|---|
| 06-design/context/NodeContext.sysml | The model allocates to "monitor", which no component artifact declares |
| 06-design/mrtm/alarm/NodeAlarm.sysml | The model allocates to "alarm", which no component artifact declares |
| 06-design/mrtm/alarm/alarm-item/NodeAlarmItem.sysml | The model allocates to "alarmSwItem.alarmMgr", which no component artifact declares |
| 06-design/mrtm/alarm/backup-alarm/NodeBackupAlarm.sysml | The model allocates to "backupAlarm", which no component artifact declares |
| 06-design/mrtm/alarm/backup-alarm/backup-driver/NodeBackupDriver.sysml | The model allocates to "backupDriver", which no component artifact declares |
| 06-design/mrtm/alarm/backup-alarm/backup-timer/NodeBackupTimer.sysml | The model allocates to "backupTimer", which no component artifact declares |
| 06-design/mrtm/alarm/backup-alarm/hold-up/NodeHoldUp.sysml | The model allocates to "holdUp", which no component artifact declares |
| 06-design/mrtm/alarm/buzzer/NodeBuzzer.sysml | The model allocates to "alarmBuzzer", which no component artifact declares |
| 06-design/mrtm/alarm/excursion-item/NodeExcursionItem.sysml | The model allocates to "excursionSwItem.limitEvaluator", which no component artifact declares |
| 06-design/mrtm/alarm/indicators/NodeIndicators.sysml | The model allocates to "indicators", which no component artifact declares |
| 06-design/mrtm/display/NodeDisplay.sysml | The model allocates to "display", which no component artifact declares |
| 06-design/mrtm/display/display-item/NodeDisplayItem.sysml | The model allocates to "displaySwItem.displayMgr", which no component artifact declares |
| 06-design/mrtm/display/oled/NodeOled.sysml | The model allocates to "oled", which no component artifact declares |
| 06-design/mrtm/logging/NodeLogging.sysml | The model allocates to "logging", which no component artifact declares |
| 06-design/mrtm/logging/log-item/NodeLogItem.sysml | The model allocates to "logSwItem.eventLog", which no component artifact declares |
| 06-design/mrtm/logging/rtc/NodeRtc.sysml | The model allocates to "rtc", which no component artifact declares |
| 06-design/mrtm/logging/usb-item/NodeUsbItem.sysml | The model allocates to "usbSwItem.usbExport", which no component artifact declares |
| 06-design/mrtm/power/NodePower.sysml | The model allocates to "power", which no component artifact declares |
| 06-design/mrtm/power/battery/NodeBattery.sysml | The model allocates to "mainBattery", which no component artifact declares |
| 06-design/mrtm/power/power-item/NodePowerItem.sysml | The model allocates to "powerSwItem.powerMon", which no component artifact declares |
| 06-design/mrtm/power/power-path/NodePowerPath.sysml | The model allocates to "supplyPath", which no component artifact declares |
| 06-design/mrtm/sensing/NodeSensing.sysml | The model allocates to "sensing", which no component artifact declares |
| 06-design/mrtm/sensing/probe/NodeProbe.sysml | The model allocates to "probe", which no component artifact declares |
| 06-design/mrtm/sensing/sensor-item/NodeSensorItem.sysml | The model allocates to "sensorSwItem.sensorSampler", which no component artifact declares |
| 06-design/mrtm/supervision/NodeSupervision.sysml | The model allocates to "supervision", which no component artifact declares |
| 06-design/mrtm/supervision/mcu/NodeMcu.sysml | The model allocates to "mcu", which no component artifact declares |
| 06-design/mrtm/supervision/supervisor-item/NodeSupervisorItem.sysml | The model allocates to "supervisorSwItem.wdtKicker", which no component artifact declares |

#### `conflicting-requirements` (1)

| Requirement | Message |
|---|---|
| MRTM-ALM-003 | _(candidate — inferred, needs human judgement)_ MRTM-ALM-003 says 1 s, MRTM-SYS-003 5 s — make them agree |

#### `duplicate-requirement` (1)

| Requirement | Message |
|---|---|
| MRTM-EXI-002 | _(candidate — inferred, needs human judgement)_ MRTM-EXI-002 repeats MRTM-EXI-003 (92 % of its words) — merge them, or say what differs |

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
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-IFC-002 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-IFC-002 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-PRF-002 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-002 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-002 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-006 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-008 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-010 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-011 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-014 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-015 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-017 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-019 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | MRTM-SAF-019 is allocated to monitor but claimed by code in alarmMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-SAF-017 is allocated to monitor but claimed by code in configMgr. |
| 10-src/firmware/components/config_mgr/src/config_mgr.c | MRTM-SAF-017 is allocated to monitor but claimed by code in configMgr. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-SAF-007 is allocated to monitor but claimed by code in diagnostics. |
| 10-src/firmware/components/diagnostics/src/diagnostics.c | MRTM-SAF-023 is allocated to monitor but claimed by code in diagnostics. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-IFC-004 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-002 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-MNT-003 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-PRF-004 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-PRF-004 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-012 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-016 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/display_mgr/src/display_mgr.cpp | MRTM-SAF-021 is allocated to monitor but claimed by code in displayMgr. |
| 10-src/firmware/components/event_log/src/event_log.c | MRTM-SAF-018 is allocated to monitor but claimed by code in eventLog. |
| 10-src/firmware/components/history_ring/src/history_ring.c | MRTM-SAF-018 is allocated to monitor but claimed by code in historyRing. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-SAF-005 is allocated to monitor but claimed by code in powerMon. |
| 10-src/firmware/components/power_mon/src/power_mon.c | MRTM-SAF-008 is allocated to monitor but claimed by code in powerMon. |
| 10-src/firmware/components/rtc_clock/src/rtc_clock.c | MRTM-SAF-022 is allocated to monitor but claimed by code in rtcClock. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-IFC-001 is allocated to monitor but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-IFC-001 is allocated to monitor but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-PRF-001 is allocated to monitor but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-SAF-003 is allocated to monitor but claimed by code in sensorSampler. |
| 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | MRTM-SAF-003 is allocated to monitor but claimed by code in sensorSampler. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to monitor but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to monitor but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-IFC-003 is allocated to monitor but claimed by code in usbExport. |
| 10-src/firmware/components/usb_export/src/usb_export.c | MRTM-PRF-003 is allocated to monitor but claimed by code in usbExport. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-004 is allocated to monitor but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-009 is allocated to monitor but claimed by code in wdtKicker. |
| 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | MRTM-SAF-010 is allocated to monitor but claimed by code in wdtKicker. |

#### `missing-case` (1)

| Requirement | Message |
|---|---|
| MRTM-ALM-006 | Nothing verifies MRTM-ALM-006 — write a case for it, or record why it needs none |

#### `missing-result` (46)

| Requirement | Message |
|---|---|
| MRTM-ALM-008 | Nothing in the declared test reports says what happened when MRTM-ALM-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BAT-001 | Nothing in the declared test reports says what happened when MRTM-BAT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BKA-001 | Nothing in the declared test reports says what happened when MRTM-BKA-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BKA-002 | Nothing in the declared test reports says what happened when MRTM-BKA-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BKD-001 | Nothing in the declared test reports says what happened when MRTM-BKD-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BKH-001 | Nothing in the declared test reports says what happened when MRTM-BKH-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BKT-001 | Nothing in the declared test reports says what happened when MRTM-BKT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-BZR-001 | Nothing in the declared test reports says what happened when MRTM-BZR-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-DSP-002 | Nothing in the declared test reports says what happened when MRTM-DSP-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-DSP-003 | Nothing in the declared test reports says what happened when MRTM-DSP-003's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-001 | Nothing in the declared test reports says what happened when MRTM-ENV-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-002 | Nothing in the declared test reports says what happened when MRTM-ENV-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-003 | Nothing in the declared test reports says what happened when MRTM-ENV-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-ENV-004 | Nothing in the declared test reports says what happened when MRTM-ENV-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IFC-004 | Nothing in the declared test reports says what happened when MRTM-IFC-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IND-001 | Nothing in the declared test reports says what happened when MRTM-IND-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-IND-002 | Nothing in the declared test reports says what happened when MRTM-IND-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LOG-001 | Nothing in the declared test reports says what happened when MRTM-LOG-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LOG-002 | Nothing in the declared test reports says what happened when MRTM-LOG-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LOG-003 | Nothing in the declared test reports says what happened when MRTM-LOG-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-LOG-004 | Nothing in the declared test reports says what happened when MRTM-LOG-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MCU-001 | Nothing in the declared test reports says what happened when MRTM-MCU-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-MNT-001 | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-OLD-001 | Nothing in the declared test reports says what happened when MRTM-OLD-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PPT-001 | Nothing in the declared test reports says what happened when MRTM-PPT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PRB-001 | Nothing in the declared test reports says what happened when MRTM-PRB-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PRB-002 | Nothing in the declared test reports says what happened when MRTM-PRB-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PRB-003 | Nothing in the declared test reports says what happened when MRTM-PRB-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PWR-001 | Nothing in the declared test reports says what happened when MRTM-PWR-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-PWR-002 | Nothing in the declared test reports says what happened when MRTM-PWR-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-RTC-001 | Nothing in the declared test reports says what happened when MRTM-RTC-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-001 | Nothing in the declared test reports says what happened when MRTM-SAF-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-013 | Nothing in the declared test reports says what happened when MRTM-SAF-013's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SAF-020 | Nothing in the declared test reports says what happened when MRTM-SAF-020's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SEN-001 | Nothing in the declared test reports says what happened when MRTM-SEN-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SEN-003 | Nothing in the declared test reports says what happened when MRTM-SEN-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SEN-004 | Nothing in the declared test reports says what happened when MRTM-SEN-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-001 | Nothing in the declared test reports says what happened when MRTM-STK-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-003 | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-004 | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-005 | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-007 | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-STK-008 | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SUP-001 | Nothing in the declared test reports says what happened when MRTM-SUP-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SUP-002 | Nothing in the declared test reports says what happened when MRTM-SUP-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| MRTM-SYS-016 | Nothing in the declared test reports says what happened when MRTM-SYS-016's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

#### `parent-child-inconsistency` (10)

| Requirement | Message |
|---|---|
| MRTM-ALM-001 | MRTM-ALM-001 is refined at 3 different levels — move the odd child |
| MRTM-ALM-003 | MRTM-ALM-003 is refined at 2 different levels — move the odd child |
| MRTM-ALM-004 | MRTM-ALM-004 is refined at 2 different levels — move the odd child |
| MRTM-ALM-005 | MRTM-ALM-005 is refined at 3 different levels — move the odd child |
| MRTM-BKA-001 | MRTM-BKA-001 is refined at 2 different levels — move the odd child |
| MRTM-DSP-002 | MRTM-DSP-002 is refined at 2 different levels — move the odd child |
| MRTM-SAF-010 | MRTM-SAF-010 is refined at 2 different levels — move the odd child |
| MRTM-SEN-002 | MRTM-SEN-002 is refined at 2 different levels — move the odd child |
| MRTM-SEN-004 | MRTM-SEN-004 is refined at 2 different levels — move the odd child |
| MRTM-SUP-001 | MRTM-SUP-001 is refined at 2 different levels — move the odd child |

#### `sysml-not-read` (19)

| Requirement | Message |
|---|---|
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "acknowledge→silence" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "earlyLight→sounding" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "logStart→acknowledge" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "sample→earlyLight" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "showWarning→logStart" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "silence→logAck" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "sounding→warning" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "warmAir→sample" was read but not drawn |
| 06-design/mrtm/SystemExcursion.sysml | `succession` naming "warning→showWarning" was read but not drawn |
| 06-design/mrtm/SystemPowerLoss.sysml | `succession` naming "batteryLow→lowBatterySound" was read but not drawn |
| 06-design/mrtm/SystemPowerLoss.sysml | `succession` naming "logLoss→batteryLow" was read but not drawn |
| 06-design/mrtm/SystemPowerLoss.sysml | `succession` naming "lostEvent→logLoss" was read but not drawn |
| 06-design/mrtm/SystemPowerLoss.sysml | `succession` naming "lowBatterySound→pulsesStop" was read but not drawn |
| 06-design/mrtm/SystemPowerLoss.sysml | `succession` naming "mainsLost→lostEvent" was read but not drawn |
| 06-design/mrtm/SystemPowerLoss.sysml | `succession` naming "pulsesStop→backupSound" was read but not drawn |
| 06-design/mrtm/SystemProbeFault.sysml | `succession` naming "faultSound→faultState" was read but not drawn |
| 06-design/mrtm/SystemProbeFault.sysml | `succession` naming "faultState→showFault" was read but not drawn |
| 06-design/mrtm/SystemProbeFault.sysml | `succession` naming "invalidSample→faultSound" was read but not drawn |
| 06-design/mrtm/SystemProbeFault.sysml | `succession` naming "showFault→logFault" was read but not drawn |

#### `undeclared-id-prefix` (4)

| Requirement | Message |
|---|---|
| MRTM-ALI-001 | 31 reference(s) use the prefix "ADR", which no type declares |
| MRTM-DSI-001 | 4 reference(s) use the prefix "SAF", which no type declares |
| MRTM-SYS-024 | 1 reference(s) use the prefix "CR", which no type declares |
| MRTM-USI-001 | 2 reference(s) use the prefix "USI", which no type declares |

### Information (227)

#### `decimal-format` (1)

| Requirement | Message |
|---|---|
| MRTM-LGI-001 | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |

#### `indefinite-article` (40)

| Requirement | Message |
|---|---|
| MRTM-ALI-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ALM-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ALM-006 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-BZR-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-DSI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-DSP-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IND-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-LOG-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-MNT-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-OLD-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRB-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRB-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-RTC-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SEN-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SEN-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SEN-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SNI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SUP-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SUP-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SVI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-024 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-USI-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-USI-002 | an indefinite article leaves which one open - use "the" and name the item |

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `logical-expression` (4)

| Requirement | Message |
|---|---|
| MRTM-ALM-008 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-BKA-002 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-BKH-001 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| MRTM-SAF-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

#### `not-a-requirement` (39)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-001.md | MRTM-ALI-001.md: not a "alarm" requirement: its name "MRTM-ALI-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-002.md | MRTM-ALI-002.md: not a "alarm" requirement: its name "MRTM-ALI-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-003.md | MRTM-ALI-003.md: not a "alarm" requirement: its name "MRTM-ALI-003" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-003.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-004.md | MRTM-ALI-004.md: not a "alarm" requirement: its name "MRTM-ALI-004" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-004.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/MRTM-BKA-001.md | MRTM-BKA-001.md: not a "alarm" requirement: its name "MRTM-BKA-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKA-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/MRTM-BKA-002.md | MRTM-BKA-002.md: not a "alarm" requirement: its name "MRTM-BKA-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKA-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-driver/MRTM-BKD-001.md | MRTM-BKD-001.md: not a "alarm" requirement: its name "MRTM-BKD-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKD-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-driver/MRTM-BKD-001.md | MRTM-BKD-001.md: not a "backup-alarm" requirement: its name "MRTM-BKD-001" does not match this type's naming convention (an ID starting "MRTM-BKA-"). If it IS one, rename it to match; if not, add "MRTM-BKD-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-timer/MRTM-BKT-001.md | MRTM-BKT-001.md: not a "alarm" requirement: its name "MRTM-BKT-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKT-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-timer/MRTM-BKT-001.md | MRTM-BKT-001.md: not a "backup-alarm" requirement: its name "MRTM-BKT-001" does not match this type's naming convention (an ID starting "MRTM-BKA-"). If it IS one, rename it to match; if not, add "MRTM-BKT-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/hold-up/MRTM-BKH-001.md | MRTM-BKH-001.md: not a "alarm" requirement: its name "MRTM-BKH-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKH-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/hold-up/MRTM-BKH-001.md | MRTM-BKH-001.md: not a "backup-alarm" requirement: its name "MRTM-BKH-001" does not match this type's naming convention (an ID starting "MRTM-BKA-"). If it IS one, rename it to match; if not, add "MRTM-BKH-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/buzzer/MRTM-BZR-001.md | MRTM-BZR-001.md: not a "alarm" requirement: its name "MRTM-BZR-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BZR-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-001.md | MRTM-EXI-001.md: not a "alarm" requirement: its name "MRTM-EXI-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-EXI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-002.md | MRTM-EXI-002.md: not a "alarm" requirement: its name "MRTM-EXI-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-EXI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-003.md | MRTM-EXI-003.md: not a "alarm" requirement: its name "MRTM-EXI-003" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-EXI-003.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/indicators/MRTM-IND-001.md | MRTM-IND-001.md: not a "alarm" requirement: its name "MRTM-IND-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-IND-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/indicators/MRTM-IND-002.md | MRTM-IND-002.md: not a "alarm" requirement: its name "MRTM-IND-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-IND-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/display-item/MRTM-DSI-001.md | MRTM-DSI-001.md: not a "display" requirement: its name "MRTM-DSI-001" does not match this type's naming convention (an ID starting "MRTM-DSP-"). If it IS one, rename it to match; if not, add "MRTM-DSI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/display-item/MRTM-DSI-002.md | MRTM-DSI-002.md: not a "display" requirement: its name "MRTM-DSI-002" does not match this type's naming convention (an ID starting "MRTM-DSP-"). If it IS one, rename it to match; if not, add "MRTM-DSI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/oled/MRTM-OLD-001.md | MRTM-OLD-001.md: not a "display" requirement: its name "MRTM-OLD-001" does not match this type's naming convention (an ID starting "MRTM-DSP-"). If it IS one, rename it to match; if not, add "MRTM-OLD-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/log-item/MRTM-LGI-001.md | MRTM-LGI-001.md: not a "logging" requirement: its name "MRTM-LGI-001" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-LGI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/log-item/MRTM-LGI-002.md | MRTM-LGI-002.md: not a "logging" requirement: its name "MRTM-LGI-002" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-LGI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/rtc/MRTM-RTC-001.md | MRTM-RTC-001.md: not a "logging" requirement: its name "MRTM-RTC-001" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-RTC-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/usb-item/MRTM-USI-001.md | MRTM-USI-001.md: not a "logging" requirement: its name "MRTM-USI-001" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-USI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/usb-item/MRTM-USI-002.md | MRTM-USI-002.md: not a "logging" requirement: its name "MRTM-USI-002" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-USI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/battery/MRTM-BAT-001.md | MRTM-BAT-001.md: not a "power" requirement: its name "MRTM-BAT-001" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-BAT-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-item/MRTM-PWI-001.md | MRTM-PWI-001.md: not a "power" requirement: its name "MRTM-PWI-001" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-PWI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-item/MRTM-PWI-002.md | MRTM-PWI-002.md: not a "power" requirement: its name "MRTM-PWI-002" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-PWI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-path/MRTM-PPT-001.md | MRTM-PPT-001.md: not a "power" requirement: its name "MRTM-PPT-001" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-PPT-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-001.md | MRTM-PRB-001.md: not a "sensing" requirement: its name "MRTM-PRB-001" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-PRB-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-002.md | MRTM-PRB-002.md: not a "sensing" requirement: its name "MRTM-PRB-002" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-PRB-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-003.md | MRTM-PRB-003.md: not a "sensing" requirement: its name "MRTM-PRB-003" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-PRB-003.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/sensor-item/MRTM-SNI-001.md | MRTM-SNI-001.md: not a "sensing" requirement: its name "MRTM-SNI-001" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-SNI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/sensor-item/MRTM-SNI-002.md | MRTM-SNI-002.md: not a "sensing" requirement: its name "MRTM-SNI-002" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-SNI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/mcu/MRTM-MCU-001.md | MRTM-MCU-001.md: not a "supervision" requirement: its name "MRTM-MCU-001" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-MCU-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-001.md | MRTM-SVI-001.md: not a "supervision" requirement: its name "MRTM-SVI-001" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-SVI-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-002.md | MRTM-SVI-002.md: not a "supervision" requirement: its name "MRTM-SVI-002" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-SVI-002.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-003.md | MRTM-SVI-003.md: not a "supervision" requirement: its name "MRTM-SVI-003" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-SVI-003.md" to `ignore` in .ejadah/rew/config.yaml. |

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

#### `sysml-unresolved-import` (63)

| Requirement | Message |
|---|---|
| 06-design/context/NodeContext.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/hardware/MrtmHardware.sysml | line 11: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/NodeMrtm.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/NodePorts.sysml | line 2: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/NodeAlarm.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/alarm-item/NodeAlarmItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/backup-alarm/NodeBackupAlarm.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/backup-alarm/backup-driver/NodeBackupDriver.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/backup-alarm/backup-timer/NodeBackupTimer.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/backup-alarm/hold-up/NodeHoldUp.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/buzzer/NodeBuzzer.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/excursion-item/NodeExcursionItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/alarm/indicators/NodeIndicators.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/display/NodeDisplay.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/display/display-item/NodeDisplayItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/display/oled/NodeOled.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/logging/NodeLogging.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/logging/log-item/NodeLogItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/logging/rtc/NodeRtc.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/logging/usb-item/NodeUsbItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/power/NodePower.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/power/battery/NodeBattery.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/power/power-item/NodePowerItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/power/power-path/NodePowerPath.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/sensing/NodeSensing.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/sensing/probe/NodeProbe.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/sensing/sensor-item/NodeSensorItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/supervision/NodeSupervision.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/supervision/mcu/NodeMcu.sysml | line 3: `import ScalarValues` names nothing this project declares |
| 06-design/mrtm/supervision/supervisor-item/NodeSupervisorItem.sysml | line 3: `import ScalarValues` names nothing this project declares |
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
| 06-design/views/Alarm_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Alarm_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Backup_alarm_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Backup_alarm_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Context_top_usecasesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Display_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Display_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Logging_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Logging_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Power_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Power_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |
| 06-design/views/Sensing_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Sensing_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Supervision_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/Supervision_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/System_blackbox_interfacesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/System_whitebox_interconnectionView.sysml | line 22: `import ScalarValues` names nothing this project declares |

#### `temporal-keyword` (1)

| Requirement | Message |
|---|---|
| MRTM-PWI-002 | "after" states an order, not a time - give the bound |

#### `undeclared-hazard` (16)

| Requirement | Message |
|---|---|
| MRTM-BAT-001 | _(candidate — inferred, needs human judgement)_ MRTM-BAT-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-BKD-001 | _(candidate — inferred, needs human judgement)_ MRTM-BKD-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-BKH-001 | _(candidate — inferred, needs human judgement)_ MRTM-BKH-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-BKT-001 | _(candidate — inferred, needs human judgement)_ MRTM-BKT-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-BZR-001 | _(candidate — inferred, needs human judgement)_ MRTM-BZR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-IND-001 | _(candidate — inferred, needs human judgement)_ MRTM-IND-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-IND-002 | _(candidate — inferred, needs human judgement)_ MRTM-IND-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-MCU-001 | _(candidate — inferred, needs human judgement)_ MRTM-MCU-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-OLD-001 | _(candidate — inferred, needs human judgement)_ MRTM-OLD-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PPT-001 | _(candidate — inferred, needs human judgement)_ MRTM-PPT-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PRB-001 | _(candidate — inferred, needs human judgement)_ MRTM-PRB-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PRB-002 | _(candidate — inferred, needs human judgement)_ MRTM-PRB-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PRB-003 | _(candidate — inferred, needs human judgement)_ MRTM-PRB-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-RTC-001 | _(candidate — inferred, needs human judgement)_ MRTM-RTC-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-USI-001 | _(candidate — inferred, needs human judgement)_ MRTM-USI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-USI-002 | _(candidate — inferred, needs human judgement)_ MRTM-USI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

#### `under-decomposition` (48)

| Requirement | Message |
|---|---|
| MRTM-ALM-002 | MRTM-ALM-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALM-007 | MRTM-ALM-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALM-008 | MRTM-ALM-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-BKA-002 | MRTM-BKA-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-DSP-001 | MRTM-DSP-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-DSP-003 | MRTM-DSP-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-001 | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-004 | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-002 | MRTM-IFC-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-003 | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-004 | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LOG-001 | MRTM-LOG-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LOG-002 | MRTM-LOG-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LOG-004 | MRTM-LOG-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-001 | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-002 | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-003 | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-004 | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PWR-001 | MRTM-PWR-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PWR-002 | MRTM-PWR-002 has one child, which restates it — merge the two, or add the sibling |
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
| MRTM-SEN-001 | MRTM-SEN-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SEN-003 | MRTM-SEN-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SUP-002 | MRTM-SUP-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SUP-003 | MRTM-SUP-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SUP-004 | MRTM-SUP-004 has one child, which restates it — merge the two, or add the sibling |
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
| MRTM-BKH-001 | "all power" quantifies a set the sentence never bounds |

#### `wide-impact` (6)

| Requirement | Message |
|---|---|
| MRTM-STK-002 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 37 other artifacts — 8 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 21 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-003 | Changing MRTM-STK-003 reaches 27 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-004 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-004 reaches 66 other artifacts — 15 already implemented, 15 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-006 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 31 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 13 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-007 | Changing MRTM-STK-007 reaches 33 other artifacts — 6 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-008 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-008 reaches 33 other artifacts — 6 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

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

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-ALI-001.md: not a "alarm" requirement: its name "MRTM-ALI-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-ALI-002.md: not a "alarm" requirement: its name "MRTM-ALI-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-003.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-ALI-003.md: not a "alarm" requirement: its name "MRTM-ALI-003" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-003.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/alarm-item/MRTM-ALI-004.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-ALI-004.md: not a "alarm" requirement: its name "MRTM-ALI-004" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-ALI-004.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/MRTM-BKA-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BKA-001.md: not a "alarm" requirement: its name "MRTM-BKA-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKA-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/MRTM-BKA-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BKA-002.md: not a "alarm" requirement: its name "MRTM-BKA-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKA-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-driver/MRTM-BKD-001.md (2)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BKD-001.md: not a "alarm" requirement: its name "MRTM-BKD-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKD-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| info | `not-a-requirement` | MRTM-BKD-001.md: not a "backup-alarm" requirement: its name "MRTM-BKD-001" does not match this type's naming convention (an ID starting "MRTM-BKA-"). If it IS one, rename it to match; if not, add "MRTM-BKD-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/backup-timer/MRTM-BKT-001.md (2)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BKT-001.md: not a "alarm" requirement: its name "MRTM-BKT-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKT-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| info | `not-a-requirement` | MRTM-BKT-001.md: not a "backup-alarm" requirement: its name "MRTM-BKT-001" does not match this type's naming convention (an ID starting "MRTM-BKA-"). If it IS one, rename it to match; if not, add "MRTM-BKT-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/backup-alarm/hold-up/MRTM-BKH-001.md (2)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BKH-001.md: not a "alarm" requirement: its name "MRTM-BKH-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BKH-001.md" to `ignore` in .ejadah/rew/config.yaml. |
| info | `not-a-requirement` | MRTM-BKH-001.md: not a "backup-alarm" requirement: its name "MRTM-BKH-001" does not match this type's naming convention (an ID starting "MRTM-BKA-"). If it IS one, rename it to match; if not, add "MRTM-BKH-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/buzzer/MRTM-BZR-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BZR-001.md: not a "alarm" requirement: its name "MRTM-BZR-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-BZR-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-EXI-001.md: not a "alarm" requirement: its name "MRTM-EXI-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-EXI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-EXI-002.md: not a "alarm" requirement: its name "MRTM-EXI-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-EXI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/excursion-item/MRTM-EXI-003.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-EXI-003.md: not a "alarm" requirement: its name "MRTM-EXI-003" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-EXI-003.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/indicators/MRTM-IND-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-IND-001.md: not a "alarm" requirement: its name "MRTM-IND-001" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-IND-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/alarm/indicators/MRTM-IND-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-IND-002.md: not a "alarm" requirement: its name "MRTM-IND-002" does not match this type's naming convention (an ID starting "MRTM-ALM-"). If it IS one, rename it to match; if not, add "MRTM-IND-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/display-item/MRTM-DSI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-DSI-001.md: not a "display" requirement: its name "MRTM-DSI-001" does not match this type's naming convention (an ID starting "MRTM-DSP-"). If it IS one, rename it to match; if not, add "MRTM-DSI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/display-item/MRTM-DSI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-DSI-002.md: not a "display" requirement: its name "MRTM-DSI-002" does not match this type's naming convention (an ID starting "MRTM-DSP-"). If it IS one, rename it to match; if not, add "MRTM-DSI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/display/oled/MRTM-OLD-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-OLD-001.md: not a "display" requirement: its name "MRTM-OLD-001" does not match this type's naming convention (an ID starting "MRTM-DSP-"). If it IS one, rename it to match; if not, add "MRTM-OLD-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/log-item/MRTM-LGI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-LGI-001.md: not a "logging" requirement: its name "MRTM-LGI-001" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-LGI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/log-item/MRTM-LGI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-LGI-002.md: not a "logging" requirement: its name "MRTM-LGI-002" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-LGI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/rtc/MRTM-RTC-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-RTC-001.md: not a "logging" requirement: its name "MRTM-RTC-001" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-RTC-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/usb-item/MRTM-USI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-USI-001.md: not a "logging" requirement: its name "MRTM-USI-001" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-USI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/logging/usb-item/MRTM-USI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-USI-002.md: not a "logging" requirement: its name "MRTM-USI-002" does not match this type's naming convention (an ID starting "MRTM-LOG-"). If it IS one, rename it to match; if not, add "MRTM-USI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/battery/MRTM-BAT-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-BAT-001.md: not a "power" requirement: its name "MRTM-BAT-001" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-BAT-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-item/MRTM-PWI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-PWI-001.md: not a "power" requirement: its name "MRTM-PWI-001" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-PWI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-item/MRTM-PWI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-PWI-002.md: not a "power" requirement: its name "MRTM-PWI-002" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-PWI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/power/power-path/MRTM-PPT-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-PPT-001.md: not a "power" requirement: its name "MRTM-PPT-001" does not match this type's naming convention (an ID starting "MRTM-PWR-"). If it IS one, rename it to match; if not, add "MRTM-PPT-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-PRB-001.md: not a "sensing" requirement: its name "MRTM-PRB-001" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-PRB-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-PRB-002.md: not a "sensing" requirement: its name "MRTM-PRB-002" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-PRB-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/probe/MRTM-PRB-003.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-PRB-003.md: not a "sensing" requirement: its name "MRTM-PRB-003" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-PRB-003.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/sensor-item/MRTM-SNI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-SNI-001.md: not a "sensing" requirement: its name "MRTM-SNI-001" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-SNI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/sensing/sensor-item/MRTM-SNI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-SNI-002.md: not a "sensing" requirement: its name "MRTM-SNI-002" does not match this type's naming convention (an ID starting "MRTM-SEN-"). If it IS one, rename it to match; if not, add "MRTM-SNI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/mcu/MRTM-MCU-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-MCU-001.md: not a "supervision" requirement: its name "MRTM-MCU-001" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-MCU-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-001.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-SVI-001.md: not a "supervision" requirement: its name "MRTM-SVI-001" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-SVI-001.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-002.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-SVI-002.md: not a "supervision" requirement: its name "MRTM-SVI-002" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-SVI-002.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-HVbw2r/tree/runs/02-magicgrid/03-requirements/mrtm/supervision/supervisor-item/MRTM-SVI-003.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | MRTM-SVI-003.md: not a "supervision" requirement: its name "MRTM-SVI-003" does not match this type's naming convention (an ID starting "MRTM-SUP-"). If it IS one, rename it to match; if not, add "MRTM-SVI-003.md" to `ignore` in .ejadah/rew/config.yaml. |

### 06-design/context/NodeContext.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "monitor", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/hardware/MrtmHardware.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 11: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/NodeMrtm.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/NodePorts.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 2: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/SystemExcursion.sysml (9)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "acknowledge→silence" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "earlyLight→sounding" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "logStart→acknowledge" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "sample→earlyLight" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "showWarning→logStart" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "silence→logAck" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "sounding→warning" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "warmAir→sample" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "warning→showWarning" was read but not drawn |

### 06-design/mrtm/SystemPowerLoss.sysml (6)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "batteryLow→lowBatterySound" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "logLoss→batteryLow" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "lostEvent→logLoss" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "lowBatterySound→pulsesStop" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "mainsLost→lostEvent" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "pulsesStop→backupSound" was read but not drawn |

### 06-design/mrtm/SystemProbeFault.sysml (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `sysml-not-read` | `succession` naming "faultSound→faultState" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "faultState→showFault" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "invalidSample→faultSound" was read but not drawn |
| warning | `sysml-not-read` | `succession` naming "showFault→logFault" was read but not drawn |

### 06-design/mrtm/alarm/NodeAlarm.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarm", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/alarm-item/NodeAlarmItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmSwItem.alarmMgr", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/backup-alarm/NodeBackupAlarm.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "backupAlarm", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/backup-alarm/backup-driver/NodeBackupDriver.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "backupDriver", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/backup-alarm/backup-timer/NodeBackupTimer.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "backupTimer", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/backup-alarm/hold-up/NodeHoldUp.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "holdUp", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/buzzer/NodeBuzzer.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "alarmBuzzer", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/excursion-item/NodeExcursionItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "excursionSwItem.limitEvaluator", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/alarm/indicators/NodeIndicators.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "indicators", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/display/NodeDisplay.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "display", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/display/display-item/NodeDisplayItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "displaySwItem.displayMgr", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/display/oled/NodeOled.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "oled", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/logging/NodeLogging.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "logging", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/logging/log-item/NodeLogItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "logSwItem.eventLog", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/logging/rtc/NodeRtc.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "rtc", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/logging/usb-item/NodeUsbItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "usbSwItem.usbExport", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/power/NodePower.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "power", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/power/battery/NodeBattery.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "mainBattery", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/power/power-item/NodePowerItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "powerSwItem.powerMon", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/power/power-path/NodePowerPath.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "supplyPath", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/sensing/NodeSensing.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "sensing", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/sensing/probe/NodeProbe.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "probe", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/sensing/sensor-item/NodeSensorItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "sensorSwItem.sensorSampler", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/supervision/NodeSupervision.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "supervision", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/supervision/mcu/NodeMcu.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "mcu", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

### 06-design/mrtm/supervision/supervisor-item/NodeSupervisorItem.sysml (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `allocation-target-undeclared` | The model allocates to "supervisorSwItem.wdtKicker", which no component artifact declares |
| info | `sysml-unresolved-import` | line 3: `import ScalarValues` names nothing this project declares |

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

### 06-design/views/Alarm_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Alarm_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Backup_alarm_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Backup_alarm_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Context_top_usecasesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Display_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Display_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Logging_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Logging_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Power_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Power_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/SanadRenderings.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import Views` names nothing this project declares |

### 06-design/views/Sensing_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Sensing_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Supervision_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/Supervision_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/System_blackbox_interfacesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/System_whitebox_interconnectionView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c (14)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-002 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-IFC-002 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-002 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-002 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-002 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-006 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-011 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-014 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-015 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-019 is allocated to monitor but claimed by code in alarmMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-019 is allocated to monitor but claimed by code in alarmMgr. |

### 10-src/firmware/components/config_mgr/src/config_mgr.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to monitor but claimed by code in configMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-017 is allocated to monitor but claimed by code in configMgr. |

### 10-src/firmware/components/diagnostics/src/diagnostics.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-007 is allocated to monitor but claimed by code in diagnostics. |
| warning | `implementation-outside-component` | MRTM-SAF-023 is allocated to monitor but claimed by code in diagnostics. |

### 10-src/firmware/components/display_mgr/src/display_mgr.cpp (11)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-004 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-002 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-MNT-003 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-004 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-PRF-004 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-012 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-016 is allocated to monitor but claimed by code in displayMgr. |
| warning | `implementation-outside-component` | MRTM-SAF-021 is allocated to monitor but claimed by code in displayMgr. |

### 10-src/firmware/components/event_log/src/event_log.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to monitor but claimed by code in eventLog. |

### 10-src/firmware/components/history_ring/src/history_ring.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-018 is allocated to monitor but claimed by code in historyRing. |

### 10-src/firmware/components/power_mon/src/power_mon.c (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-005 is allocated to monitor but claimed by code in powerMon. |
| warning | `implementation-outside-component` | MRTM-SAF-008 is allocated to monitor but claimed by code in powerMon. |

### 10-src/firmware/components/rtc_clock/src/rtc_clock.c (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-022 is allocated to monitor but claimed by code in rtcClock. |

### 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c (5)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-001 is allocated to monitor but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-IFC-001 is allocated to monitor but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-PRF-001 is allocated to monitor but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-SAF-003 is allocated to monitor but claimed by code in sensorSampler. |
| warning | `implementation-outside-component` | MRTM-SAF-003 is allocated to monitor but claimed by code in sensorSampler. |

### 10-src/firmware/components/usb_export/src/usb_export.c (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to monitor but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to monitor but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-IFC-003 is allocated to monitor but claimed by code in usbExport. |
| warning | `implementation-outside-component` | MRTM-PRF-003 is allocated to monitor but claimed by code in usbExport. |

### 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `implementation-outside-component` | MRTM-SAF-004 is allocated to monitor but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-SAF-009 is allocated to monitor but claimed by code in wdtKicker. |
| warning | `implementation-outside-component` | MRTM-SAF-010 is allocated to monitor but claimed by code in wdtKicker. |

### MRTM-ALI-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 31 reference(s) use the prefix "ADR", which no type declares |
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-ALI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ALM-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-ALM-001 is refined at 3 different levels — move the odd child |

### MRTM-ALM-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-ALM-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALM-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `conflicting-requirements` | _(candidate — inferred, needs human judgement)_ MRTM-ALM-003 says 1 s, MRTM-SYS-003 5 s — make them agree |
| warning | `parent-child-inconsistency` | MRTM-ALM-003 is refined at 2 different levels — move the odd child |

### MRTM-ALM-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-ALM-004 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ALM-005 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-ALM-005 is refined at 3 different levels — move the odd child |

### MRTM-ALM-006 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-case` | Nothing verifies MRTM-ALM-006 — write a case for it, or record why it needs none |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ALM-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-ALM-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALM-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-ALM-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `under-decomposition` | MRTM-ALM-008 has one child, which restates it — merge the two, or add the sibling |

### MRTM-BAT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BAT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-BAT-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-BKA-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BKA-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-BKA-001 is refined at 2 different levels — move the odd child |

### MRTM-BKA-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BKA-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `under-decomposition` | MRTM-BKA-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-BKD-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BKD-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-BKD-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-BKH-001 (4)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BKH-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-BKH-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `universal-quantifier` | "all power" quantifies a set the sentence never bounds |

### MRTM-BKT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BKT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-BKT-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-BZR-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-BZR-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-BZR-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DSI-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 4 reference(s) use the prefix "SAF", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-DSP-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-DSP-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-DSP-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-DSP-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-DSP-002 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-DSP-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-DSP-003's cases ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-DSP-003 has one child, which restates it — merge the two, or add the sibling |

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

### MRTM-EXI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-EXI-002 repeats MRTM-EXI-003 (92 % of its words) — merge them, or say what differs |

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

### MRTM-IND-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IND-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-IND-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-IND-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-IND-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-IND-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LGI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `decimal-format` | a range with no unit on it - give the unit, e.g. between 3 V and 4 V |

### MRTM-LOG-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LOG-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LOG-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LOG-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LOG-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-LOG-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LOG-003 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LOG-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-LOG-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-LOG-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-LOG-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-MCU-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MCU-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-MCU-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-MNT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-MNT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-OLD-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-OLD-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-OLD-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PPT-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PPT-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PPT-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PRB-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PRB-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PRB-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PRB-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PRB-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PRB-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PRB-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PRB-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PRB-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

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

### MRTM-PWI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `temporal-keyword` | "after" states an order, not a time - give the bound |

### MRTM-PWR-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PWR-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-PWR-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PWR-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-PWR-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-PWR-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-RTC-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-RTC-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-RTC-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

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

### MRTM-SAF-010 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SAF-010 is refined at 2 different levels — move the odd child |

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

### MRTM-SEN-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SEN-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SEN-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SEN-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SEN-002 is refined at 2 different levels — move the odd child |

### MRTM-SEN-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SEN-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SEN-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SEN-004 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SEN-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SEN-004 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SNI-001 (1)

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
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 37 other artifacts — 8 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 21 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-003's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-003 reaches 27 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-004's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-004 reaches 66 other artifacts — 15 already implemented, 15 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-005 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-005's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |

### MRTM-STK-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 31 other artifacts — 7 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 13 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-007's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `wide-impact` | Changing MRTM-STK-007 reaches 33 other artifacts — 6 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-STK-008's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-008 reaches 33 other artifacts — 6 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-SUP-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SUP-001's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| warning | `parent-child-inconsistency` | MRTM-SUP-001 is refined at 2 different levels — move the odd child |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SUP-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `missing-result` | Nothing in the declared test reports says what happened when MRTM-SUP-002's case ran. The chain reaches a procedure and stops: a case that exists and was never run is an obligation whose evidence is a plan, and a plan is not evidence. |
| info | `under-decomposition` | MRTM-SUP-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SUP-003 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SUP-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SUP-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SUP-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SVI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

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

### MRTM-USI-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "USI", which no type declares |
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-USI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-USI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-USI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

