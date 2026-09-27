---
id: "MRTM-AMG-004"
type: "alarm-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALI-004"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm manager heartbeat

## Description

The alarm manager unit shall add 1 to its heartbeat counter on every alarm_mgr_step call.

## Rationale

Contract: the counter wraps at 2^32.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).
