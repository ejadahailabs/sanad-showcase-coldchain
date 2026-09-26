# 06-design/views — SysML v2 view files

Each view file was written by Sanad's view writer (`newViewFile` + `writeViewFile`, tools/new-view-headless.cjs) and drawn by Sanad's canvas (`canvasFor`, tools/render-view-headless.cjs; tables by tools/matrix-headless.cjs). Layout lives with the view file. **Standard:** IEC 62304 §5.3 (architecture pictures).

| View | Kind (Sanad rendering) | Exposes | Rendered |
|---|---|---|---|
| mrtmUseCases | use case | MrtmUseCases | rendered/mrtmUseCases.svg (Phase 1) |
| mrtmContext | internal block | MrtmUseCases::MrtmContext | rendered/mrtmContext.svg (Phase 1) |
| mrtmBlocks | block (`asGeneralView`) | MrtmPartitions, MrtmPhysical | rendered/mrtmBlocks.svg |
| mrtmInterfaces | internal block (`asInterconnectionView`) | MrtmPhysical::MrtmUnit | rendered/mrtmInterfaces.svg |
| mrtmExternalInterfaces | internal block | MrtmSystemContext::ClinicSetting | rendered/mrtmExternalInterfaces.svg |
| mrtmDataFlow | activity (`asActionFlowView`) | MrtmLogical::MonitorFridge | rendered/mrtmDataFlow.svg |
| mrtmContainment | tree (`asBrowserView`) | MrtmPartitions, MrtmLogical, MrtmPhysical | rendered/mrtmContainment.svg |
| mrtmAllocation | allocation matrix | MrtmPartitions | rendered/mrtmAllocation.md (table, no SVG) |

## Four blocks
- **Assumptions:** the SVGs are what the Design panel shows; Masood confirms on screen (CLICK-LIST C-10).
- **Risks:** a hand rename outside Sanad leaves a stale layout entry (F-38).
- **Open questions:** none.
- **Trace links:** 06-design/system/README.md; 13-assessment/sanad-runs/phase-4/.
