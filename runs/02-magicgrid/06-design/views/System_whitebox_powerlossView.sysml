package System_whitebox_powerlossView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SystemPowerLoss::*;
    private import SanadRenderings::*;

    view 'system_whitebox_powerloss' : StandardViewDefinitions::SequenceView {
        expose SystemPowerLoss::**;
        render asSequenceView;
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

    metadata 'l1' : 'Layout' about 'SystemPowerLoss'::'alarmP' {
        'viewName' = "system_whitebox_powerloss";
        'x' = 540;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'SystemPowerLoss'::'loggingP' {
        'viewName' = "system_whitebox_powerloss";
        'x' = 800;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'SystemPowerLoss'::'mainsSupply' {
        'viewName' = "system_whitebox_powerloss";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'SystemPowerLoss'::'power' {
        'viewName' = "system_whitebox_powerloss";
        'x' = 284;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'SystemPowerLoss'::'staffP' {
        'viewName' = "system_whitebox_powerloss";
        'x' = 1316;
        'y' = 44;
    }

    metadata 'l6' : 'Layout' about 'SystemPowerLoss'::'supervision' {
        'viewName' = "system_whitebox_powerloss";
        'x' = 1056;
        'y' = 44;
    }
}
