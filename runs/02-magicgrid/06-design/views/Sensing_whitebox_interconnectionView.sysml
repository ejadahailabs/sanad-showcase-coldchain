package Sensing_whitebox_interconnectionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeSensingWhiteBox::*;
    private import SanadRenderings::*;

    view 'sensing_whitebox_interconnection' : StandardViewDefinitions::InterconnectionView {
        expose NodeSensingWhiteBox::**;
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

    metadata 'l1' : 'Layout' about 'NodeSensingWhiteBox'::'alarm' {
        'viewName' = "sensing_whitebox_interconnection";
        'x' = 960;
        'y' = 0;
    }

    metadata 'l2' : 'Layout' about 'NodeSensingWhiteBox'::'display' {
        'viewName' = "sensing_whitebox_interconnection";
        'x' = 960;
        'y' = 180;
    }

    metadata 'l3' : 'Layout' about 'NodeSensingWhiteBox'::'fridge' {
        'viewName' = "sensing_whitebox_interconnection";
        'x' = 20;
        'y' = 60;
    }

    metadata 'l4' : 'Layout' about 'NodeSensingWhiteBox'::'probe' {
        'viewName' = "sensing_whitebox_interconnection";
        'x' = 320;
        'y' = 60;
    }

    metadata 'l5' : 'Layout' about 'NodeSensingWhiteBox'::'sensorItem' {
        'viewName' = "sensing_whitebox_interconnection";
        'x' = 640;
        'y' = 60;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "sensing_whitebox_interconnection";
    }
}
