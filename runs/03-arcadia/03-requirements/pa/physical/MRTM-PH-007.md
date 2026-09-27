---
id: "MRTM-PH-007"
type: "physical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-001"]
safetyClass: "C"
derived: false
---

# Red indicator response

## Description

The red indicator shall follow its drive input within 10 ms.

## Rationale

A flash pattern is only as good as the lamp that shows it; 10 ms is small against a 250 ms half-period.

## Verification

Test: SP-01 oscilloscope on the drive and a light sensor.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
