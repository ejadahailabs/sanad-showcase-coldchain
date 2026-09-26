# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `9c8ab688226246876ebc477202658eb02ef25507`

**Commit date:** `2026-09-26T23:11:56+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `2f97b08281a1e97d7845275600acd39b0553eb9b0c42a145630a5026ac33d5be`

**Input hash:** `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855`

**Inputs:** `0 requirements`, `glossary`, `data dictionary`

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `consistency`, `impact`

**Analyses that did not run:**

- `architecture` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `conformance` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `implementation` — did not run: no template in this repository declares the role `implements`. It produced no findings, and that silence is not a clean result.
- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `safety` — did not run: no template in this repository declares the role `hazard`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Findings:** 4 — 0 errors · 1 warnings · 3 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (1)](#warnings-1)
    - [`clean-not-computed` (1)](#clean-not-computed-1)
  - [Information (3)](#information-3)
    - [`impact-incomplete` (1)](#impact-incomplete-1)
    - [`sysml-unresolved-import` (2)](#sysml-unresolved-import-2)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (1)](#repository-1)
  - [/tmp/sanad-at-pXCXxb/tree/.ejadah/rew/config.yaml (1)](#tmpsanad-at-pxcxxbtreeejadahrewconfigyaml-1)
  - [06-design/system/MrtmUseCases.sysml (1)](#06-designsystemmrtmusecasessysml-1)
  - [06-design/views/SanadRenderings.sysml (1)](#06-designviewssanadrenderingssysml-1)

## Findings by severity

### Warnings (1)

#### `clean-not-computed` (1)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-pXCXxb/tree/.ejadah/rew/config.yaml | Clean % not computed — no requirement was checked, so it has no denominator |

### Information (3)

#### `impact-incomplete` (1)

| Requirement | Message |
|---|---|
| (repository) | Impact is bounded here by 1 limit — these numbers are not a clean result |

#### `sysml-unresolved-import` (2)

| Requirement | Message |
|---|---|
| 06-design/system/MrtmUseCases.sysml | line 4: `import ScalarValues` names nothing this project declares |
| 06-design/views/SanadRenderings.sysml | line 8: `import Views` names nothing this project declares |

## Findings by requirement

### (repository) (1)

| Severity | Rule | Message |
|---|---|---|
| info | `impact-incomplete` | Impact is bounded here by 1 limit — these numbers are not a clean result |

### /tmp/sanad-at-pXCXxb/tree/.ejadah/rew/config.yaml (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `clean-not-computed` | Clean % not computed — no requirement was checked, so it has no denominator |

### 06-design/system/MrtmUseCases.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 4: `import ScalarValues` names nothing this project declares |

### 06-design/views/SanadRenderings.sysml (1)

| Severity | Rule | Message |
|---|---|---|
| info | `sysml-unresolved-import` | line 8: `import Views` names nothing this project declares |

