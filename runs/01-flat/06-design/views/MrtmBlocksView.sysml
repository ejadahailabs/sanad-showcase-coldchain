package MrtmBlocksView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmPartitions::*;
    private import MrtmPhysical::*;
    private import SanadRenderings::*;

    view 'mrtmBlocks' : StandardViewDefinitions::GeneralView {
        expose MrtmPartitions::**;
        expose MrtmPhysical::**;
        render asGeneralView;
    }
}

package 'Layout_Sanad' {

    comment /* Layout only. Written and read by this workbench.
       Every entry annotates an element by qualified name; no model element is modified.
       Delete this package and the model is unchanged. */

    private import ScalarValues::*;

    metadata def 'Layout' {
        attribute 'viewName' : String;
        attribute 'x' : Real;
        attribute 'y' : Real;
        attribute 'w' : Real;
        attribute 'h' : Real;
    }

    metadata def 'EdgeLayout' {
        attribute 'viewName' : String;
        attribute 'edge' : String;
        attribute 'bends' : String;
    }

    metadata 'l1' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware' {
        'viewName' = "mrtmBlocks";
        'x' = 5952;
        'y' = 536;
    }

    metadata 'l2' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'alarmService' {
        'viewName' = "mrtmBlocks";
        'x' = 5724;
        'y' = 1116;
    }

    metadata 'l3' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'displayService' {
        'viewName' = "mrtmBlocks";
        'x' = 5920;
        'y' = 1116;
    }

    metadata 'l4' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'excursionService' {
        'viewName' = "mrtmBlocks";
        'x' = 5528;
        'y' = 1116;
    }

    metadata 'l5' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'logService' {
        'viewName' = "mrtmBlocks";
        'x' = 6116;
        'y' = 1116;
    }

    metadata 'l6' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'powerService' {
        'viewName' = "mrtmBlocks";
        'x' = 6508;
        'y' = 1116;
    }

    metadata 'l7' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'sensorService' {
        'viewName' = "mrtmBlocks";
        'x' = 5332;
        'y' = 1116;
    }

    metadata 'l8' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'supervisor' {
        'viewName' = "mrtmBlocks";
        'x' = 6704;
        'y' = 1116;
    }

    metadata 'l9' : 'Layout' about 'MrtmPartitions'::'MonitoringFirmware'::'usbService' {
        'viewName' = "mrtmBlocks";
        'x' = 6312;
        'y' = 1116;
    }

    metadata 'l10' : 'Layout' about 'MrtmPartitions'::'MrtmSystem' {
        'viewName' = "mrtmBlocks";
        'x' = 3512;
        'y' = 44;
    }

    metadata 'l11' : 'Layout' about 'MrtmPartitions'::'MrtmSystem'::'firmware' {
        'viewName' = "mrtmBlocks";
        'x' = 5976;
        'y' = 228;
    }

    metadata 'l12' : 'Layout' about 'MrtmPartitions'::'MrtmSystem'::'functions' {
        'viewName' = "mrtmBlocks";
        'x' = 6936;
        'y' = 228;
    }

    metadata 'l13' : 'Layout' about 'MrtmPartitions'::'MrtmSystem'::'hardware' {
        'viewName' = "mrtmBlocks";
        'x' = 2552;
        'y' = 228;
    }

    metadata 'l14' : 'Layout' about 'MrtmPartitions'::'logical' {
        'viewName' = "mrtmBlocks";
        'x' = 24;
        'y' = 1668;
    }

    metadata 'l15' : 'Layout' about 'MrtmPartitions'::'physical' {
        'viewName' = "mrtmBlocks";
        'x' = 220;
        'y' = 1668;
    }

    metadata 'l16' : 'Layout' about 'MrtmPhysical'::'AckButton' {
        'viewName' = "mrtmBlocks";
        'x' = 1932;
        'y' = 1360;
    }

    metadata 'l17' : 'Layout' about 'MrtmPhysical'::'BackupAlarm' {
        'viewName' = "mrtmBlocks";
        'x' = 3096;
        'y' = 1420;
    }

    metadata 'l18' : 'Layout' about 'MrtmPhysical'::'Battery' {
        'viewName' = "mrtmBlocks";
        'x' = 2164;
        'y' = 1360;
    }

    metadata 'l19' : 'Layout' about 'MrtmPhysical'::'Buzzer' {
        'viewName' = "mrtmBlocks";
        'x' = 1304;
        'y' = 1360;
    }

    metadata 'l20' : 'Layout' about 'MrtmPhysical'::'Ds18b20Probe' {
        'viewName' = "mrtmBlocks";
        'x' = 476;
        'y' = 1360;
    }

    metadata 'l21' : 'Layout' about 'MrtmPhysical'::'Esp32Module' {
        'viewName' = "mrtmBlocks";
        'x' = 24;
        'y' = 1360;
    }

    metadata 'l22' : 'Layout' about 'MrtmPhysical'::'HoldUpCapacitor' {
        'viewName' = "mrtmBlocks";
        'x' = 3568;
        'y' = 1420;
    }

    metadata 'l23' : 'Layout' about 'MrtmPhysical'::'Led' {
        'viewName' = "mrtmBlocks";
        'x' = 1724;
        'y' = 1360;
    }

    metadata 'l24' : 'Layout' about 'MrtmPhysical'::'MrtmUnit' {
        'viewName' = "mrtmBlocks";
        'x' = 2560;
        'y' = 536;
    }

    metadata 'l25' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'ackButton' {
        'viewName' = "mrtmBlocks";
        'x' = 1932;
        'y' = 1116;
    }

    metadata 'l26' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'ackLine' {
        'viewName' = "mrtmBlocks";
        'x' = 4316;
        'y' = 1116;
    }

    metadata 'l27' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'backupAlarm' {
        'viewName' = "mrtmBlocks";
        'x' = 3140;
        'y' = 1144;
    }

    metadata 'l28' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'backupBuzzerLine' {
        'viewName' = "mrtmBlocks";
        'x' = 6492;
        'y' = 1144;
    }

    metadata 'l29' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'battery' {
        'viewName' = "mrtmBlocks";
        'x' = 2220;
        'y' = 1116;
    }

    metadata 'l30' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'batteryFeed' {
        'viewName' = "mrtmBlocks";
        'x' = 4540;
        'y' = 1116;
    }

    metadata 'l31' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'batterySenseLine' {
        'viewName' = "mrtmBlocks";
        'x' = 4780;
        'y' = 1116;
    }

    metadata 'l32' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'buzzer' {
        'viewName' = "mrtmBlocks";
        'x' = 1304;
        'y' = 1116;
    }

    metadata 'l33' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'buzzerLine' {
        'viewName' = "mrtmBlocks";
        'x' = 3616;
        'y' = 1116;
    }

    metadata 'l34' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'buzzerSenseLine' {
        'viewName' = "mrtmBlocks";
        'x' = 6776;
        'y' = 1144;
    }

    metadata 'l35' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'clockLink' {
        'viewName' = "mrtmBlocks";
        'x' = 3408;
        'y' = 1116;
    }

    metadata 'l36' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'displayLink' {
        'viewName' = "mrtmBlocks";
        'x' = 3188;
        'y' = 1116;
    }

    metadata 'l37' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'esp32' {
        'viewName' = "mrtmBlocks";
        'x' = 76;
        'y' = 1116;
    }

    metadata 'l38' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'greenLed' {
        'viewName' = "mrtmBlocks";
        'x' = 1512;
        'y' = 1116;
    }

    metadata 'l39' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'greenLine' {
        'viewName' = "mrtmBlocks";
        'x' = 4080;
        'y' = 1116;
    }

    metadata 'l40' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'holdUpCap' {
        'viewName' = "mrtmBlocks";
        'x' = 3600;
        'y' = 1144;
    }

    metadata 'l41' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'holdUpCharge' {
        'viewName' = "mrtmBlocks";
        'x' = 7052;
        'y' = 1144;
    }

    metadata 'l42' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'holdUpFeed' {
        'viewName' = "mrtmBlocks";
        'x' = 7300;
        'y' = 1144;
    }

    metadata 'l43' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'oled' {
        'viewName' = "mrtmBlocks";
        'x' = 780;
        'y' = 1116;
    }

    metadata 'l44' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'powerPath' {
        'viewName' = "mrtmBlocks";
        'x' = 2676;
        'y' = 1116;
    }

    metadata 'l45' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'probe' {
        'viewName' = "mrtmBlocks";
        'x' = 516;
        'y' = 1116;
    }

    metadata 'l46' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'probeLink' {
        'viewName' = "mrtmBlocks";
        'x' = 2964;
        'y' = 1116;
    }

    metadata 'l47' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'redLed' {
        'viewName' = "mrtmBlocks";
        'x' = 1724;
        'y' = 1116;
    }

    metadata 'l48' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'redLine' {
        'viewName' = "mrtmBlocks";
        'x' = 3856;
        'y' = 1116;
    }

    metadata 'l49' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'rtc' {
        'viewName' = "mrtmBlocks";
        'x' = 1040;
        'y' = 1116;
    }

    metadata 'l50' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'supplyFeed' {
        'viewName' = "mrtmBlocks";
        'x' = 5060;
        'y' = 1116;
    }

    metadata 'l51' : 'Layout' about 'MrtmPhysical'::'MrtmUnit'::'wdtKickLine' {
        'viewName' = "mrtmBlocks";
        'x' = 6240;
        'y' = 1144;
    }

    metadata 'l52' : 'Layout' about 'MrtmPhysical'::'OledPanel' {
        'viewName' = "mrtmBlocks";
        'x' = 780;
        'y' = 1360;
    }

    metadata 'l53' : 'Layout' about 'MrtmPhysical'::'PowerPath' {
        'viewName' = "mrtmBlocks";
        'x' = 2620;
        'y' = 1360;
    }

    metadata 'l54' : 'Layout' about 'MrtmPhysical'::'RtcChip' {
        'viewName' = "mrtmBlocks";
        'x' = 976;
        'y' = 1360;
    }

    metadata 'e1' : 'EdgeLayout' about 'MrtmPhysical'::'MrtmUnit'::'esp32' {
        'viewName' = "mrtmBlocks";
        'edge' = "MrtmPhysical::Esp32Module>defined by";
        'bends' = "172,1336";
    }
}
