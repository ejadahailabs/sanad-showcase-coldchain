package System_functionsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SystemFunctions::*;
    private import SanadRenderings::*;

    view 'system_functions' : StandardViewDefinitions::ActionFlowView {
        expose SystemFunctions::MonitoringFunctions::**;
        render asActionFlowView;
    }
}
