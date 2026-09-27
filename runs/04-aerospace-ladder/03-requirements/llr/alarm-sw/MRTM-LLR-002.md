---
id: "MRTM-LLR-002"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-001"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Unit conversion

## Description

sensor_sampler_to_tenths shall convert the raw 12-bit value in 1/16 °C to tenths of a degree, rounding half away from zero, and add the calibrated offset.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 29.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
