# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `3220edbf942470eb2494a32a0b6c2befa6bdbdd5`

**Commit date:** `2026-09-27T00:18:39+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `7f631725800e6751a416dada88c69efe97da5ea0bc4177733c0a94dc21140d19`

**Input hash:** `2c9742367e0e4914da64b949650aa12559cc4a12cbd486d6fa66bf31cf58601b`

**Inputs:** `69 requirements`, `architecture inventory`, `glossary`, `data dictionary`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `implementation` — did not run: no template in this repository declares the role `implements`. It produced no findings, and that silence is not a clean result.
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

**Findings:** 33

## Findings by severity

| Severity | Findings |
|---|---|
| error | 0 |
| warning | 0 |
| info | 33 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| impact | 2 |
| quality | 21 |
| safety | 1 |
| structure | 4 |
| sysml-project | 1 |
| validation | 4 |

## Findings by rule

| Rule | Findings |
|---|---|
| impact-incomplete | 1 |
| indefinite-article | 18 |
| link-role-unreadable | 4 |
| logical-expression | 1 |
| requirement-pattern | 2 |
| single-point-failure | 1 |
| sysml-unresolved-import | 1 |
| under-decomposition | 4 |
| wide-impact | 1 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 98% |
| `consistency.comparedPairs` | 127 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 13 |
| `impact.changeOrigins` | 6 |
| `impact.originsUntraversed` | 0 |
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

