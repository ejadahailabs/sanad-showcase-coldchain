package MrtmSeqPowerLossView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSeqPowerLoss::*;
    private import SanadRenderings::*;

    view 'mrtmSeqPowerLoss' : StandardViewDefinitions::SequenceView {
        expose MrtmSeqPowerLoss::**;
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

    metadata 'l1' : 'Layout' about 'MrtmSeqPowerLoss'::'powerClock' {
        'viewName' = "mrtmSeqPowerLoss";
        'x' = 1344;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'MrtmSeqPowerLoss'::'powerLogger' {
        'viewName' = "mrtmSeqPowerLoss";
        'x' = 684;
        'y' = 44;
    }

    metadata 'l3' : 'Layout' about 'MrtmSeqPowerLoss'::'powerMon' {
        'viewName' = "mrtmSeqPowerLoss";
        'x' = 356;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'MrtmSeqPowerLoss'::'powerPath' {
        'viewName' = "mrtmSeqPowerLoss";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmSeqPowerLoss'::'powerRing' {
        'viewName' = "mrtmSeqPowerLoss";
        'x' = 1016;
        'y' = 44;
    }
}
