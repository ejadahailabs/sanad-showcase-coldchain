---
id: "MRTM-ALI-004"
type: "alarm-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-017"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item heartbeat

## Description

The alarm item shall advance its heartbeat counter once per 1 s alarm cycle.

## Rationale

The supervisor item watches this counter (SRS-017).

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
