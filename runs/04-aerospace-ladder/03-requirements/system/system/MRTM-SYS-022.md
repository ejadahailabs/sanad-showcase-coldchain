---
id: "MRTM-SYS-022"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-004"]
safetyClass: "C"
derived: false
---

# Log capacity warning

## Description

The monitor shall show the log capacity warning on the display when the event log holds 9000 events.

## Rationale

Review round 1, thread T13: staff must be told before history can be lost; what happens at 10000 is the data-retention ADR (Phase 4).

## Verification

Test: preload 8999 events, add one, confirm the warning appears.
