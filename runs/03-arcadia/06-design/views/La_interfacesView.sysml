package La_interfacesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import LaInterfaces::*;
    private import SanadRenderings::*;

    view 'la_interfaces' : StandardViewDefinitions::GeneralView {
        expose LaInterfaces::**;
        render asGeneralView;
    }
}
