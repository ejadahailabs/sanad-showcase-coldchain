---
id: "MRTM-HWR-001"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-024","MRTM-SYS-001"]
safetyClass: "A"
derived: false
---

# Probe conversion time

## Description

The sensor hardware item shall complete a 12-bit temperature conversion within 750 ms.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PRB-001. The sensing share of the 5 s early-alarm budget (ADR-0030). Figure from the part class, synthetic (A-40).

## Verification

Inspection of the part data; SP-10 bus capture.

## Safety

DAL A (catastrophic failure condition), assigned to `sensor-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
