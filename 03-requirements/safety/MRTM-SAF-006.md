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
derived: false
---

# Alert survives restart

## Description

The monitor shall restore the unacknowledged alert state within 2 s of the restart.

## Rationale

Risk control for hazard 'a restart silences an open alert'.

## Verification

Test: restart the monitor during an unacknowledged alert and confirm the buzzer resumes.
