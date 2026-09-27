// The Sanad software profile — a recommended default.
//
// This is YOUR file. Edit it, replace it, or delete it. Sanad never rewrites it,
// and deleting it only means software views draw as plain shapes and Sanad says
// the profile is absent — nothing else changes.
//
// A profile is an ordinary SysML v2 library. Everything below is standard v2:
// 'metadata def' declares a marker, and a model applies one with a '#' prefix
// annotation. A tool that has never seen this file still reads every model that
// uses it, which is the point of doing it this way rather than inventing a
// dialect.
//
//   #Class part def FlightComputer {
//     attribute mode : Mode;
//     action def engage;
//   }

package SoftwareProfile {

  // A type drawn as a class box: its name, its attributes, its operations.
  metadata def Class;

  // A feature drawn as an operation on that box. Actions are already drawn as
  // operations without it; this marks one explicitly.
  metadata def Operation;

  // Reserved. Sanad draws visibility from the notation's own prefix — public,
  // private, protected — on every row, marker or not, so marking a feature with
  // this adds nothing. It is kept because a visibility shown only where someone
  // remembered the marker is worse than one shown always: you could not tell a
  // public feature from a forgotten mark.
  metadata def Visibility;

  // A type drawn as an interface.
  metadata def Interface;

  // A type drawn as a component.
  metadata def Component;

  // A node in a deployment view.
  metadata def Deployment;

  // --- Added by this organisation (MRTM, Phase 7, 2026-09-27; MANUAL, FINDINGS F-63) ---
  // Sanad's recommended profile has no marker for these three. They are ours;
  // Sanad draws them as plain shapes and says nothing about them (by design).

  // A FreeRTOS task: its priority, period, stack and core are attributes of the def.
  metadata def Thread;

  // An IEC 62304 software item: a group of components with one safety class.
  metadata def Service;

  // A stored or transmitted record: an attribute def whose layout is fixed.
  metadata def DataModel;

}

// The diagram kinds this profile supports. Sanad draws a kind that is declared
// here and REJECTS one that is not, naming it — so removing a line below
// removes that kind from the picker, and adding your own does nothing until
// Sanad learns to draw it.
package SupportedDiagramKinds {

  metadata def BlockDiagram;
  metadata def InternalBlockDiagram;
  metadata def StateMachineDiagram;
  metadata def ActivityDiagram;
  metadata def RequirementDiagram;
  metadata def UseCaseDiagram;
  metadata def SequenceDiagram;
  metadata def GridDiagram;
  metadata def GeometryDiagram;
  metadata def ParametricDiagram;
  metadata def PackageDiagram;
  metadata def ViewAndViewpointDiagram;
  metadata def TreeDiagram;

  // The last three were added on 2026-09-20. ADR-0115 decision four left the
  // sequence marker out and never had a grid or a geometry one; that decision
  // is SUPERSEDED by the owner's MVP order of that day — all seven views must
  // be drawable from an empty project on this default. The ruling is filed at
  // qual/capabilities/system-design/design-panel/design/
  //   owner-words-2026-09-20-sysml-ui.md, "Coordinator rulings under that
  // order", D4. Delete the three lines to go back.
  //
  // ParametricDiagram was added on 2026-09-21 for the same reason: the picture
  // that draws a part's constraints and their bindings has to be reachable from
  // this default too (SAN-SYSML-051).
  //
  // PackageDiagram was added on 2026-09-23 for the same reason again: the
  // picture that shows how the model itself is organised - which package holds
  // which, and which one imports which - has to be reachable from this default
  // (SAN-SYSML-141).
  //
  // ViewAndViewpointDiagram was added on 2026-09-26 by the owner's decision D2:
  // the picture of who each view is for - its viewpoint, the concerns that
  // viewpoint frames, and what the view shows - is in the recommended default
  // (SAN-SYSML-203).
  // TreeDiagram was added on 2026-09-26 by round 4 (ADR-BROWSE-001): the
  // picture of what holds what - BrowserView, drawn with the library's own
  // asTreeDiagram - is in the recommended default too (SAN-SYSML-231).

  metadata def AllocationMatrixDiagram;
}
