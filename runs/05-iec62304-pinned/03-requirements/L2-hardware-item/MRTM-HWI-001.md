---
id: "MRTM-HWI-001"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-024"]
safetyClass: "C"
derived: false
---

# Probe conversion time

## Description

The hardware item shall complete a 12-bit temperature conversion within 750 ms.

## Rationale

The hardware share of the 5 s early-alarm budget. Part class figure, synthetic (A-40).

## Verification

Inspection of the part data; SP-10 bus capture.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
