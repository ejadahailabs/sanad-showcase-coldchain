# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `0e36b6f3db09a6ff4c7b4c0b4533d4342ae2af44`

**Commit date:** `2026-09-27T00:49:05+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `73cefee784dee2f82b17b2bc0916ef096e2870b33c173e9c2bd748da1f696138`

**Input hash:** `2c9742367e0e4914da64b949650aa12559cc4a12cbd486d6fa66bf31cf58601b`

**Inputs:** `69 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`

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

**Requirements analysed:** 69

**Findings:** 71

## Findings by severity

| Severity | Findings |
|---|---|
| error | 6 |
| warning | 7 |
| info | 58 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| conformance | 12 |
| impact | 5 |
| implementation | 1 |
| quality | 21 |
| safety | 1 |
| structure | 4 |
| sysml-project | 23 |
| validation | 4 |

## Findings by rule

| Rule | Findings |
|---|---|
| dead-requirement | 1 |
| forbidden-dependency | 5 |
| implementation-outside-component | 7 |
| indefinite-article | 18 |
| link-role-unreadable | 4 |
| logical-expression | 1 |
| requirement-pattern | 2 |
| single-point-failure | 1 |
| sysml-unresolved-import | 23 |
| under-decomposition | 4 |
| wide-impact | 5 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 98% |
| `conformance.assignedSymbols` | 0 |
| `conformance.dependencies` | 16 |
| `conformance.unassignedSymbols` | 0 |
| `conformance.violations` | 5 |
| `consistency.comparedPairs` | 127 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 24 |
| `impact.changeOrigins` | 6 |
| `impact.originsUntraversed` | 0 |
| `implementation.untracedSymbols` | 0 |
| `quality.repoMean` | 98 |
| `quality.scored` | 69 |
| `safety.hazardCoverage` | 100% |
| `safety.rigourViolations` | 0 |
| `structure.depth.max` | 3 |
| `structure.fanout.mean` | 3.05 |
| `structure.undecomposed` | 11 |
| `traceability.derivedExemptions` | 0 |
| `traceability.orphans` | 0 |
| `traceability.stakeholder.coverage` | 100% |
| `traceability.system.coverage` | 52% |
| `validation.clean` | 100% |
| `validation.errors` | 0 |
| `validation.filesIgnored` | 7 |
| `validation.filesMalformed` | 0 |
| `validation.filesNotRequirements` | 0 |
| `validation.requirements` | 69 |
| `validation.warnings` | 0 |

