---
id: "MRTM-HLR-001"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001","MRTM-SYS-024"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Sample period and read

## Description

The alarm software item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SNI-001 (ADR-0019, ADR-0031).

## Verification

Test: unit tests of sensor_sampler.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
