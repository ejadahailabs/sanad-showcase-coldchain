---
id: "MRTM-HLR-033"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-021"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Corrupt record

## Description

The record software item shall read a record from whichever copy passes its CRC-32 check and log a corrupt-record event when neither does.

## Rationale

DO-178C §5.1 HLR.

## Verification

Test: unit tests of history_ring.

## Safety

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
