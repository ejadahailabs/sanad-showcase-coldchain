package Supervision_whitebox_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeSupervisionWhiteBox::*;
    private import SanadRenderings::*;

    view 'supervision_whitebox_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose NodeSupervisionWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeSupervisionWhiteBox'::'alarm' {
        'viewName' = "supervision_whitebox_interconnection";
        'x' = 20;
        'y' = 180;
    }

    metadata 'l2' : 'Layout' about 'NodeSupervisionWhiteBox'::'mcu' {
        'viewName' = "supervision_whitebox_interconnection";
        'x' = 700;
        'y' = 180;
    }

    metadata 'l3' : 'Layout' about 'NodeSupervisionWhiteBox'::'power' {
        'viewName' = "supervision_whitebox_interconnection";
        'x' = 700;
        'y' = 20;
    }

    metadata 'l4' : 'Layout' about 'NodeSupervisionWhiteBox'::'supervisorItem' {
        'viewName' = "supervision_whitebox_interconnection";
        'x' = 340;
        'y' = 180;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "supervision_whitebox_interconnection";
    }
}
