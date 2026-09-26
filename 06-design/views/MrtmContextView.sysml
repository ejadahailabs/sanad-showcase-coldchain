package MrtmContextView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmUseCases::*;
    private import SanadRenderings::*;

    view 'mrtmContext' : StandardViewDefinitions::InterconnectionView {
        expose MrtmUseCases::MrtmContext::**;
        render asInterconnectionView;
    }
}
