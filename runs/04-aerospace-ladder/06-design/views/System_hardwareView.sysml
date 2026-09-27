package System_hardwareView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SystemHardware::*;
    private import SanadRenderings::*;

    view 'system_hardware' : StandardViewDefinitions::InterconnectionView {
        expose SystemHardware::**;
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

    metadata 'l1' : 'Layout' about 'SystemHardware'::'alarmHw' {
        'viewName' = "system_hardware";
        'x' = 1100;
        'y' = 100;
    }

    metadata 'l2' : 'Layout' about 'SystemHardware'::'controllerHw' {
        'viewName' = "system_hardware";
        'x' = 700;
        'y' = 260;
    }

    metadata 'l3' : 'Layout' about 'SystemHardware'::'displayHw' {
        'viewName' = "system_hardware";
        'x' = 1100;
        'y' = 440;
    }

    metadata 'l4' : 'Layout' about 'SystemHardware'::'fridge' {
        'viewName' = "system_hardware";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l5' : 'Layout' about 'SystemHardware'::'mains' {
        'viewName' = "system_hardware";
        'x' = 20;
        'y' = 480;
    }

    metadata 'l6' : 'Layout' about 'SystemHardware'::'powerHw' {
        'viewName' = "system_hardware";
        'x' = 340;
        'y' = 480;
    }

    metadata 'l7' : 'Layout' about 'SystemHardware'::'sensorHw' {
        'viewName' = "system_hardware";
        'x' = 340;
        'y' = 40;
    }

    metadata 'l8' : 'Layout' about 'SystemHardware'::'staff' {
        'viewName' = "system_hardware";
        'x' = 1480;
        'y' = 260;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "system_hardware";
    }
}
