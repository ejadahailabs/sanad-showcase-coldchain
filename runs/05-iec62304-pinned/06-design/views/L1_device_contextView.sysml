package L1_device_contextView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeDeviceContext::*;
    private import SanadRenderings::*;

    view 'L1_device_context' : StandardViewDefinitions::InterconnectionView {
        expose NodeDeviceContext::**;
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

    metadata 'l1' : 'Layout' about 'NodeDeviceContext'::'device' {
        'viewName' = "L1_device_context";
        'x' = 380;
        'y' = 160;
    }

    metadata 'l2' : 'Layout' about 'NodeDeviceContext'::'fridge' {
        'viewName' = "L1_device_context";
        'x' = 40;
        'y' = 40;
    }

    metadata 'l3' : 'Layout' about 'NodeDeviceContext'::'mains' {
        'viewName' = "L1_device_context";
        'x' = 40;
        'y' = 290;
    }

    metadata 'l4' : 'Layout' about 'NodeDeviceContext'::'staff' {
        'viewName' = "L1_device_context";
        'x' = 720;
        'y' = 290;
    }

    metadata 'l5' : 'Layout' about 'NodeDeviceContext'::'usbHost' {
        'viewName' = "L1_device_context";
        'x' = 720;
        'y' = 40;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L1_device_context";
    }
}
