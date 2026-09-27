---
id: "MRTM-LLR-020"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-019"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Band load

## Description

config_mgr_load shall return the stored band only when its CRC-32 matches and 2.0 °C ≤ low < high ≤ 8.0 °C, and an error otherwise.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: config_mgr.c line 19.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
