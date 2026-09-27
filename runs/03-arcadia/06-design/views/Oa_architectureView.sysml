package Oa_architectureView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import OaArchitecture::*;
    private import SanadRenderings::*;

    view 'oa_architecture' : StandardViewDefinitions::InterconnectionView {
        expose OaArchitecture::**;
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

    metadata 'l1' : 'Layout' about 'OaArchitecture'::'fridge' {
        'viewName' = "oa_architecture";
        'x' = 380;
        'y' = 240;
    }

    metadata 'l2' : 'Layout' about 'OaArchitecture'::'mains' {
        'viewName' = "oa_architecture";
        'x' = 380;
        'y' = 20;
    }

    metadata 'l3' : 'Layout' about 'OaArchitecture'::'manager' {
        'viewName' = "oa_architecture";
        'x' = 760;
        'y' = 480;
    }

    metadata 'l4' : 'Layout' about 'OaArchitecture'::'nurse' {
        'viewName' = "oa_architecture";
        'x' = 760;
        'y' = 240;
    }

    metadata 'l5' : 'Layout' about 'OaArchitecture'::'stock' {
        'viewName' = "oa_architecture";
        'x' = 380;
        'y' = 480;
    }

    metadata 'l6' : 'Layout' about 'OaArchitecture'::'technician' {
        'viewName' = "oa_architecture";
        'x' = 20;
        'y' = 240;
    }
}
