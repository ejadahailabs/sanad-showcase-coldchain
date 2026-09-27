# Implementation Intelligence (EIWR v1)

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `1a3a87d826b854265270fa7b4999eedf7224d9b2`

**Commit date:** `2026-09-27T11:04:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `126e70e32bcb2072a0aa85cd22c3a50fc30fa98d88636a90763af29f48857f2a`

**Input hash:** `55b63558513451b2231f16868dc6cf94673fe08037c2cc6bc673600a24505092`

**Inputs:** `132 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

The ten characteristics of implementation quality (ADR-0063), and what this repository at this commit is in a position to attest against each. **Sanad** is what the product can check; **this repository** is what its own declarations, producers and rule pack leave standing. A characteristic that attested nothing says which of the two it was waiting on — never a clean result it did not compute.

**Of 10 characteristics:** 4 attested here, 0 partly attested, 0 did not run, 5 with no deterministic rule yet, 1 heuristic only.

| Characteristic | Level | Sanad | This repository | Findings |
|---|---|---|---|---|
| `EIWR-001` Traceable | 3 | shipped | attested | 0 |
| `EIWR-002` Attributed | 3 | shipped | attested | 0 |
| `EIWR-003` Architecturally compliant | 2 | shipped | attested | 0 |
| `EIWR-004` Verified | 3 | partial | attested | 47 |
| `EIWR-005` Sufficiently verified for its rigour | 4 | needs-rule | no rule | 0 |
| `EIWR-006` Deterministic | 4 | needs-producer | no rule | 0 |
| `EIWR-007` Secure | 4 | needs-producer | no rule | 0 |
| `EIWR-008` Partitioned | 2 | needs-rule | no rule | 0 |
| `EIWR-009` Maintainable | 1 | needs-producer | no rule | 0 |
| `EIWR-010` Consistent with intent | 5 | candidate | heuristic only | 0 |

**Index**

