---
id: "MRTM-PMN-002"
type: "power-mon"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PWI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Power monitor battery

## Description

The power monitor unit shall post the battery-low event after 2 consecutive battery readings below 3400 mV.

## Rationale

Contract: millivolts in, event out.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `power-item` (IEC 62304 §4.3 — a unit takes its item's class).
