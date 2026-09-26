// MRTM top-level partitions: the hardware item, the software system, and how
// the logical parts are allocated onto them. Software safety class C for every
// software item (ADR-0003). IEC 62304 §5.3.1, §5.3.4 (class of each item),
// §5.3.5 (segregation); ADR-0008 (partitioning).
private import ScalarValues::*;
private import ProjectRequirements::*;
private import MrtmLogical::*;
private import MrtmPhysical::*;

package MrtmPartitions {

    doc /* One hardware item, one software system of eight software items, and the allocation between them. */

    // Sanad's allocation matrix reads these two markers: logical rows, allocation-target columns.
    // "physical" here means "the side a function is allocated to" — the software item or the hardware item.
    metadata def logical;
    metadata def physical;

    part def MonitoringFirmware {
        doc /* The software system (IEC 62304 class C). Phase 7 refines each item with Sanad's software profile. */
        part sensorService;
        part excursionService;
        part alarmService;
        part displayService;
        part logService {
            attribute capacity : Integer;
            attribute warnAt : Integer;
        }
        part usbService;
        part powerService;
        part supervisor;

        satisfy 'MRTM-SYS-001' by sensorService;
        satisfy 'MRTM-SYS-002' by excursionService;
        satisfy 'MRTM-SYS-003' by alarmService;
        satisfy 'MRTM-SYS-005' by displayService;
        satisfy 'MRTM-SYS-015' by logService;
        satisfy 'MRTM-SYS-021' by logService;
        satisfy 'MRTM-SYS-022' by logService;
        satisfy 'MRTM-IFC-003' by usbService;
        satisfy 'MRTM-SAF-008' by powerService;
        satisfy 'MRTM-SAF-004' by supervisor;
    }

    part def MrtmSystem {
        #physical part hardware : MrtmUnit;
        #physical part firmware : MonitoringFirmware;
        #logical part functions : LogicalMonitor;

        allocate firmware to hardware;
        allocate functions to firmware;
        allocate functions.sampler to firmware.sensorService;
        allocate functions.probeSupervisor to firmware.sensorService;
        allocate functions.excursionDetector to firmware.excursionService;
        allocate functions.alarmManager to firmware.alarmService;
        allocate functions.statusDisplay to firmware.displayService;
        allocate functions.eventLogger to firmware.logService;
        allocate functions.historyServer to firmware.usbService;
        allocate functions.powerSupervisor to firmware.powerService;
        allocate functions.watchdog to firmware.supervisor;
        allocate functions.selfTest to firmware.supervisor;
        allocate functions.timekeeper to firmware.logService;

        satisfy 'MRTM-ENV-002' by hardware;
        satisfy 'MRTM-ENV-003' by hardware;
        satisfy 'MRTM-SAF-004' by firmware;
        satisfy 'MRTM-SAF-006' by firmware;
        satisfy 'MRTM-STK-001' by functions;
    }
}
