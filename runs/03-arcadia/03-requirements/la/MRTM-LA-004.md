---
id: "MRTM-LA-004"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006","MRTM-IFC-002"]
safetyClass: "C"
derived: false
---

# Alarm acknowledge

## Description

The alarm logical component shall stop the buzzer within 1 s of a debounced acknowledge press.

## Rationale

Carries MRTM-SYS-006 down; the 50 ms debounce of MRTM-IFC-002 sits inside the 1 s.

## Verification

Test: unit tests of the alarm item.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
