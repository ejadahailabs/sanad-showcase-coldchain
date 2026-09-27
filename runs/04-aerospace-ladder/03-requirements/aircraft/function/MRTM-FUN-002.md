---
id: "MRTM-FUN-002"
type: "function"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-001","MRTM-STK-002"]
safetyClass: "A"
derived: false
---

# Warn of an excursion

## Description

The monitor shall warn clinic staff when the fridge air stays outside the allowed band longer than the confirmation time.

## Rationale

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the needs to be alerted and not to be alerted for a brief door opening.

## Verification

Analysis: the system requirements derived from this function are all verified.

## Safety

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
