---
id: "MRTM-LLR-036"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-030"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Store

## Description

event_log_step shall number, checksum and append every queued record, retry a failed append once, and log a flash failure without looping.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: event_log.c line 45.

## Verification

Test: the unit tests of this function.

## Safety

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
