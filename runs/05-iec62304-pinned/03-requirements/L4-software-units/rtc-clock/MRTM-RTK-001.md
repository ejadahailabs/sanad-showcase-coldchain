---
id: "MRTM-RTK-001"
type: "rtc-clock"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LGI-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# RTC clock second

## Description

The RTC clock unit shall return the UTC second read from the real-time clock, refreshed once per second.

## Rationale

Contract: 10-src/firmware/components/rtc_clock/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).
