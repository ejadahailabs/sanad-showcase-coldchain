---
id: "MRTM-HLR-003"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012","MRTM-SAF-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Probe fault declaration

## Description

The alarm software item shall declare a probe fault at once for an out-of-range sample and after 30 s without a valid sample.

## Rationale

DO-178C §5.1 HLR. New in this ladder: run 2 held it only at system level (MRTM-SYS-012).

## Verification

Test: unit tests of sensor_sampler.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
