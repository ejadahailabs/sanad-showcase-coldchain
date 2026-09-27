---
id: "MRTM-DSP-001"
type: "display"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-005","MRTM-SYS-007"]
safetyClass: "C"
derived: false
---

# Display excursion warning

## Description

The display subsystem shall show the excursion warning within 1 s of excursion confirmation until the excursion ends.

## Rationale

The display share of the 5 s of SYS-005.

## Verification

Test: unit tests of the display item; integration INT-01.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
