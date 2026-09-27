---
id: "MRTM-PH-014"
type: "physical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-021"]
safetyClass: "C"
derived: false
---

# Probe accuracy

## Description

The probe shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C.

## Rationale

The sensing accuracy is all probe: the firmware only converts units (A-40).

## Verification

Test: SP-10.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
