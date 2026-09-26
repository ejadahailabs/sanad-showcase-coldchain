# Audit-Ready Traceability Report

**Index**

- [Configuration identity and completeness](#configuration-identity-and-completeness)
- [Trace legs required by criticality band](#trace-legs-required-by-criticality-band)
- [Level trace matrices](#level-trace-matrices)
  - [Stakeholder Requirement ⇄ System Requirement](#stakeholder-requirement--system-requirement)
    - [Stakeholder Requirement → System Requirement (parent to children)](#stakeholder-requirement--system-requirement-parent-to-children)
    - [System Requirement → Stakeholder Requirement (child to parents)](#system-requirement--stakeholder-requirement-child-to-parents)
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
  - [Requirements ⇄ Allocated items](#requirements--allocated-items)
    - [Requirements → Allocated items (requirement to allocated item)](#requirements--allocated-items-requirement-to-allocated-item)
    - [Allocated items → Requirements (item to requirements)](#allocated-items--requirements-item-to-requirements)
- [Derived requirements](#derived-requirements)
- [Traceability deficiencies](#traceability-deficiencies)
- [Trace changes since baseline "REQ-BL-1"](#trace-changes-since-baseline-req-bl-1)
- [Declared gaps](#declared-gaps)
  - [Orphans — requirements tracing up to nothing](#orphans--requirements-tracing-up-to-nothing)
  - [Childless — an approved requirement nothing traces up to](#childless--an-approved-requirement-nothing-traces-up-to)
  - [Unverified — requirements with no verifying case](#unverified--requirements-with-no-verifying-case)
  - [Derived / exempted — requirements a declaration waived from the orphan rule](#derived--exempted--requirements-a-declaration-waived-from-the-orphan-rule)

## Configuration identity and completeness

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `3220edbf942470eb2494a32a0b6c2befa6bdbdd5`

**Tool version:** `sanad 0.6.3`

**Inputs:** `69 requirements`, `architecture inventory`, `glossary`, `data dictionary`

This report regenerates byte-identically from the same commit with the same tool version and inputs — it names no clock and reads nothing outside those inputs, so any second run that differs is evidence something changed, not that the report drifted.

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `implementation` — did not run: no template in this repository declares the role `implements`. It produced no findings, and that silence is not a clean result.
- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Criticality levels present:** `C`

## Trace legs required by criticality band

The resolved band decides which trace legs are *mandatory*; a leg a band does not require is shown as one that did not run, never dropped (rule 4). Policy is resolved once at load — this table renders that result, it does not compute it (rule 11).

| Band (rigour) | Native level(s) | Requirements | Mandatory legs | Did not run at this level |
|---|---|---|---|---|
| rigour 4 | `C` | 69 | none | trace up (uplink), verification, implementation (code) |

## Level trace matrices

**Objective:** DO-178C Table A-3 objective 6, *high-level requirements are traceable to system requirements*, and the same objective at each level below it; evidenced by the trace data of §5.5, *the bi-directional association between* requirements at adjacent levels.

### Stakeholder Requirement ⇄ System Requirement

#### Stakeholder Requirement → System Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-017` | — | not reported | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `MRTM-SYS-002`, `MRTM-SYS-018` | — | not reported | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-019` | — | not reported | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `MRTM-SYS-001`, `MRTM-SYS-011` | — | not reported | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-015`, `MRTM-SYS-020`, `MRTM-SYS-022` | — | not reported | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `MRTM-SYS-014`, `MRTM-SYS-021` | — | not reported | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `MRTM-SYS-012`, `MRTM-SYS-013` | — | not reported | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `MRTM-SYS-016`, `MRTM-SYS-023` | — | not reported | — |

#### System Requirement → Stakeholder Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-STK-004` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `MRTM-STK-002` | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-STK-001` | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `MRTM-STK-001` | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-STK-001` | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-STK-003` | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `MRTM-STK-003` | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `MRTM-STK-005` | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `MRTM-STK-005` | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `MRTM-STK-005` | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `MRTM-STK-004` | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-STK-007` | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `MRTM-STK-007` | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `MRTM-STK-006` | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-STK-005` | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-STK-008` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `MRTM-STK-001` | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `MRTM-STK-002` | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | `MRTM-STK-003` | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-STK-005` | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | `MRTM-STK-006` | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `MRTM-STK-005` | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `MRTM-STK-008` | — | not reported | — |

### System Requirement ⇄ Environmental Requirement

#### System Requirement → Environmental Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-ENV-001` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | — | not reported | — |

#### Environmental Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `MRTM-SYS-016` | — | not reported | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |

### System Requirement ⇄ Interface Requirement

#### System Requirement → Interface Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-IFC-001` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-IFC-004` | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-IFC-002` | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `MRTM-IFC-003` | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | — | not reported | — |

#### Interface Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `MRTM-SYS-006` | — | not reported | — |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `MRTM-SYS-014` | — | not reported | — |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `MRTM-SYS-005` | — | not reported | — |

### System Requirement ⇄ Maintainability Requirement

#### System Requirement → Maintainability Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-MNT-003` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-MNT-001` | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-MNT-002` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | — | not reported | — |

#### Maintainability Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | `MRTM-SYS-012` | — | not reported | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | `MRTM-SYS-016` | — | not reported | — |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |

### System Requirement ⇄ Performance Requirement

#### System Requirement → Performance Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-PRF-001` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-PRF-002` | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `MRTM-PRF-004` | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-PRF-003` | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | — | not reported | — |

#### Performance Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `MRTM-SYS-015` | — | not reported | — |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `MRTM-SYS-011` | — | not reported | — |

### System Requirement ⇄ Safety Requirement

#### System Requirement → Safety Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-012`, `MRTM-SAF-020` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-SAF-001`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-014`, `MRTM-SAF-023` | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `MRTM-SAF-015` | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-SAF-021` | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-SAF-019` | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-SAF-002`, `MRTM-SAF-011` | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-SAF-018` | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SAF-013` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `MRTM-SAF-016`, `MRTM-SAF-017` | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-SAF-022` | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | — | not reported | — |

#### Safety Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | `MRTM-SYS-012` | — | not reported | — |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `MRTM-SYS-016` | — | not reported | — |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `MRTM-SYS-016` | — | not reported | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | `MRTM-SYS-012` | — | not reported | — |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `MRTM-SYS-016` | — | not reported | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | `MRTM-SYS-004` | — | not reported | — |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `MRTM-SYS-017` | — | not reported | — |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `MRTM-SYS-017` | — | not reported | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `MRTM-SYS-015` | — | not reported | — |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | `MRTM-SYS-006` | — | not reported | — |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | `MRTM-SYS-001` | — | not reported | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | `MRTM-SYS-005` | — | not reported | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `MRTM-SYS-020` | — | not reported | — |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `MRTM-SYS-003` | — | not reported | — |

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `battery`, `batteryFeed` | — | not reported | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | `esp32`, `hardware` | — | not reported | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | `hardware` | — | not reported | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `airContact`, `fridge`, `probe` | — | not reported | — |
| MRTM-IFC-001 | Probe bus | C (rigour 4) | `probe`, `probeLink`, `sensorSampler` | — | not reported | — |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `ackLine`, `alarmMgr` | — | not reported | — |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `esp32`, `historyLink`, `usb`, `usbExport`, `usbHost`, `usbService` | — | not reported | — |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `displayLink`, `displayMgr`, `oled` | — | not reported | — |
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | `probe` | — | not reported | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | `statusDisplay` | — | not reported | — |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | `selfTest` | — | not reported | — |
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `probe`, `sampler`, `sensorSampler` | — | not reported | — |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `alarmManager`, `alarmMgr` | — | not reported | — |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `historyLink`, `historyServer`, `usbExport` | — | not reported | — |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `displayMgr`, `statusDisplay` | — | not reported | — |
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `alarmMgr`, `buzzer` | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | `alarmManager`, `alarmMgr`, `firmware.alarmService` | — | not reported | — |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `firmware.sensorService`, `probeSupervisor`, `sensorSampler` | — | not reported | — |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `firmware`, `supervisor`, `watchdog`, `wdtKicker` | — | not reported | — |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `eventLogger`, `firmware.logService`, `mains`, `mainsSenseLine`, `powerMon` | — | not reported | — |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `alarmMgr`, `firmware`, `firmware.alarmService`, `watchdog` | — | not reported | — |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `diagnostics`, `firmware.supervisor`, `selfTest` | — | not reported | — |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `batterySenseLine`, `powerMon`, `powerService`, `powerSupervisor` | — | not reported | — |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `backupAlarm`, `hardware.backupAlarm`, `hardware.backupBuzzerLine`, `hardware.wdtKickLine`, `wdtKicker` | — | not reported | — |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `firmware.alarmService`, `firmware.supervisor`, `wdtKicker` | — | not reported | — |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | `alarmMgr`, `firmware.alarmService` | — | not reported | — |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `displayMgr`, `firmware.displayService` | — | not reported | — |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `hardware.backupAlarm`, `hardware.holdUpCap`, `holdUpCap` | — | not reported | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | `alarmMgr`, `buzzer`, `firmware.alarmService`, `hardware.buzzerSenseLine` | — | not reported | — |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | `alarmMgr`, `firmware.alarmService`, `hardware.redLine`, `redLed` | — | not reported | — |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `displayMgr`, `firmware.displayService` | — | not reported | — |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `configMgr`, `firmware.supervisor` | — | not reported | — |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `eventLog`, `firmware.logService` | — | not reported | — |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | `ackLine`, `alarmMgr`, `firmware.alarmService` | — | not reported | — |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | `displayLink`, `displayMgr`, `firmware.displayService` | — | not reported | — |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `firmware.logService`, `hardware.rtc`, `rtc`, `rtcClock` | — | not reported | — |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `diagnostics`, `firmware.supervisor`, `hardware.backupAlarm`, `hardware.buzzerSenseLine` | — | not reported | — |
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `alarmManager`, `functions`, `monitor` | — | not reported | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `excursionDetector` | — | not reported | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `alarmManager` | — | not reported | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `greenLed`, `greenLine`, `statusDisplay` | — | not reported | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `eventLogger` | — | not reported | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `historyServer` | — | not reported | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `probeSupervisor` | — | not reported | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `mainsFeed`, `powerSupervisor` | — | not reported | — |
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `esp32`, `sampler`, `sensorSampler`, `sensorService` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `excursionDetector`, `excursionService`, `limitEvaluator` | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `alarmManager`, `alarmMgr`, `alarmService`, `buzzer`, `buzzerLine` | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `alarmManager`, `alarmMgr`, `redLed`, `redLine` | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `displayMgr`, `displayService`, `statusDisplay` | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `ackButton`, `alarmManager`, `alarmMgr` | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `displayMgr`, `statusDisplay` | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `eventLog`, `eventLogger` | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `eventLog`, `eventLogger` | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `eventLog`, `eventLogger` | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `displayMgr`, `oled`, `statusDisplay` | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `probeLink`, `probeSupervisor`, `sensorSampler` | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `displayMgr`, `statusDisplay` | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `historyServer`, `usbExport` | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `eventLogger`, `historyRing`, `logService` | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `mains`, `powerMon`, `powerPath`, `powerSupervisor`, `supplyFeed` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `excursionDetector`, `limitEvaluator` | — | not reported | — |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `excursionDetector`, `limitEvaluator` | — | not reported | — |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | `alarmManager`, `alarmMgr` | — | not reported | — |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `clockLink`, `rtc`, `rtcClock`, `timekeeper` | — | not reported | — |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | `eventLogger`, `historyRing`, `logService` | — | not reported | — |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `displayMgr`, `historyRing`, `logService`, `statusDisplay` | — | not reported | — |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `eventLog`, `eventLogger` | — | not reported | — |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| AckButton |  | not classified | none | — | n/a — allocated item | — |
| AlarmItem |  | not classified | none | — | n/a — allocated item | — |
| AlarmMgr |  | not classified | none | — | n/a — allocated item | — |
| AlarmTask |  | not classified | none | — | n/a — allocated item | — |
| BackupAlarm |  | not classified | none | — | n/a — allocated item | — |
| Battery |  | not classified | none | — | n/a — allocated item | — |
| Buzzer |  | not classified | none | — | n/a — allocated item | — |
| ChargerPowerPath |  | not classified | none | — | n/a — allocated item | — |
| ClinicManager |  | not classified | none | — | n/a — allocated item | — |
| ClinicSetting |  | not classified | none | — | n/a — allocated item | — |
| Component |  | not classified | none | — | n/a — allocated item | — |
| ConfigMgr |  | not classified | none | — | n/a — allocated item | — |
| Diagnostics |  | not classified | none | — | n/a — allocated item | — |
| DisplayItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayMgr |  | not classified | none | — | n/a — allocated item | — |
| DisplayTask |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20 |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20Probe |  | not classified | none | — | n/a — allocated item | — |
| Esp32Module |  | not classified | none | — | n/a — allocated item | — |
| Esp32S3Module |  | not classified | none | — | n/a — allocated item | — |
| EventLog |  | not classified | none | — | n/a — allocated item | — |
| ExcursionItem |  | not classified | none | — | n/a — allocated item | — |
| Fridge |  | not classified | none | — | n/a — allocated item | — |
| HistoryRingStore |  | not classified | none | — | n/a — allocated item | — |
| HoldUpCapacitor |  | not classified | none | — | n/a — allocated item | — |
| IndicatorLed |  | not classified | none | — | n/a — allocated item | — |
| Led |  | not classified | none | — | n/a — allocated item | — |
| LiIonCell |  | not classified | none | — | n/a — allocated item | — |
| LimitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| LogItem |  | not classified | none | — | n/a — allocated item | — |
| LogTask |  | not classified | none | — | n/a — allocated item | — |
| LogicalMonitor |  | not classified | none | — | n/a — allocated item | — |
| MainsSupply |  | not classified | none | — | n/a — allocated item | — |
| Monitor |  | not classified | none | — | n/a — allocated item | — |
| MonitoringFirmware |  | not classified | none | — | n/a — allocated item | — |
| MrtmBoard |  | not classified | none | — | n/a — allocated item | — |
| MrtmContext |  | not classified | none | — | n/a — allocated item | — |
| MrtmFirmware |  | not classified | none | — | n/a — allocated item | — |
| MrtmRiskControls |  | not classified | none | — | n/a — allocated item | — |
| MrtmSwDeployment |  | not classified | none | — | n/a — allocated item | — |
| MrtmSystem |  | not classified | none | — | n/a — allocated item | — |
| MrtmUnit |  | not classified | none | — | n/a — allocated item | — |
| Nurse |  | not classified | none | — | n/a — allocated item | — |
| Oled128x64 |  | not classified | none | — | n/a — allocated item | — |
| OledPanel |  | not classified | none | — | n/a — allocated item | — |
| PiezoBuzzerStage |  | not classified | none | — | n/a — allocated item | — |
| PowerItem |  | not classified | none | — | n/a — allocated item | — |
| PowerMon |  | not classified | none | — | n/a — allocated item | — |
| PowerPath |  | not classified | none | — | n/a — allocated item | — |
| QualityOfficer |  | not classified | none | — | n/a — allocated item | — |
| RtcChip |  | not classified | none | — | n/a — allocated item | — |
| RtcClock |  | not classified | none | — | n/a — allocated item | — |
| RtosTask |  | not classified | none | — | n/a — allocated item | — |
| SensorItem |  | not classified | none | — | n/a — allocated item | — |
| SensorSampler |  | not classified | none | — | n/a — allocated item | — |
| SensorTask |  | not classified | none | — | n/a — allocated item | — |
| Supercap |  | not classified | none | — | n/a — allocated item | — |
| SupervisorItem |  | not classified | none | — | n/a — allocated item | — |
| SupervisorTask |  | not classified | none | — | n/a — allocated item | — |
| TactileButton |  | not classified | none | — | n/a — allocated item | — |
| TcxoRtc |  | not classified | none | — | n/a — allocated item | — |
| Technician |  | not classified | none | — | n/a — allocated item | — |
| UsbExport |  | not classified | none | — | n/a — allocated item | — |
| UsbHost |  | not classified | none | — | n/a — allocated item | — |
| UsbItem |  | not classified | none | — | n/a — allocated item | — |
| UsbTask |  | not classified | none | — | n/a — allocated item | — |
| WatchdogAlarmTimer |  | not classified | none | — | n/a — allocated item | — |
| WdtKicker |  | not classified | none | — | n/a — allocated item | — |
| ackButton |  | not classified | `MRTM-SYS-006` | — | n/a — allocated item | — |
| ackLine |  | not classified | `MRTM-IFC-002`, `MRTM-SAF-019` | — | n/a — allocated item | — |
| airContact |  | not classified | `MRTM-ENV-004` | — | n/a — allocated item | — |
| alarm |  | not classified | none | — | n/a — allocated item | — |
| alarmItem |  | not classified | none | — | n/a — allocated item | — |
| alarmManager |  | not classified | `MRTM-PRF-002`, `MRTM-SAF-002`, `MRTM-STK-001`, `MRTM-STK-003`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-006`, `MRTM-SYS-019` | — | n/a — allocated item | — |
| alarmMgr |  | not classified | `MRTM-IFC-002`, `MRTM-PRF-002`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-006`, `MRTM-SAF-011`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-019`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-006`, `MRTM-SYS-019` | — | n/a — allocated item | — |
| alarmService |  | not classified | `MRTM-SYS-003` | — | n/a — allocated item | — |
| alarmTask |  | not classified | none | — | n/a — allocated item | — |
| backupAlarm |  | not classified | `MRTM-SAF-009` | — | n/a — allocated item | — |
| battery |  | not classified | `MRTM-ENV-001` | — | n/a — allocated item | — |
| batteryFeed |  | not classified | `MRTM-ENV-001` | — | n/a — allocated item | — |
| batterySenseLine |  | not classified | `MRTM-SAF-008` | — | n/a — allocated item | — |
| board |  | not classified | none | — | n/a — allocated item | — |
| buzzer |  | not classified | `MRTM-SAF-001`, `MRTM-SAF-014`, `MRTM-SYS-003` | — | n/a — allocated item | — |
| buzzerLine |  | not classified | `MRTM-SYS-003` | — | n/a — allocated item | — |
| clockLink |  | not classified | `MRTM-SYS-020` | — | n/a — allocated item | — |
| configMgr |  | not classified | `MRTM-SAF-017` | — | n/a — allocated item | — |
| diagnostics |  | not classified | `MRTM-SAF-007`, `MRTM-SAF-023` | — | n/a — allocated item | — |
| display |  | not classified | none | — | n/a — allocated item | — |
| displayItem |  | not classified | none | — | n/a — allocated item | — |
| displayLink |  | not classified | `MRTM-IFC-004`, `MRTM-SAF-021` | — | n/a — allocated item | — |
| displayMgr |  | not classified | `MRTM-IFC-004`, `MRTM-PRF-004`, `MRTM-SAF-012`, `MRTM-SAF-016`, `MRTM-SAF-021`, `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-011`, `MRTM-SYS-013`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| displayService |  | not classified | `MRTM-SYS-005` | — | n/a — allocated item | — |
| displayTask |  | not classified | none | — | n/a — allocated item | — |
| esp32 |  | not classified | `MRTM-ENV-002`, `MRTM-IFC-003`, `MRTM-SYS-001` | — | n/a — allocated item | — |
| evaluator |  | not classified | none | — | n/a — allocated item | — |
| eventLog |  | not classified | `MRTM-SAF-018`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-023` | — | n/a — allocated item | — |
| eventLogger |  | not classified | `MRTM-SAF-005`, `MRTM-STK-005`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-023` | — | n/a — allocated item | — |
| excursionDetector |  | not classified | `MRTM-STK-002`, `MRTM-SYS-002`, `MRTM-SYS-017`, `MRTM-SYS-018` | — | n/a — allocated item | — |
| excursionItem |  | not classified | none | — | n/a — allocated item | — |
| excursionService |  | not classified | `MRTM-SYS-002` | — | n/a — allocated item | — |
| faultAlarm |  | not classified | none | — | n/a — allocated item | — |
| faultBuzzer |  | not classified | none | — | n/a — allocated item | — |
| faultDisplay |  | not classified | none | — | n/a — allocated item | — |
| faultLogger |  | not classified | none | — | n/a — allocated item | — |
| faultProbe |  | not classified | none | — | n/a — allocated item | — |
| faultSampler |  | not classified | none | — | n/a — allocated item | — |
| firmware |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-006` | — | n/a — allocated item | — |
| firmware.alarmService |  | not classified | `MRTM-SAF-002`, `MRTM-SAF-006`, `MRTM-SAF-010`, `MRTM-SAF-011`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-019` | — | n/a — unresolved reference | — |
| firmware.displayService |  | not classified | `MRTM-SAF-012`, `MRTM-SAF-016`, `MRTM-SAF-021` | — | n/a — unresolved reference | — |
| firmware.logService |  | not classified | `MRTM-SAF-005`, `MRTM-SAF-018`, `MRTM-SAF-022` | — | n/a — unresolved reference | — |
| firmware.sensorService |  | not classified | `MRTM-SAF-003` | — | n/a — unresolved reference | — |
| firmware.supervisor |  | not classified | `MRTM-SAF-007`, `MRTM-SAF-010`, `MRTM-SAF-017`, `MRTM-SAF-023` | — | n/a — unresolved reference | — |
| fridge |  | not classified | `MRTM-ENV-004` | — | n/a — allocated item | — |
| functions |  | not classified | `MRTM-STK-001` | — | n/a — allocated item | — |
| greenLed |  | not classified | `MRTM-STK-004` | — | n/a — allocated item | — |
| greenLine |  | not classified | `MRTM-STK-004` | — | n/a — allocated item | — |
| hardware |  | not classified | `MRTM-ENV-002`, `MRTM-ENV-003` | — | n/a — allocated item | — |
| hardware.backupAlarm |  | not classified | `MRTM-SAF-009`, `MRTM-SAF-013`, `MRTM-SAF-023` | — | n/a — unresolved reference | — |
| hardware.backupBuzzerLine |  | not classified | `MRTM-SAF-009` | — | n/a — unresolved reference | — |
| hardware.buzzerSenseLine |  | not classified | `MRTM-SAF-014`, `MRTM-SAF-023` | — | n/a — unresolved reference | — |
| hardware.holdUpCap |  | not classified | `MRTM-SAF-013` | — | n/a — unresolved reference | — |
| hardware.redLine |  | not classified | `MRTM-SAF-015` | — | n/a — unresolved reference | — |
| hardware.rtc |  | not classified | `MRTM-SAF-022` | — | n/a — unresolved reference | — |
| hardware.wdtKickLine |  | not classified | `MRTM-SAF-009` | — | n/a — unresolved reference | — |
| historyLink |  | not classified | `MRTM-IFC-003`, `MRTM-PRF-003` | — | n/a — allocated item | — |
| historyRing |  | not classified | `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| historyServer |  | not classified | `MRTM-PRF-003`, `MRTM-STK-006`, `MRTM-SYS-014` | — | n/a — allocated item | — |
| holdUpCap |  | not classified | `MRTM-SAF-013` | — | n/a — allocated item | — |
| limitEvaluator |  | not classified | `MRTM-SYS-002`, `MRTM-SYS-017`, `MRTM-SYS-018` | — | n/a — allocated item | — |
| logItem |  | not classified | none | — | n/a — allocated item | — |
| logService |  | not classified | `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| logTask |  | not classified | none | — | n/a — allocated item | — |
| logger |  | not classified | none | — | n/a — allocated item | — |
| mains |  | not classified | `MRTM-SAF-005`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| mainsFeed |  | not classified | `MRTM-STK-008` | — | n/a — allocated item | — |
| mainsSenseLine |  | not classified | `MRTM-SAF-005` | — | n/a — allocated item | — |
| monitor |  | not classified | `MRTM-STK-001` | — | n/a — allocated item | — |
| nurse |  | not classified | none | — | n/a — allocated item | — |
| oled |  | not classified | `MRTM-IFC-004`, `MRTM-SYS-011` | — | n/a — allocated item | — |
| powerClock |  | not classified | none | — | n/a — allocated item | — |
| powerItem |  | not classified | none | — | n/a — allocated item | — |
| powerLogger |  | not classified | none | — | n/a — allocated item | — |
| powerMon |  | not classified | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| powerPath |  | not classified | `MRTM-SYS-016` | — | n/a — allocated item | — |
| powerRing |  | not classified | none | — | n/a — allocated item | — |
| powerService |  | not classified | `MRTM-SAF-008` | — | n/a — allocated item | — |
| powerSupervisor |  | not classified | `MRTM-SAF-008`, `MRTM-STK-008`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| probe |  | not classified | `MRTM-ENV-004`, `MRTM-IFC-001`, `MRTM-MNT-001`, `MRTM-PRF-001` | — | n/a — allocated item | — |
| probeLink |  | not classified | `MRTM-IFC-001`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| probeSupervisor |  | not classified | `MRTM-SAF-003`, `MRTM-STK-007`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| redLed |  | not classified | `MRTM-SAF-015`, `MRTM-SYS-004` | — | n/a — allocated item | — |
| redLine |  | not classified | `MRTM-SYS-004` | — | n/a — allocated item | — |
| rtc |  | not classified | `MRTM-SAF-022`, `MRTM-SYS-020` | — | n/a — allocated item | — |
| rtcClock |  | not classified | `MRTM-SAF-022`, `MRTM-SYS-020` | — | n/a — allocated item | — |
| sampler |  | not classified | `MRTM-PRF-001`, `MRTM-SYS-001` | — | n/a — allocated item | — |
| selfTest |  | not classified | `MRTM-MNT-003`, `MRTM-SAF-007` | — | n/a — allocated item | — |
| sensorItem |  | not classified | none | — | n/a — allocated item | — |
| sensorSampler |  | not classified | `MRTM-IFC-001`, `MRTM-PRF-001`, `MRTM-SAF-003`, `MRTM-SYS-001`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| sensorService |  | not classified | `MRTM-SYS-001` | — | n/a — allocated item | — |
| sensorTask |  | not classified | none | — | n/a — allocated item | — |
| statusDisplay |  | not classified | `MRTM-MNT-002`, `MRTM-PRF-004`, `MRTM-STK-004`, `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-011`, `MRTM-SYS-013`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| supervisor |  | not classified | `MRTM-SAF-004` | — | n/a — allocated item | — |
| supervisorItem |  | not classified | none | — | n/a — allocated item | — |
| supervisorTask |  | not classified | none | — | n/a — allocated item | — |
| supplyFeed |  | not classified | `MRTM-SYS-016` | — | n/a — allocated item | — |
| technician |  | not classified | none | — | n/a — allocated item | — |
| timekeeper |  | not classified | `MRTM-SYS-020` | — | n/a — allocated item | — |
| usb |  | not classified | `MRTM-IFC-003` | — | n/a — unresolved reference | — |
| usbExport |  | not classified | `MRTM-IFC-003`, `MRTM-PRF-003`, `MRTM-SYS-014` | — | n/a — allocated item | — |
| usbHost |  | not classified | `MRTM-IFC-003` | — | n/a — allocated item | — |
| usbItem |  | not classified | none | — | n/a — allocated item | — |
| usbService |  | not classified | `MRTM-IFC-003` | — | n/a — allocated item | — |
| usbTask |  | not classified | none | — | n/a — allocated item | — |
| watchdog |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-006` | — | n/a — allocated item | — |
| wdtKicker |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-009`, `MRTM-SAF-010` | — | n/a — allocated item | — |

## Derived requirements

**Objective:** DO-178C Table A-2 objectives 2 and 5, *derived requirements are defined and provided to the system processes, including the system safety assessment process* (§5.1.2).

Every requirement this repository marks derived, with the argument for it. A derived requirement is one no higher-level requirement demands, so nothing above it justifies it: each has to be identified, and the argument for it has to reach the system processes — the system safety assessment among them. Those are this table's last two columns. The justification is the requirement's own recorded rationale, printed verbatim — where none is recorded the row says so and names the finding, and the report does not argue the exemption for the author (rule 4).

**Count:** 0

No requirement in this repository is marked derived.

## Traceability deficiencies

**Objective:** DO-178C §11.17, a problem report records *deficiencies in software life cycle data* — here the trace data of §5.5, read against Table A-3 objective 6.

Every traceability defect the analysis raised over this commit, one row each: the kind of defect, the requirement it is about, the other end of the link where the defect names one, the level that requirement belongs to, the severity THIS repository staged for that kind, and the finding in the words the engineer sees. Nothing here is recomputed for the report — these are the findings themselves, so the table and the editor cannot disagree (rule 4).

**Count:** 0

None found.

## Trace changes since baseline "REQ-BL-1"

**Objective:** DO-178C Table A-8 objective 2, *baselines and traceability are established* (§7.2.2), read with the change control of §7.2.4 — what the trace data of §5.5 did between one baseline and the next.

Baseline taken at `1f9fd908dcd3`, compared against 3220edbf942470eb2494a32a0b6c2befa6bdbdd5. Every trace link that appeared, vanished or kept its source and relation while moving its target, and every requirement that came or went. A link is identified by its relation, its two ends and the producer that asserted it — never by where it sits in a file, so an unrelated edit above a link does not report it as changed.

**Count:** 105

| Change | Role | Source | Target | Previous target | Producer | Heuristic |
|---|---|---|---|---|---|---|
| added | mitigates | MRTM-SAF-001 | HAZ-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-001 | HAZ-006 |  | markdown | yes |
| added | mitigates | MRTM-SAF-002 | HAZ-001 |  | markdown | no |
| added | mitigates | MRTM-SAF-002 | HAZ-001 |  | markdown | yes |
| added | mitigates | MRTM-SAF-003 | HAZ-001 |  | markdown | no |
| added | mitigates | MRTM-SAF-003 | HAZ-001 |  | markdown | yes |
| added | mitigates | MRTM-SAF-003 | HAZ-004 |  | markdown | no |
| added | mitigates | MRTM-SAF-003 | HAZ-004 |  | markdown | yes |
| added | mitigates | MRTM-SAF-004 | HAZ-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-004 | HAZ-003 |  | markdown | yes |
| added | references | MRTM-SAF-004 | MRTM-SAF-009 |  | markdown | yes |
| added | mitigates | MRTM-SAF-005 | HAZ-005 |  | markdown | no |
| added | mitigates | MRTM-SAF-005 | HAZ-005 |  | markdown | yes |
| added | mitigates | MRTM-SAF-005 | HAZ-008 |  | markdown | no |
| added | mitigates | MRTM-SAF-005 | HAZ-008 |  | markdown | yes |
| added | mitigates | MRTM-SAF-006 | HAZ-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-006 | HAZ-003 |  | markdown | yes |
| added | mitigates | MRTM-SAF-006 | HAZ-005 |  | markdown | no |
| added | mitigates | MRTM-SAF-006 | HAZ-005 |  | markdown | yes |
| added | mitigates | MRTM-SAF-007 | HAZ-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-007 | HAZ-006 |  | markdown | yes |
| added | mitigates | MRTM-SAF-008 | HAZ-005 |  | markdown | no |
| added | mitigates | MRTM-SAF-008 | HAZ-005 |  | markdown | yes |
| added | uplink | MRTM-SAF-008 | MRTM-SYS-016 |  | markdown | no |
| added | mitigates | MRTM-SAF-009 | HAZ-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-009 | HAZ-003 |  | markdown | yes |
| added | uplink | MRTM-SAF-009 | MRTM-SYS-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-010 | HAZ-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-010 | HAZ-003 |  | markdown | yes |
| added | uplink | MRTM-SAF-010 | MRTM-SYS-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-011 | HAZ-002 |  | markdown | no |
| added | mitigates | MRTM-SAF-011 | HAZ-002 |  | markdown | yes |
| added | uplink | MRTM-SAF-011 | MRTM-SYS-012 |  | markdown | no |
| added | mitigates | MRTM-SAF-012 | HAZ-004 |  | markdown | no |
| added | mitigates | MRTM-SAF-012 | HAZ-004 |  | markdown | yes |
| added | uplink | MRTM-SAF-012 | MRTM-SYS-001 |  | markdown | no |
| added | mitigates | MRTM-SAF-013 | HAZ-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-013 | HAZ-003 |  | markdown | yes |
| added | mitigates | MRTM-SAF-013 | HAZ-005 |  | markdown | no |
| added | mitigates | MRTM-SAF-013 | HAZ-005 |  | markdown | yes |
| added | uplink | MRTM-SAF-013 | MRTM-SYS-016 |  | markdown | no |
| added | mitigates | MRTM-SAF-014 | HAZ-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-014 | HAZ-006 |  | markdown | yes |
| added | uplink | MRTM-SAF-014 | MRTM-SYS-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-015 | HAZ-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-015 | HAZ-006 |  | markdown | yes |
| added | uplink | MRTM-SAF-015 | MRTM-SYS-004 |  | markdown | no |
| added | mitigates | MRTM-SAF-016 | HAZ-007 |  | markdown | no |
| added | mitigates | MRTM-SAF-016 | HAZ-007 |  | markdown | yes |
| added | uplink | MRTM-SAF-016 | MRTM-SYS-017 |  | markdown | no |
| added | mitigates | MRTM-SAF-017 | HAZ-007 |  | markdown | no |
| added | mitigates | MRTM-SAF-017 | HAZ-007 |  | markdown | yes |
| added | uplink | MRTM-SAF-017 | MRTM-SYS-017 |  | markdown | no |
| added | mitigates | MRTM-SAF-018 | HAZ-008 |  | markdown | no |
| added | mitigates | MRTM-SAF-018 | HAZ-008 |  | markdown | yes |
| added | references | MRTM-SAF-018 | MRTM-SYS-021 |  | markdown | yes |
| added | uplink | MRTM-SAF-018 | MRTM-SYS-015 |  | markdown | no |
| added | mitigates | MRTM-SAF-019 | HAZ-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-019 | HAZ-006 |  | markdown | yes |
| added | references | MRTM-SAF-019 | MRTM-SYS-019 |  | markdown | yes |
| added | uplink | MRTM-SAF-019 | MRTM-SYS-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-020 | HAZ-001 |  | markdown | no |
| added | mitigates | MRTM-SAF-020 | HAZ-001 |  | markdown | yes |
| added | uplink | MRTM-SAF-020 | MRTM-SYS-001 |  | markdown | no |
| added | mitigates | MRTM-SAF-021 | HAZ-006 |  | markdown | no |
| added | mitigates | MRTM-SAF-021 | HAZ-006 |  | markdown | yes |
| added | mitigates | MRTM-SAF-021 | HAZ-008 |  | markdown | no |
| added | mitigates | MRTM-SAF-021 | HAZ-008 |  | markdown | yes |
| added | uplink | MRTM-SAF-021 | MRTM-SYS-005 |  | markdown | no |
| added | mitigates | MRTM-SAF-022 | HAZ-008 |  | markdown | no |
| added | mitigates | MRTM-SAF-022 | HAZ-008 |  | markdown | yes |
| added | uplink | MRTM-SAF-022 | MRTM-SYS-020 |  | markdown | no |
| added | mitigates | MRTM-SAF-023 | HAZ-003 |  | markdown | no |
| added | mitigates | MRTM-SAF-023 | HAZ-003 |  | markdown | yes |
| added | uplink | MRTM-SAF-023 | MRTM-SYS-003 |  | markdown | no |
| added | uplink | MRTM-SYS-017 | MRTM-STK-001 |  | markdown | no |
| added | uplink | MRTM-SYS-018 | MRTM-STK-002 |  | markdown | no |
| added | uplink | MRTM-SYS-019 | MRTM-STK-003 |  | markdown | no |
| added | uplink | MRTM-SYS-020 | MRTM-STK-005 |  | markdown | no |
| added | uplink | MRTM-SYS-021 | MRTM-STK-006 |  | markdown | no |
| added | uplink | MRTM-SYS-022 | MRTM-STK-005 |  | markdown | no |
| added | uplink | MRTM-SYS-023 | MRTM-STK-008 |  | markdown | no |
| requirement added |  | MRTM-SAF-008 |  |  |  |  |
| requirement added |  | MRTM-SAF-009 |  |  |  |  |
| requirement added |  | MRTM-SAF-010 |  |  |  |  |
| requirement added |  | MRTM-SAF-011 |  |  |  |  |
| requirement added |  | MRTM-SAF-012 |  |  |  |  |
| requirement added |  | MRTM-SAF-013 |  |  |  |  |
| requirement added |  | MRTM-SAF-014 |  |  |  |  |
| requirement added |  | MRTM-SAF-015 |  |  |  |  |
| requirement added |  | MRTM-SAF-016 |  |  |  |  |
| requirement added |  | MRTM-SAF-017 |  |  |  |  |
| requirement added |  | MRTM-SAF-018 |  |  |  |  |
| requirement added |  | MRTM-SAF-019 |  |  |  |  |
| requirement added |  | MRTM-SAF-020 |  |  |  |  |
| requirement added |  | MRTM-SAF-021 |  |  |  |  |
| requirement added |  | MRTM-SAF-022 |  |  |  |  |
| requirement added |  | MRTM-SAF-023 |  |  |  |  |
| requirement added |  | MRTM-SYS-017 |  |  |  |  |
| requirement added |  | MRTM-SYS-018 |  |  |  |  |
| requirement added |  | MRTM-SYS-019 |  |  |  |  |
| requirement added |  | MRTM-SYS-020 |  |  |  |  |
| requirement added |  | MRTM-SYS-021 |  |  |  |  |
| requirement added |  | MRTM-SYS-022 |  |  |  |  |
| requirement added |  | MRTM-SYS-023 |  |  |  |  |

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

Not reported — this repository declares no verification vocabulary (`verifies`, `method` or `disposition`) and no producer declared a verification case, so verification coverage does not run rather than reporting every requirement as unverified (rule 4).

### Derived / exempted — requirements a declaration waived from the orphan rule

**Count:** 0

No derived exemptions.

