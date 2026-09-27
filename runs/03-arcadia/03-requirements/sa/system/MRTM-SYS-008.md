---
id: "MRTM-SYS-008"
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

# Log excursion start

## Description

The monitor shall log the excursion start event with the UTC time stamp at 1 s resolution.

## Rationale

The history is built from the event log.

## Verification

Test: confirm an excursion and read the logged start event.
