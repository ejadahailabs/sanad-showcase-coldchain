---
id: "MRTM-LLR-001"
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

# Bus start

## Description

sensor_sampler_init shall reset the 1-Wire bus and start the first conversion, and shall return MRTM_ERR_BUS when either step fails.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 16.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
