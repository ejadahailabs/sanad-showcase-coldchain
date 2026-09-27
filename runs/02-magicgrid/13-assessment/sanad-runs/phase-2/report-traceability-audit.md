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
- [Declared gaps](#declared-gaps)
  - [Orphans — requirements tracing up to nothing](#orphans--requirements-tracing-up-to-nothing)
  - [Childless — an approved requirement nothing traces up to](#childless--an-approved-requirement-nothing-traces-up-to)
  - [Unverified — requirements with no verifying case](#unverified--requirements-with-no-verifying-case)
  - [Derived / exempted — requirements a declaration waived from the orphan rule](#derived--exempted--requirements-a-declaration-waived-from-the-orphan-rule)

## Configuration identity and completeness

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `50eef729f1ca302dae1791aaa3988ca467e53ed4`

**Tool version:** `sanad 0.6.3`

**Inputs:** `46 requirements`, `glossary`, `data dictionary`

This report regenerates byte-identically from the same commit with the same tool version and inputs — it names no clock and reads nothing outside those inputs, so any second run that differs is evidence something changed, not that the report drifted.

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `consistency`, `impact`

**Analyses that did not run:**

- `architecture` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `conformance` — did not run: no template in this repository declares the role `allocation`. It produced no findings, and that silence is not a clean result.
- `implementation` — did not run: no template in this repository declares the role `implements`. It produced no findings, and that silence is not a clean result.
- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `safety` — did not run: no template in this repository declares the role `hazard`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Criticality levels present:** `C`

## Trace legs required by criticality band

The resolved band decides which trace legs are *mandatory*; a leg a band does not require is shown as one that did not run, never dropped (rule 4). Policy is resolved once at load — this table renders that result, it does not compute it (rule 11).

| Band (rigour) | Native level(s) | Requirements | Mandatory legs | Did not run at this level |
|---|---|---|---|---|
| rigour 4 | `C` | 46 | none | trace up (uplink), verification, implementation (code) |

## Level trace matrices

**Objective:** DO-178C Table A-3 objective 6, *high-level requirements are traceable to system requirements*, and the same objective at each level below it; evidenced by the trace data of §5.5, *the bi-directional association between* requirements at adjacent levels.

### Stakeholder Requirement ⇄ System Requirement

#### Stakeholder Requirement → System Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005` | — | not reported | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `MRTM-SYS-002` | — | not reported | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `MRTM-SYS-006`, `MRTM-SYS-007` | — | not reported | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `MRTM-SYS-001`, `MRTM-SYS-011` | — | not reported | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-015` | — | not reported | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `MRTM-SYS-014` | — | not reported | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `MRTM-SYS-012`, `MRTM-SYS-013` | — | not reported | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `MRTM-SYS-016` | — | not reported | — |

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
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-SAF-003`, `MRTM-SAF-004` | — | not reported | — |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-SAF-001`, `MRTM-SAF-006`, `MRTM-SAF-007` | — | not reported | — |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-SAF-002` | — | not reported | — |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-SAF-005` | — | not reported | — |

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

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | none | — | not reported | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | none | — | not reported | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | none | — | not reported | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | none | — | not reported | — |
| MRTM-IFC-001 | Probe bus | C (rigour 4) | none | — | not reported | — |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | none | — | not reported | — |
| MRTM-IFC-003 | USB readout | C (rigour 4) | none | — | not reported | — |
| MRTM-IFC-004 | Display character height | C (rigour 4) | none | — | not reported | — |
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | none | — | not reported | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | none | — | not reported | — |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | none | — | not reported | — |
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | none | — | not reported | — |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | none | — | not reported | — |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | none | — | not reported | — |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | — | not reported | — |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | none | — | not reported | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | none | — | not reported | — |
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | — | not reported | — |
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
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | — | not reported | — |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| ClinicManager |  | not classified | none | — | n/a — allocated item | — |
| Fridge |  | not classified | none | — | n/a — allocated item | — |
| Monitor |  | not classified | none | — | n/a — allocated item | — |
| MrtmContext |  | not classified | none | — | n/a — allocated item | — |
| Nurse |  | not classified | none | — | n/a — allocated item | — |
| QualityOfficer |  | not classified | none | — | n/a — allocated item | — |
| Technician |  | not classified | none | — | n/a — allocated item | — |
| fridge |  | not classified | none | — | n/a — allocated item | — |
| monitor |  | not classified | none | — | n/a — allocated item | — |
| nurse |  | not classified | none | — | n/a — allocated item | — |
| technician |  | not classified | none | — | n/a — allocated item | — |

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

