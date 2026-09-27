# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `f09a78fd09bbc0667ee9c6f113dce569554b766e`

**Commit date:** `2026-09-27T11:31:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `eb993bc900028f9dfe670b03a7b38ec3cc25a38a376cbf3731db7e2e1aadbaa8`

**Input hash:** `0ca93832910388c53f96571c3376a59531ed720a5dfed8d469a1aebc4e8b899e`

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

**Findings:** 462

## Findings by severity

| Severity | Findings |
|---|---|
| error | 6 |
| warning | 253 |
| info | 203 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 96 |
| consistency | 1 |
| graph | 78 |
| impact | 6 |
| implementation | 1 |
| quality | 71 |
| safety | 17 |
| structure | 90 |
| sysml-project | 33 |
| validation | 4 |
| verification | 53 |

## Findings by rule

| Rule | Findings |
|---|---|
| allocation-target-undeclared | 50 |
| atomicity | 5 |
| dead-requirement | 1 |
| decimal-format | 1 |
| duplicate-requirement | 1 |
| empty-component | 12 |
| implementation-outside-component | 46 |
| indefinite-article | 46 |
| link-role-unreadable | 4 |
| logical-expression | 9 |
| missing-case | 7 |
| missing-result | 46 |
| parent-child-inconsistency | 8 |
| passive-voice | 1 |
| requirement-pattern | 3 |
| single-point-failure | 1 |
| sysml-file-package-mismatch | 3 |
| sysml-unresolved-id | 74 |
| sysml-unresolved-import | 30 |
| temporal-keyword | 1 |
| testability | 4 |
| undeclared-hazard | 16 |
| undeclared-id-prefix | 4 |
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
| `consistency.comparedPairs` | 259 |
| `consistency.uncomparedRequirements` | 1 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 70 |
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
| `verification.coverage` | 95% |

