---
id: "MRTM-LLR-035"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-030","MRTM-HLR-032"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Post

## Description

event_log_post shall stamp the record with the current UTC second, kind and temperatures, and queue it (depth 32, MRTM_ERR_FULL when full).

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: event_log.c line 22.

## Verification

Test: the unit tests of this function.

## Safety

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
