package Alarm_sw_functionsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import AlarmSwFunctions::*;
    private import SanadRenderings::*;

    view 'alarm_sw_functions' : StandardViewDefinitions::ActionFlowView {
        expose AlarmSwFunctions::AlarmPath::**;
        render asActionFlowView;
    }
}
