---
id: "MRTM-SW-004"
type: "software"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-005"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item heartbeat

## Description

The alarm item shall advance its heartbeat counter once per 1 s alarm cycle.

## Rationale

The supervisor item stops the watchdog pulses when this counter stops (MRTM-SW-018), which lets the backup alarm sound.

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
