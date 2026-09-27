---
id: "MRTM-SYS-020"
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

# Clock drift

## Description

The monitor shall keep the UTC time with a drift of 2 s per day or less.

## Rationale

Review round 1, thread T10: every event carries a UTC time stamp; an audit trail needs a clock that keeps time. How the clock is set stays open (Q-10).

## Verification

Test: run 7 days against a reference clock and confirm the difference is 14 s or less.
