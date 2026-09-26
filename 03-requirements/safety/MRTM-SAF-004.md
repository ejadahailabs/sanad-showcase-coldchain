---
id: "MRTM-SAF-004"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
derived: false
---

# Watchdog restart

## Description

The monitor shall restart the monitoring software within 2 s of a software watchdog timeout.

## Rationale

Risk control for hazard 'firmware hang stops monitoring' (IEC 62304 cl. 5.3.6).

## Verification

Test: force a firmware hang and time the restart.
