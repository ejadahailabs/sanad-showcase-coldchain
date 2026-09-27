package Display_blackbox_interfacesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeDisplayContext::*;
    private import SanadRenderings::*;

    view 'display_blackbox_interfaces' : StandardViewDefinitions::InterconnectionView {
        expose NodeDisplayContext::**;
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

    metadata 'l1' : 'Layout' about 'NodeDisplayContext'::'alarm' {
        'viewName' = "display_blackbox_interfaces";
        'x' = 40;
        'y' = 290;
    }

    metadata 'l2' : 'Layout' about 'NodeDisplayContext'::'display' {
        'viewName' = "display_blackbox_interfaces";
        'x' = 380;
        'y' = 160;
    }

    metadata 'l3' : 'Layout' about 'NodeDisplayContext'::'sensing' {
        'viewName' = "display_blackbox_interfaces";
        'x' = 40;
        'y' = 40;
    }

    metadata 'l4' : 'Layout' about 'NodeDisplayContext'::'staff' {
        'viewName' = "display_blackbox_interfaces";
        'x' = 720;
        'y' = 160;
    }
}
