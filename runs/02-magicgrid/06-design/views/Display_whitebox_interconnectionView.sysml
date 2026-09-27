package Display_whitebox_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeDisplayWhiteBox::*;
    private import SanadRenderings::*;

    view 'display_whitebox_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose NodeDisplayWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeDisplayWhiteBox'::'alarm' {
        'viewName' = "display_whitebox_interconnection";
        'x' = 20;
        'y' = 240;
    }

    metadata 'l2' : 'Layout' about 'NodeDisplayWhiteBox'::'displayItem' {
        'viewName' = "display_whitebox_interconnection";
        'x' = 340;
        'y' = 140;
    }

    metadata 'l3' : 'Layout' about 'NodeDisplayWhiteBox'::'oled' {
        'viewName' = "display_whitebox_interconnection";
        'x' = 660;
        'y' = 140;
    }

    metadata 'l4' : 'Layout' about 'NodeDisplayWhiteBox'::'sensing' {
        'viewName' = "display_whitebox_interconnection";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l5' : 'Layout' about 'NodeDisplayWhiteBox'::'staff' {
        'viewName' = "display_whitebox_interconnection";
        'x' = 980;
        'y' = 140;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "display_whitebox_interconnection";
    }
}
