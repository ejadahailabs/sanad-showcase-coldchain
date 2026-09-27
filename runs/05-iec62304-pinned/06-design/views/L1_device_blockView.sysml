package L1_device_blockView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeDeviceWhiteBox::*;
    private import SanadRenderings::*;

    view 'L1_device_block' : StandardViewDefinitions::InterconnectionView {
        expose NodeDeviceWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeDeviceWhiteBox'::'fridge' {
        'viewName' = "L1_device_block";
        'x' = 20;
        'y' = 40;
    }

    metadata 'l2' : 'Layout' about 'NodeDeviceWhiteBox'::'hardwareItem' {
        'viewName' = "L1_device_block";
        'x' = 360;
        'y' = 120;
    }

    metadata 'l3' : 'Layout' about 'NodeDeviceWhiteBox'::'mains' {
        'viewName' = "L1_device_block";
        'x' = 20;
        'y' = 240;
    }

    metadata 'l4' : 'Layout' about 'NodeDeviceWhiteBox'::'softwareSystem' {
        'viewName' = "L1_device_block";
        'x' = 360;
        'y' = 400;
    }

    metadata 'l5' : 'Layout' about 'NodeDeviceWhiteBox'::'staff' {
        'viewName' = "L1_device_block";
        'x' = 760;
        'y' = 240;
    }

    metadata 'l6' : 'Layout' about 'NodeDeviceWhiteBox'::'usbHost' {
        'viewName' = "L1_device_block";
        'x' = 760;
        'y' = 40;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L1_device_block";
    }
}
