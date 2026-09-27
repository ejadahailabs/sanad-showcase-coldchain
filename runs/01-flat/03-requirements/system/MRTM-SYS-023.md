---
id: "MRTM-SYS-023"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-008"]
safetyClass: "C"
derived: false
---

# Power restore event

## Description

The monitor shall log the power restore event with the UTC time stamp at 1 s resolution.

## Rationale

Review round 1, thread T17: without the restore event an auditor cannot tell how long the fridge ran on battery.

## Verification

Test: remove and restore mains and confirm both events with time stamps in the log.
