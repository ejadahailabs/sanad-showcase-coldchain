---
id: "MRTM-CI-002"
type: "configuration-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PH-006","MRTM-PH-007","MRTM-PH-008","MRTM-PH-010","MRTM-PH-012","MRTM-PH-016"]
safetyClass: "C"
derived: false
---

# Main board assembly

## Description

The main board configuration item shall carry a part number and revision on its label, and its bill of materials shall list the microcontroller, real-time clock, indicators, acknowledge button, buzzer stage and power path at that revision.

## Rationale

IEC 62304 §8.1.2 asks the software's SOUP and platform to be identified; the board is the platform the firmware runs on. The BOM (09-hardware) is the content list. Part classes are synthetic (A-40).

## Verification

Inspection of the label and the BOM against the configuration record.

## Safety

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.
