---
id: "MRTM-SVI-001"
type: "supervisor-item"
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

# Supervisor item pulse stop

## Description

The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat.

## Rationale

Hands over to the backup alarm (HAZ-003).

## Verification

Test: unit tests of wdt_kicker.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