- [EIWR-001 — Traceable](#eiwr-001--traceable)
- [EIWR-002 — Attributed](#eiwr-002--attributed)
- [EIWR-003 — Architecturally compliant](#eiwr-003--architecturally-compliant)
- [EIWR-004 — Verified](#eiwr-004--verified)
- [EIWR-005 — Sufficiently verified for its rigour](#eiwr-005--sufficiently-verified-for-its-rigour)
- [EIWR-006 — Deterministic](#eiwr-006--deterministic)
- [EIWR-007 — Secure](#eiwr-007--secure)
- [EIWR-008 — Partitioned](#eiwr-008--partitioned)
- [EIWR-009 — Maintainable](#eiwr-009--maintainable)
- [EIWR-010 — Consistent with intent](#eiwr-010--consistent-with-intent)
- [Producer facts available at this commit](#producer-facts-available-at-this-commit)
- [Style — imported, never implemented](#style--imported-never-implemented)

## EIWR-001 — Traceable

*Does every unit of code trace to a requirement, and every requirement to code?*

**Rigour level:** 3 · **Sanad:** shipped · **This repository:** attested

| Rule | Analysis | Severity (floor band) | State | Findings |
|---|---|---|---|---|
| `not-implemented` | `implementation` | error | live | 0 |
| `partially-implemented` | `implementation` | warning | live | 0 |
| `untraced-code` | `implementation` | warning | live | 0 |
| `dead-requirement` | `implementation` | error | live | 0 |

## EIWR-002 — Attributed

*Do the code and the requirement AGREE about the link, or does one claim what the other denies?*

**Rigour level:** 3 · **Sanad:** shipped · **This repository:** attested

| Rule | Analysis | Severity (floor band) | State | Findings |
|---|---|---|---|---|
| `implements-disputed` | `implementation` | error | live | 0 |
| `implements-unacknowledged` | `implementation` | warning | live | 0 |
| `implements-withdrawn` | `implementation` | warning | live | 0 |

**Note:** `implements-withdrawn` needs a second, pinned index state as well as this one; with a single state it cannot fire, and this report does not see the pin.

## EIWR-003 — Architecturally compliant

*Does the built dependency graph obey the declared architecture?*

**Rigour level:** 2 · **Sanad:** shipped · **This repository:** attested

| Rule | Analysis | Severity (floor band) | State | Findings |
|---|---|---|---|---|
| `forbidden-dependency` | `conformance` | error | live | 0 |
| `unassigned-code` | `conformance` | warning | live | 0 |
| `dangling-component` | `conformance` | warning | live | 0 |

**Note:** Shipped by FEAT-012 (ADR-0099). `interface-signature-mismatch` is not among these: it needs a call graph, and the symbol schema records declarations rather than uses.

## EIWR-004 — Verified

*Does a test exercise this code, did it pass, and is the result current?*

**Rigour level:** 3 · **Sanad:** partial · **This repository:** attested

| Rule | Analysis | Severity (floor band) | State | Findings |
|---|---|---|---|---|
| `missing-case` | `verification` | warning | live | 1 |
| `missing-method` | `verification` | error | live | 0 |
| `missing-procedure` | `verification` | error | live | 0 |
| `verification-failing` | `verification` | error | live | 0 |
| `missing-result` | `verification` | warning | live | 46 |
| `unexercised-code` | `implementation` | warning | live | 0 |

**Not yet attested:** a rule comparing the declared state of a test report against the commit

**Note:** Existence, outcome and exercise are attested (FEAT-065, FEAT-007). CURRENCY is not: a producer declares the state its facts describe, and nothing yet compares that declaration with the commit being reported on.

## EIWR-005 — Sufficiently verified for its rigour

*Are the test CATEGORIES and structural coverage this criticality demands present?*

**Rigour level:** 4 · **Sanad:** needs-rule · **This repository:** no rule

No rule attests this characteristic today.

**Waiting on:** a banded sufficiency policy over the coverage and level facts the graph now carries

**Tracked as:** `FEAT-008`, `FEAT-009`

**Note:** The producers landed with FEAT-007: coverage arrives as `hits`, and the verification level of each report arrives as declared data. Sufficiency is a compiled POLICY lookup against the rigour band, not a new engine — the machinery that makes a weak term an error at DAL A and silent at DAL D.

## EIWR-006 — Deterministic

*Is the construct set free of recursion, dynamic allocation and hidden control flow?*

**Rigour level:** 4 · **Sanad:** needs-producer · **This repository:** no rule

No rule attests this characteristic today.

**Waiting on:** SARIF or equivalent from a qualified analyser

**Note:** Sanad cannot see a malloc: it has no parser and ADR-0025 rejected building one. The pack declares the obligation and binds severity to the rigour band; a qualified tool supplies the fact. That division is the differentiator, because no analyser knows the DAL.

## EIWR-007 — Secure

*Are inputs validated, secrets absent, and crypto used as declared?*

**Rigour level:** 4 · **Sanad:** needs-producer · **This repository:** no rule

No rule attests this characteristic today.

**Waiting on:** SARIF from a security analyser

## EIWR-008 — Partitioned

*Does code serving one criticality avoid entanglement with a lower one?*

**Rigour level:** 2 · **Sanad:** needs-rule · **This repository:** no rule

No rule attests this characteristic today.

**Waiting on:** a rule joining resolved criticality to the component dependencies FEAT-012 now produces

**Tracked as:** `FEAT-012`

**Note:** criticality x dependency. The dependency half shipped with architecture conformance; the join with the rigour band did not. A linter sees the import and not the DAL; the graph sees both, and that is still the reason this rule can exist here and nowhere else.

## EIWR-009 — Maintainable

*Is complexity bounded, and is complex code governed by a requirement?*

**Rigour level:** 1 · **Sanad:** needs-producer · **This repository:** no rule

No rule attests this characteristic today.

**Waiting on:** complexity metrics from an existing analyser

**Note:** The metric is commodity — every analyser emits it. The differentiated half is `untraced-complexity`: a high-complexity function governed by NO requirement. That join needs the graph.

## EIWR-010 — Consistent with intent

*Does the code do what the requirement says, in the order it says?*

**Rigour level:** 5 · **Sanad:** candidate · **This repository:** heuristic only

No deterministic rule attests this, and none will: it is a candidate lane. AI may propose; only a human accepting a proposal as an ordinary Git edit makes it a fact, and nothing here enters evidence (rule 8).

**Waiting on:** a needsAi engine (door two, built and dormant)

**Note:** `activateRoute(); validateRoute();` passes every static analyser and violates "validated before activation". AI may PROPOSE this; only a human accepting it as an ordinary Git edit makes it a fact. It carries `heuristic: true`, is clamped below error, and never enters evidence (rule 8).

## Producer facts available at this commit

Every fact a rule above waits on, and whether this run had it. A fact is a shape in the Engineering Graph; absence means no declared producer supplied it, which is not the same as a measurement of zero.

| Fact | Present |
|---|---|
| `codeSymbol` | yes |
| `implements` | yes |
| `component` | yes |
| `componentUses` | yes |
| `verificationCase` | yes |
| `testResult` | yes |
| `coverage` | yes |

## Style — imported, never implemented

Naming, formatting, magic numbers and unused variables are **not** an EIWR characteristic. They are level-1 commodity: a dozen analysers check them, several with tool qualification. Sanad imports those findings and governs their severity by rigour band — SARIF snapshot producer + banded severity in the rule pack — and re-implements none of them. Status: `imported-never-implemented`, decided by `qual/capabilities/graph/engineering-facts/design/ADR-0061-snapshot-importer-adapter.md`.

