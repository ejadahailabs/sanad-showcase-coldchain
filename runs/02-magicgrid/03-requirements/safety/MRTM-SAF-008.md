---
id: "MRTM-SAF-008"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "C"
hazard: ["HAZ-005"]
derived: false
---

# Low battery alarm

## Description

The monitor shall sound the buzzer within 5 s of the battery voltage falling below 3.4 V.

## Rationale

Review round 1, thread T11: on battery the monitor would stop silently after about 4 h. 3.4 V is synthetic and EE-REVIEW (A-15). Risk control for hazard 'monitoring stops unnoticed' (ISO 14971 cl. 7).

## Safety

Mitigates HAZ-005: staff are warned while there is still battery left to act on.

## Verification

Test: lower the battery supply through 3.4 V on a bench supply and time the buzzer.
