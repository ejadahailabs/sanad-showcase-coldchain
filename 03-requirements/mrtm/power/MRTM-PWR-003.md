---
id: "MRTM-PWR-003"
type: "power"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-005","MRTM-SAF-008","MRTM-SYS-023"]
safetyClass: "C"
derived: false
---

# Power events

## Description

The power subsystem shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s.

## Rationale

Feeds the log (SAF-005) and the low-battery alarm (SAF-008).

## Verification

Test: unit tests of the power item; integration INT-05.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
