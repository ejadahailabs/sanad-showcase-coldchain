---
id: "MRTM-SAF-006"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
hazard: ["HAZ-003", "HAZ-005"]
derived: false
---

# Alert survives restart

## Description

The monitor shall restore the unacknowledged alert state within 2 s of the restart.

## Rationale

Risk control for hazard 'a restart silences an open alert'.

## Safety

Mitigates HAZ-003 and HAZ-005: a restart or a power dip does not silently cancel an alarm nobody has acknowledged.

## Verification

Test: restart the monitor during an unacknowledged alert and confirm the buzzer resumes.
