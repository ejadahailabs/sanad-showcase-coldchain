# Assumptions — run 03 (Arcadia)

**In one line:** where nobody could tell us the answer, we wrote down our best guess here, so a reviewer can change it later — like pencil marks on a plan.

DRAFT — needs Masood's review. Run 2's assumptions (A-01…A-48, `runs/02-magicgrid/ASSUMPTIONS.md`) still hold where this run reuses its text; they are cited by their run-2 number.

| Id | Assumption | Why | Who can change it |
|---|---|---|---|
| A-3-01 | Standard editions as in run 2 (IEC 62304:2006+A1:2015, 60601-1-8:2006+A2:2020, ISO 14971:2019). | No copy was read (run 2 A-39). | Masood / regulatory |
| A-3-02 | Each of the 62 SA requirements is carried by ONE of nine system functions (table in `tools/arcadia_spec.py`); ENV-002/003 by the system as a whole. | Arcadia needs a function per requirement; none given. | Masood |
| A-3-03 | OA capabilities and activities are read from the 8 stakeholder needs; no clinic interview. | Headless run. | Masood / a clinic |
| A-3-04 | EPBS = 6 configuration items (firmware, main board, probe, display, backup board, battery). Instructions for use not a CI (no PA parent). | Smallest split that matches the BOM. | Masood |
| A-3-05 | The backup board's three parts derive from the LA alarm requirement (lifted parents, F-3-002). | Arcadia has no deeper step. | Masood |
| A-3-06 | IEC 60601-1-8 figures carried from run 2 as assumptions (run 2 A-40…A-42). | Alarm behaviour unchanged by the framework. | Masood |
| A-3-07 | USB item stays class B with segregation (run 2 A-48, ADR-0034) — still an owner decision (run 2 F-133). | Same code, same argument. | **Masood** |
| A-3-08 | The run-2 kit (code, tests, 07-adr, 08-safety, 09-hardware, data dictionary, library model) is reused unchanged except id rewrites and the USB class fix. | Rule: change only what the framework demands. | — |
| A-3-09 | Glossary kept in run 2's two-file form (glossary + data dictionary); `shared/glossary.md` holds the same terms in one file. | Sanad's producers read the two files. | — |
| A-3-10 | "Gate once" read as one final gate: 3 gate runs were made (first 6 errors → rewords → 0 errors → final after suppressions). | Errors had to be fixed before the gate that counts. | — |
