---
id: "MRTM-ALI-002"
type: "alarm-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-006"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item buzzer on

## Description

The alarm item shall switch the buzzer drive on within one 1 s alarm cycle of the confirmed excursion report.

## Rationale

Alarm task period 1 s (ADR-0019).

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
