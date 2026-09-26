# ADR-0002 — Headless Sanad setup and the configuration chosen

- **Status:** Proposed (owner to confirm) · **Date:** 2026-09-26 · **Phase:** 0 · **MANUAL** ADR shape (F-09)

## Context
Owner order: automated as much as possible. Sanad's Setup is a VS Code form (`rew.setUpHere`). The CLI has no setup subcommand.
`createFromPlan` needs a config.yaml to exist, so it is not a first-run path.

## Decision
Drive the same writers the Setup form calls (`starterConfig`, `starterTemplate`, `applyConfigEdits`, the shipped requirements-writing pack, `productFileText`) from the packaged build `sanad-sysml-r4int3-d388e43e.vsix` with `tools/setup-headless.cjs`.

| Key | Chosen | Why |
|---|---|---|
| `profile` | `requirements-writing` (copied into `.ejadah/rew/rules/`) | Sanad's recommendation |
| `ids` | `provided` | owner brief; MRTM- prefix |
| templates | stakeholder, system, safety, performance, environmental, maintainability, interface | PROMPT.md Phase 0 |
| `validation.uplinkOrder` | system→stakeholder; the five others→system | one parent kind each |
| `design.roots` | 06-design/system, hardware, software, views | owner brief |
| `producers.dataDictionary` / `glossary` | 01-data-dictionary/data-dictionary.md / glossary.md | owner brief |
| `producers.results` | systems-verification-results → 11-verification/results | owner brief |
| `setup.inventory` | systems-requirements, systems-design, hazard, systems-tests, systems-verification-results, data-dictionary | the artefacts this product keeps |
| `assurance` + `criticality` | IEC 62304 class, level C, map A:0 B:2 C:4, default C, inherit down | owner order 2026-09-27 00:05 |
| `ignore` | README.md | ADR-0001 |
| rule packs turned off | none; `design-review` pack not adopted yet (Phase 4 decision) | nothing to review yet |

## Consequences
- The config was checked by `erew --check-config`: 0 refusals.
- Masood still presses Setup once to confirm the form reads the file back (CLICK-LIST C-01).

## Four blocks
- **Assumptions:** A-01…A-07. **Risks:** R-02. **Open questions:** Q-04.
- **Trace links:** tools/setup-headless.cjs, 13-assessment/sanad-runs/phase-0/.
