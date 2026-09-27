# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `46913ef7a2ef306336786482c8732e256ca2a410`

**Commit date:** `2026-09-26T23:05:33+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `9b560a0e39798998f62bdf0614cf17eaa41d6808c162163e6a591df26e67e1c3`

**Input hash:** `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855`

**Inputs:** `0 requirements`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `consistency`, `impact`

**Analyses that did not run:**

- `architecture` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `conformance` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `implementation` — did not run: no template in this repository declares the role `implements`. It produced no findings, and that silence is not a clean result.
- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `safety` — did not run: no template in this repository declares the role `hazard`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 9 — 0 errors · 1 warnings · 8 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (1)](#warnings-1)
    - [`clean-not-computed` (1)](#clean-not-computed-1)
  - [Information (8)](#information-8)
    - [`impact-incomplete` (1)](#impact-incomplete-1)
    - [`not-a-requirement` (7)](#not-a-requirement-7)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (1)](#repository-1)
  - [/tmp/sanad-at-Yc9voW/tree/.ejadah/rew/config.yaml (1)](#tmpsanad-at-yc9vowtreeejadahrewconfigyaml-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/environmental/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementsenvironmentalreadmemd-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/interface/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementsinterfacereadmemd-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/maintainability/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementsmaintainabilityreadmemd-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/performance/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementsperformancereadmemd-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/safety/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementssafetyreadmemd-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/stakeholder/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementsstakeholderreadmemd-1)
  - [/tmp/sanad-at-Yc9voW/tree/03-requirements/system/README.md (1)](#tmpsanad-at-yc9vowtree03-requirementssystemreadmemd-1)

## Findings by severity

### Warnings (1)

#### `clean-not-computed` (1)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-Yc9voW/tree/.ejadah/rew/config.yaml | Clean % not computed — no requirement was checked, so it has no denominator |

### Information (8)

#### `impact-incomplete` (1)

| Requirement | Message |
|---|---|
| (repository) | Impact is bounded here by 1 limit — these numbers are not a clean result |

#### `not-a-requirement` (7)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-Yc9voW/tree/03-requirements/environmental/README.md | README.md: not a "environmental" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-ENV-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-Yc9voW/tree/03-requirements/interface/README.md | README.md: not a "interface" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-IFC-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-Yc9voW/tree/03-requirements/maintainability/README.md | README.md: not a "maintainability" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-MNT-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-Yc9voW/tree/03-requirements/performance/README.md | README.md: not a "performance" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PRF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-Yc9voW/tree/03-requirements/safety/README.md | README.md: not a "safety" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SAF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-Yc9voW/tree/03-requirements/stakeholder/README.md | README.md: not a "stakeholder" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-STK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-Yc9voW/tree/03-requirements/system/README.md | README.md: not a "system" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SYS-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

## Findings by requirement

### (repository) (1)

| Severity | Rule | Message |
|---|---|---|
| info | `impact-incomplete` | Impact is bounded here by 1 limit — these numbers are not a clean result |

### /tmp/sanad-at-Yc9voW/tree/.ejadah/rew/config.yaml (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `clean-not-computed` | Clean % not computed — no requirement was checked, so it has no denominator |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/environmental/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "environmental" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-ENV-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/interface/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "interface" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-IFC-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/maintainability/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "maintainability" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-MNT-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/performance/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "performance" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PRF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/safety/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "safety" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SAF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/stakeholder/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "stakeholder" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-STK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-Yc9voW/tree/03-requirements/system/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "system" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SYS-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

