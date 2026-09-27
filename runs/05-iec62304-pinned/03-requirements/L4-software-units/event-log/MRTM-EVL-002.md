---
id: "MRTM-EVL-002"
type: "event-log"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-LGI-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Event log time stamp

## Description

The event log unit shall stamp each record with the UTC second, at 1 s resolution, that the RTC clock unit returns at the time of the post.

## Rationale

Contract: event_log_post reads rtc_clock_now once.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).
