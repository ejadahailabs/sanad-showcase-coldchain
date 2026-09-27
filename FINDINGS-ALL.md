# Findings — all five runs, one list

**In one line:** every gap the five fridge-monitor builds found in Sanad, merged into one list — the same problem seen twice is one row, not two. Sanad is a build in progress: "cannot" means "not yet". DRAFT — needs Masood's review.

New ids are `S-nnn`. Original ids (`F-nnn`, `F-3-nnn`, `F-4-nnn`, `F-5-nnn`) are kept in the "source ids" column so anyone can trace a row back to its run.

## The 7 headline findings (seen across runs, not just once)

| # | Headline | Runs that proved it | What it means |
|---|---|---|---|
| H-1 | Sanad reads no decomposition/framework file at all | 1, 2, 3, 4, 5 | Every run had to hand-write a script (`level-check.py`) to enforce its own layer rules; a requirement TYPE is always treated as a level, so any layer with two sibling types (safety+performance, hardware+software) trips a false warning. This is `S-020` below. |
| H-2 | Canvas wiring pictures put labels away from their wires/ports | 2, 3, 4, 5 | Every run after the flat one graded its interconnection views B/C/D for the same reason: ports drawn on the wrong side, labels on dotted leaders. `S-021`. |
| H-3 | Setup never offers the config steps its own engines need (hazard link, allocation role, verification stage, glossary, criticality) | 1, 2 | The feature already exists in Sanad; nobody can find the switch. `S-030`. |
| H-4 | Impact assessment only looks downstream, never sideways for a clash | 2 (phase 11) | A brand-new requirement that contradicts an old one scores "0 impact"; the real clash (STK-002 vs SYS-024) was found by a human. `S-036`. |
| H-5 | Reports (approvals, problem reports, accomplishment summary, release notes) read Sanad's OWN qualification ledger, not the customer's project | 1, 2, 4, 5 | From the packaged build these commands crash (rc 2) on a real project. `S-022`. |
| H-6 | No home for FHA, PSSA, the risk-management file, or a segregation argument | 1, 2, 4, 5 | Safety artefacts IEC 62304 / ARP4754A / ISO 14971 require stay in hand-written Markdown; a lower-rigour item next to a higher one is always flagged, with nowhere to record why that is allowed. `S-023`, `S-024`, `S-025`. |
| H-7 | The code index reads comments/strings as trace claims | 1, 2, 3, 4, 5 | A tool comment saying "implements" or a reason string with an id-shaped word becomes a fake trace to a fake requirement, in every single run. `S-001` — **fixed** on `fix/trace-c-lane-and-links`. |

## Open Sanad bugs (wrong answer today, not just a missing feature)

