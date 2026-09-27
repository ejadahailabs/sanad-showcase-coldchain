package L3_alarm_item_structureView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeAlarmItemStructure::*;
    private import SanadRenderings::*;

    view 'L3_alarm_item_structure' : StandardViewDefinitions::InterconnectionView {
        expose NodeAlarmItemStructure::**;
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

    metadata 'l1' : 'Layout' about 'NodeAlarmItemStructure'::'alarmMgr' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 380;
        'y' = 200;
    }

    metadata 'l2' : 'Layout' about 'NodeAlarmItemStructure'::'displayItem' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 760;
        'y' = 20;
    }

    metadata 'l3' : 'Layout' about 'NodeAlarmItemStructure'::'excursionItem' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 20;
        'y' = 20;
    }

    metadata 'l4' : 'Layout' about 'NodeAlarmItemStructure'::'hardwareItem' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 760;
        'y' = 420;
    }

    metadata 'l5' : 'Layout' about 'NodeAlarmItemStructure'::'logItem' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 760;
        'y' = 220;
    }

    metadata 'l6' : 'Layout' about 'NodeAlarmItemStructure'::'powerItem' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 20;
        'y' = 220;
    }

    metadata 'l7' : 'Layout' about 'NodeAlarmItemStructure'::'supervisorItem' {
        'viewName' = "L3_alarm_item_structure";
        'x' = 20;
        'y' = 420;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L3_alarm_item_structure";
    }
}
