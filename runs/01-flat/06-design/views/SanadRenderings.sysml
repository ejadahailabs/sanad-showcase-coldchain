package SanadRenderings {

    comment /* The rendering usages Sanad draws, each subsetting a rendering of the
       standard library package Views. A `render` clause names a rendering USAGE, never a
       `rendering def`: ViewRenderingUsage takes an OwnedReferenceSubsetting, which
       resolves to a Feature. */

    private import Views::*;

    rendering asGeneralView :> asTreeDiagram;
    rendering asInterconnectionView :> asInterconnectionDiagram;
    rendering asRequirementView :> asElementTable;
    rendering asActionFlowView :> asInterconnectionDiagram;
    rendering asStateTransitionView :> asInterconnectionDiagram;
    rendering asUseCaseView :> asInterconnectionDiagram;
    rendering asSequenceView :> asInterconnectionDiagram;
    rendering asGridView :> asElementTable;
    rendering asAllocationMatrixView :> asElementTable;
    rendering asConfigurationView :> asElementTable;
    rendering asGeometryView :> asInterconnectionDiagram;
    rendering asParametricView :> asInterconnectionDiagram;
    rendering asPackageView :> asTreeDiagram;
    rendering asViewAndViewpointView :> asTreeDiagram;
    rendering asBrowserView :> asTreeDiagram;
}
