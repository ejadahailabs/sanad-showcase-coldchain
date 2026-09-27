---
id: "MRTM-LLR-038"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-030","MRTM-HLR-034","MRTM-HLR-031"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Append

## Description

history_ring_append shall write copy A then copy B, erasing a sector at its first slot, and log the capacity warning once at 9000 records.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: history_ring.c line 47.

## Verification

Test: the unit tests of this function.

## Safety

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
