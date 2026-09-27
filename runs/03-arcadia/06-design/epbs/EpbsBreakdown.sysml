// EPBS — End-Product Breakdown Structure (Arcadia layer 5 of 5): what we build, buy, version and ship.
// Hand-written (RUN-03-ARCADIA). Each configuration item is identified per IEC 62304 §8.1.1.
package EpbsBreakdown {

    doc /* The shipped monitor as six configuration items. Each carries a part number and a revision (MRTM-CI-*). */

    part def FirmwareImage { doc /* One binary, one version, one SHA-256 checksum: all eight software items. */ }
    part def MainBoardAssembly { doc /* Microcontroller, clock, indicators, buzzer stage, power path. */ }
    part def ProbeAssembly { doc /* The field-replaceable probe on its cable. */ }
    part def DisplayModule { doc /* The bought display panel. */ }
    part def BackupAlarmBoardCi { doc /* The independent alarm board: timer, driver, hold-up store. */ }
    part def BatteryPack { doc /* The cell with its date code. */ }

    part def MonitorProduct {
        part firmwareImage : FirmwareImage;
        part mainBoard : MainBoardAssembly;
        part probeAssembly : ProbeAssembly;
        part displayModule : DisplayModule;
        part backupAlarmBoard : BackupAlarmBoardCi;
        part batteryPack : BatteryPack;
    }
    part product : MonitorProduct;
}
