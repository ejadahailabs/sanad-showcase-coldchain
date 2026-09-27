# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `6abc54b2169e118ec9a49554fe8f659a3f7ca9cf`

**Commit date:** `2026-09-27T10:53:12+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `9e77356eb37727b2adbb9cde684cc54b4bee4fb20b4ff69c8cf3163aa2d4c573`

**Input hash:** `ebfcf16ef59bdaf96b2ef25eafa82a33c91eaf465ebf104e4955b2e1ee9ee51c`

**Inputs:** `132 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

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

**Requirements analysed:** 132

**Findings:** 420

## Findings by severity

| Severity | Findings |
|---|---|
| error | 3 |
| warning | 194 |
| info | 223 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 73 |
| consistency | 2 |
| graph | 31 |
| impact | 6 |
| implementation | 1 |
| quality | 65 |
| safety | 19 |
| structure | 58 |
| sysml-project | 63 |
| validation | 43 |
| verification | 47 |

## Findings by rule

| Rule | Findings |
|---|---|
| allocation-target-undeclared | 27 |
| conflicting-requirements | 1 |
| dead-requirement | 1 |
| decimal-format | 1 |
| duplicate-requirement | 1 |
| empty-component | 12 |
| implementation-outside-component | 46 |
| indefinite-article | 35 |
| link-role-unreadable | 4 |
| logical-expression | 4 |
| missing-case | 1 |
| missing-result | 46 |
| not-a-requirement | 39 |
| parent-child-inconsistency | 10 |
| passive-voice | 1 |
| requirement-pattern | 3 |
| rigour-inconsistency | 2 |
| single-point-failure | 1 |
| sysml-not-read | 19 |
| sysml-unresolved-import | 63 |
| temporal-keyword | 2 |
| testability | 12 |
| undeclared-hazard | 16 |
| undeclared-id-prefix | 12 |
| under-decomposition | 48 |
| universal-quantifier | 1 |
| weak-term | 6 |
| wide-impact | 6 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 100% |
| `conformance.assignedSymbols` | 0 |
| `conformance.dependencies` | 16 |
| `conformance.unassignedSymbols` | 0 |
| `conformance.violations` | 0 |
| `consistency.comparedPairs` | 252 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 63 |
| `impact.changeOrigins` | 6 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 89% |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 98 |
| `quality.scored` | 132 |
| `safety.hazardCoverage` | 100% |
| `safety.rigourViolations` | 2 |
| `structure.depth.max` | 6 |
| `structure.fanout.mean` | 1.86 |
| `structure.undecomposed` | 2 |
| `traceability.derivedExemptions` | 0 |
| `traceability.orphans` | 0 |
| `traceability.stakeholder.coverage` | 100% |
| `traceability.system.coverage` | 92% |
| `validation.clean` | 100% |
| `validation.errors` | 0 |
| `validation.filesIgnored` | 56 |
| `validation.filesMalformed` | 0 |
| `validation.filesNotRequirements` | 39 |
| `validation.requirements` | 132 |
| `validation.warnings` | 0 |
| `verification.coverage` | 99% |

