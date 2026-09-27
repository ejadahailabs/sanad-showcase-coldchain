---
id: "MRTM-HWI-005"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-004"]
safetyClass: "C"
derived: false
---

# Red indicator response

## Description

The hardware item shall light the red indicator within 10 ms of its drive input.

## Rationale

Part response time, synthetic (A-40).

## Verification

Test: SP-01.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
