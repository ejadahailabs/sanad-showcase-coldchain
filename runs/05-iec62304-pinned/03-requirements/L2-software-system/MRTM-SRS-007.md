---
id: "MRTM-SRS-007"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006","MRTM-IFC-002"]
safetyClass: "C"
derived: false
---

# SRS buzzer off on acknowledge

## Description

The software system shall switch the buzzer drive off within 1 s of a debounced acknowledge press.

## Rationale

§5.2.2 c) user interface (IEC 60601-1-8 audio paused).

## Verification

Test: unit tests of the alarm manager.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
