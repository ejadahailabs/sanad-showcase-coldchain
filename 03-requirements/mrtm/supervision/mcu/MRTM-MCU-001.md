---
id: "MRTM-MCU-001"
type: "mcu"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SUP-001"]
safetyClass: "C"
derived: false
---

# Processor watchdog reset

## Description

The microcontroller shall reset within 1 s of its hardware watchdog expiry.

## Rationale

The processor's own watchdog is the last software-independent restart (ADR-0018).

## Verification

Test: SP-03.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
