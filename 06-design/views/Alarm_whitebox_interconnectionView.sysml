package Alarm_whitebox_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeAlarmWhiteBox::*;
    private import SanadRenderings::*;

    view 'alarm_whitebox_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose NodeAlarmWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeAlarmWhiteBox'::'alarmItem' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 660;
        'y' = 220;
    }

    metadata 'l2' : 'Layout' about 'NodeAlarmWhiteBox'::'backupAlarm' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 320;
        'y' = 580;
    }

    metadata 'l3' : 'Layout' about 'NodeAlarmWhiteBox'::'buzzer' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 660;
        'y' = 580;
    }

    metadata 'l4' : 'Layout' about 'NodeAlarmWhiteBox'::'display' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 1040;
        'y' = 40;
    }

    metadata 'l5' : 'Layout' about 'NodeAlarmWhiteBox'::'excursionItem' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 320;
        'y' = 40;
    }

    metadata 'l6' : 'Layout' about 'NodeAlarmWhiteBox'::'indicators' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 320;
        'y' = 260;
    }

    metadata 'l7' : 'Layout' about 'NodeAlarmWhiteBox'::'logging' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 1040;
        'y' = 220;
    }

    metadata 'l8' : 'Layout' about 'NodeAlarmWhiteBox'::'power' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 20;
        'y' = 400;
    }

    metadata 'l9' : 'Layout' about 'NodeAlarmWhiteBox'::'sensing' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l10' : 'Layout' about 'NodeAlarmWhiteBox'::'staff' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 1040;
        'y' = 580;
    }

    metadata 'l11' : 'Layout' about 'NodeAlarmWhiteBox'::'supervision' {
        'viewName' = "alarm_whitebox_interconnection";
        'x' = 1040;
        'y' = 400;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "alarm_whitebox_interconnection";
    }
}
