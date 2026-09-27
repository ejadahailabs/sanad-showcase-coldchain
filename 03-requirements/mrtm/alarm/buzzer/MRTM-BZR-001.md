---
id: "MRTM-BZR-001"
type: "buzzer"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALM-003","MRTM-ALM-005"]
safetyClass: "C"
derived: false
---

# Buzzer loudness

## Description

The buzzer shall produce a sound pressure level of 65 dB(A) or more at 1 m when either drive input is active.

## Rationale

One sounder, two OR-ed drive inputs: the firmware and the backup alarm (ADR-0017). 65 dB(A) is a synthetic figure (A-40).

## Verification

Test: SP-06 sound level meter at 1 m.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
