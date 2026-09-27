package La_architectureView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import LaArchitecture::*;
    private import SanadRenderings::*;

    view 'la_architecture' : StandardViewDefinitions::InterconnectionView {
        expose LaArchitecture::**;
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

    metadata 'l1' : 'Layout' about 'LaArchitecture'::'alarm' {
        'viewName' = "la_architecture";
        'x' = 640;
        'y' = 220;
    }

    metadata 'l2' : 'Layout' about 'LaArchitecture'::'display' {
        'viewName' = "la_architecture";
        'x' = 960;
        'y' = 60;
    }

    metadata 'l3' : 'Layout' about 'LaArchitecture'::'fridge' {
        'viewName' = "la_architecture";
        'x' = 20;
        'y' = 60;
    }

    metadata 'l4' : 'Layout' about 'LaArchitecture'::'logging' {
        'viewName' = "la_architecture";
        'x' = 960;
        'y' = 400;
    }

    metadata 'l5' : 'Layout' about 'LaArchitecture'::'mains' {
        'viewName' = "la_architecture";
        'x' = 20;
        'y' = 400;
    }

    metadata 'l6' : 'Layout' about 'LaArchitecture'::'power' {
        'viewName' = "la_architecture";
        'x' = 320;
        'y' = 400;
    }

    metadata 'l7' : 'Layout' about 'LaArchitecture'::'recordsComputer' {
        'viewName' = "la_architecture";
        'x' = 1280;
        'y' = 400;
    }

    metadata 'l8' : 'Layout' about 'LaArchitecture'::'sensing' {
        'viewName' = "la_architecture";
        'x' = 320;
        'y' = 60;
    }

    metadata 'l9' : 'Layout' about 'LaArchitecture'::'staff' {
        'viewName' = "la_architecture";
        'x' = 1280;
        'y' = 140;
    }

    metadata 'l10' : 'Layout' about 'LaArchitecture'::'supervision' {
        'viewName' = "la_architecture";
        'x' = 640;
        'y' = 560;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "la_architecture";
    }
}
