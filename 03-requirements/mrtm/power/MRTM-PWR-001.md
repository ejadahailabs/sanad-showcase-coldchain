---
id: "MRTM-PWR-001"
type: "power"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "C"
derived: false
---

# Power switch-over

## Description

The power subsystem shall switch the load to the battery within 100 ms of mains power loss.

## Rationale

Shorter than the hold-up of the processor supply, so the firmware never resets on a mains cut.

## Verification

Test: SP-04 oscilloscope.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
