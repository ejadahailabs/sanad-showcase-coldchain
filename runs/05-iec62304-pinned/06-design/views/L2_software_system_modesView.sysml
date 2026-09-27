package L2_software_system_modesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwStates::*;
    private import SanadRenderings::*;

    view 'L2_software_system_modes' : StandardViewDefinitions::StateTransitionView {
        expose MrtmSwStates::SystemModes::**;
        render asStateTransitionView;
    }
}
