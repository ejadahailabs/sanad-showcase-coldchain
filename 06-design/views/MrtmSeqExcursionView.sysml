package MrtmSeqExcursionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSeqExcursion::*;
    private import SanadRenderings::*;

    view 'mrtmSeqExcursion' : StandardViewDefinitions::SequenceView {
        expose MrtmSeqExcursion::**;
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

    metadata 'l1' : 'Layout' about 'MrtmSeqExcursion'::'alarm' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 992;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'MrtmSeqExcursion'::'buzzer' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 1956;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'MrtmSeqExcursion'::'display' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 1312;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'MrtmSeqExcursion'::'evaluator' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 668;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmSeqExcursion'::'logger' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 1636;
        'y' = 44;
    }

    metadata 'l6' : 'Layout' about 'MrtmSeqExcursion'::'probe' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l7' : 'Layout' about 'MrtmSeqExcursion'::'sampler' {
        'viewName' = "mrtmSeqExcursion";
        'x' = 348;
        'y' = 44;
    }
}
