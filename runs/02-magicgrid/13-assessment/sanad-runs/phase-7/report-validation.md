# Validation Report

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

**Findings:** 33 — 0 errors · 0 warnings · 33 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Information (33)](#information-33)
    - [`impact-incomplete` (1)](#impact-incomplete-1)
    - [`indefinite-article` (18)](#indefinite-article-18)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`logical-expression` (1)](#logical-expression-1)
    - [`requirement-pattern` (2)](#requirement-pattern-2)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`sysml-unresolved-import` (1)](#sysml-unresolved-import-1)
    - [`under-decomposition` (4)](#under-decomposition-4)
    - [`wide-impact` (1)](#wide-impact-1)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (1)](#repository-1)
  - [/tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-pizlwptreeejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-pizlwptreeejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-pizlwptreeejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-pizlwptreeejadahrewtemplatessystemmd-1)
  - [06-design/software/MrtmSoftware.sysml (1)](#06-designsoftwaremrtmsoftwaresysml-1)
  - [MRTM-ENV-002 (1)](#mrtm-env-002-1)
  - [MRTM-ENV-003 (1)](#mrtm-env-003-1)
  - [MRTM-ENV-004 (1)](#mrtm-env-004-1)
  - [MRTM-IFC-003 (1)](#mrtm-ifc-003-1)
  - [MRTM-IFC-004 (1)](#mrtm-ifc-004-1)
  - [MRTM-MNT-001 (1)](#mrtm-mnt-001-1)
  - [MRTM-PRF-001 (1)](#mrtm-prf-001-1)
  - [MRTM-PRF-004 (1)](#mrtm-prf-004-1)
  - [MRTM-SAF-001 (1)](#mrtm-saf-001-1)
  - [MRTM-SAF-003 (1)](#mrtm-saf-003-1)
  - [MRTM-SAF-004 (1)](#mrtm-saf-004-1)
  - [MRTM-SAF-011 (2)](#mrtm-saf-011-2)
  - [MRTM-SAF-013 (1)](#mrtm-saf-013-1)
  - [MRTM-SAF-015 (1)](#mrtm-saf-015-1)
  - [MRTM-SAF-021 (1)](#mrtm-saf-021-1)
  - [MRTM-SAF-022 (1)](#mrtm-saf-022-1)
  - [MRTM-STK-004 (1)](#mrtm-stk-004-1)
  - [MRTM-STK-008 (1)](#mrtm-stk-008-1)
  - [MRTM-SYS-004 (2)](#mrtm-sys-004-2)
  - [MRTM-SYS-011 (1)](#mrtm-sys-011-1)
  - [MRTM-SYS-012 (1)](#mrtm-sys-012-1)
  - [MRTM-SYS-014 (1)](#mrtm-sys-014-1)
  - [MRTM-SYS-020 (2)](#mrtm-sys-020-2)
  - [MRTM-SYS-021 (1)](#mrtm-sys-021-1)

## Findings by severity

### Information (33)

#### `impact-incomplete` (1)

| Requirement | Message |
|---|---|
| (repository) | Impact is bounded here by 1 limit — these numbers are not a clean result |

#### `indefinite-article` (18)

| Requirement | Message |
|---|---|
| MRTM-ENV-002 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-ENV-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-IFC-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-MNT-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-PRF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-001 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-003 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-004 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-011 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-021 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SAF-022 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `logical-expression` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-013 | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

#### `requirement-pattern` (2)

| Requirement | Message |
|---|---|
| MRTM-SAF-015 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| MRTM-SYS-004 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

#### `single-point-failure` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-011 | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

#### `sysml-unresolved-import` (1)

| Requirement | Message |
|---|---|
| 06-design/software/MrtmSoftware.sysml | line 10: `import SoftwareProfile` names nothing this project declares |

#### `under-decomposition` (4)

| Requirement | Message |
|---|---|
| MRTM-SYS-004 | MRTM-SYS-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-011 | MRTM-SYS-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-014 | MRTM-SYS-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-020 | MRTM-SYS-020 has one child, which restates it — merge the two, or add the sibling |

#### `wide-impact` (1)

| Requirement | Message |
|---|---|
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 13 other artifacts. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

## Findings by requirement

### (repository) (1)

| Severity | Rule | Message |
|---|---|---|
| info | `impact-incomplete` | Impact is bounded here by 1 limit — these numbers are not a clean result |

### /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-PizlWp/tree/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### 06-design/software/MrtmSoftware.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 10: `import SoftwareProfile` names nothing this project declares |

### MRTM-ENV-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-ENV-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-IFC-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-IFC-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-MNT-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PRF-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-PRF-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-011 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `single-point-failure` | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

### MRTM-SAF-013 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `logical-expression` | 2 unbracketed and/or words - state the grouping, e.g. [X AND Y] |

### MRTM-SAF-015 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-SAF-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SAF-022 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-STK-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-004 reaches 13 other artifacts. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-004 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |
| info | `under-decomposition` | MRTM-SYS-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-011 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-012 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-014 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-014 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-020 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |
| info | `under-decomposition` | MRTM-SYS-020 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

