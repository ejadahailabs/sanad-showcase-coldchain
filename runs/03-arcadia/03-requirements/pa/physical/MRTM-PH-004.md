---
id: "MRTM-PH-004"
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

# Backup timer period

## Description

The backup timer shall assert its timeout output 9 s ± 0.9 s after the last service pulse.

## Rationale

9.9 s worst case stays inside the 10 s of MRTM-PH-001; the tolerance is a synthetic part-class figure (A-40).

## Verification

Test: SP-03 with the pulses stopped.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
