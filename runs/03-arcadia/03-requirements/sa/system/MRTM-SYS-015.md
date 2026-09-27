---
id: "MRTM-SYS-015"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-005"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Event log capacity

## Description

The monitor shall retain 10000 events in the event log.

## Rationale

Event Log Capacity in the data dictionary covers one year of heavy use.

## Verification

Test: write 10000 events and read them all back.
