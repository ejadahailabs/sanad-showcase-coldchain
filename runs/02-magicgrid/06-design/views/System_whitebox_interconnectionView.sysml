package System_whitebox_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeMrtmWhiteBox::*;
    private import SanadRenderings::*;

    view 'system_whitebox_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose NodeMrtmWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeMrtmWhiteBox'::'alarm' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 640;
        'y' = 220;
    }

    metadata 'l2' : 'Layout' about 'NodeMrtmWhiteBox'::'display' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 960;
        'y' = 60;
    }

    metadata 'l3' : 'Layout' about 'NodeMrtmWhiteBox'::'fridge' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 20;
        'y' = 60;
    }

    metadata 'l4' : 'Layout' about 'NodeMrtmWhiteBox'::'logging' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 960;
        'y' = 400;
    }

    metadata 'l5' : 'Layout' about 'NodeMrtmWhiteBox'::'mains' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 20;
        'y' = 400;
    }

    metadata 'l6' : 'Layout' about 'NodeMrtmWhiteBox'::'power' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 320;
        'y' = 400;
    }

    metadata 'l7' : 'Layout' about 'NodeMrtmWhiteBox'::'sensing' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 320;
        'y' = 60;
    }

    metadata 'l8' : 'Layout' about 'NodeMrtmWhiteBox'::'staff' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 1280;
        'y' = 140;
    }

    metadata 'l9' : 'Layout' about 'NodeMrtmWhiteBox'::'supervision' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 640;
        'y' = 560;
    }

    metadata 'l10' : 'Layout' about 'NodeMrtmWhiteBox'::'usbHost' {
        'viewName' = "system_whitebox_interconnection";
        'x' = 1280;
        'y' = 400;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "system_whitebox_interconnection";
    }
}
