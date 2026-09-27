# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `0abc378672ee0cce17fdfec2a38db9acdbf9fa0e`

**Commit date:** `2026-09-27T11:26:12+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `5d3eaed4672357a3f152b73777c549e12f3322dc0cf3140ae32f1f4452e0dccc`

**Input hash:** `8afa911daa89f59110144cefae29f982bb8a365a8b802a0d832ba03bd35b377c`

**Inputs:** `146 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

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

**Requirements analysed:** 146

**Findings:** 398

## Findings by severity

| Severity | Findings |
|---|---|
| error | 0 |
| warning | 143 |
| info | 255 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 69 |
| consistency | 2 |
| graph | 14 |
| impact | 6 |
| quality | 55 |
| safety | 41 |
| structure | 69 |
| sysml-project | 89 |
| validation | 4 |
| verification | 37 |

## Findings by rule

| Rule | Findings |
|---|---|
| allocation-target-undeclared | 23 |
| decimal-format | 1 |
| duplicate-requirement | 2 |
| empty-component | 12 |
| implementation-outside-component | 46 |
| indefinite-article | 43 |
| link-role-unreadable | 4 |
| logical-expression | 3 |
| missing-case | 1 |
| missing-result | 36 |
| parent-child-inconsistency | 7 |
| passive-voice | 1 |
| requirement-pattern | 3 |
| single-point-failure | 1 |
| sysml-not-read | 7 |
| sysml-unresolved-import | 89 |
| temporal-keyword | 3 |
| testability | 1 |
| undeclared-hazard | 40 |
| undeclared-id-prefix | 7 |
| under-decomposition | 62 |
| wide-impact | 6 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 100% |
| `conformance.assignedSymbols` | 0 |
| `conformance.dependencies` | 16 |
| `conformance.unassignedSymbols` | 0 |
| `conformance.violations` | 0 |
| `consistency.comparedPairs` | 305 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 61 |
| `impact.changeOrigins` | 6 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 92% |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 99 |
| `quality.scored` | 146 |
| `safety.hazardCoverage` | 100% |
| `safety.rigourViolations` | 2 |
| `structure.depth.max` | 6 |
| `structure.fanout.mean` | 1.75 |
| `structure.undecomposed` | 2 |
| `traceability.derivedExemptions` | 0 |
| `traceability.orphans` | 0 |
| `traceability.stakeholder.coverage` | 100% |
| `traceability.system.coverage` | 92% |
| `validation.clean` | 100% |
| `validation.errors` | 0 |
| `validation.filesIgnored` | 29 |
| `validation.filesMalformed` | 0 |
| `validation.filesNotRequirements` | 0 |
| `validation.requirements` | 146 |
| `validation.warnings` | 0 |
| `verification.coverage` | 99% |

