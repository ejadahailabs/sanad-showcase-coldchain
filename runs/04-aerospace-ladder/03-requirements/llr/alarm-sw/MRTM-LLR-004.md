---
id: "MRTM-LLR-004"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-003"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Probe fault flag

## Description

sensor_sampler_probe_fault shall return true when the last sample was out of range or when 30 s have passed since the last valid sample.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 62.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