| ID | Title | Runs | Capability | Fix class | Status | Proposed feature title | Source ids |
|---|---|---|---|---|---|---|---|
| S-001 | Code indexer reads prose comments/strings as trace claims | 1,2,3,4,5 | code-trace | Knowledge graph | **fixed on branch fix/trace-c-lane-and-links** | Strict claim grammar + tooling-file scope for the code index | F-84, F-135, F-3-009, F-4-010, F-5-007 |
| S-002 | Part-to-part `allocate` misread as a requirement allocation | 1,2,3 | traceability / design | Traceability engine | **fixed on branch fix/trace-c-lane-and-links** | Read part-to-part allocate without guessing a requirement id | F-35, F-70, F-3-005 |
| S-003 | Reader accepts reserved words / bad grammar the OMG Pilot rejects | 1,2 | design (verification) | Verification engine | **fixed on branch fix/validator-profile-and-reports** | Reader conformance suite matched to the Pilot | F-37 |
| S-004 | OMG Pilot resolution is file-order and name-collision dependent | 3,4 | design (Pilot) | Verification engine | open | Pilot run independent of file/folder order | F-3-004, F-4-006, F-4-020 |
| S-005 | Review "accepted" status compares by commit-prefix, not ancestry (40 of 54 files wrongly read "changed since accepted") | 1,2 | review | Verification engine | **fixed on branch fix/trace-c-lane-and-links** | Accepted-status check uses git ancestry | F-28 |
| S-006 | Sequence/interconnection views join elements by name model-wide instead of scoping to their own package | 2,5 | design (canvas) | Verification engine | open | Scope sequence/interconnection messages to their own package | F-67, F-5-004 |
| S-007 | Saved view layout is not re-checked after a rename outside the Design panel; canvas stays silent while the Pilot errors | 2 | design (canvas) | Verification engine | open | Stale-layout check | F-38 |
| S-008 | Error message for a relative repository path is wrong ("would escape the repository" on the repo's own path) | 2 | authoring | Verification engine | open | Correct, clear error for a relative repository root | F-114 |
| S-009 | A stray file under the wrong folder makes the id allocator offer an id that already exists | 4 | requirements | Verification engine | open | Allocator checks the real id set, not the folder-tied guess | F-4-005 |
| S-010 | One bad character (colon) in a suppression reason silently breaks `config.yaml`, and the gate then reports the resulting cascade as real errors | 5 | configuration | Verification engine | open | Config loader fails loudly, not silently, on a bad YAML value | F-5-008 |
| S-011 | Class/general views draw the wrong features on a redefining subclass (inherited members shown, own redefinitions hidden); no check catches it | 2 | system-design (canvas) | Verification engine | open | Picture-vs-model feature check for class views | F-141 |
| S-012 | Conformance rules (empty-component, implementation-outside-component) assume flat allocation and don't follow a derive chain — 46+12 false findings on a decomposed model | 2,5 | system-design / conformance | Verification engine | open | Conformance rules follow the derive chain and resolve dotted targets | F-132, F-5-012 |
| S-013 | Consistency/testability engines flag a derived budget split as a "conflict", and keep rejecting counts/percentages as unmeasurable | 1,2 | quality / consistency | Verification engine | open | Skip parent/child budget splits; read counts and percentages as units | F-17, F-33, F-136 |
| S-014 | Package import cycles are not named by Sanad; the Pilot then fails on the whole cycle with no warning from Sanad first | 2 | system-design | Verification engine | open | Import-cycle finding before the Pilot is run | F-137 |
| S-015 | The same requirement id declared twice (corpus package + per-node package) raises no finding | 2 | requirements | Verification engine | open | Duplicate-declared-id check | F-150 |
| S-016 | Moving a Sanad repository into a subfolder (git mv) breaks baseline/config root resolution; the trace-drift count changes with no explanation | 2 | configuration / baselines | Verification engine | open | Baselines and config follow the Sanad root through a rename | F-140 |
| S-017 | A stored code index can go stale; the gate never warns it is older than the files it indexed | 2 | code-trace | Verification engine | open | Warn when the code index predates the code | F-139 |

## Sanad missing features (ordered by how many runs hit the gap)

### Hits in 4-5 runs

| ID | Title | Runs | Capability | Fix class | Status | Proposed feature title | Source ids |
|---|---|---|---|---|---|---|---|
| S-020 | No configurable decomposition framework (levels, own-level-only satisfy, derive-to-parent, per-node views); a requirement type is always read as its own level | 1,2,3,4,5 | configuration, system-design | New capability | open | Framework file (default MagicGrid, org flavours) read by Setup, checks, views and the generated package | F-124, F-125, F-126, F-18, F-134, F-3-001, F-3-003, F-4-001, F-4-002, F-5-001, F-5-010 |
| S-021 | Interconnection/general-view canvas: detached port labels, dotted leaders, empty bands, uncontrolled edge routing | 2,3,4,5 | system-design (canvas) | Verification engine (canvas) | **in progress on FIX-CANVAS-1** (F-119, F-121 — wiring + labels) | Interconnection layout rule + rank placement/edge routing + label collision (proposed sentences C-2/C-3/C-4) | F-119, F-121, F-142, F-3-011, F-4-018, F-4-019, F-5-005, F-5-006, F-5-011, F-120 |
| S-022 | Project-level reports (approvals, problem reports, accomplishment summary, release notes, catalogue) read Sanad's own qualification ledger, not the customer project | 1,2,4,5 | reporting | Workflow | **fixed on branch fix/reports-read-the-project** (F-10, F-94, F-105, F-117) | Project-level review ledger + release record, separate from Sanad's own qual reports | F-10, F-94, F-105, F-117, F-4-012, F-5-013 |
| S-023 | No lifecycle-artifact home for the risk-management file (hazard register, FMEA, fault tree, residual/benefit-risk records) | 1,2,4 | safety | Traceability engine | open | Risk management file as a Sanad artefact kind (ISO 14971 cl. 7) | F-06, F-48, F-51 |
| S-024 | Rigour/DAL check forbids a lower-class item under a higher one, with nowhere to record the segregation or architecture argument that makes it legal | 2,4,5 | safety / criticality | Verification engine + template field | open | Segregation-argument field recognised by the rigour check | F-133, F-4-011, F-5-003 |
| S-025 | No home for the FHA (failure condition to severity to objective) or the PSSA (DAL per item, partitioning argument) | 4 | safety | New capability | open | FHA/PSSA templates with trace to derived requirements | F-4-008, F-4-009 |

### Hits in 2-3 runs

| ID | Title | Runs | Capability | Fix class | Status | Proposed feature title | Source ids |
|---|---|---|---|---|---|---|---|
| S-030 | Setup never offers the config step for features that already exist (hazard role, allocation role, verification stage, glossary source, criticality scale, software-design lenses) | 1,2 | setup | Existing feature that only needs configuration | **partly fixed on branch fix/setup-safety-allocation** (F-47, F-71, F-86, F-50, F-98, F-48 + 21 configuration-only rows answered in docs/CONFIGURATION.md §19) | Setup steps for every config-only gap | F-02, F-04, F-47, F-48, F-50, F-66, F-71, F-86, F-98, F-100 |
| S-031 | A requirement's verifies/profile pack carries no rigour bands, so Class-C mandatory trace legs, or a profile with software stereotypes, need a second pack the config format can't hold | 1,2,4,5 | traceability / configuration | Existing feature that only needs configuration | **fixed on branch fix/validator-profile-and-reports** (F-19, F-24, F-64, F-78, F-102) | Support more than one requirements-writing / verification pack; Pilot and reader load the org's profile | F-19, F-24, F-64, F-78, F-102, F-63, F-4-003, F-4-004, F-5-002 |
| S-032 | Baseline is dirty (or drifts by an unexplained count) whenever sibling projects in the same shared git repo have uncommitted work | 3,4 | baselines | Workflow / configuration | open | Per-project-folder cleanliness check, not repository-wide | F-3-013, F-4-013 |
| S-033 | Baseline/config-diff never shows reworded requirement text or new SysML satisfy links, only added/removed link+requirement counts | 1,2,3 | baselines | Traceability engine | open | Baseline freezes requirement text; drift includes design trace | F-25, F-30, F-46, F-53, F-112 |
| S-034 | No requirement package generated per decomposition node/layer; the generator has to be called once per node by hand | 2,3,5 | system-design | Existing feature | open | Package-per-framework-node generation | F-130, F-5-014 |
| S-035 | No standard clause/objective checklist per assurance scheme and level; the "owed at" index is hand-written every run | 1,2,4,5 | reporting / qualification | Workflow | open | Class-C / DAL artifact + clause checklist per scheme, per level | F-116, F-138, F-4-012, F-5-015 |
| S-036 | Impact analysis walks downstream only: misses satisfy, mitigates, dictionary values and documents, has no CLI, and ranks every dependent edge the same | 2 | impact analysis | Traceability + Verification engine | **fixed on branch fix/impact-model-and-clashes** (F-106, F-107, F-109) | Requirement-clash check + full-graph impact walk + CLI + ranked-by-value impact | F-106, F-107, F-108, F-109, F-110 |
| S-037 | Timing/power budgets are not checked as one constraint chain across requirements | 2,3 | impact / design | Verification engine | open | Budget constraint over dictionary values (timing chain, power chain) | F-110, F-57, F-3-014 |

### Hits in 1 run (still real, filed once)

| ID | Title | Runs | Capability | Fix class | Status | Proposed feature title | Source ids |
|---|---|---|---|---|---|---|---|
| S-038 | Setup / config writer has no CLI first-run path; new-requirement, baseline-set, pilot-run and plan-approve are click-only commands | 1,2 | setup / authoring / baselines / verification | Workflow | open | CLI equivalents: erew setup --plan, erew new --type, erew baseline, erew --pilot, plan approval | F-01, F-20, F-23, F-43, F-99, F-115 |
| S-039 | No headless/scriptable canvas check; "did the picture render right" is always a person looking | 1,2 | system-design (canvas) | Workflow | open | Headless canvas check (render + diff) | F-16, F-42, F-56, F-62, F-76, F-83 |
| S-040 | Sanad has no local review path when there is no hosted GitHub/GitLab pull request | 2 | review | Workflow | open | Local review round (erew review --replica) + local comment store | F-26, F-27 |
| S-041 | Review has no action-item object or declared finding-kind field | 2 | review | Workflow / configuration | open | Review actions (owner, due, link) + declared finding categories | F-29, F-31 |
| S-042 | No "TBD requirement tied to an open question" state; no capture flow with provenance | 2 | requirements / capture | Workflow | open | TBD-requirement state; capture command with provenance | F-13, F-22 |
| S-043 | Config writer re-serialises the whole YAML file for a one-field edit (cosmetic diff noise) | 2 | configuration | Existing feature | open | Minimal-diff config writer | F-34 |
| S-044 | Views folder is fixed to the first design root; view names can't contain a dash | 1,2 | design | Existing feature | open | Configurable views-per-node folder + relaxed name pattern | F-14, F-128 |
| S-045 | SysML standard-library imports always warn as unresolved, even in Sanad's own generated files | 1 | design | Verification engine | open | Ship SysML standard-library stubs to the reader | F-15 |
| S-046 | No "decompose this node" action; a decomposed node's black box, white box, children and templates are all hand-written text | 2 | system-design | New capability | open | Decomposition-view action (create black box + white box + children in one step) | F-127 |
| S-047 | Canvas ignores saved layout for nested/composed parts; white-box internals must be duplicated as package-level parts to be placeable | 2 | system-design (canvas) | Canvas feature | open | Layout support for nested usages; draw composite internals directly | F-129, F-146 |
| S-048 | Sequence view can't show two messages of the same type distinctly, or a timing budget between them | 2,3 | design (canvas) | Canvas feature | **partly designed (C-5 proposed sentence, not built)** | Show name : Type when repeated; duration-constraint bracket with requirement id | F-131, F-143, F-123, F-3-015, F-144 |
| S-049 | Allocation matrix understands two axes only; a framework with more than two transition kinds (Arcadia has four) has no matrix picture | 3 | traceability | Traceability engine | open | N-axis allocation/transition matrix | F-3-006 |
| S-050 | Model attribute class and requirement criticality class are never cross-checked (found a mismatch by hand) | 3 | verification | Verification engine | open | Model-vs-requirement classification check | F-3-007 |
| S-051 | No configuration-item artefact kind; EPBS-style identification records had to be written as ordinary requirements | 3 | requirements | New capability | open | Configuration-item kind, exempt from requirement-only checks | F-3-008 |
| S-052 | Use-case/tree/block views only draw a package's usages when the WHOLE package is exposed; a definition-only exposure draws empty boxes | 3 | design (canvas) | Canvas feature | open | Views draw a usage from its definition without full-package exposure | F-3-012 |
| S-053 | One template per role limit: an item-specific (per-item) requirement template, or "one kind per level, many elements," can't be declared | 4,5 | configuration | Existing feature (limit) | open | Per-item / per-node template variants under one role | F-4-004, F-5-002 |
| S-054 | Implementation-traced check doesn't roll up through a multi-level chain (LLR to HLR to system, or device to unit); it wants direct code on every level | 4,5 | code-trace | Traceability engine | open | "Implemented through its children" rollup rule | F-4-007, F-5-009 |
| S-055 | Structural coverage is line coverage only; no decision/MC/DC coverage for DAL A | 4 | verification | External tool integration | open | Decision/MC/DC coverage lane | F-4-014 |
| S-056 | No record for "verified by analysis" (vs. by test) | 4 | verification | New capability | open | Analysis-based verification record | F-4-016 |
| S-057 | No check that a decomposed node's white-box wires actually go through its black box's boundary ports (delegation) | 2 | system-design | Verification engine | open | Black-box <-> white-box port-delegation check | F-145 |
| S-058 | No untyped-connection-end warning; anonymous neighbour parts and plain connect (vs typed interface) pass silently | 2 | system-design | Verification engine | open | Untyped-end warning (org-configurable) | F-147 |
| S-059 | Whole view kinds are missing at node level: decomposition tree, activity, requirement, parametric, allocation, hazard | 2 | system-design | Workflow + canvas | open | Framework-cell to required view-kind checklist | F-148 |
| S-060 | No #derivation, verify, or constraint SysML elements are ever generated; derive/verify/budgets live in Markdown/comments only | 2 | traceability | Traceability engine | open | Emit derive/verify/constraint elements into the generated packages | F-149 |
| S-061 | No check for an unallocated software item or an unpowered part | 2 | system-design | Verification engine | open | Unallocated-item / unpowered-part check (org rule) | F-151 |
| S-062 | No gate check that a rendered picture is fit for review (overlaps, detached labels, empty area, width, box count, crossings) | 2 | system-design | Verification engine | **designed, not built** (proposed sentence C-6) | "Picture fit for review" gate check | F-152 |
| S-063 | No colour theme by element kind on the canvas (owner's own ask, 2026-09-27) | 2 | system-design | Existing feature + configuration | **needs owner decision** (org picks the theme; C-1 design ready) | Colour theme by element kind, WCAG-checked, org-configurable | F-122 |
| S-064 | A scenario is written as package-level parts + messages, not a proper SysML v2 occurrence def; lifeline names need artificial suffixes | 2 | design | Skill + canvas | open | Scenario authoring writes a real occurrence def | F-144 |

## Knowledge gaps (the team learned something; needs a decision, not just code)

| ID | Title | Runs | Capability | Fix class | Status | Proposed feature title | Source ids |
|---|---|---|---|---|---|---|---|
| S-070 | A budget split across a functional chain (Arcadia transitions) reads as a clash, not a legal derivation; Sanad has no concept of a functional chain | 3 | traceability / impact | Verification engine | open | Functional-chain-aware budget derivation | F-3-014 |
| S-071 | "One parent type per requirement type" (uplinkOrder) can't express "derive from any requirement of the layer above" | 3,4,5 | configuration | Configuration | open (same root as S-020) | Uplink rule per framework node, not per requirement type | F-134, F-4-002, F-5-010 |
| S-072 | Suppression rule can't reach a repository-scoped finding (no path: ever matches it) | 1,4 | code-trace | Workflow | open | Suppress by symbol/file for repository-scoped findings | F-85 |
| S-073 | C/C++ evidence (Unity tests, gcov coverage, class-qualified symbols, macro claims) needs external converters because Sanad speaks JUnit/LCOV only | 1 | verification | External tool integration | open | Native C/C++ test + coverage + macro-trace lanes | F-91, F-93, F-103, F-87, F-89, F-104 |
| S-074 | Evidence Sanad reads is never checked against version control; a gitignored log can silently feed a report | 1 | evidence | Verification engine | open | Warn when evidence is untracked | F-118 |

## Run / data issues (artifacts of five parallel local runs, not Sanad gaps)

| ID | Title | Runs | Kind | Status | Note | Source ids |
|---|---|---|---|---|---|---|
| S-080 | Sharing one git repository across five run folders makes "is the working tree dirty" repository-wide, so every baseline in every run reads DIRTY while a sibling run is mid-edit | 2,3,4 | run/data issue | by design (of the shared-repo setup, not a Sanad defect) | Same root as S-032; kept separate because it is caused by how the runs share one .git, not by Sanad | F-3-013, F-4-013 |
| S-081 | docs/EXPORT_FORMATS.md missing from this build's packaged extension crashes four report commands | 5 | run/data issue | open (packaging, not this repo) | Flag to whoever cuts the .vsix used across the runs | F-5-013 |
| S-082 | Two positive findings, not gaps: Sanad's DO-178C-level test-coverage grouping is native (no fix needed); a missing verification case Sanad correctly found is a project gap, not a tool gap | 4 | not a finding | n/a - excluded from counts | Kept here so the count is not overstated | F-4-015, F-4-017 |

## By design (Sanad's own rule, not a gap)

| ID | Title | Runs | Note | Source ids |
|---|---|---|---|---|
| S-090 | Review comment text stays on the hosted platform (ADR-0134); with no platform it has no Sanad home | 2 | Intentional; S-040's local-review path is the actual ask | F-27 |

---

## Counts

**Total unique findings in this list: 90** (S-001...S-090, including the 2 excluded positives inside S-082 and the 1 by-design at S-090; 87 are real gaps to act on).

By kind:

| Kind | Count |
|---|---|
| Sanad bug | 17 |
| Sanad missing feature | 45 |
| Knowledge gap | 5 |
| Run/data issue | 2 |
| By design | 1 |
| Positive (excluded from the 87) | 2 (inside S-082) |

By status:

| Status | Count |
|---|---|
| Fixed on a branch (pending push/PR - credentials broken 2026-09-27) | 6 (S-001, S-002, S-003, S-005, S-022, S-036) |
| In progress | 2 (S-021 partly via FIX-CANVAS-1; S-030 partly via FIX-SETUP) |
| Designed, not built | 2 (S-048, S-062) |
| Needs owner decision | 1 (S-063) |
| By design | 1 (S-090) |
| Open | 76 |

By capability (largest first): system-design 24 · verification/quality 12 · configuration/setup 11 · traceability 9 · requirements 6 · safety 6 · code-trace 5 · reporting 5 · review 4 · baselines 4 · impact analysis 3 · authoring 2.

## Ready to file (proposed issue titles, grouped by capability, with the umbrella each sits under)

**Umbrella: SysML decomposition & framework** (system-design)
- Framework file (default MagicGrid, org flavours) read by Setup, checks, views, generated package - S-020
- Decomposition-view action (create black box + white box + children) - S-046
- Layout support for nested/composed usages - S-047
- N-axis allocation/transition matrix - S-049
- Conformance rules follow the derive chain - S-012

**Umbrella: SysML canvas quality** (system-design / verification)
- Interconnection layout + rank placement + label collision (C-2/C-3/C-4) - S-021 (in progress)
- "Picture fit for review" gate check (C-6) - S-062
- Colour theme by element kind (C-1) - S-063 (owner decision first)
- Picture-vs-model feature check for class views - S-011
- Missing view kinds per framework cell - S-059
- Scenario authoring as a real occurrence def; message name/timing on sequences (C-5) - S-064, S-048
- Headless canvas check (render + diff) - S-039

**Umbrella: Reporting for the customer project** (reporting)
- Project-level review ledger + release record (fixed, needs push) - S-022
- Class-C / DAL artifact + clause checklist per scheme - S-035

**Umbrella: Safety artefacts** (safety)
- Risk management file as a Sanad artefact kind - S-023
- Segregation-argument field on the rigour check - S-024
- FHA/PSSA templates - S-025

**Umbrella: Setup completeness** (configuration)
- Setup steps for every config-only gap (partly fixed) - S-030
- Support more than one requirements/verification pack (fixed, needs push) - S-031
- Per-item / per-node template variants - S-053

**Umbrella: Traceability & impact** (traceability)
- Requirement-clash + full-graph impact + CLI + ranked impact (fixed, needs push) - S-036
- Budget constraint over dictionary values - S-037
- Baseline freezes text + shows design-trace drift - S-033
- "Implemented through its children" rollup - S-054
- Emit derive/verify/constraint elements - S-060

**Umbrella: Code-trace robustness** (code-trace)
- Strict claim grammar for the code index (fixed, needs push) - S-001
- Warn when the code index is stale - S-017
- Native C/C++ test + coverage + macro-trace lanes - S-073

**Umbrella: Review without a platform** (review)
- Local review round + comment store - S-040
- Review action items + finding categories - S-041

## Could not place cleanly
- The exact 21 "configuration-only" rows FIX-SETUP answered in docs/CONFIGURATION.md §19 are not individually itemised in the board row read for this job - folded into S-030 as one row rather than 21, since the source didn't list them by finding id.
- F-4-015 and F-4-017 are positive results (Sanad did its job), not gaps - kept out of the 87-gap count, listed at S-082 for completeness.
- Run-count columns above are a good-faith count of where a finding (or its clear duplicate) was explicitly filed; a few framework-shaped gaps (e.g. Setup steps) likely also apply silently to runs 3-5 since those runs inherited run 2's fixed config, but were not re-filed there, so only the runs with an explicit finding id were counted.
