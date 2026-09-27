package L3_log_item_structureView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeLogItemStructure::*;
    private import SanadRenderings::*;

    view 'L3_log_item_structure' : StandardViewDefinitions::InterconnectionView {
        expose NodeLogItemStructure::**;
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

    metadata 'l1' : 'Layout' about 'NodeLogItemStructure'::'alarmItem' {
        'viewName' = "L3_log_item_structure";
        'x' = 20;
        'y' = 20;
    }

    metadata 'l2' : 'Layout' about 'NodeLogItemStructure'::'eventLog' {
        'viewName' = "L3_log_item_structure";
        'x' = 360;
        'y' = 180;
    }

    metadata 'l3' : 'Layout' about 'NodeLogItemStructure'::'hardwareItem' {
        'viewName' = "L3_log_item_structure";
        'x' = 700;
        'y' = 420;
    }

    metadata 'l4' : 'Layout' about 'NodeLogItemStructure'::'historyRing' {
        'viewName' = "L3_log_item_structure";
        'x' = 700;
        'y' = 180;
    }

    metadata 'l5' : 'Layout' about 'NodeLogItemStructure'::'powerItem' {
        'viewName' = "L3_log_item_structure";
        'x' = 20;
        'y' = 180;
    }

    metadata 'l6' : 'Layout' about 'NodeLogItemStructure'::'rtcClock' {
        'viewName' = "L3_log_item_structure";
        'x' = 360;
        'y' = 420;
    }

    metadata 'l7' : 'Layout' about 'NodeLogItemStructure'::'supervisorItem' {
        'viewName' = "L3_log_item_structure";
        'x' = 20;
        'y' = 340;
    }

    metadata 'l8' : 'Layout' about 'NodeLogItemStructure'::'usbItem' {
        'viewName' = "L3_log_item_structure";
        'x' = 1040;
        'y' = 180;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L3_log_item_structure";
    }
}
