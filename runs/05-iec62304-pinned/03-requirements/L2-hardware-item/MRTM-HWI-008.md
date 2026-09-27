---
id: "MRTM-HWI-008"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-013"]
safetyClass: "C"
derived: false
---

# Backup alarm hold-up

## Description

The hardware item shall drive the buzzer from the backup alarm for 60 s or more after the loss of both mains and battery power.

## Rationale

Supercapacitor, 133 s computed (09-hardware/power-budget.md).

## Verification

Test: SP-03.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
