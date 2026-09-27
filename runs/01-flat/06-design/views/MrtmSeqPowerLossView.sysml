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
