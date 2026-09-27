---
id: "MRTM-HLR-034"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-022"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Capacity warning record

## Description

The record software item shall log one capacity-warning event when the event log reaches 9000 records.

## Rationale

DO-178C §5.1 HLR.

## Verification

Test: unit tests of history_ring.

## Safety

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
