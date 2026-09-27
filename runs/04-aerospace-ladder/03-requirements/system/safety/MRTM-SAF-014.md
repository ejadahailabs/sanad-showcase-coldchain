---
id: "MRTM-SAF-014"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003", "MRTM-SOB-001"]
safetyClass: "A"
hazard: ["HAZ-006"]
derived: false
---

# Buzzer open-circuit detection

## Description

The monitor shall declare the buzzer fault within 5 s of the buzzer drive current falling below 5 mA while the monitor drives the buzzer.

## Rationale

Risk control for HAZ-006 (annunciator failure): a broken buzzer is otherwise found only at the next power-up self-test. The 5 mA threshold is EE-REVIEW.

## Safety

Mitigates HAZ-006: the monitor checks the buzzer every time it drives it, not only at power-up.

## Verification

Test: open the buzzer wire while an alarm sounds and measure the time to the buzzer fault declaration; pass at 5 s or less.
