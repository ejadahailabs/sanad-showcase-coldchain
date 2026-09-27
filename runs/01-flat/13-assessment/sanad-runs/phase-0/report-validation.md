# Validation Report

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `220b3bf75ccc044988bb80b385deae83f890306a`

**Commit date:** `2026-09-26T23:09:05+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `584c2a8670e06322b7927dec3e1f05338139b60695285606cd20612631a292f8`

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

**Findings:** 2 — 0 errors · 1 warnings · 1 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Warnings (1)](#warnings-1)
    - [`clean-not-computed` (1)](#clean-not-computed-1)
  - [Information (1)](#information-1)
    - [`impact-incomplete` (1)](#impact-incomplete-1)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (1)](#repository-1)
  - [/tmp/sanad-at-aNanp7/tree/.ejadah/rew/config.yaml (1)](#tmpsanad-at-ananp7treeejadahrewconfigyaml-1)

## Findings by severity

### Warnings (1)

#### `clean-not-computed` (1)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-aNanp7/tree/.ejadah/rew/config.yaml | Clean % not computed — no requirement was checked, so it has no denominator |

### Information (1)

#### `impact-incomplete` (1)

| Requirement | Message |
|---|---|
| (repository) | Impact is bounded here by 1 limit — these numbers are not a clean result |

## Findings by requirement

### (repository) (1)

| Severity | Rule | Message |
|---|---|---|
| info | `impact-incomplete` | Impact is bounded here by 1 limit — these numbers are not a clean result |

### /tmp/sanad-at-aNanp7/tree/.ejadah/rew/config.yaml (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `clean-not-computed` | Clean % not computed — no requirement was checked, so it has no denominator |

