---
id: "MRTM-SW-018"
type: "software"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-026","MRTM-LA-023"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Supervisor item pulses

## Description

The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat.

## Rationale

The software half of the backup chain (MRTM-SAF-010).

## Verification

Test: unit tests of wdt_kicker.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
