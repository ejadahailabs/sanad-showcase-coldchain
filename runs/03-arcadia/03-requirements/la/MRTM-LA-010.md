---
id: "MRTM-LA-010"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-011","MRTM-PRF-004","MRTM-IFC-004"]
safetyClass: "C"
derived: false
---

# Display temperature

## Description

The display logical component shall show the current temperature at 0.1 °C resolution in digits of 5 mm or more, refreshed at a period of 10 s.

## Rationale

Readable from the fridge door; 10 s refresh avoids flicker of the last digit.

## Verification

Test: SP-09.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
