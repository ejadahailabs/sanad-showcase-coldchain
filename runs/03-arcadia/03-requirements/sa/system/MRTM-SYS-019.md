---
id: "MRTM-SYS-019"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-003"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Alarm comes back after silence

## Description

The monitor shall sound the buzzer again 15 min after the acknowledge button press while the excursion continues.

## Rationale

Review round 1, thread T09: silence is a paused alarm, not a cancelled one (IEC 60601-1-8 frame). 15 min is assumption A-13.

## Verification

Test: acknowledge during an excursion, keep the probe warm, confirm the buzzer returns at 15 min ± 5 s.
