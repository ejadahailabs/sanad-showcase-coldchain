package Sa_alarm_chainView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import SaAlarmChain::*;
    private import SanadRenderings::*;

    view 'sa_alarm_chain' : StandardViewDefinitions::ActionFlowView {
        expose SaAlarmChain::ExcursionAlarmChain::**;
        render asActionFlowView;
    }
}
