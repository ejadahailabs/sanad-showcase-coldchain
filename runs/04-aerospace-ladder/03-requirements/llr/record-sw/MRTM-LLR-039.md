---
id: "MRTM-LLR-039"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-033"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Read

## Description

history_ring_read shall return the first copy whose sequence and CRC-32 match, and log a corrupt record when none does.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: history_ring.c line 66.

## Verification

Test: the unit tests of this function.

## Safety

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
