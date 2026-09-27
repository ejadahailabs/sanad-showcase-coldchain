# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `8f9af20c1dd8c3f25937c53e78ac1362a930a045`

**Commit date:** `2026-09-26T23:25:08+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `efdf8bd48cbf7e729e728490f81be809ff693712e6d5a2864ac0544a4bb09e81`

**Input hash:** `0e3a6aaf42bee8f2a02b1fe5732034a24c8e2c190d362eb56b0804f1780c7c92`

**Inputs:** `54 requirements`, `glossary`, `data dictionary`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `consistency`, `impact`

**Analyses that did not run:**

- `architecture` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `conformance` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `implementation` — did not run: no template in this repository declares the role `implements`. It produced no findings, and that silence is not a clean result.
- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `safety` — did not run: no template in this repository declares the role `hazard`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 27 — 0 errors · 0 warnings · 27 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Information (27)](#information-27)
    - [`impact-incomplete` (1)](#impact-incomplete-1)
    - [`indefinite-article` (15)](#indefinite-article-15)
    - [`requirement-pattern` (1)](#requirement-pattern-1)
    - [`sysml-unresolved-import` (4)](#sysml-unresolved-import-4)
    - [`under-decomposition` (5)](#under-decomposition-5)
    - [`wide-impact` (1)](#wide-impact-1)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (1)](#repository-1)
  - [06-design/system/MrtmUseCases.sysml (1)](#06-designsystemmrtmusecasessysml-1)
  - [06-design/views/MrtmContextView.sysml (1)](#06-designviewsmrtmcontextviewsysml-1)
  - [06-design/views/MrtmUseCasesView.sysml (1)](#06-designviewsmrtmusecasesviewsysml-1)
  - [06-design/views/SanadRenderings.sysml (1)](#06-designviewssanadrenderingssysml-1)
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
  - [MRTM-STK-004 (1)](#mrtm-stk-004-1)
  - [MRTM-STK-008 (1)](#mrtm-stk-008-1)
  - [MRTM-SYS-004 (1)](#mrtm-sys-004-1)
  - [MRTM-SYS-005 (1)](#mrtm-sys-005-1)
  - [MRTM-SYS-006 (1)](#mrtm-sys-006-1)
  - [MRTM-SYS-011 (1)](#mrtm-sys-011-1)
  - [MRTM-SYS-012 (1)](#mrtm-sys-012-1)
  - [MRTM-SYS-014 (1)](#mrtm-sys-014-1)
  - [MRTM-SYS-015 (1)](#mrtm-sys-015-1)
  - [MRTM-SYS-020 (1)](#mrtm-sys-020-1)
  - [MRTM-SYS-021 (1)](#mrtm-sys-021-1)

## Findings by severity

### Information (27)

#### `impact-incomplete` (1)

| Requirement | Message |
|---|---|
| (repository) | Impact is bounded here by 1 limit — these numbers are not a clean result |

#### `indefinite-article` (15)

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
| MRTM-STK-008 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-012 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-020 | an indefinite article leaves which one open - use "the" and name the item |
| MRTM-SYS-021 | an indefinite article leaves which one open - use "the" and name the item |

#### `requirement-pattern` (1)

| Requirement | Message |
|---|---|
| MRTM-SYS-004 | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

#### `sysml-unresolved-import` (4)

| Requirement | Message |
|---|---|
| 06-design/system/MrtmUseCases.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmContextView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/MrtmUseCasesView.sysml | line 22: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |

#### `under-decomposition` (5)

| Requirement | Message |
|---|---|
| MRTM-SYS-005 | MRTM-SYS-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-006 | MRTM-SYS-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-011 | MRTM-SYS-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-014 | MRTM-SYS-014 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-015 | MRTM-SYS-015 has one child, which restates it — merge the two, or add the sibling |

#### `wide-impact` (1)

| Requirement | Message |
|---|---|
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 11 other artifacts. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

## Findings by requirement

### (repository) (1)

| Severity | Rule | Message |
|---|---|---|
| info | `impact-incomplete` | Impact is bounded here by 1 limit — these numbers are not a clean result |

### 06-design/system/MrtmUseCases.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmContextView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/MrtmUseCasesView.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 22: `import ScalarValues` names nothing this project declares |

### 06-design/views/SanadRenderings.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import Views` names nothing this project declares |

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

### MRTM-STK-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-004 reaches 11 other artifacts. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `requirement-pattern` | _(candidate — inferred, needs human judgement)_ Sets a deadline but gives no time — add one (e.g. 50 ms) |

### MRTM-SYS-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-006 has one child, which restates it — merge the two, or add the sibling |

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

### MRTM-SYS-015 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SYS-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-020 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

### MRTM-SYS-021 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `indefinite-article` | an indefinite article leaves which one open - use "the" and name the item |

