package Pa_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import PaInterconnection::*;
    private import SanadRenderings::*;

    view 'pa_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose PaInterconnection::**;
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

    metadata 'l1' : 'Layout' about 'PaInterconnection'::'backupAlarm' {
        'viewName' = "pa_interconnection";
        'x' = 520;
        'y' = 700;
    }

    metadata 'l2' : 'Layout' about 'PaInterconnection'::'battery' {
        'viewName' = "pa_interconnection";
        'x' = 20;
        'y' = 800;
    }

    metadata 'l3' : 'Layout' about 'PaInterconnection'::'buzzer' {
        'viewName' = "pa_interconnection";
        'x' = 1000;
        'y' = 560;
    }

    metadata 'l4' : 'Layout' about 'PaInterconnection'::'indicators' {
        'viewName' = "pa_interconnection";
        'x' = 1000;
        'y' = 300;
    }

    metadata 'l5' : 'Layout' about 'PaInterconnection'::'mcu' {
        'viewName' = "pa_interconnection";
        'x' = 520;
        'y' = 300;
    }

    metadata 'l6' : 'Layout' about 'PaInterconnection'::'oled' {
        'viewName' = "pa_interconnection";
        'x' = 520;
        'y' = 20;
    }

    metadata 'l7' : 'Layout' about 'PaInterconnection'::'powerPath' {
        'viewName' = "pa_interconnection";
        'x' = 20;
        'y' = 560;
    }

    metadata 'l8' : 'Layout' about 'PaInterconnection'::'probe' {
        'viewName' = "pa_interconnection";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l9' : 'Layout' about 'PaInterconnection'::'rtc' {
        'viewName' = "pa_interconnection";
        'x' = 960;
        'y' = 40;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "pa_interconnection";
    }
}
