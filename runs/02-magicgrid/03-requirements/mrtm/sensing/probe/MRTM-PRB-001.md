---
id: "MRTM-PRB-001"
type: "probe"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SEN-002"]
safetyClass: "C"
derived: false
---

# Probe conversion time

## Description

The probe shall complete a 12-bit temperature conversion within 750 ms.

## Rationale

Chosen part class: 1-Wire digital probe (ADR-0009, ADR-0015). Figure from the part class, synthetic (A-40).

## Verification

Inspection of the part data; SP-10 bus capture.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
