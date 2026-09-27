# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `5c0c579424b71735371815ebf7586c0c571979ec`

**Commit date:** `2026-09-27T11:33:09+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `b92bf5aeac4fff102e6f766172f08f7b589fe17710727eaf960681c4c339e231`

**Input hash:** `8d3122d851b11030030345f514dbec8d6db5d1b07b159f4530fefb2c9f3baf53`

**Inputs:** `138 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

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

**Requirements analysed:** 138

**Findings:** 327

## Findings by severity

| Severity | Findings |
|---|---|
| error | 0 |
| warning | 130 |
| info | 197 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 46 |
| consistency | 10 |
| graph | 3 |
| impact | 6 |
| quality | 61 |
| safety | 17 |
| structure | 82 |
| sysml-project | 33 |
| validation | 4 |
| verification | 53 |

## Findings by rule

| Rule | Findings |
|---|---|
| decimal-format | 1 |
| duplicate-requirement | 10 |
| empty-component | 12 |
| implementation-outside-component | 46 |
| indefinite-article | 45 |
| link-role-unreadable | 4 |
| logical-expression | 4 |
| missing-case | 1 |
| missing-result | 52 |
| requirement-pattern | 3 |
| single-point-failure | 1 |
| sysml-file-package-mismatch | 3 |
| sysml-unresolved-import | 30 |
| temporal-keyword | 1 |
| testability | 6 |
| undeclared-hazard | 16 |
| undeclared-id-prefix | 3 |
| under-decomposition | 82 |
| universal-quantifier | 1 |
| wide-impact | 6 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 100% |
| `conformance.assignedSymbols` | 0 |
| `conformance.dependencies` | 16 |
| `conformance.unassignedSymbols` | 0 |
| `conformance.violations` | 0 |
| `consistency.comparedPairs` | 265 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 74 |
| `impact.changeOrigins` | 6 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 89% |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 99 |
| `quality.scored` | 138 |
| `safety.hazardCoverage` | 100% |
| `safety.rigourViolations` | 2 |
| `structure.depth.max` | 6 |
| `structure.fanout.mean` | 1.63 |
| `structure.undecomposed` | 2 |
| `traceability.derivedExemptions` | 0 |
| `traceability.orphans` | 0 |
| `traceability.stakeholder.coverage` | 100% |
| `traceability.system.coverage` | 92% |
| `validation.clean` | 100% |
| `validation.errors` | 0 |
| `validation.filesIgnored` | 0 |
| `validation.filesMalformed` | 0 |
| `validation.filesNotRequirements` | 0 |
| `validation.requirements` | 138 |
| `validation.warnings` | 0 |
| `verification.coverage` | 99% |

