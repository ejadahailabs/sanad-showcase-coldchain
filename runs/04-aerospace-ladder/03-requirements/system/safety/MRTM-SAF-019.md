---
id: "MRTM-SAF-019"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006", "MRTM-SOB-001"]
safetyClass: "A"
hazard: ["HAZ-006"]
derived: false
---

# Stuck acknowledge button

## Description

The monitor shall declare the button fault when the acknowledge button input stays pressed for 60 s.

## Rationale

Risk control for HAZ-006 found by the FMEA (FM-18): a jammed button must not keep the alarm silent. ISO 14971 cl. 7.1 b.

## Safety

Mitigates HAZ-006: a held button is reported as a fault instead of acting as a permanent silence; the alarm re-sounds under MRTM-SYS-019.

## Verification

Test: hold the button pressed with a clamp and measure the time to the button fault declaration; pass at 60 s ± 2 s.
