---
id: "MRTM-HWI-003"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012","MRTM-SAF-003"]
safetyClass: "C"
derived: false
---

# Probe scratchpad check

## Description

When the software reads the probe scratchpad, the hardware item shall send a CRC-8 value with the **Sample** data.

## Rationale

The CRC-8 lets the software tell a bad read from a real temperature (ADR-0009).

## Verification

Inspection of a bus capture in SP-10.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
