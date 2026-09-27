---
id: "MRTM-PWR-002"
type: "power"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ENV-001"]
safetyClass: "C"
derived: false
---

# Power battery time

## Description

The power subsystem shall supply the monitor from the battery for 4 h.

## Rationale

4 h is the mains-loss need of MRTM-STK-008 (assumption A-11).

## Verification

Test: SP-04.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
