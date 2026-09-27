package MrtmSafetyBlocksView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSafety::*;
    private import SanadRenderings::*;

    view 'mrtmSafetyBlocks' : StandardViewDefinitions::GeneralView {
        expose MrtmSafety::**;
        render asGeneralView;
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

    metadata 'l1' : 'Layout' about 'MrtmSafety'::'HAZ-001' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 376;
        'y' = 572;
    }

    metadata 'l2' : 'Layout' about 'MrtmSafety'::'HAZ-002' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'MrtmSafety'::'HAZ-003' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 352;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'MrtmSafety'::'HAZ-004' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 696;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmSafety'::'HAZ-005' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 24;
        'y' = 308;
    }

    metadata 'l6' : 'Layout' about 'MrtmSafety'::'HAZ-006' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 368;
        'y' = 308;
    }

    metadata 'l7' : 'Layout' about 'MrtmSafety'::'HAZ-007' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 708;
        'y' = 308;
    }

    metadata 'l8' : 'Layout' about 'MrtmSafety'::'HAZ-008' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 24;
        'y' = 572;
    }

    metadata 'l9' : 'Layout' about 'MrtmSafety'::'Hazard' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 372;
        'y' = 836;
    }

    metadata 'l10' : 'Layout' about 'MrtmSafety'::'MrtmRiskControls' {
        'viewName' = "mrtmSafetyBlocks";
        'x' = 24;
        'y' = 1132;
    }
}
