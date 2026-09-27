---
id: "MRTM-FUN-005"
type: "function"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-008"]
safetyClass: "A"
derived: false
---

# Watch through a power cut

## Description

The monitor shall keep watching and warning while the mains power is lost.

## Rationale

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the need to monitor through a power cut.

## Verification

Analysis: the system requirements derived from this function are all verified.

## Safety

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
