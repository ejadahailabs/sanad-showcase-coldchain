package Transition_sa_laView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import LaArchitecture::*;
    private import SaFunctions::*;
    private import TransitionSaToLa::*;
    private import SanadRenderings::*;

    view 'transition_sa_la' : StandardViewDefinitions::GridView {
        expose SaFunctions::acquireTemperature;
        expose SaFunctions::detectExcursion;
        expose SaFunctions::announceAlarm;
        expose SaFunctions::alarmOnOwnFailure;
        expose SaFunctions::showStatus;
        expose SaFunctions::recordEvents;
        expose SaFunctions::exportHistory;
        expose SaFunctions::keepPowered;
        expose SaFunctions::superviseItself;
        expose LaArchitecture::sensing;
        expose LaArchitecture::alarm;
        expose LaArchitecture::display;
        expose LaArchitecture::logging;
        expose LaArchitecture::power;
        expose LaArchitecture::supervision;
        expose TransitionSaToLa::**;
        render asAllocationMatrixView;
    }
}
