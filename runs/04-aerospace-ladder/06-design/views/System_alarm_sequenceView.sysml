package System_alarm_sequenceView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import AlarmPathSequence::*;
    private import SanadRenderings::*;

    view 'system_alarm_sequence' : StandardViewDefinitions::SequenceView {
        expose AlarmPathSequence::**;
        render asSequenceView;
    }
}
