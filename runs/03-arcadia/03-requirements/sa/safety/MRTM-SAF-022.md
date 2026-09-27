---
id: "MRTM-SAF-022"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-020"]
safetyClass: "C"
hazard: ["HAZ-008"]
derived: false
allocated_to: []

implemented_by: []
---

# Clock stop detection

## Description

The monitor shall log the clock fault event within 2 s of power-up when the real-time clock reports an oscillator stop.

## Rationale

Risk control for HAZ-008 found by the FMEA (FM-12, FM-13): time stamps after a clock stop are wrong, and the audit must say so (Q-10).

## Safety

Mitigates HAZ-008: records written with a wrong clock are marked, so the audit does not trust them blindly.

## Verification

Test: remove the clock coin cell, power up, and read the log; pass when the clock fault event is present within 2 s of power-up.
