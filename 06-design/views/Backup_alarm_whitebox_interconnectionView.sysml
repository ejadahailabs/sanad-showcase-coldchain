package Backup_alarm_whitebox_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeBackupAlarmWhiteBox::*;
    private import SanadRenderings::*;

    view 'backup_alarm_whitebox_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose NodeBackupAlarmWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeBackupAlarmWhiteBox'::'buzzer' {
        'viewName' = "backup_alarm_whitebox_interconnection";
        'x' = 980;
        'y' = 40;
    }

    metadata 'l2' : 'Layout' about 'NodeBackupAlarmWhiteBox'::'driver' {
        'viewName' = "backup_alarm_whitebox_interconnection";
        'x' = 660;
        'y' = 40;
    }

    metadata 'l3' : 'Layout' about 'NodeBackupAlarmWhiteBox'::'holdUp' {
        'viewName' = "backup_alarm_whitebox_interconnection";
        'x' = 500;
        'y' = 300;
    }

    metadata 'l4' : 'Layout' about 'NodeBackupAlarmWhiteBox'::'power' {
        'viewName' = "backup_alarm_whitebox_interconnection";
        'x' = 20;
        'y' = 300;
    }

    metadata 'l5' : 'Layout' about 'NodeBackupAlarmWhiteBox'::'supervision' {
        'viewName' = "backup_alarm_whitebox_interconnection";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l6' : 'Layout' about 'NodeBackupAlarmWhiteBox'::'timer' {
        'viewName' = "backup_alarm_whitebox_interconnection";
        'x' = 340;
        'y' = 40;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "backup_alarm_whitebox_interconnection";
    }
}
