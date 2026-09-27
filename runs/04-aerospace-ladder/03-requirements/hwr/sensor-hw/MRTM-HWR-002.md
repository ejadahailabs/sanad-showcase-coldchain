---
id: "MRTM-HWR-002"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PRF-001","MRTM-ENV-004"]
safetyClass: "A"
derived: false
---

# Probe accuracy

## Description

The sensor hardware item shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PRB-002. The accuracy is all probe; the firmware only converts units (A-40).

## Verification

Test: SP-10 at 0, 2, 5, 8, 15 °C against a reference thermometer.

## Safety

DAL A (catastrophic failure condition), assigned to `sensor-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
