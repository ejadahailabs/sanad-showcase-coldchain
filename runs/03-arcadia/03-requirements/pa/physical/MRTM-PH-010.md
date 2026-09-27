---
id: "MRTM-PH-010"
type: "physical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-015"]
safetyClass: "C"
derived: false
---

# Clock drift

## Description

The real-time clock shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C.

## Rationale

A temperature-compensated clock part (ADR-0016); synthetic figure (A-40).

## Verification

Test: SP-12.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
