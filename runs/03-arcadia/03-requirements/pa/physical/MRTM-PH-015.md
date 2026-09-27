---
id: "MRTM-PH-015"
type: "physical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-022"]
safetyClass: "C"
derived: false
---

# Probe scratchpad check

## Description

When the sensor item reads the scratchpad, the probe shall send a CRC-8 value with the **Sample** data.

## Rationale

The CRC-8 is what lets the sensor item tell a bad read from a real temperature (ADR-0009).

## Verification

Inspection of a bus capture in SP-10.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
