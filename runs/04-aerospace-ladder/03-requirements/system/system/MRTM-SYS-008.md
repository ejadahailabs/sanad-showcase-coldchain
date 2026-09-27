---
id: "MRTM-SYS-008"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-FUN-004"]
safetyClass: "C"
derived: false
---

# Log excursion start

## Description

The monitor shall log the excursion start event with the UTC time stamp at 1 s resolution.

## Rationale

The history is built from the event log.

## Verification

Test: confirm an excursion and read the logged start event.
