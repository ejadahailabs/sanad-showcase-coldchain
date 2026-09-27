---
id: "MRTM-SYS-015"
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

# Event log capacity

## Description

The monitor shall retain 10000 events in the event log.

## Rationale

Event Log Capacity in the data dictionary covers one year of heavy use.

## Verification

Test: write 10000 events and read them all back.
