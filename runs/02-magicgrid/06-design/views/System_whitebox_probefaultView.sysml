package System_whitebox_probefaultView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SystemProbeFault::*;
    private import SanadRenderings::*;

    view 'system_whitebox_probefault' : StandardViewDefinitions::SequenceView {
        expose SystemProbeFault::**;
        render asSequenceView;
    }
}
