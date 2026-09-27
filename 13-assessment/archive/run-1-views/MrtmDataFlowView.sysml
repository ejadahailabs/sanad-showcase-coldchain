package MrtmDataFlowView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmLogical::*;
    private import SanadRenderings::*;

    view 'mrtmDataFlow' : StandardViewDefinitions::ActionFlowView {
        expose MrtmLogical::MonitorFridge::**;
        render asActionFlowView;
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

    metadata 'l1' : 'Layout' about 'MrtmLogical'::'MonitorFridge' {
        'viewName' = "mrtmDataFlow";
        'x' = 204;
        'y' = 44;
    }
}
