---
id: "MRTM-SAF-010"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
hazard: ["HAZ-003"]
derived: false
allocated_to: []

implemented_by: []
---

# Watchdog tied to the alarm service

## Description

The monitor shall stop the watchdog service pulses within 2 s of the alarm service missing its 1 s cycle.

## Rationale

Risk control for HAZ-003: a firmware that runs but whose alarm service is stuck must also trip the backup alarm (decision record 0013). ISO 14971 cl. 7.1 b.

## Safety

Mitigates HAZ-003: the watchdog is fed only by the alarm service, so the backup alarm also covers the case where the processor runs but the alarm job has stopped.

## Verification

Test: suspend the alarm service with a test hook and measure the time from the missed cycle to the last service pulse on the watchdog line; pass at 2 s or less.
