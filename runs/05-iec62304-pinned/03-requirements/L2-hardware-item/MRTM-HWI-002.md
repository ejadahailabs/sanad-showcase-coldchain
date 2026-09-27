---
id: "MRTM-HWI-002"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PRF-001","MRTM-ENV-004"]
safetyClass: "C"
derived: false
---

# Probe accuracy

## Description

The hardware item shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

## Rationale

The accuracy is all probe; the software only converts units. source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

## Verification

Test: SP-10.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
