---
id: "MRTM-FUN-003"
type: "function"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-003"]
safetyClass: "A"
derived: false
---

# Acknowledge the warning

## Description

The monitor shall let clinic staff silence an excursion warning without ending the watch on the excursion.

## Rationale

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the need to silence the alert.

## Verification

Analysis: the system requirements derived from this function are all verified.

## Safety

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
