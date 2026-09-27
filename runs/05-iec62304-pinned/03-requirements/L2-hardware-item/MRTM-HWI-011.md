---
id: "MRTM-HWI-011"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "C"
derived: false
---

# Power path switch-over

## Description

The hardware item shall switch the load from mains to battery within 100 ms of mains power loss.

## Rationale

Charger with automatic change-over.

## Verification

Test: SP-04.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
