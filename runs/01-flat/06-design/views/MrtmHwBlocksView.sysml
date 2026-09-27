package MrtmHwBlocksView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmHardware::*;
    private import SanadRenderings::*;

    view 'mrtmHwBlocks' : StandardViewDefinitions::GeneralView {
        expose MrtmHardware::**;
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

    metadata 'l1' : 'Layout' about 'MrtmHardware'::'AnalogSenseWiring' {
        'viewName' = "mrtmHwBlocks";
        'x' = 856;
        'y' = 2200;
    }

    metadata 'l2' : 'Layout' about 'MrtmHardware'::'ButtonWiring' {
        'viewName' = "mrtmHwBlocks";
        'x' = 644;
        'y' = 2200;
    }

    metadata 'l3' : 'Layout' about 'MrtmHardware'::'ChargerPowerPath' {
        'viewName' = "mrtmHwBlocks";
        'x' = 348;
        'y' = 720;
    }

    metadata 'l4' : 'Layout' about 'MrtmHardware'::'Component' {
        'viewName' = "mrtmHwBlocks";
        'x' = 340;
        'y' = 1808;
    }

    metadata 'l5' : 'Layout' about 'MrtmHardware'::'Ds18b20' {
        'viewName' = "mrtmHwBlocks";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l6' : 'Layout' about 'MrtmHardware'::'Esp32S3Module' {
        'viewName' = "mrtmHwBlocks";
        'x' = 340;
        'y' = 1080;
    }

    metadata 'l7' : 'Layout' about 'MrtmHardware'::'GpioWiring' {
        'viewName' = "mrtmHwBlocks";
        'x' = 436;
        'y' = 2200;
    }

    metadata 'l8' : 'Layout' about 'MrtmHardware'::'I2cWiring' {
        'viewName' = "mrtmHwBlocks";
        'x' = 240;
        'y' = 2200;
    }

    metadata 'l9' : 'Layout' about 'MrtmHardware'::'IndicatorLed' {
        'viewName' = "mrtmHwBlocks";
        'x' = 360;
        'y' = 388;
    }

    metadata 'l10' : 'Layout' about 'MrtmHardware'::'LiIonCell' {
        'viewName' = "mrtmHwBlocks";
        'x' = 24;
        'y' = 720;
    }

    metadata 'l11' : 'Layout' about 'MrtmHardware'::'MrtmBoard' {
        'viewName' = "mrtmHwBlocks";
        'x' = 680;
        'y' = 1080;
    }

    metadata 'l12' : 'Layout' about 'MrtmHardware'::'MrtmBoard'::'mainsSenseLine' {
        'viewName' = "mrtmHwBlocks";
        'x' = 680;
        'y' = 1808;
    }

    metadata 'l13' : 'Layout' about 'MrtmHardware'::'Oled128x64' {
        'viewName' = "mrtmHwBlocks";
        'x' = 372;
        'y' = 44;
    }

    metadata 'l14' : 'Layout' about 'MrtmHardware'::'OneWireWiring' {
        'viewName' = "mrtmHwBlocks";
        'x' = 24;
        'y' = 2200;
    }

    metadata 'l15' : 'Layout' about 'MrtmHardware'::'PiezoBuzzerStage' {
        'viewName' = "mrtmHwBlocks";
        'x' = 24;
        'y' = 388;
    }

    metadata 'l16' : 'Layout' about 'MrtmHardware'::'SenseWiring' {
        'viewName' = "mrtmHwBlocks";
        'x' = 680;
        'y' = 2024;
    }

    metadata 'l17' : 'Layout' about 'MrtmHardware'::'Supercap' {
        'viewName' = "mrtmHwBlocks";
        'x' = 24;
        'y' = 1080;
    }

    metadata 'l18' : 'Layout' about 'MrtmHardware'::'TactileButton' {
        'viewName' = "mrtmHwBlocks";
        'x' = 580;
        'y' = 388;
    }

    metadata 'l19' : 'Layout' about 'MrtmHardware'::'TcxoRtc' {
        'viewName' = "mrtmHwBlocks";
        'x' = 712;
        'y' = 44;
    }

    metadata 'l20' : 'Layout' about 'MrtmHardware'::'WatchdogAlarmTimer' {
        'viewName' = "mrtmHwBlocks";
        'x' = 668;
        'y' = 720;
    }
}
