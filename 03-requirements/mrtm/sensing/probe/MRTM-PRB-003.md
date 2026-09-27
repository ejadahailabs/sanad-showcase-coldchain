---
id: "MRTM-PRB-003"
type: "probe"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SEN-004"]
safetyClass: "C"
derived: false
---

# Probe scratchpad check

## Description

The probe shall send a CRC-8 value with every scratchpad read.

## Rationale

The CRC-8 is what lets the sensor item tell a bad read from a real temperature (ADR-0009).

## Verification

Inspection of a bus capture in SP-10.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
