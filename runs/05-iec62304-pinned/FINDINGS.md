# Findings — run 05 (pinned IEC 62304 stack)

**In one line:** each row is one thing Sanad could not do yet (or did wrong) while we built the fridge monitor the 62304 way. Sanad is a build in progress. Numbered `F-5-nnn`.

| Id | Kind | What happened | Fix class | Links | Issue Status |
|---|---|---|---|---|---|
| F-5-001 | MANUAL | Sanad reads no framework file: the four pinned floors, "parent one level up" and "unit takes its item's class" are checked only by our `tools/level-check.py` | configuration + system-design | F-124, F-125 | open |
| F-5-002 | MANUAL | A unit level needs 12 templates and 12 id prefixes (one per unit) because Sanad ties a level to a template type; "one kind per level, many elements" cannot be declared | configuration | F-134 | decision pending |
| F-5-003 | MANUAL | A class-B item under the class-C software system is a `rigour-inconsistency` until suppressed; Sanad has no segregation field that makes the lower class legal (§5.3.5) | safety | F-133 | open |
| F-5-004 | canvas | The item-level excursion sequence draws two extra lifelines (`alarmMgr`, `displayMgr`) and one message that are not in the exposed package — names resolved from another package | canvas | L2_software_system_excursion | open |
| F-5-005 | canvas | A block view of `interface def` unit contracts draws names only; the functions (actions) inside are not drawn, so the §5.4 detailed-design picture shows nothing of the contract | canvas | L4_units_*_contracts | open |
| F-5-006 | canvas | Every port of a part is drawn, used or not, as a floating label; the software-to-hardware view gets a D for this alone | canvas | F-119 | open |
| F-5-007 | MANUAL | The code index reads a regular expression in a Python tool as an `@implements` marker → 1 false `dead-requirement` error ("A-Z"); fixed by splitting the keyword. No ignore list for tooling files | implementation | F-135, F-139 | open |
| F-5-008 | MANUAL | One colon inside a suppression reason made `config.yaml` fail to load; the gate then reported 11 knock-on errors as if real (not-implemented without suppressions) | configuration | — | fixed (PR #1411, 2026-09-28) |
| F-5-009 | MANUAL | 45 code marker lines still name device-level ids (a skip over three floors) because Sanad's implementation check wants code for device requirements; no "implemented through its children" rule | implementation | — | fixed (PR #1417, 2026-09-28) |
| F-5-010 | MANUAL | 7 `parent-child-inconsistency` warnings: Sanad reads each requirement type as its own level, so a device requirement refined by both the SRS and the hardware item (both level 2) looks "refined at 2–3 levels" | structure | F-18, F-124 | open |
| F-5-011 | canvas | Item defs carry the profile marker `#Service`, but the architecture picture shows `«part»` on the usages; the profile is visible only on definitions (L4 classes view) | canvas | F-64 | open |
| F-5-012 | MANUAL | 12 `empty-component` + 46 `implementation-outside-component`: the architecture inventory expects satisfy links on the component names, not on the unit nodes | conformance | F-132 | open |
| F-5-013 | packaging | `--report catalogue / approvals / problem-reports / accomplishment-summary` crash: `docs/EXPORT_FORMATS.md` missing from the extension build | packaging | — | n/a (run/data issue) |
| F-5-014 | MANUAL | No requirement package per level: Sanad's generator was called once per level (5 packages) | system-design | F-130 | open |
| F-5-015 | MANUAL | No clause checklist per level: the 62304 index "owed at" column is hand-written | assurance | F-116 | open |
| F-5-016 | gap (true) | SRS-008 (IEC 60601-1-8 burst pattern) has no item child, no code, no case; Sanad flags `missing-case` but has no "not decomposed" check at SRS level | structure | Q-20, run 2 D-2 | not filed (folded into another row / no Sanad-side gap to track) |

Counts: 16 findings — 10 MANUAL, 4 canvas, 1 packaging, 1 true gap. UI-ONLY: see CLICK-LIST.md.

## Framework checks (Sanad main 3db89087; checks from proto/fw-3 ffe81482, not yet on main) — 2026-09-28

**In one line:** Sanad now reads this run's own `framework.yaml` and runs three decomposition checks over it — like a building inspector who finally has the floor plan.

Ran headless with `--json`, in a scratch copy with `design.checks` at `warning` for the three checks. Nothing in the model was changed; these stay findings.

| Check | What it looks for | Count |
|---|---|---|---|
| framework file refused | a word the reader cannot check | 0 |
| `sysml-unallocated-software` | a software element placed on no hardware | 1 |
| `sysml-unpowered-part` | a supply port (`PowerPort`) with no wire | 5 |
| `sysml-decomposition-depth` | an element deeper than its branch allows | 0 |

**Update — 2026-09-29 (Sanad `proto/fw-samples-2` @ `1f0611dc`):** the reader now also names every `framework.yaml` key it does not read (`framework-unknown-key`, with path and line). It found 78 such warnings here (stray top-level keys, the whole `step.levels`/`step.hardware` stack, which has no Sanad schema place, and `level`/`class`/`code`/`segregation` on every tree node). Fixed: `framework:` renamed to `name:`; `step:` given one real key (`black_box: {}`, empty — a placeholder so the file still validates) since none of its content maps to Sanad's step schema; every other flagged key turned into a comment, most inline on the node's own line. Re-run: **0 refusals, 0 unknown-key warnings**. Note: `tools/level-check.py`, `tools/pinned-index.py`, `tools/pinned-build.py` and `tools/pinned_model.py` read `n["level"]`/`n["class"]`/`n["code"]`/`n["segregation"]` straight from the YAML — since those are now comments, those scripts need their own follow-up before they're run again for this framework file.

Compare run 2 (8 / 12): the pinned stack wires more supply ports. The checks are a build in progress: they sit on a Sanad branch waiting for review, not on main.
