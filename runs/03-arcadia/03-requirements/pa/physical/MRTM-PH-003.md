---
id: "MRTM-PH-003"
type: "physical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-005"]
safetyClass: "C"
derived: false
---

# Backup driver response

## Description

The backup driver shall drive the buzzer backup input within 100 ms of the timeout output.

## Rationale

A transistor stage; 100 ms keeps the sum under 10 s with the timer's 9.9 s.

## Verification

Test: SP-03 oscilloscope.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
