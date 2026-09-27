---
id: "MRTM-SAF-004"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001", "MRTM-SOB-001"]
safetyClass: "A"
hazard: ["HAZ-003"]
derived: false
---

# Watchdog restart

## Description

The monitor shall restart the monitoring software within 2 s of a software watchdog timeout.

## Rationale

Risk control for hazard 'firmware hang stops monitoring' (IEC 62304 cl. 5.3.6).

## Safety

Mitigates HAZ-003 (silent failure): the on-chip watchdog restarts hung software; the backup alarm (MRTM-SAF-009) covers the case where restart does not help.

## Verification

Test: force a firmware hang and time the restart.
