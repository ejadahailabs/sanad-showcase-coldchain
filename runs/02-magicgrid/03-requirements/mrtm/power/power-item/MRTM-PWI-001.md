---
id: "MRTM-PWI-001"
type: "power-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PWR-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Power item mains events

## Description

The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge.

## Rationale

The power item reads the sense input every 1 s cycle.

## Verification

Test: unit tests of power_mon.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
