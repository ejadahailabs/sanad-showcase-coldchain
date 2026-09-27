# Audit-Ready Traceability Report

**Index**

- [Configuration identity and completeness](#configuration-identity-and-completeness)
- [Trace legs required by criticality band](#trace-legs-required-by-criticality-band)
- [Level trace matrices](#level-trace-matrices)
  - [System Requirement ⇄ Environmental Requirement](#system-requirement--environmental-requirement)
    - [System Requirement → Environmental Requirement (parent to children)](#system-requirement--environmental-requirement-parent-to-children)
    - [Environmental Requirement → System Requirement (child to parents)](#environmental-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Interface Requirement](#system-requirement--interface-requirement)
    - [System Requirement → Interface Requirement (parent to children)](#system-requirement--interface-requirement-parent-to-children)
    - [Interface Requirement → System Requirement (child to parents)](#interface-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Maintainability Requirement](#system-requirement--maintainability-requirement)
    - [System Requirement → Maintainability Requirement (parent to children)](#system-requirement--maintainability-requirement-parent-to-children)
    - [Maintainability Requirement → System Requirement (child to parents)](#maintainability-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Performance Requirement](#system-requirement--performance-requirement)
    - [System Requirement → Performance Requirement (parent to children)](#system-requirement--performance-requirement-parent-to-children)
    - [Performance Requirement → System Requirement (child to parents)](#performance-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Safety Requirement](#system-requirement--safety-requirement)
    - [System Requirement → Safety Requirement (parent to children)](#system-requirement--safety-requirement-parent-to-children)
    - [Safety Requirement → System Requirement (child to parents)](#safety-requirement--system-requirement-child-to-parents)
  - [Stakeholder Requirement ⇄ Product function requirement](#stakeholder-requirement--product-function-requirement)
    - [Stakeholder Requirement → Product function requirement (parent to children)](#stakeholder-requirement--product-function-requirement-parent-to-children)
    - [Product function requirement → Stakeholder Requirement (child to parents)](#product-function-requirement--stakeholder-requirement-child-to-parents)
  - [Environmental Requirement ⇄ Hardware item requirement](#environmental-requirement--hardware-item-requirement)
    - [Environmental Requirement → Hardware item requirement (parent to children)](#environmental-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Environmental Requirement (child to parents)](#hardware-item-requirement--environmental-requirement-child-to-parents)
  - [Interface Requirement ⇄ Hardware item requirement](#interface-requirement--hardware-item-requirement)
    - [Interface Requirement → Hardware item requirement (parent to children)](#interface-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Interface Requirement (child to parents)](#hardware-item-requirement--interface-requirement-child-to-parents)
  - [Performance Requirement ⇄ Hardware item requirement](#performance-requirement--hardware-item-requirement)
    - [Performance Requirement → Hardware item requirement (parent to children)](#performance-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Performance Requirement (child to parents)](#hardware-item-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Hardware item requirement](#safety-requirement--hardware-item-requirement)
    - [Safety Requirement → Hardware item requirement (parent to children)](#safety-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Safety Requirement (child to parents)](#hardware-item-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Hardware item requirement](#system-requirement--hardware-item-requirement)
    - [System Requirement → Hardware item requirement (parent to children)](#system-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → System Requirement (child to parents)](#hardware-item-requirement--system-requirement-child-to-parents)
  - [Interface Requirement ⇄ High-level requirement (HLR)](#interface-requirement--high-level-requirement-hlr)
    - [Interface Requirement → High-level requirement (HLR) (parent to children)](#interface-requirement--high-level-requirement-hlr-parent-to-children)
    - [High-level requirement (HLR) → Interface Requirement (child to parents)](#high-level-requirement-hlr--interface-requirement-child-to-parents)
  - [Maintainability Requirement ⇄ High-level requirement (HLR)](#maintainability-requirement--high-level-requirement-hlr)
    - [Maintainability Requirement → High-level requirement (HLR) (parent to children)](#maintainability-requirement--high-level-requirement-hlr-parent-to-children)
    - [High-level requirement (HLR) → Maintainability Requirement (child to parents)](#high-level-requirement-hlr--maintainability-requirement-child-to-parents)
  - [Performance Requirement ⇄ High-level requirement (HLR)](#performance-requirement--high-level-requirement-hlr)
    - [Performance Requirement → High-level requirement (HLR) (parent to children)](#performance-requirement--high-level-requirement-hlr-parent-to-children)
    - [High-level requirement (HLR) → Performance Requirement (child to parents)](#high-level-requirement-hlr--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ High-level requirement (HLR)](#safety-requirement--high-level-requirement-hlr)
    - [Safety Requirement → High-level requirement (HLR) (parent to children)](#safety-requirement--high-level-requirement-hlr-parent-to-children)
    - [High-level requirement (HLR) → Safety Requirement (child to parents)](#high-level-requirement-hlr--safety-requirement-child-to-parents)
  - [System Requirement ⇄ High-level requirement (HLR)](#system-requirement--high-level-requirement-hlr)
    - [System Requirement → High-level requirement (HLR) (parent to children)](#system-requirement--high-level-requirement-hlr-parent-to-children)
    - [High-level requirement (HLR) → System Requirement (child to parents)](#high-level-requirement-hlr--system-requirement-child-to-parents)
  - [Product function requirement ⇄ System Requirement](#product-function-requirement--system-requirement)
    - [Product function requirement → System Requirement (parent to children)](#product-function-requirement--system-requirement-parent-to-children)
    - [System Requirement → Product function requirement (child to parents)](#system-requirement--product-function-requirement-child-to-parents)
  - [Product function requirement ⇄ Safety objective (FHA)](#product-function-requirement--safety-objective-fha)
    - [Product function requirement → Safety objective (FHA) (parent to children)](#product-function-requirement--safety-objective-fha-parent-to-children)
    - [Safety objective (FHA) → Product function requirement (child to parents)](#safety-objective-fha--product-function-requirement-child-to-parents)
  - [Safety objective (FHA) ⇄ Safety Requirement](#safety-objective-fha--safety-requirement)
    - [Safety objective (FHA) → Safety Requirement (parent to children)](#safety-objective-fha--safety-requirement-parent-to-children)
    - [Safety Requirement → Safety objective (FHA) (child to parents)](#safety-requirement--safety-objective-fha-child-to-parents)
  - [High-level requirement (HLR) ⇄ Low-level requirement (LLR)](#high-level-requirement-hlr--low-level-requirement-llr)
    - [High-level requirement (HLR) → Low-level requirement (LLR) (parent to children)](#high-level-requirement-hlr--low-level-requirement-llr-parent-to-children)
    - [Low-level requirement (LLR) → High-level requirement (HLR) (child to parents)](#low-level-requirement-llr--high-level-requirement-hlr-child-to-parents)
  - [Requirements ⇄ Allocated items](#requirements--allocated-items)
    - [Requirements → Allocated items (requirement to allocated item)](#requirements--allocated-items-requirement-to-allocated-item)
    - [Allocated items → Requirements (item to requirements)](#allocated-items--requirements-item-to-requirements)
- [Derived requirements](#derived-requirements)
- [Traceability deficiencies](#traceability-deficiencies)
- [Declared gaps](#declared-gaps)
  - [Orphans — requirements tracing up to nothing](#orphans--requirements-tracing-up-to-nothing)
  - [Childless — an approved requirement nothing traces up to](#childless--an-approved-requirement-nothing-traces-up-to)
  - [Unverified — requirements with no verifying case](#unverified--requirements-with-no-verifying-case)
  - [Derived / exempted — requirements a declaration waived from the orphan rule](#derived--exempted--requirements-a-declaration-waived-from-the-orphan-rule)

## Configuration identity and completeness

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `fc3274cd4718cb8e8c74a4f760f24fe69af65c09`

**Tool version:** `sanad 0.6.3`

**Inputs:** `177 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

This report regenerates byte-identically from the same commit with the same tool version and inputs — it names no clock and reads nothing outside those inputs, so any second run that differs is evidence something changed, not that the report drifted.

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Criticality levels present:** `A`, `B`, `C`, `D`

## Trace legs required by criticality band

The resolved band decides which trace legs are *mandatory*; a leg a band does not require is shown as one that did not run, never dropped (rule 4). Policy is resolved once at load — this table renders that result, it does not compute it (rule 11).

| Band (rigour) | Native level(s) | Requirements | Mandatory legs | Did not run at this level |
|---|---|---|---|---|
| rigour 1 | `D` | 6 | none | trace up (uplink), verification, implementation (code) |
| rigour 2 | `C` | 31 | none | trace up (uplink), verification, implementation (code) |
| rigour 3 | `B` | 20 | none | trace up (uplink), verification, implementation (code) |
| rigour 4 | `A` | 120 | none | trace up (uplink), verification, implementation (code) |

## Level trace matrices

**Objective:** DO-178C Table A-3 objective 6, *high-level requirements are traceable to system requirements*, and the same objective at each level below it; evidenced by the trace data of §5.5, *the bi-directional association between* requirements at adjacent levels.

### System Requirement ⇄ Environmental Requirement

#### System Requirement → Environmental Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | `MRTM-ENV-001` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | none | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | none | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |

#### Environmental Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | A (rigour 4) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | A (rigour 4) | `MRTM-SYS-001` | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | A (rigour 4) | `MRTM-SYS-001` | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | A (rigour 4) | `MRTM-SYS-001` | `SP-10` | verified | — |

### System Requirement ⇄ Interface Requirement

#### System Requirement → Interface Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-IFC-001` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | `MRTM-IFC-004` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | `MRTM-IFC-002` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | `MRTM-IFC-003` | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | none | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | none | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |

#### Interface Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | A (rigour 4) | `MRTM-SYS-001` | `SP-10` | verified | — |
| MRTM-IFC-002 | Acknowledge input | A (rigour 4) | `MRTM-SYS-006` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-IFC-003 | USB readout | C (rigour 2) | `MRTM-SYS-014` | `SP-08` | verified | — |
| MRTM-IFC-004 | Display character height | A (rigour 4) | `MRTM-SYS-005` | `SP-09` | verified | — |

### System Requirement ⇄ Maintainability Requirement

#### System Requirement → Maintainability Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-MNT-003` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | `MRTM-MNT-001` | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | `MRTM-MNT-002` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | none | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | none | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |

#### Maintainability Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-MNT-001 | Probe replacement | A (rigour 4) | `MRTM-SYS-012` | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | A (rigour 4) | `MRTM-SYS-016` | `SP-09` | verified | — |
| MRTM-MNT-003 | Firmware version | A (rigour 4) | `MRTM-SYS-001` | `SP-05` | verified | — |

### System Requirement ⇄ Performance Requirement

#### System Requirement → Performance Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-PRF-001` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | `MRTM-PRF-002` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | `MRTM-PRF-004` | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | `MRTM-PRF-003` | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | none | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | none | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |

#### Performance Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | A (rigour 4) | `MRTM-SYS-001` | `SP-10` | verified | — |
| MRTM-PRF-002 | End-to-end alert time | A (rigour 4) | `MRTM-SYS-003` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-PRF-003 | Log readout time | C (rigour 2) | `MRTM-SYS-015` | `SP-08` | verified | — |
| MRTM-PRF-004 | Display refresh | A (rigour 4) | `MRTM-SYS-011` | `SP-09` | verified | — |

### System Requirement ⇄ Safety Requirement

#### System Requirement → Safety Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-012`, `MRTM-SAF-020` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | `MRTM-SAF-001`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-014`, `MRTM-SAF-023` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | `MRTM-SAF-015` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | `MRTM-SAF-021` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | `MRTM-SAF-019` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | `MRTM-SAF-002`, `MRTM-SAF-011` | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | `MRTM-SAF-018` | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SAF-013` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | `MRTM-SAF-016`, `MRTM-SAF-017` | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | `MRTM-SAF-022` | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |

#### Safety Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | A (rigour 4) | `MRTM-SYS-003` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | A (rigour 4) | `MRTM-SYS-012` | `SP-02` | verified | — |
| MRTM-SAF-003 | Implausible sample | A (rigour 4) | `MRTM-SYS-001` | `SP-02` | verified | — |
| MRTM-SAF-004 | Watchdog restart | A (rigour 4) | `MRTM-SYS-001` | `SP-03` | verified | — |
| MRTM-SAF-005 | Log power loss | A (rigour 4) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-SAF-006 | Alert survives restart | A (rigour 4) | `MRTM-SYS-003` | `SP-05` | verified | — |
| MRTM-SAF-007 | Buzzer self-test | A (rigour 4) | `MRTM-SYS-003` | `SP-05` | verified | — |
| MRTM-SAF-008 | Low battery alarm | A (rigour 4) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | A (rigour 4) | `MRTM-SYS-003` | `SP-03` | verified | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | A (rigour 4) | `MRTM-SYS-003` | `SP-03` | verified | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 2) | `MRTM-SYS-012` | `SP-02` | verified | — |
| MRTM-SAF-012 | Probe calibration due | B (rigour 3) | `MRTM-SYS-001` | `SP-09` | verified | — |
| MRTM-SAF-013 | Alarm on total power loss | A (rigour 4) | `MRTM-SYS-016` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | A (rigour 4) | `MRTM-SYS-003` | `SP-06` | verified | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | A (rigour 4) | `MRTM-SYS-004` | `SP-06` | verified | — |
| MRTM-SAF-016 | Show the band at power-up | B (rigour 3) | `MRTM-SYS-017` | `SP-05` | verified | — |
| MRTM-SAF-017 | Band integrity check | A (rigour 4) | `MRTM-SYS-017` | `SP-05` | verified | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 2) | `MRTM-SYS-015` | `SP-07` | verified | — |
| MRTM-SAF-019 | Stuck acknowledge button | A (rigour 4) | `MRTM-SYS-006` | `SP-01` | verified | — |
| MRTM-SAF-020 | Probe placement in the instructions | A (rigour 4) | `MRTM-SYS-001` | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | B (rigour 3) | `MRTM-SYS-005` | `SP-09` | verified | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 2) | `MRTM-SYS-020` | `SP-05` | verified | — |
| MRTM-SAF-023 | Backup alarm power-up test | A (rigour 4) | `MRTM-SYS-003` | `SP-05` | verified | — |

### Stakeholder Requirement ⇄ Product function requirement

#### Stakeholder Requirement → Product function requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-STK-001 | Alert on excursion | A (rigour 4) | `MRTM-FUN-002` | `SP-01` | verified | — |
| MRTM-STK-002 | No alert on brief door opening | A (rigour 4) | `MRTM-FUN-002` | `SP-01` | verified | — |
| MRTM-STK-003 | Silence the alert | A (rigour 4) | `MRTM-FUN-003` | `SP-01` | verified | — |
| MRTM-STK-004 | See the temperature | A (rigour 4) | `MRTM-FUN-001` | `SP-09` | verified | — |
| MRTM-STK-005 | Audit history | C (rigour 2) | `MRTM-FUN-004` | `SP-08` | verified | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 2) | `MRTM-FUN-004` | `SP-08` | verified | — |
| MRTM-STK-007 | Probe failure is visible | A (rigour 4) | `MRTM-FUN-001` | `SP-02` | verified | — |
| MRTM-STK-008 | Monitoring through a power cut | A (rigour 4) | `MRTM-FUN-005` | `SP-04` | verified | — |

#### Product function requirement → Stakeholder Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-FUN-001 | Monitor the fridge air | A (rigour 4) | `MRTM-STK-004`, `MRTM-STK-007` | — | unverified | — |
| MRTM-FUN-002 | Warn of an excursion | A (rigour 4) | `MRTM-STK-001`, `MRTM-STK-002` | — | unverified | — |
| MRTM-FUN-003 | Acknowledge the warning | A (rigour 4) | `MRTM-STK-003` | — | unverified | — |
| MRTM-FUN-004 | Keep the history | C (rigour 2) | `MRTM-STK-005`, `MRTM-STK-006` | — | unverified | — |
| MRTM-FUN-005 | Watch through a power cut | A (rigour 4) | `MRTM-STK-008` | — | unverified | — |

### Environmental Requirement ⇄ Hardware item requirement

#### Environmental Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | A (rigour 4) | `MRTM-HWR-013` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | A (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | A (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | A (rigour 4) | `MRTM-HWR-002` | `SP-10` | verified | — |

#### Hardware item requirement → Environmental Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWR-001 | Probe conversion time | A (rigour 4) | none | `SP-01`, `SP-10` | verified | — |
| MRTM-HWR-002 | Probe accuracy | A (rigour 4) | `MRTM-ENV-004` | `SP-10` | verified | — |
| MRTM-HWR-003 | Probe scratchpad check | A (rigour 4) | none | `SP-02`, `SP-10` | verified | — |
| MRTM-HWR-004 | Buzzer loudness | A (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWR-005 | Red indicator response | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-006 | Acknowledge contact | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-007 | Backup timer timeout | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-008 | Backup driver response | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-009 | Backup hold-up | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-010 | Controller watchdog reset | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-011 | Clock drift | A (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWR-012 | Switch to battery | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-013 | Battery capacity | B (rigour 3) | `MRTM-ENV-001` | `SP-04` | verified | — |
| MRTM-HWR-014 | Digit height | B (rigour 3) | none | `SP-09` | verified | — |

### Interface Requirement ⇄ Hardware item requirement

#### Interface Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-IFC-002 | Acknowledge input | A (rigour 4) | `MRTM-HWR-006` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-IFC-003 | USB readout | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-IFC-004 | Display character height | A (rigour 4) | `MRTM-HWR-014` | `SP-09` | verified | — |

#### Hardware item requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWR-001 | Probe conversion time | A (rigour 4) | none | `SP-01`, `SP-10` | verified | — |
| MRTM-HWR-002 | Probe accuracy | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWR-003 | Probe scratchpad check | A (rigour 4) | none | `SP-02`, `SP-10` | verified | — |
| MRTM-HWR-004 | Buzzer loudness | A (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWR-005 | Red indicator response | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-006 | Acknowledge contact | A (rigour 4) | `MRTM-IFC-002` | `SP-01` | verified | — |
| MRTM-HWR-007 | Backup timer timeout | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-008 | Backup driver response | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-009 | Backup hold-up | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-010 | Controller watchdog reset | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-011 | Clock drift | A (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWR-012 | Switch to battery | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-013 | Battery capacity | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-014 | Digit height | B (rigour 3) | `MRTM-IFC-004` | `SP-09` | verified | — |

### Performance Requirement ⇄ Hardware item requirement

#### Performance Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | A (rigour 4) | `MRTM-HWR-002` | `SP-10` | verified | — |
| MRTM-PRF-002 | End-to-end alert time | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-PRF-003 | Log readout time | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-PRF-004 | Display refresh | A (rigour 4) | none | `SP-09` | verified | — |

#### Hardware item requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWR-001 | Probe conversion time | A (rigour 4) | none | `SP-01`, `SP-10` | verified | — |
| MRTM-HWR-002 | Probe accuracy | A (rigour 4) | `MRTM-PRF-001` | `SP-10` | verified | — |
| MRTM-HWR-003 | Probe scratchpad check | A (rigour 4) | none | `SP-02`, `SP-10` | verified | — |
| MRTM-HWR-004 | Buzzer loudness | A (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWR-005 | Red indicator response | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-006 | Acknowledge contact | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-007 | Backup timer timeout | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-008 | Backup driver response | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-009 | Backup hold-up | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-010 | Controller watchdog reset | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-011 | Clock drift | A (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWR-012 | Switch to battery | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-013 | Battery capacity | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-014 | Digit height | B (rigour 3) | none | `SP-09` | verified | — |

### Safety Requirement ⇄ Hardware item requirement

#### Safety Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | A (rigour 4) | `MRTM-HWR-004` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SAF-003 | Implausible sample | A (rigour 4) | `MRTM-HWR-003` | `SP-02` | verified | — |
| MRTM-SAF-004 | Watchdog restart | A (rigour 4) | `MRTM-HWR-010` | `SP-03` | verified | — |
| MRTM-SAF-005 | Log power loss | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SAF-006 | Alert survives restart | A (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SAF-007 | Buzzer self-test | A (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SAF-008 | Low battery alarm | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | A (rigour 4) | `MRTM-HWR-007`, `MRTM-HWR-008` | `SP-03` | verified | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | A (rigour 4) | `MRTM-HWR-007` | `SP-03` | verified | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 2) | none | `SP-02` | verified | — |
| MRTM-SAF-012 | Probe calibration due | B (rigour 3) | none | `SP-09` | verified | — |
| MRTM-SAF-013 | Alarm on total power loss | A (rigour 4) | `MRTM-HWR-009` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | A (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | A (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-016 | Show the band at power-up | B (rigour 3) | none | `SP-05` | verified | — |
| MRTM-SAF-017 | Band integrity check | A (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SAF-019 | Stuck acknowledge button | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SAF-020 | Probe placement in the instructions | A (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | B (rigour 3) | none | `SP-09` | verified | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 2) | `MRTM-HWR-011` | `SP-05` | verified | — |
| MRTM-SAF-023 | Backup alarm power-up test | A (rigour 4) | none | `SP-05` | verified | — |

#### Hardware item requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWR-001 | Probe conversion time | A (rigour 4) | none | `SP-01`, `SP-10` | verified | — |
| MRTM-HWR-002 | Probe accuracy | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWR-003 | Probe scratchpad check | A (rigour 4) | `MRTM-SAF-003` | `SP-02`, `SP-10` | verified | — |
| MRTM-HWR-004 | Buzzer loudness | A (rigour 4) | `MRTM-SAF-001` | `SP-06` | verified | — |
| MRTM-HWR-005 | Red indicator response | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-006 | Acknowledge contact | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWR-007 | Backup timer timeout | A (rigour 4) | `MRTM-SAF-009`, `MRTM-SAF-010` | `SP-03` | verified | — |
| MRTM-HWR-008 | Backup driver response | A (rigour 4) | `MRTM-SAF-009` | `SP-03` | verified | — |
| MRTM-HWR-009 | Backup hold-up | A (rigour 4) | `MRTM-SAF-013` | `SP-03` | verified | — |
| MRTM-HWR-010 | Controller watchdog reset | A (rigour 4) | `MRTM-SAF-004` | `SP-03` | verified | — |
| MRTM-HWR-011 | Clock drift | A (rigour 4) | `MRTM-SAF-022` | `SP-12` | verified | — |
| MRTM-HWR-012 | Switch to battery | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-013 | Battery capacity | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-014 | Digit height | B (rigour 3) | none | `SP-09` | verified | — |

### System Requirement ⇄ Hardware item requirement

#### System Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-HWR-001` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | `MRTM-HWR-004` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | `MRTM-HWR-005` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | `MRTM-HWR-006` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | `MRTM-HWR-014` | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | `MRTM-HWR-003` | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | none | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | `MRTM-HWR-012` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | none | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | none | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | `MRTM-HWR-011` | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | none | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | `MRTM-HWR-001`, `MRTM-HWR-005` | `SP-01`, `SP-01-H` | verified | — |

#### Hardware item requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWR-001 | Probe conversion time | A (rigour 4) | `MRTM-SYS-001`, `MRTM-SYS-024` | `SP-01`, `SP-10` | verified | — |
| MRTM-HWR-002 | Probe accuracy | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWR-003 | Probe scratchpad check | A (rigour 4) | `MRTM-SYS-012` | `SP-02`, `SP-10` | verified | — |
| MRTM-HWR-004 | Buzzer loudness | A (rigour 4) | `MRTM-SYS-003` | `SP-06` | verified | — |
| MRTM-HWR-005 | Red indicator response | A (rigour 4) | `MRTM-SYS-004`, `MRTM-SYS-024` | `SP-01` | verified | — |
| MRTM-HWR-006 | Acknowledge contact | A (rigour 4) | `MRTM-SYS-006` | `SP-01` | verified | — |
| MRTM-HWR-007 | Backup timer timeout | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-008 | Backup driver response | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-009 | Backup hold-up | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-010 | Controller watchdog reset | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWR-011 | Clock drift | A (rigour 4) | `MRTM-SYS-020` | `SP-12` | verified | — |
| MRTM-HWR-012 | Switch to battery | B (rigour 3) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-HWR-013 | Battery capacity | B (rigour 3) | none | `SP-04` | verified | — |
| MRTM-HWR-014 | Digit height | B (rigour 3) | `MRTM-SYS-011` | `SP-09` | verified | — |

### Interface Requirement ⇄ High-level requirement (HLR)

#### Interface Requirement → High-level requirement (HLR) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-IFC-002 | Acknowledge input | A (rigour 4) | `MRTM-HLR-009` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-IFC-003 | USB readout | C (rigour 2) | `MRTM-HLR-035` | `SP-08` | verified | — |
| MRTM-IFC-004 | Display character height | A (rigour 4) | none | `SP-09` | verified | — |

#### High-level requirement (HLR) → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | none | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | none | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | none | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | none | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | none | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | none | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | none | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | `MRTM-IFC-002` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | none | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | none | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | none | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | none | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | none | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | none | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | none | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | none | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | none | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | none | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | none | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | none | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | none | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | none | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | none | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | none | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | none | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | none | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | `MRTM-IFC-003` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | none | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | none | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | none | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |

### Maintainability Requirement ⇄ High-level requirement (HLR)

#### Maintainability Requirement → High-level requirement (HLR) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-MNT-001 | Probe replacement | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | A (rigour 4) | `MRTM-HLR-022`, `MRTM-HLR-028` | `SP-09` | verified | — |
| MRTM-MNT-003 | Firmware version | A (rigour 4) | `MRTM-HLR-023`, `MRTM-HLR-027` | `SP-05` | verified | — |

#### High-level requirement (HLR) → Maintainability Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | none | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | none | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | none | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | none | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | none | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | none | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | none | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | none | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | none | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | none | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | none | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | none | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | none | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | none | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | none | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | none | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | `MRTM-MNT-002` | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | `MRTM-MNT-003` | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | none | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | none | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | `MRTM-MNT-003` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | `MRTM-MNT-002` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | none | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | none | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | none | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | none | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | none | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | none | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | none | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | none | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | none | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |

### Performance Requirement ⇄ High-level requirement (HLR)

#### Performance Requirement → High-level requirement (HLR) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | A (rigour 4) | none | `SP-10` | verified | — |
| MRTM-PRF-002 | End-to-end alert time | A (rigour 4) | `MRTM-HLR-008` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-PRF-003 | Log readout time | C (rigour 2) | `MRTM-HLR-035` | `SP-08` | verified | — |
| MRTM-PRF-004 | Display refresh | A (rigour 4) | `MRTM-HLR-026` | `SP-09` | verified | — |

#### High-level requirement (HLR) → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | none | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | none | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | none | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | none | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | none | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | none | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | `MRTM-PRF-002` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | none | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | none | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | none | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | none | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | none | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | none | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | none | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | none | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | none | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | none | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | `MRTM-PRF-004` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | none | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | none | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | none | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | none | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | none | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | none | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | none | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | `MRTM-PRF-003` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | none | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | none | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | none | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |

### Safety Requirement ⇄ High-level requirement (HLR)

#### Safety Requirement → High-level requirement (HLR) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | A (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | A (rigour 4) | `MRTM-HLR-003`, `MRTM-HLR-012` | `SP-02` | verified | — |
| MRTM-SAF-003 | Implausible sample | A (rigour 4) | `MRTM-HLR-002` | `SP-02` | verified | — |
| MRTM-SAF-004 | Watchdog restart | A (rigour 4) | `MRTM-HLR-017` | `SP-03` | verified | — |
| MRTM-SAF-005 | Log power loss | A (rigour 4) | `MRTM-HLR-020` | `SP-04` | verified | — |
| MRTM-SAF-006 | Alert survives restart | A (rigour 4) | `MRTM-HLR-014`, `MRTM-HLR-023` | `SP-05` | verified | — |
| MRTM-SAF-007 | Buzzer self-test | A (rigour 4) | `MRTM-HLR-018` | `SP-05` | verified | — |
| MRTM-SAF-008 | Low battery alarm | A (rigour 4) | `MRTM-HLR-021`, `MRTM-HLR-038` | `SP-04` | verified | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | A (rigour 4) | `MRTM-HLR-016` | `SP-03` | verified | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | A (rigour 4) | `MRTM-HLR-010`, `MRTM-HLR-016` | `SP-03` | verified | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 2) | `MRTM-HLR-012` | `SP-02` | verified | — |
| MRTM-SAF-012 | Probe calibration due | B (rigour 3) | `MRTM-HLR-022`, `MRTM-HLR-028` | `SP-09` | verified | — |
| MRTM-SAF-013 | Alarm on total power loss | A (rigour 4) | none | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | A (rigour 4) | `MRTM-HLR-013` | `SP-06` | verified | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | A (rigour 4) | `MRTM-HLR-013` | `SP-06` | verified | — |
| MRTM-SAF-016 | Show the band at power-up | B (rigour 3) | `MRTM-HLR-023`, `MRTM-HLR-027` | `SP-05` | verified | — |
| MRTM-SAF-017 | Band integrity check | A (rigour 4) | `MRTM-HLR-019`, `MRTM-HLR-038` | `SP-05` | verified | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 2) | `MRTM-HLR-030` | `SP-07` | verified | — |
| MRTM-SAF-019 | Stuck acknowledge button | A (rigour 4) | `MRTM-HLR-015` | `SP-01` | verified | — |
| MRTM-SAF-020 | Probe placement in the instructions | A (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | B (rigour 3) | `MRTM-HLR-029` | `SP-09` | verified | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 2) | `MRTM-HLR-032` | `SP-05` | verified | — |
| MRTM-SAF-023 | Backup alarm power-up test | A (rigour 4) | `MRTM-HLR-018` | `SP-05` | verified | — |

#### High-level requirement (HLR) → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | none | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | `MRTM-SAF-003` | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | `MRTM-SAF-002` | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | none | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | none | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | none | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | none | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | `MRTM-SAF-010` | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | none | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | `MRTM-SAF-002`, `MRTM-SAF-011` | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | `MRTM-SAF-014`, `MRTM-SAF-015` | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | `MRTM-SAF-006` | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | `MRTM-SAF-019` | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | `MRTM-SAF-009`, `MRTM-SAF-010` | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | `MRTM-SAF-004` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | `MRTM-SAF-007`, `MRTM-SAF-023` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | `MRTM-SAF-017` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | `MRTM-SAF-005` | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | `MRTM-SAF-008` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | `MRTM-SAF-012` | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | `MRTM-SAF-006`, `MRTM-SAF-016` | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | none | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | none | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | `MRTM-SAF-016` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | `MRTM-SAF-012` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | `MRTM-SAF-021` | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | `MRTM-SAF-018` | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | `MRTM-SAF-022` | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | none | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | none | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | none | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | none | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | none | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | `MRTM-SAF-008`, `MRTM-SAF-017` | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |

### System Requirement ⇄ High-level requirement (HLR)

#### System Requirement → High-level requirement (HLR) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-HLR-001` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | `MRTM-HLR-005` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | `MRTM-HLR-008` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | `MRTM-HLR-007` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | `MRTM-HLR-025` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | `MRTM-HLR-009` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | `MRTM-HLR-025` | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | `MRTM-HLR-030` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | `MRTM-HLR-006` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | `MRTM-HLR-030` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | `MRTM-HLR-026` | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | `MRTM-HLR-002`, `MRTM-HLR-003` | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | `MRTM-HLR-025` | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | `MRTM-HLR-035`, `MRTM-HLR-036` | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | `MRTM-HLR-031` | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | `MRTM-HLR-019` | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | `MRTM-HLR-006` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | `MRTM-HLR-011` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | `MRTM-HLR-032` | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | `MRTM-HLR-033` | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | `MRTM-HLR-022`, `MRTM-HLR-028`, `MRTM-HLR-034` | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | `MRTM-HLR-020`, `MRTM-HLR-032` | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | `MRTM-HLR-001`, `MRTM-HLR-004`, `MRTM-HLR-007` | `SP-01`, `SP-01-H` | verified | — |

#### High-level requirement (HLR) → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | `MRTM-SYS-001`, `MRTM-SYS-024` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | `MRTM-SYS-012` | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | `MRTM-SYS-012` | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | `MRTM-SYS-024` | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | `MRTM-SYS-002` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | `MRTM-SYS-009`, `MRTM-SYS-018` | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | `MRTM-SYS-004`, `MRTM-SYS-024` | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | `MRTM-SYS-003` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | `MRTM-SYS-006` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | none | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | `MRTM-SYS-019` | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | none | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | none | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | none | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | none | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | none | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | `MRTM-SYS-017` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | `MRTM-SYS-023` | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | none | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | `MRTM-SYS-022` | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-013` | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | `MRTM-SYS-011` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | none | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | `MRTM-SYS-022` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | none | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | `MRTM-SYS-008`, `MRTM-SYS-010` | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | `MRTM-SYS-015` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | `MRTM-SYS-020`, `MRTM-SYS-023` | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | `MRTM-SYS-021` | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | `MRTM-SYS-022` | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | `MRTM-SYS-014` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | `MRTM-SYS-014` | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | none | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | none | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |

### Product function requirement ⇄ System Requirement

#### Product function requirement → System Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-FUN-001 | Monitor the fridge air | A (rigour 4) | `MRTM-SYS-001`, `MRTM-SYS-011`, `MRTM-SYS-012`, `MRTM-SYS-013` | — | unverified | — |
| MRTM-FUN-002 | Warn of an excursion | A (rigour 4) | `MRTM-SYS-002`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-017`, `MRTM-SYS-018`, `MRTM-SYS-024` | — | unverified | — |
| MRTM-FUN-003 | Acknowledge the warning | A (rigour 4) | `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-019` | — | unverified | — |
| MRTM-FUN-004 | Keep the history | C (rigour 2) | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-014`, `MRTM-SYS-015`, `MRTM-SYS-020`, `MRTM-SYS-021`, `MRTM-SYS-022` | — | unverified | — |
| MRTM-FUN-005 | Watch through a power cut | A (rigour 4) | `MRTM-SYS-016`, `MRTM-SYS-023` | — | unverified | — |

#### System Requirement → Product function requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `MRTM-FUN-001` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | `MRTM-FUN-002` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | `MRTM-FUN-002` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | `MRTM-FUN-002` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | `MRTM-FUN-002` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | `MRTM-FUN-003` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | `MRTM-FUN-003` | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | `MRTM-FUN-004` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | `MRTM-FUN-004` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | `MRTM-FUN-004` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | `MRTM-FUN-001` | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | `MRTM-FUN-001` | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | `MRTM-FUN-001` | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | `MRTM-FUN-004` | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | `MRTM-FUN-004` | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | `MRTM-FUN-005` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | `MRTM-FUN-002` | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | `MRTM-FUN-002` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | `MRTM-FUN-003` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | `MRTM-FUN-004` | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | `MRTM-FUN-004` | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | `MRTM-FUN-004` | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | `MRTM-FUN-005` | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | `MRTM-FUN-002` | `SP-01`, `SP-01-H` | verified | — |

### Product function requirement ⇄ Safety objective (FHA)

#### Product function requirement → Safety objective (FHA) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-FUN-001 | Monitor the fridge air | A (rigour 4) | `MRTM-SOB-003` | — | unverified | — |
| MRTM-FUN-002 | Warn of an excursion | A (rigour 4) | `MRTM-SOB-001`, `MRTM-SOB-002`, `MRTM-SOB-004` | — | unverified | — |
| MRTM-FUN-003 | Acknowledge the warning | A (rigour 4) | none | — | unverified | — |
| MRTM-FUN-004 | Keep the history | C (rigour 2) | `MRTM-SOB-005` | — | unverified | — |
| MRTM-FUN-005 | Watch through a power cut | A (rigour 4) | `MRTM-SOB-001` | — | unverified | — |

#### Safety objective (FHA) → Product function requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SOB-001 | No silent loss of warning | A (rigour 4) | `MRTM-FUN-002`, `MRTM-FUN-005` | — | unverified | — |
| MRTM-SOB-002 | No silent wrong band | A (rigour 4) | `MRTM-FUN-002` | — | unverified | — |
| MRTM-SOB-003 | Drift is bounded and shown | B (rigour 3) | `MRTM-FUN-001` | — | unverified | — |
| MRTM-SOB-004 | Nuisance warnings are limited | C (rigour 2) | `MRTM-FUN-002` | — | unverified | — |
| MRTM-SOB-005 | No silent loss of history | C (rigour 2) | `MRTM-FUN-004` | — | unverified | — |

### Safety objective (FHA) ⇄ Safety Requirement

#### Safety objective (FHA) → Safety Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SOB-001 | No silent loss of warning | A (rigour 4) | `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-005`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-008`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-013`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-019`, `MRTM-SAF-020`, `MRTM-SAF-021`, `MRTM-SAF-023` | — | unverified | — |
| MRTM-SOB-002 | No silent wrong band | A (rigour 4) | `MRTM-SAF-016`, `MRTM-SAF-017` | — | unverified | — |
| MRTM-SOB-003 | Drift is bounded and shown | B (rigour 3) | `MRTM-SAF-003`, `MRTM-SAF-012` | — | unverified | — |
| MRTM-SOB-004 | Nuisance warnings are limited | C (rigour 2) | `MRTM-SAF-011` | — | unverified | — |
| MRTM-SOB-005 | No silent loss of history | C (rigour 2) | `MRTM-SAF-005`, `MRTM-SAF-018`, `MRTM-SAF-021`, `MRTM-SAF-022` | — | unverified | — |

#### Safety Requirement → Safety objective (FHA) (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | A (rigour 4) | `MRTM-SOB-001` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | A (rigour 4) | `MRTM-SOB-001` | `SP-02` | verified | — |
| MRTM-SAF-003 | Implausible sample | A (rigour 4) | `MRTM-SOB-001`, `MRTM-SOB-003` | `SP-02` | verified | — |
| MRTM-SAF-004 | Watchdog restart | A (rigour 4) | `MRTM-SOB-001` | `SP-03` | verified | — |
| MRTM-SAF-005 | Log power loss | A (rigour 4) | `MRTM-SOB-001`, `MRTM-SOB-005` | `SP-04` | verified | — |
| MRTM-SAF-006 | Alert survives restart | A (rigour 4) | `MRTM-SOB-001` | `SP-05` | verified | — |
| MRTM-SAF-007 | Buzzer self-test | A (rigour 4) | `MRTM-SOB-001` | `SP-05` | verified | — |
| MRTM-SAF-008 | Low battery alarm | A (rigour 4) | `MRTM-SOB-001` | `SP-04` | verified | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | A (rigour 4) | `MRTM-SOB-001` | `SP-03` | verified | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | A (rigour 4) | `MRTM-SOB-001` | `SP-03` | verified | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 2) | `MRTM-SOB-004` | `SP-02` | verified | — |
| MRTM-SAF-012 | Probe calibration due | B (rigour 3) | `MRTM-SOB-003` | `SP-09` | verified | — |
| MRTM-SAF-013 | Alarm on total power loss | A (rigour 4) | `MRTM-SOB-001` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | A (rigour 4) | `MRTM-SOB-001` | `SP-06` | verified | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | A (rigour 4) | `MRTM-SOB-001` | `SP-06` | verified | — |
| MRTM-SAF-016 | Show the band at power-up | B (rigour 3) | `MRTM-SOB-002` | `SP-05` | verified | — |
| MRTM-SAF-017 | Band integrity check | A (rigour 4) | `MRTM-SOB-002` | `SP-05` | verified | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 2) | `MRTM-SOB-005` | `SP-07` | verified | — |
| MRTM-SAF-019 | Stuck acknowledge button | A (rigour 4) | `MRTM-SOB-001` | `SP-01` | verified | — |
| MRTM-SAF-020 | Probe placement in the instructions | A (rigour 4) | `MRTM-SOB-001` | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | B (rigour 3) | `MRTM-SOB-001`, `MRTM-SOB-005` | `SP-09` | verified | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 2) | `MRTM-SOB-005` | `SP-05` | verified | — |
| MRTM-SAF-023 | Backup alarm power-up test | A (rigour 4) | `MRTM-SOB-001` | `SP-05` | verified | — |

### High-level requirement (HLR) ⇄ Low-level requirement (LLR)

#### High-level requirement (HLR) → Low-level requirement (LLR) (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | `MRTM-LLR-001`, `MRTM-LLR-002`, `MRTM-LLR-003` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | `MRTM-LLR-003`, `MRTM-LLR-005` | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | `MRTM-LLR-004`, `MRTM-LLR-006` | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | `MRTM-LLR-006`, `MRTM-LLR-008` | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | `MRTM-LLR-006`, `MRTM-LLR-007`, `MRTM-LLR-008` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | `MRTM-LLR-006`, `MRTM-LLR-008`, `MRTM-LLR-009` | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | `MRTM-LLR-012`, `MRTM-LLR-013` | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | `MRTM-LLR-011`, `MRTM-LLR-012`, `MRTM-LLR-013` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | `MRTM-LLR-011`, `MRTM-LLR-012`, `MRTM-LLR-014`, `MRTM-LLR-015` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | `MRTM-LLR-016` | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | `MRTM-LLR-013` | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | `MRTM-LLR-013` | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | `MRTM-LLR-013` | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | `MRTM-LLR-010` | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | `MRTM-LLR-013`, `MRTM-LLR-015` | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | `MRTM-LLR-018`, `MRTM-LLR-026` | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | `MRTM-LLR-017` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | `MRTM-LLR-019` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | `MRTM-LLR-020`, `MRTM-LLR-021`, `MRTM-LLR-022`, `MRTM-LLR-025` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | `MRTM-LLR-023` | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | `MRTM-LLR-024` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | `MRTM-LLR-026` | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | `MRTM-LLR-025` | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | none | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | `MRTM-LLR-027`, `MRTM-LLR-029`, `MRTM-LLR-032` | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | `MRTM-LLR-028`, `MRTM-LLR-032`, `MRTM-LLR-034` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | `MRTM-LLR-029`, `MRTM-LLR-032`, `MRTM-LLR-033` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | `MRTM-LLR-029`, `MRTM-LLR-030` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | `MRTM-LLR-031` | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | `MRTM-LLR-035`, `MRTM-LLR-036`, `MRTM-LLR-038` | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | `MRTM-LLR-037`, `MRTM-LLR-038` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | `MRTM-LLR-035`, `MRTM-LLR-040`, `MRTM-LLR-041`, `MRTM-LLR-042` | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | `MRTM-LLR-039` | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | `MRTM-LLR-038` | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | `MRTM-LLR-043`, `MRTM-LLR-044` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | `MRTM-LLR-045` | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | `MRTM-LLR-043` | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | `MRTM-LLR-013` | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |

#### Low-level requirement (LLR) → High-level requirement (HLR) (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LLR-001 | Bus start | A (rigour 4) | `MRTM-HLR-001` | `test_sensor_sampler.test_error_codes_arg_and_bus` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init` |
| MRTM-LLR-002 | Unit conversion | A (rigour 4) | `MRTM-HLR-001` | `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-LLR-003 | Sample read | A (rigour 4) | `MRTM-HLR-001`, `MRTM-HLR-002` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-LLR-004 | Probe fault flag | A (rigour 4) | `MRTM-HLR-003` | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-LLR-005 | CRC-8 | A (rigour 4) | `MRTM-HLR-002` | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values` | verified | `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim` |
| MRTM-LLR-006 | Sensor step | A (rigour 4) | `MRTM-HLR-003`, `MRTM-HLR-004`, `MRTM-HLR-005`, `MRTM-HLR-006` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-LLR-007 | Band set | A (rigour 4) | `MRTM-HLR-005` | `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside`, `test_limit_evaluator.test_hysteresis_knob_is_zero` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init` |
| MRTM-LLR-008 | Consecutive counts | A (rigour 4) | `MRTM-HLR-004`, `MRTM-HLR-005`, `MRTM-HLR-006` | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LLR-009 | Peak | A (rigour 4) | `MRTM-HLR-006` | `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak` |
| MRTM-LLR-010 | State restore | A (rigour 4) | `MRTM-HLR-014` | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` |
| MRTM-LLR-011 | Signal queue | A (rigour 4) | `MRTM-HLR-008`, `MRTM-HLR-009` | `test_alarm_mgr.test_error_codes_full_and_nvs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post` |
| MRTM-LLR-012 | Transition table | A (rigour 4) | `MRTM-HLR-007`, `MRTM-HLR-008`, `MRTM-HLR-009` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-LLR-013 | Outputs per state | A (rigour 4) | `MRTM-HLR-007`, `MRTM-HLR-008`, `MRTM-HLR-011`, `MRTM-HLR-012`, `MRTM-HLR-013`, `MRTM-HLR-015`, `MRTM-HLR-038` | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-LLR-014 | Debounce timer | A (rigour 4) | `MRTM-HLR-009` | `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-LLR-015 | Accepted press | A (rigour 4) | `MRTM-HLR-009`, `MRTM-HLR-015` | `test_alarm_mgr.test_button_debounce_50_ms`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-LLR-016 | Heartbeat read | A (rigour 4) | `MRTM-HLR-010` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-LLR-017 | Task watchdog | A (rigour 4) | `MRTM-HLR-017` | `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-LLR-018 | Pulse gate | A (rigour 4) | `MRTM-HLR-016` | `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-LLR-019 | Self-tests | A (rigour 4) | `MRTM-HLR-018` | `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-LLR-020 | Band load | A (rigour 4) | `MRTM-HLR-019` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-LLR-021 | Band store | A (rigour 4) | `MRTM-HLR-019` | `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store` |
| MRTM-LLR-022 | CRC-32 | A (rigour 4) | `MRTM-HLR-019` | `test_mrtm_common.test_crc_check_values` | verified | `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-LLR-023 | Mains edge | A (rigour 4) | `MRTM-HLR-020` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-LLR-024 | Battery low latch | A (rigour 4) | `MRTM-HLR-021` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-LLR-025 | Power-up sequence | A (rigour 4) | `MRTM-HLR-019`, `MRTM-HLR-023` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-LLR-026 | Supervisor step | A (rigour 4) | `MRTM-HLR-016`, `MRTM-HLR-022` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-LLR-027 | Display step | B (rigour 3) | `MRTM-HLR-025` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-LLR-028 | Digits | B (rigour 3) | `MRTM-HLR-026` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LLR-029 | Banner | B (rigour 3) | `MRTM-HLR-025`, `MRTM-HLR-027`, `MRTM-HLR-028` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LLR-030 | Battery icon | B (rigour 3) | `MRTM-HLR-028` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LLR-031 | Bus recovery | B (rigour 3) | `MRTM-HLR-029` | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-LLR-032 | Frame render | B (rigour 3) | `MRTM-HLR-025`, `MRTM-HLR-026`, `MRTM-HLR-027` | `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-LLR-033 | Start screen | B (rigour 3) | `MRTM-HLR-027` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init` |
| MRTM-LLR-034 | Tick | B (rigour 3) | `MRTM-HLR-026` | — | unverified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick` |
| MRTM-LLR-035 | Post | C (rigour 2) | `MRTM-HLR-030`, `MRTM-HLR-032` | `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |
| MRTM-LLR-036 | Store | C (rigour 2) | `MRTM-HLR-030` | `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LLR-037 | Find the head | C (rigour 2) | `MRTM-HLR-031` | `test_history_ring.test_init_finds_the_head_again_after_a_restart` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LLR-038 | Append | C (rigour 2) | `MRTM-HLR-030`, `MRTM-HLR-031`, `MRTM-HLR-034` | `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_capacity_warning_once_at_9000`, `test_history_ring.test_error_codes_flash_arg`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-LLR-039 | Read | C (rigour 2) | `MRTM-HLR-033` | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-LLR-040 | Clock start | C (rigour 2) | `MRTM-HLR-032` | `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-LLR-041 | Clock read | C (rigour 2) | `MRTM-HLR-032` | `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-LLR-042 | Clock refresh | C (rigour 2) | `MRTM-HLR-032` | `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-LLR-043 | Volume start | D (rigour 1) | `MRTM-HLR-035`, `MRTM-HLR-037` | — | unverified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-LLR-044 | Sector read | D (rigour 1) | `MRTM-HLR-035` | `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-LLR-045 | Sector write | D (rigour 1) | `MRTM-HLR-036` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | A (rigour 4) | `system` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | A (rigour 4) | `system` | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | A (rigour 4) | `system` | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | A (rigour 4) | `system` | `SP-10` | verified | — |
| MRTM-FUN-001 | Monitor the fridge air | A (rigour 4) | `monitor` | — | unverified | — |
| MRTM-FUN-002 | Warn of an excursion | A (rigour 4) | `monitor` | — | unverified | — |
| MRTM-FUN-003 | Acknowledge the warning | A (rigour 4) | `monitor` | — | unverified | — |
| MRTM-FUN-004 | Keep the history | C (rigour 2) | `monitor` | — | unverified | — |
| MRTM-FUN-005 | Watch through a power cut | A (rigour 4) | `monitor` | — | unverified | — |
| MRTM-HLR-001 | Sample period and read | A (rigour 4) | `alarmSw` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | — |
| MRTM-HLR-002 | Invalid sample | A (rigour 4) | `alarmSw` | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-003 | Probe fault declaration | A (rigour 4) | `alarmSw` | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | — |
| MRTM-HLR-004 | Early excursion report | A (rigour 4) | `alarmSw` | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | — |
| MRTM-HLR-005 | Confirmed excursion report | A (rigour 4) | `alarmSw` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | — |
| MRTM-HLR-006 | Excursion end report | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | — |
| MRTM-HLR-007 | Early alarm light | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | — |
| MRTM-HLR-008 | Buzzer on | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-009 | Buzzer off on acknowledge | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | — |
| MRTM-HLR-010 | Alarm heartbeat | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HLR-011 | Re-sound after silence | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | — |
| MRTM-HLR-012 | Probe fault tone | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | — |
| MRTM-HLR-013 | Buzzer fault | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | — |
| MRTM-HLR-014 | Alarm survives restart | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-015 | Stuck button | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | — |
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A (rigour 4) | `platformSw` | `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | — |
| MRTM-HLR-017 | Task watchdog restart | A (rigour 4) | `platformSw` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | — |
| MRTM-HLR-018 | Power-up tests | A (rigour 4) | `platformSw` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | — |
| MRTM-HLR-019 | Band integrity | A (rigour 4) | `platformSw` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-HLR-020 | Mains events | A (rigour 4) | `platformSw` | `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | — |
| MRTM-HLR-021 | Battery low | A (rigour 4) | `platformSw` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | — |
| MRTM-HLR-022 | Maintenance flags | A (rigour 4) | `platformSw` | — | unverified | — |
| MRTM-HLR-023 | Power-up order | A (rigour 4) | `platformSw` | `test_int_chains.test_int03_corrupt_config_fail_safe`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | — |
| MRTM-HLR-024 | Task priorities keep the alarm first | A (rigour 4) | `platformSw` | — | unverified | — |
| MRTM-HLR-025 | Warning and fault messages | B (rigour 3) | `displaySw` | `SP-05`, `SP-09`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message`, `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-HLR-026 | Temperature on screen | B (rigour 3) | `displaySw` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | — |
| MRTM-HLR-027 | Band at power-up | B (rigour 3) | `displaySw` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | — |
| MRTM-HLR-028 | Maintenance messages | B (rigour 3) | `displaySw` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | — |
| MRTM-HLR-029 | Display bus recovery | B (rigour 3) | `displaySw` | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | — |
| MRTM-HLR-030 | Two copies within 1 s | C (rigour 2) | `recordSw` | `SP-07`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_int_chains.test_int01_excursion_chain`, `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-HLR-031 | Newest 10000 kept | C (rigour 2) | `recordSw` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | — |
| MRTM-HLR-032 | Time stamps | C (rigour 2) | `recordSw` | `SP-12`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | — |
| MRTM-HLR-033 | Corrupt record | C (rigour 2) | `recordSw` | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | — |
| MRTM-HLR-034 | Capacity warning record | C (rigour 2) | `recordSw` | `test_history_ring.test_capacity_warning_once_at_9000` | verified | — |
| MRTM-HLR-035 | Read-only volume | D (rigour 1) | `exportSw` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | — |
| MRTM-HLR-036 | Host writes refused | D (rigour 1) | `exportSw` | `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-HLR-037 | Read the log only through the accessor | D (rigour 1) | `exportSw` | — | unverified | — |
| MRTM-HLR-038 | Buzzer in fail-safe | A (rigour 4) | `alarmSw` | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | verified | — |
| MRTM-HWR-001 | Probe conversion time | A (rigour 4) | `sensorHw` | `SP-01`, `SP-10` | verified | — |
| MRTM-HWR-002 | Probe accuracy | A (rigour 4) | `sensorHw` | `SP-10` | verified | — |
| MRTM-HWR-003 | Probe scratchpad check | A (rigour 4) | `sensorHw` | `SP-02`, `SP-10` | verified | — |
| MRTM-HWR-004 | Buzzer loudness | A (rigour 4) | `alarmHw` | `SP-06` | verified | — |
| MRTM-HWR-005 | Red indicator response | A (rigour 4) | `alarmHw` | `SP-01` | verified | — |
| MRTM-HWR-006 | Acknowledge contact | A (rigour 4) | `alarmHw` | `SP-01` | verified | — |
| MRTM-HWR-007 | Backup timer timeout | A (rigour 4) | `alarmHw` | `SP-03` | verified | — |
| MRTM-HWR-008 | Backup driver response | A (rigour 4) | `alarmHw` | `SP-03` | verified | — |
| MRTM-HWR-009 | Backup hold-up | A (rigour 4) | `alarmHw` | `SP-03` | verified | — |
| MRTM-HWR-010 | Controller watchdog reset | A (rigour 4) | `controllerHw` | `SP-03` | verified | — |
| MRTM-HWR-011 | Clock drift | A (rigour 4) | `controllerHw` | `SP-12` | verified | — |
| MRTM-HWR-012 | Switch to battery | B (rigour 3) | `powerHw` | `SP-04` | verified | — |
| MRTM-HWR-013 | Battery capacity | B (rigour 3) | `powerHw` | `SP-04` | verified | — |
| MRTM-HWR-014 | Digit height | B (rigour 3) | `displayHw` | `SP-09` | verified | — |
| MRTM-IFC-001 | Probe bus | A (rigour 4) | `system` | `SP-10` | verified | — |
| MRTM-IFC-002 | Acknowledge input | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-IFC-003 | USB readout | C (rigour 2) | `system` | `SP-08` | verified | — |
| MRTM-IFC-004 | Display character height | A (rigour 4) | `system` | `SP-09` | verified | — |
| MRTM-LLR-001 | Bus start | A (rigour 4) | `alarmSwDesign.sensorSampler` | `test_sensor_sampler.test_error_codes_arg_and_bus` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init` |
| MRTM-LLR-002 | Unit conversion | A (rigour 4) | `alarmSwDesign.sensorSampler` | `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-LLR-003 | Sample read | A (rigour 4) | `alarmSwDesign.sensorSampler` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-LLR-004 | Probe fault flag | A (rigour 4) | `alarmSwDesign.sensorSampler` | `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-LLR-005 | CRC-8 | A (rigour 4) | `alarmSwDesign` | `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values` | verified | `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim` |
| MRTM-LLR-006 | Sensor step | A (rigour 4) | `alarmSwDesign` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-LLR-007 | Band set | A (rigour 4) | `alarmSwDesign.limitEvaluator` | `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside`, `test_limit_evaluator.test_hysteresis_knob_is_zero` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init` |
| MRTM-LLR-008 | Consecutive counts | A (rigour 4) | `alarmSwDesign.limitEvaluator` | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LLR-009 | Peak | A (rigour 4) | `alarmSwDesign.limitEvaluator` | `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak` |
| MRTM-LLR-010 | State restore | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` |
| MRTM-LLR-011 | Signal queue | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_error_codes_full_and_nvs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post` |
| MRTM-LLR-012 | Transition table | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-LLR-013 | Outputs per state | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-LLR-014 | Debounce timer | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-LLR-015 | Accepted press | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_button_debounce_50_ms`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-LLR-016 | Heartbeat read | A (rigour 4) | `alarmSwDesign.alarmMgr` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-LLR-017 | Task watchdog | A (rigour 4) | `platformSwDesign.wdtKicker` | `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-LLR-018 | Pulse gate | A (rigour 4) | `platformSwDesign.wdtKicker` | `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-LLR-019 | Self-tests | A (rigour 4) | `platformSwDesign.diagnostics` | `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-LLR-020 | Band load | A (rigour 4) | `platformSwDesign.configMgr` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-LLR-021 | Band store | A (rigour 4) | `platformSwDesign.configMgr` | `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store` |
| MRTM-LLR-022 | CRC-32 | A (rigour 4) | `platformSwDesign` | `test_mrtm_common.test_crc_check_values` | verified | `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-LLR-023 | Mains edge | A (rigour 4) | `platformSwDesign.powerMon` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-LLR-024 | Battery low latch | A (rigour 4) | `platformSwDesign.powerMon` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-LLR-025 | Power-up sequence | A (rigour 4) | `platformSwDesign` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-LLR-026 | Supervisor step | A (rigour 4) | `platformSwDesign` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-LLR-027 | Display step | B (rigour 3) | `displaySwDesign` | — | unverified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-LLR-028 | Digits | B (rigour 3) | `displaySwDesign.displayMgr` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LLR-029 | Banner | B (rigour 3) | `displaySwDesign.displayMgr` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LLR-030 | Battery icon | B (rigour 3) | `displaySwDesign.displayMgr` | `test_display_mgr.test_battery_shown_in_steps_of_10_percent` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LLR-031 | Bus recovery | B (rigour 3) | `displaySwDesign.displayMgr` | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-LLR-032 | Frame render | B (rigour 3) | `displaySwDesign.displayMgr` | `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-LLR-033 | Start screen | B (rigour 3) | `displaySwDesign.displayMgr` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init` |
| MRTM-LLR-034 | Tick | B (rigour 3) | `displaySwDesign.displayMgr` | — | unverified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick` |
| MRTM-LLR-035 | Post | C (rigour 2) | `recordSwDesign.eventLog` | `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |
| MRTM-LLR-036 | Store | C (rigour 2) | `recordSwDesign.eventLog` | `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LLR-037 | Find the head | C (rigour 2) | `recordSwDesign.historyRing` | `test_history_ring.test_init_finds_the_head_again_after_a_restart` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LLR-038 | Append | C (rigour 2) | `recordSwDesign.historyRing` | `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_capacity_warning_once_at_9000`, `test_history_ring.test_error_codes_flash_arg`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-LLR-039 | Read | C (rigour 2) | `recordSwDesign.historyRing` | `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-LLR-040 | Clock start | C (rigour 2) | `recordSwDesign.rtcClock` | `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-LLR-041 | Clock read | C (rigour 2) | `recordSwDesign.rtcClock` | `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-LLR-042 | Clock refresh | C (rigour 2) | `recordSwDesign.rtcClock` | `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-LLR-043 | Volume start | D (rigour 1) | `exportSwDesign.usbExport` | — | unverified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-LLR-044 | Sector read | D (rigour 1) | `exportSwDesign.usbExport` | `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_full_history_fits_and_fat_chain_ends`, `test_usb_export.test_history_csv_is_marked_read_only`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-LLR-045 | Sector write | D (rigour 1) | `exportSwDesign.usbExport` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-MNT-001 | Probe replacement | A (rigour 4) | `system` | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | A (rigour 4) | `system` | `SP-09` | verified | — |
| MRTM-MNT-003 | Firmware version | A (rigour 4) | `system` | `SP-05` | verified | — |
| MRTM-PRF-001 | Measurement accuracy | A (rigour 4) | `system` | `SP-10` | verified | — |
| MRTM-PRF-002 | End-to-end alert time | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-PRF-003 | Log readout time | C (rigour 2) | `system` | `SP-08` | verified | — |
| MRTM-PRF-004 | Display refresh | A (rigour 4) | `system` | `SP-09` | verified | — |
| MRTM-SAF-001 | Buzzer loudness | A (rigour 4) | `system` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | A (rigour 4) | `system` | `SP-02` | verified | — |
| MRTM-SAF-003 | Implausible sample | A (rigour 4) | `system` | `SP-02` | verified | — |
| MRTM-SAF-004 | Watchdog restart | A (rigour 4) | `system` | `SP-03` | verified | — |
| MRTM-SAF-005 | Log power loss | A (rigour 4) | `system` | `SP-04` | verified | — |
| MRTM-SAF-006 | Alert survives restart | A (rigour 4) | `system` | `SP-05` | verified | — |
| MRTM-SAF-007 | Buzzer self-test | A (rigour 4) | `system` | `SP-05` | verified | — |
| MRTM-SAF-008 | Low battery alarm | A (rigour 4) | `system` | `SP-04` | verified | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | A (rigour 4) | `system` | `SP-03` | verified | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | A (rigour 4) | `system` | `SP-03` | verified | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 2) | `system` | `SP-02` | verified | — |
| MRTM-SAF-012 | Probe calibration due | B (rigour 3) | `system` | `SP-09` | verified | — |
| MRTM-SAF-013 | Alarm on total power loss | A (rigour 4) | `system` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | A (rigour 4) | `system` | `SP-06` | verified | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | A (rigour 4) | `system` | `SP-06` | verified | — |
| MRTM-SAF-016 | Show the band at power-up | B (rigour 3) | `system` | `SP-05` | verified | — |
| MRTM-SAF-017 | Band integrity check | A (rigour 4) | `system` | `SP-05` | verified | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 2) | `system` | `SP-07` | verified | — |
| MRTM-SAF-019 | Stuck acknowledge button | A (rigour 4) | `system` | `SP-01` | verified | — |
| MRTM-SAF-020 | Probe placement in the instructions | A (rigour 4) | `system` | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | B (rigour 3) | `system` | `SP-09` | verified | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 2) | `system` | `SP-05` | verified | — |
| MRTM-SAF-023 | Backup alarm power-up test | A (rigour 4) | `system` | `SP-05` | verified | — |
| MRTM-SOB-001 | No silent loss of warning | A (rigour 4) | `monitor` | — | unverified | — |
| MRTM-SOB-002 | No silent wrong band | A (rigour 4) | `monitor` | — | unverified | — |
| MRTM-SOB-003 | Drift is bounded and shown | B (rigour 3) | `monitor` | — | unverified | — |
| MRTM-SOB-004 | Nuisance warnings are limited | C (rigour 2) | `monitor` | — | unverified | — |
| MRTM-SOB-005 | No silent loss of history | C (rigour 2) | `monitor` | — | unverified | — |
| MRTM-STK-001 | Alert on excursion | A (rigour 4) | `monitor` | `SP-01` | verified | — |
| MRTM-STK-002 | No alert on brief door opening | A (rigour 4) | `monitor` | `SP-01` | verified | — |
| MRTM-STK-003 | Silence the alert | A (rigour 4) | `monitor` | `SP-01` | verified | — |
| MRTM-STK-004 | See the temperature | A (rigour 4) | `monitor` | `SP-09` | verified | — |
| MRTM-STK-005 | Audit history | C (rigour 2) | `monitor` | `SP-08` | verified | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 2) | `monitor` | `SP-08` | verified | — |
| MRTM-STK-007 | Probe failure is visible | A (rigour 4) | `monitor` | `SP-02` | verified | — |
| MRTM-STK-008 | Monitoring through a power cut | A (rigour 4) | `monitor` | `SP-04` | verified | — |
| MRTM-SYS-001 | Sampling period | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-002 | Excursion confirmation | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-003 | Buzzer on excursion | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-004 | Red indicator on excursion | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-005 | Warning on excursion | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-007 | Warning stays while excursion is open | A (rigour 4) | `system` | `SP-01` | verified | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 2) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 2) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 2) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-011 | Display resolution | A (rigour 4) | `system` | `SP-09` | verified | — |
| MRTM-SYS-012 | Probe fault detection | A (rigour 4) | `system` | `SP-02` | verified | — |
| MRTM-SYS-013 | Probe fault message | A (rigour 4) | `system` | `SP-02` | verified | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 2) | `system` | `SP-08` | verified | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 2) | `system` | `SP-07` | verified | — |
| MRTM-SYS-016 | Battery operation | A (rigour 4) | `system` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | A (rigour 4) | `system` | `SP-13` | verified | — |
| MRTM-SYS-018 | Excursion end confirmation | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | `10-src/config/mrtm_config.h#off` |
| MRTM-SYS-019 | Alarm comes back after silence | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |
| MRTM-SYS-020 | Clock drift | C (rigour 2) | `system` | `SP-12` | verified | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 2) | `system` | `SP-07` | verified | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 2) | `system` | `SP-07` | verified | — |
| MRTM-SYS-023 | Power restore event | A (rigour 4) | `system` | `SP-04` | verified | — |
| MRTM-SYS-024 | Early excursion alarm | A (rigour 4) | `system` | `SP-01`, `SP-01-H` | verified | — |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| AckButton |  | not classified | none | — | n/a — allocated item | — |
| AlarmHw |  | not classified | none | — | n/a — allocated item | — |
| AlarmMgr |  | not classified | none | — | n/a — allocated item | — |
| AlarmSw |  | not classified | none | — | n/a — allocated item | — |
| AlarmSwDesign |  | not classified | none | — | n/a — allocated item | — |
| AlarmSwItem |  | not classified | none | — | n/a — allocated item | — |
| AlarmTask |  | not classified | none | — | n/a — allocated item | — |
| BackupAlarm |  | not classified | none | — | n/a — allocated item | — |
| BannerWidget |  | not classified | none | — | n/a — allocated item | — |
| Battery |  | not classified | none | — | n/a — allocated item | — |
| Buzzer |  | not classified | none | — | n/a — allocated item | — |
| ChargerPowerPath |  | not classified | none | — | n/a — allocated item | — |
| ClinicManager |  | not classified | none | — | n/a — allocated item | — |
| ClinicSetting |  | not classified | none | — | n/a — allocated item | — |
| Component |  | not classified | none | — | n/a — allocated item | — |
| ConfigMgr |  | not classified | none | — | n/a — allocated item | — |
| ControllerHw |  | not classified | none | — | n/a — allocated item | — |
| Diagnostics |  | not classified | none | — | n/a — allocated item | — |
| DisplayHw |  | not classified | none | — | n/a — allocated item | — |
| DisplayMgr |  | not classified | none | — | n/a — allocated item | — |
| DisplaySw |  | not classified | none | — | n/a — allocated item | — |
| DisplaySwDesign |  | not classified | none | — | n/a — allocated item | — |
| DisplaySwItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayTask |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20 |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20Probe |  | not classified | none | — | n/a — allocated item | — |
| Esp32Module |  | not classified | none | — | n/a — allocated item | — |
| Esp32S3Module |  | not classified | none | — | n/a — allocated item | — |
| EventLog |  | not classified | none | — | n/a — allocated item | — |
| ExportSw |  | not classified | none | — | n/a — allocated item | — |
| ExportSwDesign |  | not classified | none | — | n/a — allocated item | — |
| ExportSwItem |  | not classified | none | — | n/a — allocated item | — |
| FrameBuffer |  | not classified | none | — | n/a — allocated item | — |
| Fridge |  | not classified | none | — | n/a — allocated item | — |
| HistoryRingStore |  | not classified | none | — | n/a — allocated item | — |
| HoldUpCapacitor |  | not classified | none | — | n/a — allocated item | — |
| IconWidget |  | not classified | none | — | n/a — allocated item | — |
| IndicatorLed |  | not classified | none | — | n/a — allocated item | — |
| Led |  | not classified | none | — | n/a — allocated item | — |
| LiIonCell |  | not classified | none | — | n/a — allocated item | — |
| LimitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| LogTask |  | not classified | none | — | n/a — allocated item | — |
| LogicalMonitor |  | not classified | none | — | n/a — allocated item | — |
| MainsSupply |  | not classified | none | — | n/a — allocated item | — |
| Monitor |  | not classified | none | — | n/a — allocated item | — |
| MonitorDevice |  | not classified | none | — | n/a — allocated item | — |
| MonitorSystem |  | not classified | none | — | n/a — allocated item | — |
| MonitorSystemItems |  | not classified | none | — | n/a — allocated item | — |
| MonitoringFirmware |  | not classified | none | — | n/a — allocated item | — |
| MrtmBoard |  | not classified | none | — | n/a — allocated item | — |
| MrtmContext |  | not classified | none | — | n/a — allocated item | — |
| MrtmFirmware |  | not classified | none | — | n/a — allocated item | — |
| MrtmRiskControls |  | not classified | none | — | n/a — allocated item | — |
| MrtmSwDeployment |  | not classified | none | — | n/a — allocated item | — |
| MrtmSystem |  | not classified | none | — | n/a — allocated item | — |
| MrtmUnit |  | not classified | none | — | n/a — allocated item | — |
| MrtmUnitContracts |  | not classified | none | — | n/a — allocated item | — |
| Nurse |  | not classified | none | — | n/a — allocated item | — |
| Oled128x64 |  | not classified | none | — | n/a — allocated item | — |
| OledPanel |  | not classified | none | — | n/a — allocated item | — |
| PiezoBuzzerStage |  | not classified | none | — | n/a — allocated item | — |
| PlatformSw |  | not classified | none | — | n/a — allocated item | — |
| PlatformSwDesign |  | not classified | none | — | n/a — allocated item | — |
| PlatformSwItem |  | not classified | none | — | n/a — allocated item | — |
| PowerHw |  | not classified | none | — | n/a — allocated item | — |
| PowerMon |  | not classified | none | — | n/a — allocated item | — |
| PowerPath |  | not classified | none | — | n/a — allocated item | — |
| QualityOfficer |  | not classified | none | — | n/a — allocated item | — |
| RecordSw |  | not classified | none | — | n/a — allocated item | — |
| RecordSwDesign |  | not classified | none | — | n/a — allocated item | — |
| RecordSwItem |  | not classified | none | — | n/a — allocated item | — |
| RtcChip |  | not classified | none | — | n/a — allocated item | — |
| RtcClock |  | not classified | none | — | n/a — allocated item | — |
| RtosTask |  | not classified | none | — | n/a — allocated item | — |
| Screen |  | not classified | none | — | n/a — allocated item | — |
| SensorHw |  | not classified | none | — | n/a — allocated item | — |
| SensorSampler |  | not classified | none | — | n/a — allocated item | — |
| SensorTask |  | not classified | none | — | n/a — allocated item | — |
| Ssd1306Driver |  | not classified | none | — | n/a — allocated item | — |
| Staff |  | not classified | none | — | n/a — allocated item | — |
| Supercap |  | not classified | none | — | n/a — allocated item | — |
| SupervisorTask |  | not classified | none | — | n/a — allocated item | — |
| TactileButton |  | not classified | none | — | n/a — allocated item | — |
| TcxoRtc |  | not classified | none | — | n/a — allocated item | — |
| Technician |  | not classified | none | — | n/a — allocated item | — |
| TextWidget |  | not classified | none | — | n/a — allocated item | — |
| UsbExport |  | not classified | none | — | n/a — allocated item | — |
| UsbHost |  | not classified | none | — | n/a — allocated item | — |
| UsbTask |  | not classified | none | — | n/a — allocated item | — |
| WatchdogAlarmTimer |  | not classified | none | — | n/a — allocated item | — |
| WdtKicker |  | not classified | none | — | n/a — allocated item | — |
| Widget |  | not classified | none | — | n/a — allocated item | — |
| ackButton |  | not classified | none | — | n/a — allocated item | — |
| alarmHw |  | not classified | `MRTM-HWR-004`, `MRTM-HWR-005`, `MRTM-HWR-006`, `MRTM-HWR-007`, `MRTM-HWR-008`, `MRTM-HWR-009` | — | n/a — allocated item | — |
| alarmManager |  | not classified | none | — | n/a — allocated item | — |
| alarmMgr |  | not classified | none | — | n/a — allocated item | — |
| alarmMgrApi |  | not classified | none | — | n/a — allocated item | — |
| alarmService |  | not classified | none | — | n/a — allocated item | — |
| alarmSw |  | not classified | `MRTM-HLR-001`, `MRTM-HLR-002`, `MRTM-HLR-003`, `MRTM-HLR-004`, `MRTM-HLR-005`, `MRTM-HLR-006`, `MRTM-HLR-007`, `MRTM-HLR-008`, `MRTM-HLR-009`, `MRTM-HLR-010`, `MRTM-HLR-011`, `MRTM-HLR-012`, `MRTM-HLR-013`, `MRTM-HLR-014`, `MRTM-HLR-015`, `MRTM-HLR-038` | — | n/a — allocated item | — |
| alarmSwDesign |  | not classified | `MRTM-LLR-005`, `MRTM-LLR-006` | — | n/a — allocated item | — |
| alarmSwDesign.alarmMgr |  | not classified | `MRTM-LLR-010`, `MRTM-LLR-011`, `MRTM-LLR-012`, `MRTM-LLR-013`, `MRTM-LLR-014`, `MRTM-LLR-015`, `MRTM-LLR-016` | — | n/a — unresolved reference | — |
| alarmSwDesign.limitEvaluator |  | not classified | `MRTM-LLR-007`, `MRTM-LLR-008`, `MRTM-LLR-009` | — | n/a — unresolved reference | — |
| alarmSwDesign.sensorSampler |  | not classified | `MRTM-LLR-001`, `MRTM-LLR-002`, `MRTM-LLR-003`, `MRTM-LLR-004` | — | n/a — unresolved reference | — |
| alarmSwItem |  | not classified | none | — | n/a — allocated item | — |
| alarmTask |  | not classified | none | — | n/a — allocated item | — |
| backupAlarm |  | not classified | none | — | n/a — allocated item | — |
| banner |  | not classified | none | — | n/a — allocated item | — |
| battery |  | not classified | none | — | n/a — allocated item | — |
| board |  | not classified | none | — | n/a — allocated item | — |
| buzzer |  | not classified | none | — | n/a — allocated item | — |
| configMgr |  | not classified | none | — | n/a — allocated item | — |
| configMgrApi |  | not classified | none | — | n/a — allocated item | — |
| controllerHw |  | not classified | `MRTM-HWR-010`, `MRTM-HWR-011` | — | n/a — allocated item | — |
| diagnostics |  | not classified | none | — | n/a — allocated item | — |
| diagnosticsApi |  | not classified | none | — | n/a — allocated item | — |
| displayHw |  | not classified | `MRTM-HWR-014` | — | n/a — allocated item | — |
| displayMgr |  | not classified | none | — | n/a — allocated item | — |
| displayMgrApi |  | not classified | none | — | n/a — allocated item | — |
| displayService |  | not classified | none | — | n/a — allocated item | — |
| displaySw |  | not classified | `MRTM-HLR-025`, `MRTM-HLR-026`, `MRTM-HLR-027`, `MRTM-HLR-028`, `MRTM-HLR-029` | — | n/a — allocated item | — |
| displaySwDesign |  | not classified | `MRTM-LLR-027` | — | n/a — allocated item | — |
| displaySwDesign.displayMgr |  | not classified | `MRTM-LLR-028`, `MRTM-LLR-029`, `MRTM-LLR-030`, `MRTM-LLR-031`, `MRTM-LLR-032`, `MRTM-LLR-033`, `MRTM-LLR-034` | — | n/a — unresolved reference | — |
| displaySwItem |  | not classified | none | — | n/a — allocated item | — |
| displayTask |  | not classified | none | — | n/a — allocated item | — |
| driver |  | not classified | none | — | n/a — allocated item | — |
| esp32 |  | not classified | none | — | n/a — allocated item | — |
| evaluator |  | not classified | none | — | n/a — allocated item | — |
| eventLog |  | not classified | none | — | n/a — allocated item | — |
| eventLogApi |  | not classified | none | — | n/a — allocated item | — |
| eventLogger |  | not classified | none | — | n/a — allocated item | — |
| excursionDetector |  | not classified | none | — | n/a — allocated item | — |
| excursionService |  | not classified | none | — | n/a — allocated item | — |
| exportSw |  | not classified | `MRTM-HLR-035`, `MRTM-HLR-036`, `MRTM-HLR-037` | — | n/a — allocated item | — |
| exportSwDesign |  | not classified | none | — | n/a — allocated item | — |
| exportSwDesign.usbExport |  | not classified | `MRTM-LLR-043`, `MRTM-LLR-044`, `MRTM-LLR-045` | — | n/a — unresolved reference | — |
| exportSwItem |  | not classified | none | — | n/a — allocated item | — |
| faultAlarm |  | not classified | none | — | n/a — allocated item | — |
| faultBuzzer |  | not classified | none | — | n/a — allocated item | — |
| faultDisplay |  | not classified | none | — | n/a — allocated item | — |
| faultLogger |  | not classified | none | — | n/a — allocated item | — |
| faultProbe |  | not classified | none | — | n/a — allocated item | — |
| faultSampler |  | not classified | none | — | n/a — allocated item | — |
| fb |  | not classified | none | — | n/a — allocated item | — |
| firmware |  | not classified | none | — | n/a — allocated item | — |
| fridge |  | not classified | none | — | n/a — allocated item | — |
| functions |  | not classified | none | — | n/a — allocated item | — |
| greenLed |  | not classified | none | — | n/a — allocated item | — |
| hardware |  | not classified | none | — | n/a — allocated item | — |
| historyRing |  | not classified | none | — | n/a — allocated item | — |
| historyRingApi |  | not classified | none | — | n/a — allocated item | — |
| historyServer |  | not classified | none | — | n/a — allocated item | — |
| holdUpCap |  | not classified | none | — | n/a — allocated item | — |
| icon |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluatorApi |  | not classified | none | — | n/a — allocated item | — |
| logService |  | not classified | none | — | n/a — allocated item | — |
| logTask |  | not classified | none | — | n/a — allocated item | — |
| logger |  | not classified | none | — | n/a — allocated item | — |
| mains |  | not classified | none | — | n/a — allocated item | — |
| monitor |  | not classified | `MRTM-FUN-001`, `MRTM-FUN-002`, `MRTM-FUN-003`, `MRTM-FUN-004`, `MRTM-FUN-005`, `MRTM-SOB-001`, `MRTM-SOB-002`, `MRTM-SOB-003`, `MRTM-SOB-004`, `MRTM-SOB-005`, `MRTM-STK-001`, `MRTM-STK-002`, `MRTM-STK-003`, `MRTM-STK-004`, `MRTM-STK-005`, `MRTM-STK-006`, `MRTM-STK-007`, `MRTM-STK-008` | — | n/a — allocated item | — |
| nurse |  | not classified | none | — | n/a — allocated item | — |
| oled |  | not classified | none | — | n/a — allocated item | — |
| platformSw |  | not classified | `MRTM-HLR-016`, `MRTM-HLR-017`, `MRTM-HLR-018`, `MRTM-HLR-019`, `MRTM-HLR-020`, `MRTM-HLR-021`, `MRTM-HLR-022`, `MRTM-HLR-023`, `MRTM-HLR-024` | — | n/a — allocated item | — |
| platformSwDesign |  | not classified | `MRTM-LLR-022`, `MRTM-LLR-025`, `MRTM-LLR-026` | — | n/a — allocated item | — |
| platformSwDesign.configMgr |  | not classified | `MRTM-LLR-020`, `MRTM-LLR-021` | — | n/a — unresolved reference | — |
| platformSwDesign.diagnostics |  | not classified | `MRTM-LLR-019` | — | n/a — unresolved reference | — |
| platformSwDesign.powerMon |  | not classified | `MRTM-LLR-023`, `MRTM-LLR-024` | — | n/a — unresolved reference | — |
| platformSwDesign.wdtKicker |  | not classified | `MRTM-LLR-017`, `MRTM-LLR-018` | — | n/a — unresolved reference | — |
| platformSwItem |  | not classified | none | — | n/a — allocated item | — |
| powerClock |  | not classified | none | — | n/a — allocated item | — |
| powerHw |  | not classified | `MRTM-HWR-012`, `MRTM-HWR-013` | — | n/a — allocated item | — |
| powerLogger |  | not classified | none | — | n/a — allocated item | — |
| powerMon |  | not classified | none | — | n/a — allocated item | — |
| powerMonApi |  | not classified | none | — | n/a — allocated item | — |
| powerPath |  | not classified | none | — | n/a — allocated item | — |
| powerRing |  | not classified | none | — | n/a — allocated item | — |
| powerService |  | not classified | none | — | n/a — allocated item | — |
| powerSupervisor |  | not classified | none | — | n/a — allocated item | — |
| probe |  | not classified | none | — | n/a — allocated item | — |
| probeSupervisor |  | not classified | none | — | n/a — allocated item | — |
| recordSw |  | not classified | `MRTM-HLR-030`, `MRTM-HLR-031`, `MRTM-HLR-032`, `MRTM-HLR-033`, `MRTM-HLR-034` | — | n/a — allocated item | — |
| recordSwDesign |  | not classified | none | — | n/a — allocated item | — |
| recordSwDesign.eventLog |  | not classified | `MRTM-LLR-035`, `MRTM-LLR-036` | — | n/a — unresolved reference | — |
| recordSwDesign.historyRing |  | not classified | `MRTM-LLR-037`, `MRTM-LLR-038`, `MRTM-LLR-039` | — | n/a — unresolved reference | — |
| recordSwDesign.rtcClock |  | not classified | `MRTM-LLR-040`, `MRTM-LLR-041`, `MRTM-LLR-042` | — | n/a — unresolved reference | — |
| recordSwItem |  | not classified | none | — | n/a — allocated item | — |
| redLed |  | not classified | none | — | n/a — allocated item | — |
| rtc |  | not classified | none | — | n/a — allocated item | — |
| rtcClock |  | not classified | none | — | n/a — allocated item | — |
| rtcClockApi |  | not classified | none | — | n/a — allocated item | — |
| sampler |  | not classified | none | — | n/a — allocated item | — |
| screen |  | not classified | none | — | n/a — allocated item | — |
| selfTest |  | not classified | none | — | n/a — allocated item | — |
| sensorHw |  | not classified | `MRTM-HWR-001`, `MRTM-HWR-002`, `MRTM-HWR-003` | — | n/a — allocated item | — |
| sensorSampler |  | not classified | none | — | n/a — allocated item | — |
| sensorSamplerApi |  | not classified | none | — | n/a — allocated item | — |
| sensorService |  | not classified | none | — | n/a — allocated item | — |
| sensorTask |  | not classified | none | — | n/a — allocated item | — |
| staff |  | not classified | none | — | n/a — allocated item | — |
| statusDisplay |  | not classified | none | — | n/a — allocated item | — |
| supervisor |  | not classified | none | — | n/a — allocated item | — |
| supervisorTask |  | not classified | none | — | n/a — allocated item | — |
| system |  | not classified | `MRTM-ENV-001`, `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004`, `MRTM-IFC-001`, `MRTM-IFC-002`, `MRTM-IFC-003`, `MRTM-IFC-004`, `MRTM-MNT-001`, `MRTM-MNT-002`, `MRTM-MNT-003`, `MRTM-PRF-001`, `MRTM-PRF-002`, `MRTM-PRF-003`, `MRTM-PRF-004`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-005`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-008`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-011`, `MRTM-SAF-012`, `MRTM-SAF-013`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-016`, `MRTM-SAF-017`, `MRTM-SAF-018`, `MRTM-SAF-019`, `MRTM-SAF-020`, `MRTM-SAF-021`, `MRTM-SAF-022`, `MRTM-SAF-023`, `MRTM-SYS-001`, `MRTM-SYS-002`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-011`, `MRTM-SYS-012`, `MRTM-SYS-013`, `MRTM-SYS-014`, `MRTM-SYS-015`, `MRTM-SYS-016`, `MRTM-SYS-017`, `MRTM-SYS-018`, `MRTM-SYS-019`, `MRTM-SYS-020`, `MRTM-SYS-021`, `MRTM-SYS-022`, `MRTM-SYS-023`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| technician |  | not classified | none | — | n/a — allocated item | — |
| temperature |  | not classified | none | — | n/a — allocated item | — |
| timekeeper |  | not classified | none | — | n/a — allocated item | — |
| usbExport |  | not classified | none | — | n/a — allocated item | — |
| usbExportApi |  | not classified | none | — | n/a — allocated item | — |
| usbHost |  | not classified | none | — | n/a — allocated item | — |
| usbService |  | not classified | none | — | n/a — allocated item | — |
| usbTask |  | not classified | none | — | n/a — allocated item | — |
| watchdog |  | not classified | none | — | n/a — allocated item | — |
| wdtKicker |  | not classified | none | — | n/a — allocated item | — |
| wdtKickerApi |  | not classified | none | — | n/a — allocated item | — |

## Derived requirements

**Objective:** DO-178C Table A-2 objectives 2 and 5, *derived requirements are defined and provided to the system processes, including the system safety assessment process* (§5.1.2).

Every requirement this repository marks derived, with the argument for it. A derived requirement is one no higher-level requirement demands, so nothing above it justifies it: each has to be identified, and the argument for it has to reach the system processes — the system safety assessment among them. Those are this table's last two columns. The justification is the requirement's own recorded rationale, printed verbatim — where none is recorded the row says so and names the finding, and the report does not argue the exemption for the author (rule 4).

**Count:** 2

| ID | Title | Level | Justification | Criticality | Provided to system safety assessment |
|---|---|---|---|---|---|
| MRTM-HLR-024 | Task priorities keep the alarm first | High-level requirement (HLR) | DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): lower-DAL items share the processor, so their tasks must not delay the DAL A items. Fed back to the safety assessment there. | A (rigour 4) | yes — recorded in `Safety` |
| MRTM-HLR-037 | Read the log only through the accessor | High-level requirement (HLR) | DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): a DAL D item must not write DAL C data. Fed back to the safety assessment there. | D (rigour 1) | yes — recorded in `Safety` |

## Traceability deficiencies

**Objective:** DO-178C §11.17, a problem report records *deficiencies in software life cycle data* — here the trace data of §5.5, read against Table A-3 objective 6.

Every traceability defect the analysis raised over this commit, one row each: the kind of defect, the requirement it is about, the other end of the link where the defect names one, the level that requirement belongs to, the severity THIS repository staged for that kind, and the finding in the words the engineer sees. Nothing here is recomputed for the report — these are the findings themselves, so the table and the editor cannot disagree (rule 4).

**Count:** 75

| Kind | Requirement | Other end | Level | Severity | Finding |
|---|---|---|---|---|---|
| wrong-uplink-level | MRTM-HLR-002 | MRTM-SAF-003 | High-level requirement (HLR) | warning | MRTM-HLR-002 is a High-level requirement (HLR) and traces up to "MRTM-SAF-003", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-003 | MRTM-SAF-002 | High-level requirement (HLR) | warning | MRTM-HLR-003 is a High-level requirement (HLR) and traces up to "MRTM-SAF-002", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-008 | MRTM-PRF-002 | High-level requirement (HLR) | warning | MRTM-HLR-008 is a High-level requirement (HLR) and traces up to "MRTM-PRF-002", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-009 | MRTM-IFC-002 | High-level requirement (HLR) | warning | MRTM-HLR-009 is a High-level requirement (HLR) and traces up to "MRTM-IFC-002", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-010 | MRTM-SAF-010 | High-level requirement (HLR) | warning | MRTM-HLR-010 is a High-level requirement (HLR) and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-012 | MRTM-SAF-002 | High-level requirement (HLR) | warning | MRTM-HLR-012 is a High-level requirement (HLR) and traces up to "MRTM-SAF-002", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-012 | MRTM-SAF-011 | High-level requirement (HLR) | warning | MRTM-HLR-012 is a High-level requirement (HLR) and traces up to "MRTM-SAF-011", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-013 | MRTM-SAF-014 | High-level requirement (HLR) | warning | MRTM-HLR-013 is a High-level requirement (HLR) and traces up to "MRTM-SAF-014", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-013 | MRTM-SAF-015 | High-level requirement (HLR) | warning | MRTM-HLR-013 is a High-level requirement (HLR) and traces up to "MRTM-SAF-015", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-014 | MRTM-SAF-006 | High-level requirement (HLR) | warning | MRTM-HLR-014 is a High-level requirement (HLR) and traces up to "MRTM-SAF-006", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-015 | MRTM-SAF-019 | High-level requirement (HLR) | warning | MRTM-HLR-015 is a High-level requirement (HLR) and traces up to "MRTM-SAF-019", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-016 | MRTM-SAF-010 | High-level requirement (HLR) | warning | MRTM-HLR-016 is a High-level requirement (HLR) and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-016 | MRTM-SAF-009 | High-level requirement (HLR) | warning | MRTM-HLR-016 is a High-level requirement (HLR) and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-017 | MRTM-SAF-004 | High-level requirement (HLR) | warning | MRTM-HLR-017 is a High-level requirement (HLR) and traces up to "MRTM-SAF-004", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-018 | MRTM-SAF-007 | High-level requirement (HLR) | warning | MRTM-HLR-018 is a High-level requirement (HLR) and traces up to "MRTM-SAF-007", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-018 | MRTM-SAF-023 | High-level requirement (HLR) | warning | MRTM-HLR-018 is a High-level requirement (HLR) and traces up to "MRTM-SAF-023", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-019 | MRTM-SAF-017 | High-level requirement (HLR) | warning | MRTM-HLR-019 is a High-level requirement (HLR) and traces up to "MRTM-SAF-017", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-020 | MRTM-SAF-005 | High-level requirement (HLR) | warning | MRTM-HLR-020 is a High-level requirement (HLR) and traces up to "MRTM-SAF-005", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-021 | MRTM-SAF-008 | High-level requirement (HLR) | warning | MRTM-HLR-021 is a High-level requirement (HLR) and traces up to "MRTM-SAF-008", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-022 | MRTM-SAF-012 | High-level requirement (HLR) | warning | MRTM-HLR-022 is a High-level requirement (HLR) and traces up to "MRTM-SAF-012", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-022 | MRTM-MNT-002 | High-level requirement (HLR) | warning | MRTM-HLR-022 is a High-level requirement (HLR) and traces up to "MRTM-MNT-002", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-023 | MRTM-SAF-016 | High-level requirement (HLR) | warning | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-SAF-016", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-023 | MRTM-MNT-003 | High-level requirement (HLR) | warning | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-MNT-003", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-023 | MRTM-SAF-006 | High-level requirement (HLR) | warning | MRTM-HLR-023 is a High-level requirement (HLR) and traces up to "MRTM-SAF-006", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-026 | MRTM-PRF-004 | High-level requirement (HLR) | warning | MRTM-HLR-026 is a High-level requirement (HLR) and traces up to "MRTM-PRF-004", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-027 | MRTM-SAF-016 | High-level requirement (HLR) | warning | MRTM-HLR-027 is a High-level requirement (HLR) and traces up to "MRTM-SAF-016", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-027 | MRTM-MNT-003 | High-level requirement (HLR) | warning | MRTM-HLR-027 is a High-level requirement (HLR) and traces up to "MRTM-MNT-003", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-028 | MRTM-SAF-012 | High-level requirement (HLR) | warning | MRTM-HLR-028 is a High-level requirement (HLR) and traces up to "MRTM-SAF-012", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-028 | MRTM-MNT-002 | High-level requirement (HLR) | warning | MRTM-HLR-028 is a High-level requirement (HLR) and traces up to "MRTM-MNT-002", a Maintainability Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-029 | MRTM-SAF-021 | High-level requirement (HLR) | warning | MRTM-HLR-029 is a High-level requirement (HLR) and traces up to "MRTM-SAF-021", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-030 | MRTM-SAF-018 | High-level requirement (HLR) | warning | MRTM-HLR-030 is a High-level requirement (HLR) and traces up to "MRTM-SAF-018", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-032 | MRTM-SAF-022 | High-level requirement (HLR) | warning | MRTM-HLR-032 is a High-level requirement (HLR) and traces up to "MRTM-SAF-022", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-035 | MRTM-IFC-003 | High-level requirement (HLR) | warning | MRTM-HLR-035 is a High-level requirement (HLR) and traces up to "MRTM-IFC-003", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-035 | MRTM-PRF-003 | High-level requirement (HLR) | warning | MRTM-HLR-035 is a High-level requirement (HLR) and traces up to "MRTM-PRF-003", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-038 | MRTM-SAF-008 | High-level requirement (HLR) | warning | MRTM-HLR-038 is a High-level requirement (HLR) and traces up to "MRTM-SAF-008", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HLR-038 | MRTM-SAF-017 | High-level requirement (HLR) | warning | MRTM-HLR-038 is a High-level requirement (HLR) and traces up to "MRTM-SAF-017", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-002 | MRTM-PRF-001 | Hardware item requirement | warning | MRTM-HWR-002 is a Hardware item requirement and traces up to "MRTM-PRF-001", a Performance Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-002 | MRTM-ENV-004 | Hardware item requirement | warning | MRTM-HWR-002 is a Hardware item requirement and traces up to "MRTM-ENV-004", a Environmental Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-003 | MRTM-SAF-003 | Hardware item requirement | warning | MRTM-HWR-003 is a Hardware item requirement and traces up to "MRTM-SAF-003", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-004 | MRTM-SAF-001 | Hardware item requirement | warning | MRTM-HWR-004 is a Hardware item requirement and traces up to "MRTM-SAF-001", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-006 | MRTM-IFC-002 | Hardware item requirement | warning | MRTM-HWR-006 is a Hardware item requirement and traces up to "MRTM-IFC-002", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-007 | MRTM-SAF-009 | Hardware item requirement | warning | MRTM-HWR-007 is a Hardware item requirement and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-007 | MRTM-SAF-010 | Hardware item requirement | warning | MRTM-HWR-007 is a Hardware item requirement and traces up to "MRTM-SAF-010", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-008 | MRTM-SAF-009 | Hardware item requirement | warning | MRTM-HWR-008 is a Hardware item requirement and traces up to "MRTM-SAF-009", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-009 | MRTM-SAF-013 | Hardware item requirement | warning | MRTM-HWR-009 is a Hardware item requirement and traces up to "MRTM-SAF-013", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-010 | MRTM-SAF-004 | Hardware item requirement | warning | MRTM-HWR-010 is a Hardware item requirement and traces up to "MRTM-SAF-004", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-011 | MRTM-SAF-022 | Hardware item requirement | warning | MRTM-HWR-011 is a Hardware item requirement and traces up to "MRTM-SAF-022", a Safety Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-013 | MRTM-ENV-001 | Hardware item requirement | warning | MRTM-HWR-013 is a Hardware item requirement and traces up to "MRTM-ENV-001", a Environmental Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-HWR-014 | MRTM-IFC-004 | Hardware item requirement | warning | MRTM-HWR-014 is a Hardware item requirement and traces up to "MRTM-IFC-004", a Interface Requirement. This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-001 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-001 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-002 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-002 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-003 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-003 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-003 | MRTM-SOB-003 | Safety Requirement | warning | MRTM-SAF-003 is a Safety Requirement and traces up to "MRTM-SOB-003", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-004 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-004 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-005 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-005 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-005 | MRTM-SOB-005 | Safety Requirement | warning | MRTM-SAF-005 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-006 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-006 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-007 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-007 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-008 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-008 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-009 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-009 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-010 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-010 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-011 | MRTM-SOB-004 | Safety Requirement | warning | MRTM-SAF-011 is a Safety Requirement and traces up to "MRTM-SOB-004", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-012 | MRTM-SOB-003 | Safety Requirement | warning | MRTM-SAF-012 is a Safety Requirement and traces up to "MRTM-SOB-003", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-013 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-013 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-014 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-014 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-015 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-015 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-016 | MRTM-SOB-002 | Safety Requirement | warning | MRTM-SAF-016 is a Safety Requirement and traces up to "MRTM-SOB-002", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-017 | MRTM-SOB-002 | Safety Requirement | warning | MRTM-SAF-017 is a Safety Requirement and traces up to "MRTM-SOB-002", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-018 | MRTM-SOB-005 | Safety Requirement | warning | MRTM-SAF-018 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-019 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-019 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-020 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-020 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-021 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-021 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-021 | MRTM-SOB-005 | Safety Requirement | warning | MRTM-SAF-021 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-022 | MRTM-SOB-005 | Safety Requirement | warning | MRTM-SAF-022 is a Safety Requirement and traces up to "MRTM-SOB-005", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |
| wrong-uplink-level | MRTM-SAF-023 | MRTM-SOB-001 | Safety Requirement | warning | MRTM-SAF-023 is a Safety Requirement and traces up to "MRTM-SOB-001", a Safety objective (FHA). This repository's hierarchy says its parent must be a System Requirement. |

## Declared gaps

Every gap class below is present even when empty — "no gaps" is a count of zero, never a missing section (rule 4).

### Orphans — requirements tracing up to nothing

**Count:** 0

No orphans.

### Childless — an approved requirement nothing traces up to

Where the repository declares a hierarchy, an approved requirement with no child is a gap in downward trace.

**Count:** 0

No childless approved requirements.

### Unverified — requirements with no verifying case

**Count:** 19

- MRTM-FUN-001
- MRTM-FUN-002
- MRTM-FUN-003
- MRTM-FUN-004
- MRTM-FUN-005
- MRTM-HLR-022
- MRTM-HLR-024
- MRTM-HLR-037
- MRTM-LLR-006
- MRTM-LLR-025
- MRTM-LLR-026
- MRTM-LLR-027
- MRTM-LLR-034
- MRTM-LLR-043
- MRTM-SOB-001
- MRTM-SOB-002
- MRTM-SOB-003
- MRTM-SOB-004
- MRTM-SOB-005

### Derived / exempted — requirements a declaration waived from the orphan rule

**Count:** 0

No derived exemptions.

