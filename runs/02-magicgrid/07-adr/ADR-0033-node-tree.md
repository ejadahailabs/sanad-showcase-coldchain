# ADR-0033 — The node tree: system → six subsystems → leaves (alarm branch one step deeper)

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Job:** MODEL-LEVELS · **MANUAL** (Sanad has no node/level concept, F-124)
- **Model:** `06-design/DECOMPOSITION.md`, `06-design/<node-path>/Node*.sysml`, `.ejadah/rew/framework.yaml` `nodes:` / `leaves:` · **Standards:** IEC 62304 §5.3.1, IEC 60601-1 cl. 14.8

## Context
The first run had one flat model: one block satisfied stakeholder, system, safety and interface requirements at once (F-124). The owner wants a story a reader can follow level by level (ADR-0032).

## Decision
- **Top (context):** the monitor as one box among fridge, mains, USB host and staff. Satisfies the 8 stakeholder requirements.
- **System:** black box (5 boundary ports) + white box of six subsystems: sensing · alarm-and-indication · display · logging-and-history · power · supervision. Satisfies the 62 system-level requirements (SYS/SAF/PRF/ENV/MNT/IFC).
- **Subsystems:** each has a black box (itself + only the neighbours it is wired to) and a white box (its children + their wires).
- **Leaves (19, declared):** chosen hardware parts and IEC 62304 software items; units sit inside the items (bottom).
- **Alarm branch goes one step deeper:** `backup-alarm` is an assembly with its own black/white box and three leaves (timer, driver, hold-up), because it must work with no processor and be argued alone.
- **Rules:** a node satisfies only its own requirements; a requirement derives only from its parent node; ≤ 12 boxes a picture (`tools/level-check.py`).
- The first run's files (hardware, software, detail, states) stay as the **solution library**, with their 262 flat `satisfy` lines removed; nodes reuse their parts.

Think of a city map: country → cities → streets. You never draw every street on the country map.

## Consequences
- 23 pictures, each about one node (was 21 pictures by kind). Old views archived in `13-assessment/archive/run-1-views/`.
- Two canvas limits shaped the model: nested parts cannot be placed (F-129), so black and white boxes are also written as package-level parts; sequence lifelines need unique names across the model (F-67).
- 62 new node requirements; existing 70 kept byte-identical.

## Four blocks
- **Assumptions:** A-44 (backup driver drawn as its own part). **Risks:** R-18. **Open questions:** none.
- **Trace links:** ADR-0032, ADR-0034, F-124, F-126…F-131, 06-design/DECOMPOSITION.md.
