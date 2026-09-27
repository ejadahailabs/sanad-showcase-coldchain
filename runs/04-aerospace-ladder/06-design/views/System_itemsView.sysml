package System_itemsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SystemItems::*;
    private import SanadRenderings::*;

    view 'system_items' : StandardViewDefinitions::GeneralView {
        expose SystemItems::**;
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

    metadata 'l1' : 'Layout' about 'SystemItems'::'MonitorSystemItems' {
        'viewName' = "system_items";
        'x' = 1000;
        'y' = 20;
    }

    metadata 'l2' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'alarmHw' {
        'viewName' = "system_items";
        'x' = 420;
        'y' = 200;
    }

    metadata 'l3' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'alarmSw' {
        'viewName' = "system_items";
        'x' = 20;
        'y' = 560;
    }

    metadata 'l4' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'controllerHw' {
        'viewName' = "system_items";
        'x' = 820;
        'y' = 200;
    }

    metadata 'l5' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'displayHw' {
        'viewName' = "system_items";
        'x' = 1620;
        'y' = 200;
    }

    metadata 'l6' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'displaySw' {
        'viewName' = "system_items";
        'x' = 820;
        'y' = 560;
    }

    metadata 'l7' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'exportSw' {
        'viewName' = "system_items";
        'x' = 1620;
        'y' = 560;
    }

    metadata 'l8' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'platformSw' {
        'viewName' = "system_items";
        'x' = 420;
        'y' = 560;
    }

    metadata 'l9' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'powerHw' {
        'viewName' = "system_items";
        'x' = 1220;
        'y' = 200;
    }

    metadata 'l10' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'recordSw' {
        'viewName' = "system_items";
        'x' = 1220;
        'y' = 560;
    }

    metadata 'l11' : 'Layout' about 'SystemItems'::'MonitorSystemItems'::'sensorHw' {
        'viewName' = "system_items";
        'x' = 20;
        'y' = 200;
    }
}
