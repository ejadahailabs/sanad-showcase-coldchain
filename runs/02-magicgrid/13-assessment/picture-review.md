# Picture review — the coordinator looked at the drawings (2026-09-27 morning)

Until now every picture was proved only by machine: the OMG Pilot said 0 issues, the gate was green, and "look at the picture" sat on the click list. This is the first review with eyes. Six of the 21 rendered views so far; the rest go to the SYSML-EVAL worker. Rendered with `tools/render-view.sh` (Sanad's own picture stylesheet, light defaults for the editor variables), so what you see here is what the canvas draws, minus the editor theme.

| View | Kind | Verdict | What is wrong |
|---|---|---|---|
| mrtmAlarmStates | state machine | **good** | readable states, docs and actions; three parallel transitions between quiet/sounding/probeFault stack their labels ("ProbeFaultDeclared" drawn three times); the guard label floats free of its arrow |
| mrtmSeqExcursion | sequence | **good** | clean; no timing annotation on the excursion → alarm path, which the 5-second requirement now needs |
| mrtmBlocks | general | usable | correct content; a third of the picture is empty above the first box; the `allocate` line detours across the whole top; at the right the physical parts are overdrawn by wires ("clockLink", "TemperatureSample" cross the probe box) |
| mrtmSwComponents | general | usable | correct content and the profile stereotypes show; half the height is empty above the row of items; `allocate` lines all run over the top; the row is wider than any screen without scrolling |
| mrtmInterfaces | interconnection (system) | **not fit for review** | the parts inside MrtmUnit are stacked in one column; ports are drawn as floating labels away from their boxes; wires are dotted lines crossing everything; the 30-row satisfy list sits inside the frame; a reviewer cannot tell what connects to what |
| mrtmHwInterfaces | interconnection (hardware) | **broken** | the redefined parts (`:>>`, the chosen components) are drawn **without names** (F-60); their ports float outside the boxes at the left edge; most pinned wires are missing (F-60/F-61); one port label collides with another ("^i2c : ~I2cPort" is garbled) |

## Findings added from this review (into FINDINGS.md)

- **F-119** Interconnection views lay parts out in one column and draw ports detached from their boxes; the picture does not show connectivity. Fix class: verification/traceability engine is fine, this is the canvas layout — a real layout rule for interconnection views (ports on the box edge, wires between edges, parts placed by their connections).
- **F-120** General views leave large empty areas above the first row and route `allocate` lines around the whole picture. Fix class: layout (rank placement and edge routing).
- **F-121** Parallel transitions and parallel wires stack their labels on top of each other. Fix class: layout (label collision).
- **F-122 (owner request, 2026-09-27)** The pictures are monochrome: every kind of element is drawn in the same ink on the same panel colour, with one accent. The organisation should be able to choose a **colour theme by element kind** (parts, interfaces/ports, requirements, states, sequences, hazards/controls, software-profile stereotypes), with a recommended theme that stays readable in light, dark and high-contrast editor themes and prints in greyscale. Fix class: existing canvas + configuration (org configures, we recommend).
- **F-123** A sequence view carries no timing annotation; the 5-second and 60-second budgets from the requirements cannot be shown on the picture that explains them. Fix class: canvas feature (duration constraint on a message pair).

## What this means for the run

The model is right (Pilot 0 issues, 251 satisfy links, all checks green). The **drawings** of the two views an engineer would print for a design review, the interconnections, are not usable yet. That is the single most important canvas finding of the run and it is not visible to any automatic check we have. A "picture fit for review" check does not exist and probably should: overlap count, detached labels, empty-area ratio.
