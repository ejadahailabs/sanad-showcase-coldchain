---
id: "MRTM-HWI-012"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ENV-001"]
safetyClass: "C"
derived: false
---

# Battery endurance

## Description

The hardware item shall supply the monitor from the battery for 4 h.

## Rationale

2000 mAh cell, 25.8 h worst case computed (A-11, A-40).

## Verification

Test: SP-04.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
