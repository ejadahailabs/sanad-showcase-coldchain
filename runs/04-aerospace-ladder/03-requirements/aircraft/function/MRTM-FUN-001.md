---
id: "MRTM-FUN-001"
type: "function"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-004","MRTM-STK-007"]
safetyClass: "A"
derived: false
---

# Monitor the fridge air

## Description

The monitor shall measure the fridge air temperature and show whether the measurement can be trusted.

## Rationale

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the needs to see the temperature and to see a probe failure.

## Verification

Analysis: the system requirements derived from this function are all verified.

## Safety

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
