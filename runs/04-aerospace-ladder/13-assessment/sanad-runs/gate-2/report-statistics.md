# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `6ca73a03ada57457a353d8bc00cfdda1f422593e`

**Commit date:** `2026-09-27T11:34:26+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `1832d323a4a59bc965d1546ce33b5e8a42ffe0bcb51aff4e59ab665b956bf32c`

**Input hash:** `bb615c09f2a9ab73e6b0f6d0f4891025c8d6ac5fd4c178bf0bf7b305b1f59581`

**Inputs:** `177 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

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

**Requirements analysed:** 177

**Findings:** 693

## Findings by severity

| Severity | Findings |
|---|---|
| error | 5 |
| warning | 367 |
| info | 321 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 66 |
| graph | 55 |
| impact | 6 |
| implementation | 5 |
| quality | 164 |
| safety | 102 |
| structure | 66 |
| sysml-project | 49 |
| traceability | 75 |
| validation | 4 |
| verification | 89 |

## Findings by rule

| Rule | Findings |
|---|---|
| allocation-target-undeclared | 27 |
| combinator | 1 |
| dead-requirement | 5 |
| decimal-format | 3 |
| empty-component | 12 |
| implementation-outside-component | 39 |
| indefinite-article | 65 |
| link-role-unreadable | 4 |
| logical-expression | 17 |
| missing-case | 19 |
| missing-decomposition | 1 |
| missing-result | 70 |
| negation | 1 |
| oblique-symbol | 1 |
| over-decomposition | 1 |
| parent-child-inconsistency | 10 |
| parenthetical | 6 |
| passive-voice | 5 |
| readability | 1 |
| requirement-pattern | 4 |
| structured-statement | 1 |
| sysml-not-read | 11 |
| sysml-unresolved-id | 17 |
| sysml-unresolved-import | 49 |
| temporal-keyword | 3 |
| testability | 44 |
| undeclared-hazard | 102 |
| undeclared-id-prefix | 27 |
| under-decomposition | 54 |
| universal-quantifier | 2 |
| weak-term | 10 |
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
| `consistency.comparedPairs` | 345 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 199 |
| `impact.changeOrigins` | 8 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 100% |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 97 |
| `quality.scored` | 177 |
| `safety.hazardCoverage` | 100% |
| `safety.rigourViolations` | 24 |
| `structure.depth.max` | 6 |
| `structure.fanout.mean` | 2.34 |
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
| `validation.requirements` | 177 |
| `validation.warnings` | 0 |
| `verification.coverage` | 89% |

