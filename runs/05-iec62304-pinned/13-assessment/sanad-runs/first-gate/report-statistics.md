# Requirement Statistics

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `f87cc4bcbbd672a5b2c48dffac638885761404be`

**Commit date:** `2026-09-27T11:24:39+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `f5af1c4f3c69de2044f041708594ce8b71d6c96567a9f3b22483c45ae408b3e8`

**Input hash:** `76a671232621de80826005588fdd78a00704a4ad53241ebe129109a196d1bb72`

**Inputs:** `146 requirements`, `symbol index`, `architecture inventory`

**Rule pack:** `default`

**Analyses that ran:** `validation`, `traceability`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Analyses that did not run for want of a rule pack:**

- `quality` — did not run: this repository's `.ejadah/rew/config.yaml` selects no rule pack, and this analysis checks how requirements are written. It produced no findings, and that silence is not a clean result.

**Index**

- [Scope](#scope)
- [Findings by severity](#findings-by-severity)
- [Findings by analysis](#findings-by-analysis)
- [Findings by rule](#findings-by-rule)
- [Repository metrics](#repository-metrics)

## Scope

**Requirements analysed:** 146

**Findings:** 260

## Findings by severity

| Severity | Findings |
|---|---|
| error | 12 |
| warning | 104 |
| info | 144 |

## Findings by analysis

| Analysis | Findings |
|---|---|
| architecture | 67 |
| config | 1 |
| consistency | 5 |
| graph | 7 |
| impact | 8 |
| implementation | 16 |
| safety | 41 |
| structure | 82 |
| validation | 33 |

## Findings by rule

| Rule | Findings |
|---|---|
| config-not-read | 1 |
| dead-requirement | 1 |
| duplicate-requirement | 5 |
| empty-component | 12 |
| link-role-unreadable | 4 |
| not-a-requirement | 29 |
| not-implemented | 10 |
| parent-child-inconsistency | 20 |
| partially-implemented | 5 |
| single-point-failure | 1 |
| unallocated-requirement | 55 |
| undeclared-hazard | 40 |
| undeclared-id-prefix | 7 |
| under-decomposition | 62 |
| wide-impact | 8 |

## Repository metrics

| Metric | Value |
|---|---|
| `architecture.allocationCoverage` | 0% |
| `conformance.assignedSymbols` | 0 |
| `conformance.dependencies` | 16 |
| `conformance.unassignedSymbols` | 0 |
| `conformance.violations` | 0 |
| `consistency.comparedPairs` | 314 |
| `consistency.uncomparedRequirements` | 0 |
| `consistency.unitViolations` | 0 |
| `impact.blastRadius.max` | 72 |
| `impact.changeOrigins` | 8 |
| `impact.originsUntraversed` | 0 |
| `implementation.coverage` | 91% |
| `implementation.untracedSymbols` | 0 |
| `safety.hazardCoverage` | 100% |
| `structure.depth.max` | 6 |
| `structure.fanout.mean` | 1.75 |
| `structure.undecomposed` | 0 |
| `traceability.derivedExemptions` | 0 |
| `traceability.orphans` | 0 |
| `validation.clean` | 100% |
| `validation.errors` | 0 |
| `validation.filesIgnored` | 0 |
| `validation.filesMalformed` | 0 |
| `validation.filesNotRequirements` | 29 |
| `validation.requirements` | 146 |
| `validation.warnings` | 0 |

