# ADR-0032 — Decomposition framework: MagicGrid default, medical flavour

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Job:** MODEL-LEVELS · **MANUAL** (Sanad reads no framework file, F-125)
- **File:** `.ejadah/rew/framework.yaml` · **Standards:** IEC 62304 §5.3 (software system → items → units), IEC 60601-1 cl. 14 (PEMS)

## Context
The owner could not see a decomposition story: every picture satisfied every level of requirement (F-124). He then ruled three things:
1. The pattern is **configurable** per organisation; Sanad ships **MagicGrid** as the default.
2. The **black-box / white-box step repeats**; depth differs per branch.
3. Leaves are **declared** by the organisation.

## Decision
One file, `.ejadah/rew/framework.yaml`, says how this organisation breaks a product down:
- `top` — the people's needs (stakeholder requirements, use cases).
- `step` — for every node that is not a leaf: a **black box** (the node from outside) then a **white box** (its children and their wires). Each child starts its own step.
- `leaf` — a node simple enough to buy (hardware part) or to write (software item). `bottom` — units, code, tests.
- Four aspects per node: requirements · behaviour · structure · parameters.
- Rules: satisfy only your own node's requirements; derive only from your parent node; every leaf chain reaches the top; ≤ 12 boxes a picture; an `INDEX.md` per node.
- Medical flavour: node kinds carry IEC 62304 and IEC 60601-1 names.

Think of it like a school timetable template: the school (organisation) fills it in its own way, but the template has the same rows every term.

## Consequences
- Until Sanad reads the file, `tools/levels-build.py` (templates, folders, indexes) and `tools/level-check.py` (the rules) read it. Both are MANUAL (F-126).
- The fixed L0–L4 ladder of the first plan is this pattern with depth pinned; it is not used.
- Requirement ids now name the node (`MRTM-ALM-001`), never a level number.

## Four blocks
- **Assumptions:** A-39 (standard editions). **Risks:** R-18 (hand-written rules drift from Sanad's later reader). **Open questions:** none.
- **Trace links:** F-124, F-125, F-126; 13-assessment/decomposition-plan.md; ADR-0033.
