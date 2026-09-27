---
id: "MRTM-HWI-006"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006","MRTM-IFC-002"]
safetyClass: "C"
derived: false
---

# Acknowledge contact

## Description

While a clinic staff member presses the acknowledge button, the hardware item shall close the contact that signals an **Acknowledgement**.

## Rationale

The button half of the acknowledge path; debounce is software.

## Verification

Test: SP-01.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
