---
id: "MRTM-HWI-004"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-001"]
safetyClass: "C"
derived: false
---

# Buzzer loudness

## Description

The hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active.

## Rationale

Two OR-ed drive inputs: firmware and backup alarm (ADR-0017). source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition).

## Verification

Test: SP-06.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
