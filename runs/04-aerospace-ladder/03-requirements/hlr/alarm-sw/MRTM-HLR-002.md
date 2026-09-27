---
id: "MRTM-HLR-002"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012","MRTM-SAF-003"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Invalid sample

## Description

The alarm software item shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SNI-002. An invalid sample never counts toward an excursion or its end (A-29).

## Verification

Test: unit tests of sensor_sampler.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
