---
id: "MRTM-PMN-001"
type: "power-mon"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PWI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Power monitor edge

## Description

The power monitor unit shall post the mains-lost or mains-restored event on each mains sense edge it is called with.

## Rationale

Contract: 10-src/firmware/components/power_mon/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `power-item` (IEC 62304 §4.3 — a unit takes its item's class).
