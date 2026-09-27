package L2_hardware_item_partsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeHardwareItemParts::*;
    private import SanadRenderings::*;

    view 'L2_hardware_item_parts' : StandardViewDefinitions::InterconnectionView {
        expose NodeHardwareItemParts::**;
        render asInterconnectionView;
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

    metadata def 'PlainBoxes' {
        attribute 'viewName' : String;
    }

    metadata 'l1' : 'Layout' about 'NodeHardwareItemParts'::'ackButton' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 20;
        'y' = 240;
    }

    metadata 'l2' : 'Layout' about 'NodeHardwareItemParts'::'backupTimer' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 360;
        'y' = 480;
    }

    metadata 'l3' : 'Layout' about 'NodeHardwareItemParts'::'battery' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 20;
        'y' = 900;
    }

    metadata 'l4' : 'Layout' about 'NodeHardwareItemParts'::'buzzer' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 720;
        'y' = 400;
    }

    metadata 'l5' : 'Layout' about 'NodeHardwareItemParts'::'holdUp' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 360;
        'y' = 700;
    }

    metadata 'l6' : 'Layout' about 'NodeHardwareItemParts'::'mcu' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 360;
        'y' = 200;
    }

    metadata 'l7' : 'Layout' about 'NodeHardwareItemParts'::'oled' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 720;
        'y' = 20;
    }

    metadata 'l8' : 'Layout' about 'NodeHardwareItemParts'::'powerPath' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 20;
        'y' = 700;
    }

    metadata 'l9' : 'Layout' about 'NodeHardwareItemParts'::'probe' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l10' : 'Layout' about 'NodeHardwareItemParts'::'redLed' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 20;
        'y' = 440;
    }

    metadata 'l11' : 'Layout' about 'NodeHardwareItemParts'::'rtc' {
        'viewName' = "L2_hardware_item_parts";
        'x' = 720;
        'y' = 200;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L2_hardware_item_parts";
    }
}
