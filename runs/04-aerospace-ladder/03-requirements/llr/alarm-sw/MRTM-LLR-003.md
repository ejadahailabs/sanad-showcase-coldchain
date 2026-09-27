---
id: "MRTM-LLR-003"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-001","MRTM-HLR-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Sample read

## Description

sensor_sampler_read shall read the scratchpad, start the next conversion, and return the sample invalid when the CRC-8 differs or the value is outside -300 to 500 tenths.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 37.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
