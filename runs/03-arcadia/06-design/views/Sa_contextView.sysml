package Sa_contextView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SaContext::*;
    private import SanadRenderings::*;

    view 'sa_context' : StandardViewDefinitions::InterconnectionView {
        expose SaContext::**;
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

    metadata 'l1' : 'Layout' about 'SaContext'::'fridge' {
        'viewName' = "sa_context";
        'x' = 20;
        'y' = 60;
    }

    metadata 'l2' : 'Layout' about 'SaContext'::'mains' {
        'viewName' = "sa_context";
        'x' = 20;
        'y' = 340;
    }

    metadata 'l3' : 'Layout' about 'SaContext'::'monitor' {
        'viewName' = "sa_context";
        'x' = 420;
        'y' = 120;
    }

    metadata 'l4' : 'Layout' about 'SaContext'::'recordsComputer' {
        'viewName' = "sa_context";
        'x' = 880;
        'y' = 20;
    }

    metadata 'l5' : 'Layout' about 'SaContext'::'staff' {
        'viewName' = "sa_context";
        'x' = 880;
        'y' = 300;
    }
}
