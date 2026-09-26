---
id: "MRTM-SAF-005"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "C"
derived: false
---

# Log power loss

## Description

The monitor shall log the power loss event within 1 s of mains power loss.

## Rationale

Risk control for hazard 'unexplained gap in the history'.

## Verification

Test: remove mains power and read the logged event.
