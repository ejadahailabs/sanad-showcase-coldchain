package L2_software_system_excursionView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import L2SeqExcursion::*;
    private import SanadRenderings::*;

    view 'L2_software_system_excursion' : StandardViewDefinitions::SequenceView {
        expose L2SeqExcursion::**;
        render asSequenceView;
    }
}
