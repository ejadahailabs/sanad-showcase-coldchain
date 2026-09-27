# Requirement Statistics

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

**Index**

- [Scope](#scope)
- [Findings by severity](#findings-by-severity)
- [Findings by analysis](#findings-by-analysis)
- [Findings by rule](#findings-by-rule)
- [Repository metrics](#repository-metrics)

## Scope

**Requirements analysed:** 132

**Findings:** 394

## Findings by severity

| Severity | Findings |
|---|---|
| error | 0 |
| warning | 167 |
| info | 227 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 12 |
| conformance | 73 |
| consistency | 2 |
| graph | 23 |
| impact | 6 |
| quality | 50 |
| safety | 17 |
| structure | 58 |
| sysml-project | 63 |
| validation | 43 |
| verification | 47 |

## Findings by rule

| Rule | Findings |
|---|---|
| allocation-target-undeclared | 27 |
| conflicting-requirements | 1 |
| decimal-format | 1 |
| duplicate-requirement | 1 |
| empty-component | 12 |
| implementation-outside-component | 46 |
| indefinite-article | 40 |
| link-role-unreadable | 4 |
| logical-expression | 4 |
| missing-case | 1 |
| missing-result | 46 |
| not-a-requirement | 39 |
| parent-child-inconsistency | 10 |
| requirement-pattern | 3 |
| single-point-failure | 1 |
| sysml-not-read | 19 |
| sysml-unresolved-import | 63 |
| temporal-keyword | 1 |
| undeclared-hazard | 16 |
| undeclared-id-prefix | 4 |
| under-decomposition | 48 |
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
| `consistency.comparedPairs` | 254 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 66 |
| `impact.changeOrigins` | 6 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 89% |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 99 |
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

