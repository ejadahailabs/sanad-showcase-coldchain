package System_whitebox_excursionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SystemExcursion::*;
    private import SanadRenderings::*;

    view 'system_whitebox_excursion' : StandardViewDefinitions::SequenceView {
        expose SystemExcursion::**;
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

    metadata 'l1' : 'Layout' about 'SystemExcursion'::'alarm' {
        'viewName' = "system_whitebox_excursion";
        'x' = 428;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'SystemExcursion'::'display' {
        'viewName' = "system_whitebox_excursion";
        'x' = 632;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'SystemExcursion'::'fridge' {
        'viewName' = "system_whitebox_excursion";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'SystemExcursion'::'logging' {
        'viewName' = "system_whitebox_excursion";
        'x' = 832;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'SystemExcursion'::'sensing' {
        'viewName' = "system_whitebox_excursion";
        'x' = 228;
        'y' = 44;
    }

    metadata 'l6' : 'Layout' about 'SystemExcursion'::'staff' {
        'viewName' = "system_whitebox_excursion";
        'x' = 1036;
        'y' = 44;
    }
}
