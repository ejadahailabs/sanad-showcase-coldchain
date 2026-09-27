package MrtmSafetyReqsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSafety::*;
    private import SanadRenderings::*;

    view 'mrtmSafetyReqs' : StandardViewDefinitions::GeneralView {
        expose MrtmSafety::**;
        render asRequirementView;
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

    metadata 'l1' : 'Layout' about 'MrtmSafety'::'Hazard'::'hazardId' {
        'viewName' = "mrtmSafetyReqs";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'MrtmSafety'::'Hazard'::'probability' {
        'viewName' = "mrtmSafetyReqs";
        'x' = 432;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'MrtmSafety'::'Hazard'::'residualProbability' {
        'viewName' = "mrtmSafetyReqs";
        'x' = 664;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'MrtmSafety'::'Hazard'::'severity' {
        'viewName' = "mrtmSafetyReqs";
        'x' = 228;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmSafety'::'MrtmRiskControls' {
        'viewName' = "mrtmSafetyReqs";
        'x' = 24;
        'y' = 144;
    }
}
