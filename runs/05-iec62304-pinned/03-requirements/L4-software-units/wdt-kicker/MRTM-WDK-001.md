---
id: "MRTM-WDK-001"
type: "wdt-kicker"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SVI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Watchdog kicker stop

## Description

The watchdog kicker unit shall stop the service pulses when the alarm heartbeat has not changed for 2 s.

## Rationale

Contract: 10-src/firmware/components/wdt_kicker/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `supervisor-item` (IEC 62304 §4.3 — a unit takes its item's class).
