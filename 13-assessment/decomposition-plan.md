# Decomposition plan — rebuild the model in levels (owner finding, 2026-09-27 morning)

**Owner's words:** "I do not see a clear breakup of Diagrams at each level, and I am unable to see a proper decomposition story. this will have challenges in understanding. As I see each diagram is satisfying all the level of requirements, that not what I was expecting."

**What is wrong today:** one system block satisfies STK, SYS, SAF and IFC requirements at once; pictures are grouped by kind (blocks, interfaces, states) not by level; there is no derive chain between requirement levels; no index says which pictures belong to which level.

## Target structure

| Level | Folder | Diagrams (one index page per level) | Satisfies only | Requirement ids |
|---|---|---|---|---|
| L0 Context | `06-design/L0-context/` | context view (system = one box; clinic staff, technician, fridge, mains, USB host), use-case view | stakeholder | `MRTM-STK-*` |
| L1 System | `06-design/L1-system/` | system block (system → 6 subsystems), system interconnection (subsystem ports only), system modes state view, top-level scenarios (excursion, power loss, probe fault) at subsystem granularity | system + system-level safety | `MRTM-SYS-*`, `MRTM-SAF-*` (system level) |
| L2 Subsystems | `06-design/L2-subsystems/<name>/` × 6: sensing · alarm-and-indication · display · logging-and-history · power · supervision | per subsystem: block view (its parts), interconnection view (its ports and internal wires), state view where it has one | derived subsystem requirements | new level `MRTM-SUB-*`, each `derive`d from one L1 id, `safetyClass` inherited |
| L3 Components | `06-design/L3-hardware/` and `06-design/L3-software/` | hardware: chosen parts, pin map, buses (one interconnection per bus); software: items, tasks, components with the profile, state machines and sequences per component | hardware / software requirements | new levels `MRTM-HW-*`, `MRTM-SW-*`, derived from L2 |
| L4 Code and tests | `10-src/`, `11-verification/` | none (contracts and tables) | — | `@implements`, `@verifies` |

## Rules (each one becomes a check in `tools/level-check.py` and a finding if Sanad cannot check it)

1. A block at level N satisfies requirements of level N only. (Today: violated everywhere.)
2. Every requirement below L1 carries a `derive` link to exactly one or more requirements one level up; the chain STK → SYS → SUB → HW/SW is unbroken for every leaf.
3. Every level has `INDEX.md`: the pictures of that level in reading order, one line each, and the requirement ids it covers.
4. The generated requirement package is split per level (one `requirements-L<n>.sysml` each) so a level's views expose only their own.
5. A picture carries at most ~12 boxes; a bigger scope is split by subsystem.
6. Views are named `<level>-<subject>-<kind>` (e.g. `L2-alarm-interconnection`).
7. The traceability view (Sanad) shows the alarm path unbroken from `MRTM-STK-002` to the unit test that holds the 5 s budget.

## Sanad finding (F-124)

Sanad neither asks for levels nor checks them: templates carry no level, `satisfy` accepts any requirement on any block, there is no `derive` discipline check, no per-level index or "decomposition story" view. Proposed features: (a) requirement level as a template field with the recommended STK/SYS/SUB/HW/SW ladder; (b) a rule "a block satisfies its own level only" in the design checks; (c) a derive-chain check (every leaf reaches L0); (d) a Decomposition view: the levels as a tree, each node opening its pictures; (e) the requirement package generated per level.

## Work order

MODEL-LEVELS worker (next slot): restructure the model and requirements into this plan with Sanad's own create/derive paths, re-render every picture per level, rerun Pilot + gate + package, write `tools/level-check.py`, update STRUCTURE.md, and ONLY THEN SYSML-EVAL judges the pictures level by level.

## Owner ruling 2026-09-27 (after the L0–L4 plan): the pattern must be configurable

**His words:** "the Levels L0-L4 is good, But what I see is that should be customizable by the customer, as the decomposition pattern we follow lets say its Magic Grid and other organizations have their own pattern, So we should have a default called Magic Grid and let organizations configure their own flavour of layers and work flow."

**Design answer (coordinator):** a **decomposition framework file** (`.ejadah/rew/framework.yaml`, chosen in Setup, org configures / we recommend) that declares layers (rows), aspects (columns: requirements · behaviour · structure · parameters), the requirement kinds + id prefixes per layer, the allowed `derive` direction, the SysML/view kinds per cell, the rules (own-layer-only satisfy, derive chain complete, max boxes per view) and the workflow order. Sanad ships **MagicGrid** as the default (black box → white box → solution → implementation) and validates any org flavour (parents, templates, no cycles); every check, the per-layer requirement package, the Decomposition view (the grid with filled/empty cells) and the traceability chain read the active file. Switching frameworks = a migration report, never silent. Nothing hard-codes MagicGrid names; the file maps cells to standard SysML kinds.

**Mapping of this run:** L0 = black box · L1/L2 = white box · L3 = solution · L4 = implementation. MODEL-LEVELS is re-scoped to rebuild under a MagicGrid framework file (hand-written until Sanad reads it — finding F-125), so the dogfood exercises the default flavour.

**Sanad findings:** F-125 no framework file / no Decomposition view; F-124 stands (checks). Stage 1 sentences to draft: framework file + validation (configuration), own-layer-only + derive-chain checks (system-design), Decomposition view (system-design), package per layer (system-design), migration report (configuration).

## Owner ruling 2026-09-27 (third pass): the black-box / white-box step repeats

**His words:** "some times we may have to iterate the Black/white box layers to get to the solution, we may need to consider that, as we may have multiple levels of decomposition."

**Design answer:** the framework describes a **repeating step**, not a fixed stack: `top` (stakeholder) → `step { black_box, white_box, children_become: black_box }` applied to every non-leaf element → `leaf` (solution rows) → `bottom` (implementation). Depth is per branch; the organisation declares leaves (or a rule does: a part with no internal parts). Requirement ids carry the element (node), not a level number; `derive` follows the parent element; the Decomposition view is a tree of small grids (one per element, empty cells grey); the workflow gate is per node (a child's black box opens once the parent's white box exists). The fixed L0–L4 ladder = this pattern with the depth pinned, read from the same file.

**Run mapping:** system (black/white) → six subsystems (black/white each) → leaves (buzzer driver, probe, display, …) with solution rows; the alarm path goes one turn deeper (backup alarm has its own parts). MODEL-LEVELS rebuilds this way. F-125 updated accordingly.
