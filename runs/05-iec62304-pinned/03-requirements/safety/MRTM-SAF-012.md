---
id: "MRTM-SAF-012"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
hazard: ["HAZ-004"]
derived: false
---

# Probe calibration due

## Description

The monitor shall show the probe calibration due message on the display 365 days after the probe calibration date.

## Rationale

Risk control for HAZ-004 (sensor drift): drift inside the plausible range cannot be seen by the range check; a yearly calibration catches it (decision record 0012). ISO 14971 cl. 7.1 c (information for safety).

## Safety

Mitigates HAZ-004: the monitor cannot see its own slow drift, so it tells staff when the probe is due for a check against a reference thermometer.

## Verification

Test: set the stored calibration date 365 days before the clock time and check the message appears within 10 s of power-up.
