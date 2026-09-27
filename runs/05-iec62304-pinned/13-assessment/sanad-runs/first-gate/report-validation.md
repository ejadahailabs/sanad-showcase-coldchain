# Validation Report

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

**Findings:** 260 — 12 errors · 104 warnings · 144 information

**Index**

- [Findings by severity](#findings-by-severity)
  - [Errors (12)](#errors-12)
    - [`config-not-read` (1)](#config-not-read-1)
    - [`dead-requirement` (1)](#dead-requirement-1)
    - [`not-implemented` (10)](#not-implemented-10)
  - [Warnings (104)](#warnings-104)
    - [`duplicate-requirement` (5)](#duplicate-requirement-5)
    - [`empty-component` (12)](#empty-component-12)
    - [`parent-child-inconsistency` (20)](#parent-child-inconsistency-20)
    - [`partially-implemented` (5)](#partially-implemented-5)
    - [`unallocated-requirement` (55)](#unallocated-requirement-55)
    - [`undeclared-id-prefix` (7)](#undeclared-id-prefix-7)
  - [Information (144)](#information-144)
    - [`link-role-unreadable` (4)](#link-role-unreadable-4)
    - [`not-a-requirement` (29)](#not-a-requirement-29)
    - [`single-point-failure` (1)](#single-point-failure-1)
    - [`undeclared-hazard` (40)](#undeclared-hazard-40)
    - [`under-decomposition` (62)](#under-decomposition-62)
    - [`wide-impact` (8)](#wide-impact-8)
- [Findings by requirement](#findings-by-requirement)
  - [(repository) (13)](#repository-13)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/config.yaml (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinnedejadahrewconfigyaml-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/interface.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinnedejadahrewtemplatesinterfacemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/performance.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinnedejadahrewtemplatesperformancemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/safety.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinnedejadahrewtemplatessafetymd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/system.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinnedejadahrewtemplatessystemmd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L2-hardware-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl2-hardware-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L2-software-system/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl2-software-systemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/alarm-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemsalarm-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/display-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemsdisplay-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/excursion-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemsexcursion-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/log-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemslog-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/power-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemspower-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/sensor-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemssensor-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/supervisor-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemssupervisor-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/usb-item/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl3-software-itemsusb-itemreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/alarm-mgr/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsalarm-mgrreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/config-mgr/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsconfig-mgrreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/diagnostics/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsdiagnosticsreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/display-mgr/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsdisplay-mgrreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/event-log/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsevent-logreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/history-ring/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitshistory-ringreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/limit-evaluator/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitslimit-evaluatorreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/power-mon/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitspower-monreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/rtc-clock/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsrtc-clockreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/sensor-sampler/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitssensor-samplerreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/usb-export/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitsusb-exportreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/wdt-kicker/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsl4-software-unitswdt-kickerreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/environmental/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsenvironmentalreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/interface/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsinterfacereadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/maintainability/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsmaintainabilityreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/performance/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsperformancereadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/safety/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementssafetyreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/stakeholder/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementsstakeholderreadmemd-1)
  - [/tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/system/README.md (1)](#tmpsanad-at-74ppdwtreeruns05-iec62304-pinned03-requirementssystemreadmemd-1)
  - [MRTM-ALI-001 (1)](#mrtm-ali-001-1)
  - [MRTM-ALI-002 (2)](#mrtm-ali-002-2)
  - [MRTM-ALI-003 (1)](#mrtm-ali-003-1)
  - [MRTM-ALI-004 (2)](#mrtm-ali-004-2)
  - [MRTM-AMG-001 (1)](#mrtm-amg-001-1)
  - [MRTM-AMG-002 (1)](#mrtm-amg-002-1)
  - [MRTM-AMG-003 (2)](#mrtm-amg-003-2)
  - [MRTM-AMG-004 (1)](#mrtm-amg-004-1)
  - [MRTM-CFG-001 (1)](#mrtm-cfg-001-1)
  - [MRTM-DGN-001 (1)](#mrtm-dgn-001-1)
  - [MRTM-DMG-001 (1)](#mrtm-dmg-001-1)
  - [MRTM-DMG-002 (1)](#mrtm-dmg-002-1)
  - [MRTM-DSI-001 (3)](#mrtm-dsi-001-3)
  - [MRTM-DSI-002 (2)](#mrtm-dsi-002-2)
  - [MRTM-ENV-001 (2)](#mrtm-env-001-2)
  - [MRTM-ENV-002 (1)](#mrtm-env-002-1)
  - [MRTM-ENV-003 (1)](#mrtm-env-003-1)
  - [MRTM-ENV-004 (2)](#mrtm-env-004-2)
  - [MRTM-EVL-001 (1)](#mrtm-evl-001-1)
  - [MRTM-EVL-002 (1)](#mrtm-evl-002-1)
  - [MRTM-EXI-001 (1)](#mrtm-exi-001-1)
  - [MRTM-EXI-002 (3)](#mrtm-exi-002-3)
  - [MRTM-EXI-003 (1)](#mrtm-exi-003-1)
  - [MRTM-HRG-001 (1)](#mrtm-hrg-001-1)
  - [MRTM-HRG-002 (1)](#mrtm-hrg-002-1)
  - [MRTM-HWI-001 (1)](#mrtm-hwi-001-1)
  - [MRTM-HWI-002 (1)](#mrtm-hwi-002-1)
  - [MRTM-HWI-003 (1)](#mrtm-hwi-003-1)
  - [MRTM-HWI-004 (1)](#mrtm-hwi-004-1)
  - [MRTM-HWI-005 (1)](#mrtm-hwi-005-1)
  - [MRTM-HWI-006 (1)](#mrtm-hwi-006-1)
  - [MRTM-HWI-007 (1)](#mrtm-hwi-007-1)
  - [MRTM-HWI-008 (1)](#mrtm-hwi-008-1)
  - [MRTM-HWI-009 (1)](#mrtm-hwi-009-1)
  - [MRTM-HWI-010 (1)](#mrtm-hwi-010-1)
  - [MRTM-HWI-011 (1)](#mrtm-hwi-011-1)
  - [MRTM-HWI-012 (1)](#mrtm-hwi-012-1)
  - [MRTM-HWI-013 (1)](#mrtm-hwi-013-1)
  - [MRTM-IFC-001 (1)](#mrtm-ifc-001-1)
  - [MRTM-IFC-002 (2)](#mrtm-ifc-002-2)
  - [MRTM-IFC-003 (2)](#mrtm-ifc-003-2)
  - [MRTM-IFC-004 (2)](#mrtm-ifc-004-2)
  - [MRTM-LEV-001 (1)](#mrtm-lev-001-1)
  - [MRTM-LEV-002 (2)](#mrtm-lev-002-2)
  - [MRTM-LEV-003 (1)](#mrtm-lev-003-1)
  - [MRTM-LGI-001 (1)](#mrtm-lgi-001-1)
  - [MRTM-LGI-002 (1)](#mrtm-lgi-002-1)
  - [MRTM-LGI-003 (2)](#mrtm-lgi-003-2)
  - [MRTM-MNT-001 (1)](#mrtm-mnt-001-1)
  - [MRTM-PMN-001 (1)](#mrtm-pmn-001-1)
  - [MRTM-PMN-002 (1)](#mrtm-pmn-002-1)
  - [MRTM-PRF-001 (2)](#mrtm-prf-001-2)
  - [MRTM-PRF-002 (2)](#mrtm-prf-002-2)
  - [MRTM-PRF-003 (2)](#mrtm-prf-003-2)
  - [MRTM-PRF-004 (2)](#mrtm-prf-004-2)
  - [MRTM-PWI-001 (1)](#mrtm-pwi-001-1)
  - [MRTM-PWI-002 (1)](#mrtm-pwi-002-1)
  - [MRTM-RTK-001 (1)](#mrtm-rtk-001-1)
  - [MRTM-SAF-001 (3)](#mrtm-saf-001-3)
  - [MRTM-SAF-002 (1)](#mrtm-saf-002-1)
  - [MRTM-SAF-003 (2)](#mrtm-saf-003-2)
  - [MRTM-SAF-004 (2)](#mrtm-saf-004-2)
  - [MRTM-SAF-005 (2)](#mrtm-saf-005-2)
  - [MRTM-SAF-006 (1)](#mrtm-saf-006-1)
  - [MRTM-SAF-007 (2)](#mrtm-saf-007-2)
  - [MRTM-SAF-008 (2)](#mrtm-saf-008-2)
  - [MRTM-SAF-009 (2)](#mrtm-saf-009-2)
  - [MRTM-SAF-010 (2)](#mrtm-saf-010-2)
  - [MRTM-SAF-011 (2)](#mrtm-saf-011-2)
  - [MRTM-SAF-012 (2)](#mrtm-saf-012-2)
  - [MRTM-SAF-013 (3)](#mrtm-saf-013-3)
  - [MRTM-SAF-014 (1)](#mrtm-saf-014-1)
  - [MRTM-SAF-015 (1)](#mrtm-saf-015-1)
  - [MRTM-SAF-016 (2)](#mrtm-saf-016-2)
  - [MRTM-SAF-017 (2)](#mrtm-saf-017-2)
  - [MRTM-SAF-018 (2)](#mrtm-saf-018-2)
  - [MRTM-SAF-019 (1)](#mrtm-saf-019-1)
  - [MRTM-SAF-020 (2)](#mrtm-saf-020-2)
  - [MRTM-SAF-021 (1)](#mrtm-saf-021-1)
  - [MRTM-SAF-022 (2)](#mrtm-saf-022-2)
  - [MRTM-SAF-023 (2)](#mrtm-saf-023-2)
  - [MRTM-SMP-001 (1)](#mrtm-smp-001-1)
  - [MRTM-SMP-002 (1)](#mrtm-smp-002-1)
  - [MRTM-SNI-001 (1)](#mrtm-sni-001-1)
  - [MRTM-SNI-002 (1)](#mrtm-sni-002-1)
  - [MRTM-SRS-001 (1)](#mrtm-srs-001-1)
  - [MRTM-SRS-002 (1)](#mrtm-srs-002-1)
  - [MRTM-SRS-003 (1)](#mrtm-srs-003-1)
  - [MRTM-SRS-004 (1)](#mrtm-srs-004-1)
  - [MRTM-SRS-005 (1)](#mrtm-srs-005-1)
  - [MRTM-SRS-006 (1)](#mrtm-srs-006-1)
  - [MRTM-SRS-007 (1)](#mrtm-srs-007-1)
  - [MRTM-SRS-009 (1)](#mrtm-srs-009-1)
  - [MRTM-SRS-010 (1)](#mrtm-srs-010-1)
  - [MRTM-SRS-011 (1)](#mrtm-srs-011-1)
  - [MRTM-SRS-012 (1)](#mrtm-srs-012-1)
  - [MRTM-SRS-013 (1)](#mrtm-srs-013-1)
  - [MRTM-SRS-015 (1)](#mrtm-srs-015-1)
  - [MRTM-SRS-017 (1)](#mrtm-srs-017-1)
  - [MRTM-SRS-018 (1)](#mrtm-srs-018-1)
  - [MRTM-SRS-019 (1)](#mrtm-srs-019-1)
  - [MRTM-STK-001 (1)](#mrtm-stk-001-1)
  - [MRTM-STK-002 (1)](#mrtm-stk-002-1)
  - [MRTM-STK-003 (1)](#mrtm-stk-003-1)
  - [MRTM-STK-004 (1)](#mrtm-stk-004-1)
  - [MRTM-STK-005 (1)](#mrtm-stk-005-1)
  - [MRTM-STK-006 (1)](#mrtm-stk-006-1)
  - [MRTM-STK-007 (1)](#mrtm-stk-007-1)
  - [MRTM-STK-008 (2)](#mrtm-stk-008-2)
  - [MRTM-SVI-001 (1)](#mrtm-svi-001-1)
  - [MRTM-SVI-002 (1)](#mrtm-svi-002-1)
  - [MRTM-SVI-003 (1)](#mrtm-svi-003-1)
  - [MRTM-SYS-001 (3)](#mrtm-sys-001-3)
  - [MRTM-SYS-002 (2)](#mrtm-sys-002-2)
  - [MRTM-SYS-003 (3)](#mrtm-sys-003-3)
  - [MRTM-SYS-004 (2)](#mrtm-sys-004-2)
  - [MRTM-SYS-005 (2)](#mrtm-sys-005-2)
  - [MRTM-SYS-006 (2)](#mrtm-sys-006-2)
  - [MRTM-SYS-007 (2)](#mrtm-sys-007-2)
  - [MRTM-SYS-008 (3)](#mrtm-sys-008-3)
  - [MRTM-SYS-009 (2)](#mrtm-sys-009-2)
  - [MRTM-SYS-010 (3)](#mrtm-sys-010-3)
  - [MRTM-SYS-011 (2)](#mrtm-sys-011-2)
  - [MRTM-SYS-012 (3)](#mrtm-sys-012-3)
  - [MRTM-SYS-013 (2)](#mrtm-sys-013-2)
  - [MRTM-SYS-014 (2)](#mrtm-sys-014-2)
  - [MRTM-SYS-015 (2)](#mrtm-sys-015-2)
  - [MRTM-SYS-016 (4)](#mrtm-sys-016-4)
  - [MRTM-SYS-017 (2)](#mrtm-sys-017-2)
  - [MRTM-SYS-018 (2)](#mrtm-sys-018-2)
  - [MRTM-SYS-019 (1)](#mrtm-sys-019-1)
  - [MRTM-SYS-020 (2)](#mrtm-sys-020-2)
  - [MRTM-SYS-021 (1)](#mrtm-sys-021-1)
  - [MRTM-SYS-022 (2)](#mrtm-sys-022-2)
  - [MRTM-SYS-023 (2)](#mrtm-sys-023-2)
  - [MRTM-SYS-024 (3)](#mrtm-sys-024-3)
  - [MRTM-USI-001 (3)](#mrtm-usi-001-3)
  - [MRTM-USI-002 (2)](#mrtm-usi-002-2)
  - [MRTM-UXP-001 (1)](#mrtm-uxp-001-1)
  - [MRTM-UXP-002 (1)](#mrtm-uxp-002-1)
  - [MRTM-WDK-001 (1)](#mrtm-wdk-001-1)

## Findings by severity

### Errors (12)

#### `config-not-read` (1)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/config.yaml | .ejadah/rew/config.yaml line 505 did not load — this run is unconfigured |

#### `dead-requirement` (1)

| Requirement | Message |
|---|---|
| (repository) | tools/pinned-build.py#compile claims to implement "A-Z", which no requirement in this repository declares. The requirement was renamed or deleted and the code still points at the old id, so the code's own traceability is now to nothing. |

#### `not-implemented` (10)

| Requirement | Message |
|---|---|
| MRTM-ENV-001 | No code traces to MRTM-ENV-001 — link the symbol that implements it |
| MRTM-ENV-002 | No code traces to MRTM-ENV-002 — link the symbol that implements it |
| MRTM-ENV-003 | No code traces to MRTM-ENV-003 — link the symbol that implements it |
| MRTM-ENV-004 | No code traces to MRTM-ENV-004 — link the symbol that implements it |
| MRTM-LGI-003 | No code traces to MRTM-LGI-003 — link the symbol that implements it |
| MRTM-MNT-001 | No code traces to MRTM-MNT-001 — link the symbol that implements it |
| MRTM-SAF-001 | No code traces to MRTM-SAF-001 — link the symbol that implements it |
| MRTM-SAF-013 | No code traces to MRTM-SAF-013 — link the symbol that implements it |
| MRTM-SAF-020 | No code traces to MRTM-SAF-020 — link the symbol that implements it |
| MRTM-SYS-016 | No code traces to MRTM-SYS-016 — link the symbol that implements it |

### Warnings (104)

#### `duplicate-requirement` (5)

| Requirement | Message |
|---|---|
| MRTM-EXI-002 | _(candidate — inferred, needs human judgement)_ MRTM-EXI-002 repeats MRTM-EXI-003 (92 % of its words) — merge them, or say what differs |
| MRTM-LEV-002 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002 repeats MRTM-LEV-003 (91 % of its words) — merge them, or say what differs |
| MRTM-SYS-008 | _(candidate — inferred, needs human judgement)_ MRTM-SYS-008 repeats MRTM-SYS-010 (87 % of its words) — merge them, or say what differs |
| MRTM-SYS-008 | _(candidate — inferred, needs human judgement)_ MRTM-SYS-008 repeats MRTM-SYS-023 (87 % of its words) — merge them, or say what differs |
| MRTM-SYS-010 | _(candidate — inferred, needs human judgement)_ MRTM-SYS-010 repeats MRTM-SYS-023 (93 % of its words) — merge them, or say what differs |

#### `empty-component` (12)

| Requirement | Message |
|---|---|
| (repository) | Component "alarmMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "configMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "diagnostics" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "displayMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "eventLog" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "historyRing" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "limitEvaluator" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "powerMon" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "rtcClock" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "sensorSampler" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "usbExport" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| (repository) | Component "wdtKicker" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |

#### `parent-child-inconsistency` (20)

| Requirement | Message |
|---|---|
| MRTM-IFC-002 | MRTM-IFC-002 is refined at 2 different levels — move the odd child |
| MRTM-LGI-001 | MRTM-LGI-001 is refined at 2 different levels — move the odd child |
| MRTM-LGI-003 | MRTM-LGI-003 is refined at 2 different levels — move the odd child |
| MRTM-SAF-003 | MRTM-SAF-003 is refined at 2 different levels — move the odd child |
| MRTM-SAF-009 | MRTM-SAF-009 is refined at 2 different levels — move the odd child |
| MRTM-SRS-002 | MRTM-SRS-002 is refined at 3 different levels — move the odd child |
| MRTM-SRS-017 | MRTM-SRS-017 is refined at 2 different levels — move the odd child |
| MRTM-SYS-001 | MRTM-SYS-001 is refined at 6 different levels — move the odd child |
| MRTM-SYS-003 | MRTM-SYS-003 is refined at 3 different levels — move the odd child |
| MRTM-SYS-004 | MRTM-SYS-004 is refined at 2 different levels — move the odd child |
| MRTM-SYS-005 | MRTM-SYS-005 is refined at 3 different levels — move the odd child |
| MRTM-SYS-006 | MRTM-SYS-006 is refined at 4 different levels — move the odd child |
| MRTM-SYS-011 | MRTM-SYS-011 is refined at 2 different levels — move the odd child |
| MRTM-SYS-012 | MRTM-SYS-012 is refined at 4 different levels — move the odd child |
| MRTM-SYS-014 | MRTM-SYS-014 is refined at 2 different levels — move the odd child |
| MRTM-SYS-015 | MRTM-SYS-015 is refined at 3 different levels — move the odd child |
| MRTM-SYS-016 | MRTM-SYS-016 is refined at 4 different levels — move the odd child |
| MRTM-SYS-017 | MRTM-SYS-017 is refined at 2 different levels — move the odd child |
| MRTM-SYS-020 | MRTM-SYS-020 is refined at 3 different levels — move the odd child |
| MRTM-SYS-024 | MRTM-SYS-024 is refined at 2 different levels — move the odd child |

#### `partially-implemented` (5)

| Requirement | Message |
|---|---|
| MRTM-STK-008 | MRTM-STK-008 is partly implemented: 1 of its 2 children have code, MRTM-SYS-016 does not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| MRTM-SYS-001 | MRTM-SYS-001 is partly implemented: 6 of its 10 children have code, MRTM-ENV-002, MRTM-ENV-003, MRTM-ENV-004, MRTM-SAF-020 do not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| MRTM-SYS-003 | MRTM-SYS-003 is partly implemented: 7 of its 8 children have code, MRTM-SAF-001 does not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| MRTM-SYS-012 | MRTM-SYS-012 is partly implemented: 2 of its 3 children have code, MRTM-MNT-001 does not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| MRTM-SYS-016 | MRTM-SYS-016 is partly implemented: 3 of its 5 children have code, MRTM-ENV-001, MRTM-SAF-013 do not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |

#### `unallocated-requirement` (55)

| Requirement | Message |
|---|---|
| MRTM-IFC-001 | MRTM-IFC-001 is allocated to no component — allocate it, or the design has a gap |
| MRTM-IFC-002 | MRTM-IFC-002 is allocated to no component — allocate it, or the design has a gap |
| MRTM-IFC-003 | MRTM-IFC-003 is allocated to no component — allocate it, or the design has a gap |
| MRTM-IFC-004 | MRTM-IFC-004 is allocated to no component — allocate it, or the design has a gap |
| MRTM-PRF-001 | MRTM-PRF-001 is allocated to no component — allocate it, or the design has a gap |
| MRTM-PRF-002 | MRTM-PRF-002 is allocated to no component — allocate it, or the design has a gap |
| MRTM-PRF-003 | MRTM-PRF-003 is allocated to no component — allocate it, or the design has a gap |
| MRTM-PRF-004 | MRTM-PRF-004 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-001 | MRTM-SAF-001 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-002 | MRTM-SAF-002 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-003 | MRTM-SAF-003 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-004 | MRTM-SAF-004 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-005 | MRTM-SAF-005 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-006 | MRTM-SAF-006 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-007 | MRTM-SAF-007 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-008 | MRTM-SAF-008 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-009 | MRTM-SAF-009 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-010 | MRTM-SAF-010 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-011 | MRTM-SAF-011 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-012 | MRTM-SAF-012 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-013 | MRTM-SAF-013 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-014 | MRTM-SAF-014 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-015 | MRTM-SAF-015 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-016 | MRTM-SAF-016 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-017 | MRTM-SAF-017 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-018 | MRTM-SAF-018 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-019 | MRTM-SAF-019 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-020 | MRTM-SAF-020 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-021 | MRTM-SAF-021 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-022 | MRTM-SAF-022 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SAF-023 | MRTM-SAF-023 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-001 | MRTM-SYS-001 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-002 | MRTM-SYS-002 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-003 | MRTM-SYS-003 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-004 | MRTM-SYS-004 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-005 | MRTM-SYS-005 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-006 | MRTM-SYS-006 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-007 | MRTM-SYS-007 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-008 | MRTM-SYS-008 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-009 | MRTM-SYS-009 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-010 | MRTM-SYS-010 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-011 | MRTM-SYS-011 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-012 | MRTM-SYS-012 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-013 | MRTM-SYS-013 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-014 | MRTM-SYS-014 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-015 | MRTM-SYS-015 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-016 | MRTM-SYS-016 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-017 | MRTM-SYS-017 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-018 | MRTM-SYS-018 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-019 | MRTM-SYS-019 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-020 | MRTM-SYS-020 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-021 | MRTM-SYS-021 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-022 | MRTM-SYS-022 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-023 | MRTM-SYS-023 is allocated to no component — allocate it, or the design has a gap |
| MRTM-SYS-024 | MRTM-SYS-024 is allocated to no component — allocate it, or the design has a gap |

#### `undeclared-id-prefix` (7)

| Requirement | Message |
|---|---|
| MRTM-ALI-002 | 23 reference(s) use the prefix "ADR", which no type declares |
| MRTM-ALI-004 | 1 reference(s) use the prefix "SRS", which no type declares |
| MRTM-AMG-003 | 1 reference(s) use the prefix "IFC", which no type declares |
| MRTM-DSI-001 | 6 reference(s) use the prefix "SAF", which no type declares |
| MRTM-EXI-002 | 2 reference(s) use the prefix "STK", which no type declares |
| MRTM-SYS-024 | 1 reference(s) use the prefix "CR", which no type declares |
| MRTM-USI-001 | 2 reference(s) use the prefix "USI", which no type declares |

### Information (144)

#### `link-role-unreadable` (4)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/interface.md | allocation counts as 0: no Interface Requirement carries it — point it at your field |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/performance.md | allocation counts as 0: no Performance Requirement carries it — point it at your field |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/safety.md | allocation counts as 0: no Safety Requirement carries it — point it at your field |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/system.md | allocation counts as 0: no System Requirement carries it — point it at your field |

#### `not-a-requirement` (29)

| Requirement | Message |
|---|---|
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L2-hardware-item/README.md | README.md: not a "hardware-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-HWI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L2-software-system/README.md | README.md: not a "software-system" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SRS-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/alarm-item/README.md | README.md: not a "alarm-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-ALI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/display-item/README.md | README.md: not a "display-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-DSI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/excursion-item/README.md | README.md: not a "excursion-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-EXI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/log-item/README.md | README.md: not a "log-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-LGI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/power-item/README.md | README.md: not a "power-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PWI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/sensor-item/README.md | README.md: not a "sensor-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SNI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/supervisor-item/README.md | README.md: not a "supervisor-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SVI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/usb-item/README.md | README.md: not a "usb-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-USI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/alarm-mgr/README.md | README.md: not a "alarm-mgr" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-AMG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/config-mgr/README.md | README.md: not a "config-mgr" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-CFG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/diagnostics/README.md | README.md: not a "diagnostics" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-DGN-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/display-mgr/README.md | README.md: not a "display-mgr" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-DMG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/event-log/README.md | README.md: not a "event-log" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-EVL-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/history-ring/README.md | README.md: not a "history-ring" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-HRG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/limit-evaluator/README.md | README.md: not a "limit-evaluator" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-LEV-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/power-mon/README.md | README.md: not a "power-mon" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PMN-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/rtc-clock/README.md | README.md: not a "rtc-clock" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-RTK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/sensor-sampler/README.md | README.md: not a "sensor-sampler" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SMP-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/usb-export/README.md | README.md: not a "usb-export" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-UXP-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/wdt-kicker/README.md | README.md: not a "wdt-kicker" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-WDK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/environmental/README.md | README.md: not a "environmental" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-ENV-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/interface/README.md | README.md: not a "interface" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-IFC-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/maintainability/README.md | README.md: not a "maintainability" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-MNT-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/performance/README.md | README.md: not a "performance" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PRF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/safety/README.md | README.md: not a "safety" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SAF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/stakeholder/README.md | README.md: not a "stakeholder" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-STK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |
| /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/system/README.md | README.md: not a "system" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SYS-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

#### `single-point-failure` (1)

| Requirement | Message |
|---|---|
| MRTM-SAF-011 | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

#### `undeclared-hazard` (40)

| Requirement | Message |
|---|---|
| MRTM-AMG-001 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-AMG-002 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-AMG-003 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-AMG-004 | _(candidate — inferred, needs human judgement)_ MRTM-AMG-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-CFG-001 | _(candidate — inferred, needs human judgement)_ MRTM-CFG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DGN-001 | _(candidate — inferred, needs human judgement)_ MRTM-DGN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DMG-001 | _(candidate — inferred, needs human judgement)_ MRTM-DMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DMG-002 | _(candidate — inferred, needs human judgement)_ MRTM-DMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DSI-001 | _(candidate — inferred, needs human judgement)_ MRTM-DSI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-DSI-002 | _(candidate — inferred, needs human judgement)_ MRTM-DSI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-EVL-001 | _(candidate — inferred, needs human judgement)_ MRTM-EVL-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-EVL-002 | _(candidate — inferred, needs human judgement)_ MRTM-EVL-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HRG-001 | _(candidate — inferred, needs human judgement)_ MRTM-HRG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HRG-002 | _(candidate — inferred, needs human judgement)_ MRTM-HRG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-001 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-002 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-003 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-004 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-005 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-006 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-007 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-008 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-009 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-010 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-011 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-012 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-HWI-013 | _(candidate — inferred, needs human judgement)_ MRTM-HWI-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LEV-001 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LEV-002 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-LEV-003 | _(candidate — inferred, needs human judgement)_ MRTM-LEV-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PMN-001 | _(candidate — inferred, needs human judgement)_ MRTM-PMN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-PMN-002 | _(candidate — inferred, needs human judgement)_ MRTM-PMN-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-RTK-001 | _(candidate — inferred, needs human judgement)_ MRTM-RTK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-SMP-001 | _(candidate — inferred, needs human judgement)_ MRTM-SMP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-SMP-002 | _(candidate — inferred, needs human judgement)_ MRTM-SMP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-USI-001 | _(candidate — inferred, needs human judgement)_ MRTM-USI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-USI-002 | _(candidate — inferred, needs human judgement)_ MRTM-USI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-UXP-001 | _(candidate — inferred, needs human judgement)_ MRTM-UXP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-UXP-002 | _(candidate — inferred, needs human judgement)_ MRTM-UXP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| MRTM-WDK-001 | _(candidate — inferred, needs human judgement)_ MRTM-WDK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

#### `under-decomposition` (62)

| Requirement | Message |
|---|---|
| MRTM-ALI-001 | MRTM-ALI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALI-002 | MRTM-ALI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALI-003 | MRTM-ALI-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ALI-004 | MRTM-ALI-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-DSI-001 | MRTM-DSI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-DSI-002 | MRTM-DSI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-001 | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-ENV-004 | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-EXI-001 | MRTM-EXI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-EXI-002 | MRTM-EXI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-EXI-003 | MRTM-EXI-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-003 | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-IFC-004 | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-LGI-002 | MRTM-LGI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-001 | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-002 | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-003 | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PRF-004 | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PWI-001 | MRTM-PWI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-PWI-002 | MRTM-PWI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-001 | MRTM-SAF-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-004 | MRTM-SAF-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-005 | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-007 | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-008 | MRTM-SAF-008 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-010 | MRTM-SAF-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-012 | MRTM-SAF-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-013 | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-016 | MRTM-SAF-016 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-017 | MRTM-SAF-017 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-018 | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-022 | MRTM-SAF-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SAF-023 | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SNI-001 | MRTM-SNI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SNI-002 | MRTM-SNI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-001 | MRTM-SRS-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-003 | MRTM-SRS-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-004 | MRTM-SRS-004 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-005 | MRTM-SRS-005 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-006 | MRTM-SRS-006 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-007 | MRTM-SRS-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-009 | MRTM-SRS-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-010 | MRTM-SRS-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-011 | MRTM-SRS-011 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-012 | MRTM-SRS-012 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-013 | MRTM-SRS-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-015 | MRTM-SRS-015 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-018 | MRTM-SRS-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SRS-019 | MRTM-SRS-019 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SVI-001 | MRTM-SVI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SVI-002 | MRTM-SVI-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SVI-003 | MRTM-SVI-003 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-002 | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-007 | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-009 | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-010 | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-013 | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-018 | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-022 | MRTM-SYS-022 has one child, which restates it — merge the two, or add the sibling |
| MRTM-SYS-023 | MRTM-SYS-023 has one child, which restates it — merge the two, or add the sibling |
| MRTM-USI-001 | MRTM-USI-001 has one child, which restates it — merge the two, or add the sibling |
| MRTM-USI-002 | MRTM-USI-002 has one child, which restates it — merge the two, or add the sibling |

#### `wide-impact` (8)

| Requirement | Message |
|---|---|
| MRTM-STK-001 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-001 reaches 72 other artifacts — 36 already implemented, 21 code symbols traced to them. MRTM-STK-001 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-002 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 23 other artifacts — 13 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 12 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-003 | Changing MRTM-STK-003 reaches 19 other artifacts — 9 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-004 | Changing MRTM-STK-004 reaches 41 other artifacts — 17 already implemented, 13 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-005 | Changing MRTM-STK-005 reaches 46 other artifacts — 22 already implemented, 17 code symbols traced to them. MRTM-STK-005 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-006 | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 20 other artifacts — 11 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 7 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |
| MRTM-STK-007 | Changing MRTM-STK-007 reaches 21 other artifacts — 8 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |
| MRTM-STK-008 | Changing MRTM-STK-008 reaches 22 other artifacts — 8 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

## Findings by requirement

### (repository) (13)

| Severity | Rule | Message |
|---|---|---|
| error | `dead-requirement` | tools/pinned-build.py#compile claims to implement "A-Z", which no requirement in this repository declares. The requirement was renamed or deleted and the code still points at the old id, so the code's own traceability is now to nothing. |
| warning | `empty-component` | Component "alarmMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "configMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "diagnostics" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "displayMgr" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "eventLog" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "historyRing" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "limitEvaluator" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "powerMon" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "rtcClock" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "sensorSampler" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "usbExport" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |
| warning | `empty-component` | Component "wdtKicker" is declared in the architecture, and no requirement is allocated to it. Either a requirement should say this component is answerable for it, or the component is a name the design outgrew and should come out of the inventory. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/config.yaml (1)

| Severity | Rule | Message |
|---|---|---|
| error | `config-not-read` | .ejadah/rew/config.yaml line 505 did not load — this run is unconfigured |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/interface.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Interface Requirement carries it — point it at your field |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/performance.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Performance Requirement carries it — point it at your field |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/safety.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no Safety Requirement carries it — point it at your field |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/.ejadah/rew/templates/system.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `link-role-unreadable` | allocation counts as 0: no System Requirement carries it — point it at your field |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L2-hardware-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "hardware-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-HWI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L2-software-system/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "software-system" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SRS-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/alarm-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "alarm-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-ALI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/display-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "display-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-DSI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/excursion-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "excursion-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-EXI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/log-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "log-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-LGI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/power-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "power-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PWI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/sensor-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "sensor-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SNI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/supervisor-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "supervisor-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SVI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L3-software-items/usb-item/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "usb-item" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-USI-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/alarm-mgr/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "alarm-mgr" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-AMG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/config-mgr/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "config-mgr" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-CFG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/diagnostics/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "diagnostics" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-DGN-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/display-mgr/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "display-mgr" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-DMG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/event-log/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "event-log" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-EVL-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/history-ring/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "history-ring" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-HRG-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/limit-evaluator/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "limit-evaluator" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-LEV-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/power-mon/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "power-mon" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PMN-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/rtc-clock/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "rtc-clock" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-RTK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/sensor-sampler/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "sensor-sampler" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SMP-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/usb-export/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "usb-export" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-UXP-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/L4-software-units/wdt-kicker/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "wdt-kicker" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-WDK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/environmental/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "environmental" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-ENV-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/interface/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "interface" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-IFC-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/maintainability/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "maintainability" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-MNT-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/performance/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "performance" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-PRF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/safety/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "safety" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SAF-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/stakeholder/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "stakeholder" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-STK-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### /tmp/sanad-at-74ppDw/tree/runs/05-iec62304-pinned/03-requirements/system/README.md (1)

| Severity | Rule | Message |
|---|---|---|
| info | `not-a-requirement` | README.md: not a "system" requirement: its name "README" does not match this type's naming convention (an ID starting "MRTM-SYS-"). If it IS one, rename it to match; if not, add "README.md" to `ignore` in .ejadah/rew/config.yaml. |

### MRTM-ALI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-ALI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 23 reference(s) use the prefix "ADR", which no type declares |
| info | `under-decomposition` | MRTM-ALI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-ALI-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ALI-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "SRS", which no type declares |
| info | `under-decomposition` | MRTM-ALI-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-AMG-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-AMG-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-AMG-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "IFC", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-AMG-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-AMG-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-CFG-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-CFG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DGN-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DGN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DMG-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DMG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DMG-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DMG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-DSI-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 6 reference(s) use the prefix "SAF", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DSI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-DSI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-DSI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-DSI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-DSI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ENV-001 (2)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-ENV-001 — link the symbol that implements it |
| info | `under-decomposition` | MRTM-ENV-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-ENV-002 (1)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-ENV-002 — link the symbol that implements it |

### MRTM-ENV-003 (1)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-ENV-003 — link the symbol that implements it |

### MRTM-ENV-004 (2)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-ENV-004 — link the symbol that implements it |
| info | `under-decomposition` | MRTM-ENV-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-EVL-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-EVL-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-EVL-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-EVL-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-EXI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-EXI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-EXI-002 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-EXI-002 repeats MRTM-EXI-003 (92 % of its words) — merge them, or say what differs |
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "STK", which no type declares |
| info | `under-decomposition` | MRTM-EXI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-EXI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-EXI-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-HRG-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HRG-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HRG-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HRG-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-004's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-005's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-006's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-007's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-008 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-008's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-009's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-010 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-010's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-011 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-011's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-012 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-012's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-HWI-013 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-HWI-013's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-IFC-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-IFC-001 is allocated to no component — allocate it, or the design has a gap |

### MRTM-IFC-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-IFC-002 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-IFC-002 is allocated to no component — allocate it, or the design has a gap |

### MRTM-IFC-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-IFC-003 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-IFC-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-IFC-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-IFC-004 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-IFC-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LEV-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LEV-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002 repeats MRTM-LEV-003 (91 % of its words) — merge them, or say what differs |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LEV-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-LEV-003's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-LGI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-LGI-001 is refined at 2 different levels — move the odd child |

### MRTM-LGI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-LGI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-LGI-003 (2)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-LGI-003 — link the symbol that implements it |
| warning | `parent-child-inconsistency` | MRTM-LGI-003 is refined at 2 different levels — move the odd child |

### MRTM-MNT-001 (1)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-MNT-001 — link the symbol that implements it |

### MRTM-PMN-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PMN-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PMN-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-PMN-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-PRF-001 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-PRF-001 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-PRF-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-PRF-002 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-PRF-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-PRF-003 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-PRF-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PRF-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-PRF-004 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-PRF-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PWI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-PWI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-PWI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-PWI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-RTK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-RTK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-SAF-001 (3)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-SAF-001 — link the symbol that implements it |
| warning | `unallocated-requirement` | MRTM-SAF-001 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-002 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-003 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SAF-003 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SAF-003 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-004 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-005 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-005 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-006 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-006 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-007 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-008 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-008 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-008 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-009 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SAF-009 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SAF-009 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-010 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-010 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-011 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-011 is allocated to no component — allocate it, or the design has a gap |
| info | `single-point-failure` | HAZ-002 is mitigated by MRTM-SAF-011 alone, so that one requirement is everything standing between the hazard and its consequence. If the applicable standard expects independent mitigation at this level, this is where it is missing. |

### MRTM-SAF-012 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-012 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-013 (3)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-SAF-013 — link the symbol that implements it |
| warning | `unallocated-requirement` | MRTM-SAF-013 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-014 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-014 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-015 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-015 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-016 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-016 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-016 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-017 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-017 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-017 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-018 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-018 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-019 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-019 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-020 (2)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-SAF-020 — link the symbol that implements it |
| warning | `unallocated-requirement` | MRTM-SAF-020 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-021 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-021 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SAF-022 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-022 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-022 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SAF-023 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SAF-023 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SAF-023 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SMP-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-SMP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-SMP-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-SMP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-SNI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SNI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SNI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SNI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-002 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SRS-002 is refined at 3 different levels — move the odd child |

### MRTM-SRS-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-004 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-005 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-006 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-009 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-010 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-011 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-011 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-012 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-012 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-013 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-015 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-015 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-017 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SRS-017 is refined at 2 different levels — move the odd child |

### MRTM-SRS-018 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SRS-019 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SRS-019 has one child, which restates it — merge the two, or add the sibling |

### MRTM-STK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-001 reaches 72 other artifacts — 36 already implemented, 21 code symbols traced to them. MRTM-STK-001 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 3 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-002 reaches 23 other artifacts — 13 already implemented, 6 code symbols traced to them. MRTM-STK-002 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 12 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-003 reaches 19 other artifacts — 9 already implemented, 7 code symbols traced to them. MRTM-STK-003 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-004 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-004 reaches 41 other artifacts — 17 already implemented, 13 code symbols traced to them. MRTM-STK-004 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-005 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-005 reaches 46 other artifacts — 22 already implemented, 17 code symbols traced to them. MRTM-STK-005 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-006 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | _(candidate — inferred, needs human judgement)_ Changing MRTM-STK-006 reaches 20 other artifacts — 11 already implemented, 7 code symbols traced to them. MRTM-STK-006 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. 7 of them were reached through a link inferred from prose rather than a structured field — treat those as candidates. |

### MRTM-STK-007 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `wide-impact` | Changing MRTM-STK-007 reaches 21 other artifacts — 8 already implemented, 9 code symbols traced to them. MRTM-STK-007 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-STK-008 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `partially-implemented` | MRTM-STK-008 is partly implemented: 1 of its 2 children have code, MRTM-SYS-016 does not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| info | `wide-impact` | Changing MRTM-STK-008 reaches 22 other artifacts — 8 already implemented, 7 code symbols traced to them. MRTM-STK-008 rests on nothing above it, so a change here starts at the top and every artifact below has to be revisited. Ask Sanad what a specific change affects to see the trace path to each one. |

### MRTM-SVI-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SVI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SVI-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SVI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SVI-003 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `under-decomposition` | MRTM-SVI-003 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-001 is refined at 6 different levels — move the odd child |
| warning | `partially-implemented` | MRTM-SYS-001 is partly implemented: 6 of its 10 children have code, MRTM-ENV-002, MRTM-ENV-003, MRTM-ENV-004, MRTM-SAF-020 do not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| warning | `unallocated-requirement` | MRTM-SYS-001 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-002 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-002 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-003 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-003 is refined at 3 different levels — move the odd child |
| warning | `partially-implemented` | MRTM-SYS-003 is partly implemented: 7 of its 8 children have code, MRTM-SAF-001 does not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| warning | `unallocated-requirement` | MRTM-SYS-003 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-004 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-004 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-004 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-005 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-005 is refined at 3 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-005 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-006 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-006 is refined at 4 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-006 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-007 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-007 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-007 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-008 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-SYS-008 repeats MRTM-SYS-010 (87 % of its words) — merge them, or say what differs |
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-SYS-008 repeats MRTM-SYS-023 (87 % of its words) — merge them, or say what differs |
| warning | `unallocated-requirement` | MRTM-SYS-008 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-009 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-009 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-009 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-010 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `duplicate-requirement` | _(candidate — inferred, needs human judgement)_ MRTM-SYS-010 repeats MRTM-SYS-023 (93 % of its words) — merge them, or say what differs |
| warning | `unallocated-requirement` | MRTM-SYS-010 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-010 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-011 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-011 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-011 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-012 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-012 is refined at 4 different levels — move the odd child |
| warning | `partially-implemented` | MRTM-SYS-012 is partly implemented: 2 of its 3 children have code, MRTM-MNT-001 does not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| warning | `unallocated-requirement` | MRTM-SYS-012 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-013 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-013 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-013 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-014 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-014 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-014 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-015 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-015 is refined at 3 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-015 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-016 (4)

| Severity | Rule | Message |
|---|---|---|
| error | `not-implemented` | No code traces to MRTM-SYS-016 — link the symbol that implements it |
| warning | `parent-child-inconsistency` | MRTM-SYS-016 is refined at 4 different levels — move the odd child |
| warning | `partially-implemented` | MRTM-SYS-016 is partly implemented: 3 of its 5 children have code, MRTM-ENV-001, MRTM-SAF-013 do not. Partly implemented is the state that reads as finished on every dashboard that counts requirements rather than following them down. |
| warning | `unallocated-requirement` | MRTM-SYS-016 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-017 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-017 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-017 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-018 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-018 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-018 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-019 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-019 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-020 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-020 is refined at 3 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-020 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-021 (1)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-021 is allocated to no component — allocate it, or the design has a gap |

### MRTM-SYS-022 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-022 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-022 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-023 (2)

| Severity | Rule | Message |
|---|---|---|
| warning | `unallocated-requirement` | MRTM-SYS-023 is allocated to no component — allocate it, or the design has a gap |
| info | `under-decomposition` | MRTM-SYS-023 has one child, which restates it — merge the two, or add the sibling |

### MRTM-SYS-024 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `parent-child-inconsistency` | MRTM-SYS-024 is refined at 2 different levels — move the odd child |
| warning | `unallocated-requirement` | MRTM-SYS-024 is allocated to no component — allocate it, or the design has a gap |
| warning | `undeclared-id-prefix` | 1 reference(s) use the prefix "CR", which no type declares |

### MRTM-USI-001 (3)

| Severity | Rule | Message |
|---|---|---|
| warning | `undeclared-id-prefix` | 2 reference(s) use the prefix "USI", which no type declares |
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-USI-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-USI-001 has one child, which restates it — merge the two, or add the sibling |

### MRTM-USI-002 (2)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-USI-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |
| info | `under-decomposition` | MRTM-USI-002 has one child, which restates it — merge the two, or add the sibling |

### MRTM-UXP-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-UXP-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-UXP-002 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-UXP-002's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

### MRTM-WDK-001 (1)

| Severity | Rule | Message |
|---|---|---|
| info | `undeclared-hazard` | _(candidate — inferred, needs human judgement)_ MRTM-WDK-001's "Safety" section describes safety work but names no hazard, so nothing records what it protects against. Name the hazard, or the safety argument has no premise. |

