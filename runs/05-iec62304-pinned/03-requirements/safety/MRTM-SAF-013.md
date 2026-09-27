---
id: "MRTM-SAF-013"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "C"
hazard: ["HAZ-005","HAZ-003"]
derived: false
---

# Alarm on total power loss

## Description

The backup alarm circuit shall sound the buzzer for 60 s or more after the loss of both mains and battery power.

## Rationale

Risk control for HAZ-005 (power loss): a monitor that dies quietly is taken for a monitor that is fine; a power-fail alarm is the IEC 60601-1-8 practice. Stored energy value EE-REVIEW (decision record 0013).

## Safety

Mitigates HAZ-005 and HAZ-003: a stored-energy capacitor keeps the backup alarm sounding after all power is gone, so a dead monitor is announced.

## Verification

Test: remove mains and battery together and time the buzzer sound; pass at 60 s or more, 5 trials.
