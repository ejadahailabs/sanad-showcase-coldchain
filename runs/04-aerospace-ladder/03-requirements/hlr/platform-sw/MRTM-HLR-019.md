---
id: "MRTM-HLR-019"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-SAF-017","MRTM-SYS-017"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Band integrity

## Description

The platform software item shall enter fail-safe, instead of monitoring, when the stored band fails its CRC-32 check.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SVI-003 and MRTM-SUP-003. There is no default band on purpose.

## Verification

Test: unit tests of config_mgr; integration INT-03.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
