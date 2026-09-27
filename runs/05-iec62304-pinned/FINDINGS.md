# Findings — run 05 (pinned IEC 62304 stack)

**In one line:** each row is one thing Sanad could not do yet (or did wrong) while we built the fridge monitor the 62304 way. Sanad is a build in progress. Numbered `F-5-nnn`.

| Id | Kind | What happened | Fix class | Links |
|---|---|---|---|---|
| F-5-001 | MANUAL | Sanad reads no framework file: the four pinned floors, "parent one level up" and "unit takes its item's class" are checked only by our `tools/level-check.py` | configuration + system-design | F-124, F-125 |
| F-5-002 | MANUAL | A unit level needs 12 templates and 12 id prefixes (one per unit) because Sanad ties a level to a template type; "one kind per level, many elements" cannot be declared | configuration | F-134 |
| F-5-003 | MANUAL | A class-B item under the class-C software system is a `rigour-inconsistency` until suppressed; Sanad has no segregation field that makes the lower class legal (§5.3.5) | safety | F-133 |
| F-5-004 | canvas | The item-level excursion sequence draws two extra lifelines (`alarmMgr`, `displayMgr`) and one message that are not in the exposed package — names resolved from another package | canvas | L2_software_system_excursion |
| F-5-005 | canvas | A block view of `interface def` unit contracts draws names only; the functions (actions) inside are not drawn, so the §5.4 detailed-design picture shows nothing of the contract | canvas | L4_units_*_contracts |
| F-5-006 | canvas | Every port of a part is drawn, used or not, as a floating label; the software-to-hardware view gets a D for this alone | canvas | F-119 |
| F-5-007 | MANUAL | The code index reads a regular expression in a Python tool as an `@implements` marker → 1 false `dead-requirement` error ("A-Z"); fixed by splitting the keyword. No ignore list for tooling files | implementation | F-135, F-139 |
| F-5-008 | MANUAL | One colon inside a suppression reason made `config.yaml` fail to load; the gate then reported 11 knock-on errors as if real (not-implemented without suppressions) | configuration | — |
| F-5-009 | MANUAL | 45 code marker lines still name device-level ids (a skip over three floors) because Sanad's implementation check wants code for device requirements; no "implemented through its children" rule | implementation | — |
| F-5-010 | MANUAL | 7 `parent-child-inconsistency` warnings: Sanad reads each requirement type as its own level, so a device requirement refined by both the SRS and the hardware item (both level 2) looks "refined at 2–3 levels" | structure | F-18, F-124 |
| F-5-011 | canvas | Item defs carry the profile marker `#Service`, but the architecture picture shows `«part»` on the usages; the profile is visible only on definitions (L4 classes view) | canvas | F-64 |
| F-5-012 | MANUAL | 12 `empty-component` + 46 `implementation-outside-component`: the architecture inventory expects satisfy links on the component names, not on the unit nodes | conformance | F-132 |
| F-5-013 | packaging | `--report catalogue / approvals / problem-reports / accomplishment-summary` crash: `docs/EXPORT_FORMATS.md` missing from the extension build | packaging | — |
| F-5-014 | MANUAL | No requirement package per level: Sanad's generator was called once per level (5 packages) | system-design | F-130 |
| F-5-015 | MANUAL | No clause checklist per level: the 62304 index "owed at" column is hand-written | assurance | F-116 |
| F-5-016 | gap (true) | SRS-008 (IEC 60601-1-8 burst pattern) has no item child, no code, no case; Sanad flags `missing-case` but has no "not decomposed" check at SRS level | structure | Q-20, run 2 D-2 |

Counts: 16 findings — 10 MANUAL, 4 canvas, 1 packaging, 1 true gap. UI-ONLY: see CLICK-LIST.md.
