package MrtmSeqProbeFaultView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSeqProbeFault::*;
    private import SanadRenderings::*;

    view 'mrtmSeqProbeFault' : StandardViewDefinitions::SequenceView {
        expose MrtmSeqProbeFault::**;
        render asSequenceView;
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

    metadata 'l1' : 'Layout' about 'MrtmSeqProbeFault'::'faultAlarm' {
        'viewName' = "mrtmSeqProbeFault";
        'x' = 740;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'MrtmSeqProbeFault'::'faultBuzzer' {
        'viewName' = "mrtmSeqProbeFault";
        'x' = 1816;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'MrtmSeqProbeFault'::'faultDisplay' {
        'viewName' = "mrtmSeqProbeFault";
        'x' = 1100;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'MrtmSeqProbeFault'::'faultLogger' {
        'viewName' = "mrtmSeqProbeFault";
        'x' = 1456;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmSeqProbeFault'::'faultProbe' {
        'viewName' = "mrtmSeqProbeFault";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l6' : 'Layout' about 'MrtmSeqProbeFault'::'faultSampler' {
        'viewName' = "mrtmSeqProbeFault";
        'x' = 384;
        'y' = 44;
    }
}
