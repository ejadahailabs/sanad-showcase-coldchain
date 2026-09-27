---
id: "MRTM-PWI-001"
type: "power-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-016"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Power item mains events

## Description

The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge.

## Rationale

Interrupt on the mains-sense line.

## Verification

Test: unit tests of power_mon.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
