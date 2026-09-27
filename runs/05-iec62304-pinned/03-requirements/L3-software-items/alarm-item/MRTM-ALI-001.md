---
id: "MRTM-ALI-001"
type: "alarm-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item early signal

## Description

The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report.

## Rationale

Low-priority visual signal (run 2 check D-1: colour still to confirm, A-42).

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
