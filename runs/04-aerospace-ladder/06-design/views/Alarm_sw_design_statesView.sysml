package Alarm_sw_design_statesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwStates::*;
    private import SanadRenderings::*;

    view 'alarm_sw_design_states' : StandardViewDefinitions::StateTransitionView {
        expose MrtmSwStates::AlarmStates::**;
        render asStateTransitionView;
    }
}
