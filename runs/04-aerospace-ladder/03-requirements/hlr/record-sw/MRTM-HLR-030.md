---
id: "MRTM-HLR-030"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-018","MRTM-SYS-008","MRTM-SYS-010"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Two copies within 1 s

## Description

The record software item shall write each event record with its CRC-32 to 2 separate flash sectors within 1 s of the event.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-LGI-001 and MRTM-LOG-001.

## Verification

Test: unit tests of event_log and history_ring.

## Safety

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
