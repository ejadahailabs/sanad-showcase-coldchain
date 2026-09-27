package Aircraft_functionsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import AircraftFunctions::*;
    private import SanadRenderings::*;

    view 'aircraft_functions' : StandardViewDefinitions::ActionFlowView {
        expose AircraftFunctions::ProductFunctions::**;
        render asActionFlowView;
    }
}
