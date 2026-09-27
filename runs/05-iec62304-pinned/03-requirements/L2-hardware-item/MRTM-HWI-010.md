---
id: "MRTM-HWI-010"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-020"]
safetyClass: "C"
derived: false
---

# Clock drift

## Description

The hardware item shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C.

## Rationale

Temperature-compensated clock part (A-14).

## Verification

Test: SP-12.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
