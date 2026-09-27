---
id: "MRTM-FUN-004"
type: "function"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-005","MRTM-STK-006"]
safetyClass: "C"
derived: false
---

# Keep the history

## Description

The monitor shall keep a record of every excursion and every alarm event that nobody can change.

## Rationale

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the audit needs.

## Verification

Analysis: the system requirements derived from this function are all verified.

## Safety

DAL C (major failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
