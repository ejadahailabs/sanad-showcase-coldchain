# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `07dd5759f2a23807c53db975d3e724ad3d0e24f1`

**Commit date:** `2026-09-27T11:32:19+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `10162b743be3e88d8b84e26d2912f0e0335363316a74a353c254587993942a31`

**Input hash:** `714afd6f51eeb8df7f987ac9146021f2e60192b90e431fa759f812c34ddaec1a`

**Inputs:** `176 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Index**

- [Scope](#scope)
- [Findings by severity](#findings-by-severity)
- [Findings by analysis](#findings-by-analysis)
- [Findings by rule](#findings-by-rule)
- [Repository metrics](#repository-metrics)

## Scope

**Requirements analysed:** 176

**Findings:** 811

## Findings by severity

| Severity | Findings |
|---|---|
| error | 121 |
| warning | 369 |
| info | 321 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 66 |
| graph | 55 |
| impact | 6 |
| implementation | 93 |
| quality | 172 |
| safety | 125 |
| structure | 65 |
| sysml-project | 49 |
| traceability | 75 |
| validation | 4 |
| verification | 89 |

## Findings by rule

| Rule | Findings |
|---|---|
| allocation-target-undeclared | 27 |
| atomicity | 4 |
| combinator | 1 |
| dead-requirement | 4 |
| decimal-format | 3 |
| empty-component | 12 |
| implementation-outside-component | 39 |
| indefinite-article | 65 |
| link-role-unreadable | 4 |
| logical-expression | 19 |
| missing-case | 19 |
| missing-decomposition | 1 |
| missing-result | 70 |
| negation | 1 |
| not-implemented | 87 |
| oblique-symbol | 1 |
| optionality | 2 |
| over-decomposition | 1 |
| parent-child-inconsistency | 10 |
| parenthetical | 6 |
| partially-implemented | 2 |
| passive-voice | 5 |
| readability | 1 |
| requirement-pattern | 4 |
| rigour-inconsistency | 24 |
| structured-statement | 1 |
| sysml-not-read | 11 |
| sysml-unresolved-id | 17 |
| sysml-unresolved-import | 49 |
| temporal-keyword | 3 |
| testability | 43 |
| undeclared-hazard | 101 |
| undeclared-id-prefix | 27 |
| under-decomposition | 53 |
| universal-quantifier | 2 |
| weak-term | 11 |
| wide-impact | 6 |
| wrong-uplink-level | 75 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 100% |
| `conformance.assignedSymbols` | 0 |
| `conformance.dependencies` | 16 |
| `conformance.unassignedSymbols` | 0 |
| `conformance.violations` | 0 |
| `consistency.comparedPairs` | 336 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 198 |
| `impact.changeOrigins` | 8 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 33% |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 97 |
| `quality.scored` | 176 |
| `safety.hazardCoverage` | 100% |
| `safety.rigourViolations` | 24 |
| `structure.depth.max` | 6 |
| `structure.fanout.mean` | 2.35 |
| `structure.undecomposed` | 1 |
| `traceability.derivedExemptions` | 0 |
| `traceability.function.coverage` | 100% |
| `traceability.hlr.coverage` | 97% |
| `traceability.orphans` | 0 |
| `traceability.stakeholder.coverage` | 100% |
| `traceability.system.coverage` | 100% |
| `validation.clean` | 100% |
| `validation.errors` | 0 |
| `validation.filesIgnored` | 0 |
| `validation.filesMalformed` | 0 |
| `validation.filesNotRequirements` | 0 |
| `validation.requirements` | 176 |
| `validation.warnings` | 0 |
| `verification.coverage` | 89% |

