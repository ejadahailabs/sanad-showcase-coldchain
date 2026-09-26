# Findings — what Sanad could not do, phase by phase

One row per finding. `Kind` is MANUAL (no Sanad feature; done by hand) or UI-ONLY (exists in Sanad, needs a click). `Fix class` is one of: Skill · Knowledge graph · Workflow · Human review gate · Verification engine · Traceability engine · External tool integration · Existing feature that only needs configuration.

| # | Phase | Kind | What was needed | What was done instead | Fix class (draft) | Board capability |
|---|---|---|---|---|---|---|
| F-01 | 0 | UI-ONLY | First-run Setup (`rew.setUpHere`) as a CLI step | Drove Setup's own writers from the packaged build with tools/setup-headless.cjs; `createFromPlan` refuses without a config.yaml, so it is not a first-run path | Workflow (CLI `erew setup --plan <file>`) | setup |
| F-02 | 0 | MANUAL | Declare the glossary source in Setup | Added `producers.glossary` by hand; Setup, scaffold and configviz have no glossary field | Existing feature that only needs configuration | setup / data dictionary |
| F-03 | 0 | MANUAL | Charter, scope, stakeholder list templates | Markdown by hand in 00-project/ | Skill | project documents |
| F-04 | 0 | MANUAL | Per-requirement criticality block (`criticality:`) and an `ignore:` list in Setup | Setup writes `assurance:` and the template's criticality field, but not the `criticality:` scale block or `ignore:`; added by hand | Existing feature that only needs configuration | setup |
| F-05 | 0 | MANUAL | Class-C artifact "software development plan" has no Sanad home | Skeleton in 00-project/software-development-plan.md | Skill + Workflow | lifecycle plans |
| F-06 | 0 | MANUAL | Class-C artifact "risk management plan / file" has no Sanad home | Skeleton in 00-project/risk-management-plan.md | Traceability engine (systems/safety capability) | safety |
| F-07 | 0 | MANUAL | Class-C artifact "SOUP list" has no Sanad home | Placeholder 00-project/soup-list.md | Knowledge graph (SOUP as artefact role) | software |
| F-08 | 0 | MANUAL | Class-C artifact "configuration management plan" has no Sanad home | Skeleton in 00-project/configuration-management-plan.md | Skill | configuration management |
| F-09 | 0 | MANUAL | ADR template / ADR as a Sanad artefact | MADR-shaped Markdown in 07-adr/ | Skill | knowledge management |
| F-10 | 0 | MANUAL | Project-level approvals page, problem-report register and accomplishment summary (Class-C problem resolution, IEC 62304 cl. 9) | `erew --report approvals / problem-reports / accomplishment-summary / catalogue` read Sanad's OWN `qual/` ledger and `src/`+`docs/` tree, not the project: from the packaged build all four exit 2 ("A packaged extension does not ship src/", "no such directory …/qual"). Problem resolution kept in FINDINGS.md + a defect log by hand | Workflow (project-level review ledger for the customer repo) | review / reports |
| F-11 | 0 | MANUAL | Four registers (assumptions, risks, open questions) as Sanad artefacts | Markdown tables at repo root | Knowledge graph | knowledge management |
| F-12 | 1 | MANUAL | ConOps templates (problem statement, operational concept, scenarios, vision) | Markdown by hand in 02-conops/ | Skill | conops |
| F-13 | 1 | MANUAL | Capture flow: stakeholder statement as a source with provenance | No capture command in package.json or CLI; user stories written as a table with "assumed" as source | Workflow | capture |
| F-14 | 1 | MANUAL | Views folder location is fixed to `<first design root>/views` | Declared one root `06-design` instead of four (ADR-0004) | Existing feature that only needs configuration | design |
| F-15 | 1 | MANUAL | Standard-library imports (`ScalarValues`, `Views`) reported as `sysml-unresolved-import` info — including in Sanad's own generated SanadRenderings.sysml | Accepted as info | Verification engine (ship library stubs) | design |
| F-16 | 1 | UI-ONLY | Use-case / context canvas editing | Model written by hand; the view files by Sanad's `newViewFile`/`writeViewFile`; SVG drawn by Sanad's `canvasFor` (tools/*.cjs), headless | Workflow | design |
