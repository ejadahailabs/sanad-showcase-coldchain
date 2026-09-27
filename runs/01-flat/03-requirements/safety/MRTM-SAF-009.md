---
id: "MRTM-SAF-009"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
hazard: ["HAZ-003"]
derived: false
---

# Backup alarm on firmware silence

## Description

The backup alarm circuit shall sound the buzzer within 10 s of the last watchdog service pulse from the firmware.

## Rationale

Risk control for HAZ-003 (silent failure): the alarm must not depend only on the one processor (decision record 0013, Q-12 assumed yes A-18). ISO 14971 cl. 7.1 b (protective measure); IEC 60601-1-8 frame.

## Safety

Mitigates HAZ-003: a hardware timer outside the processor sounds the buzzer when the firmware stops, so a hung or dead processor is heard instead of silent. Independent of the software path (decision record 0013).

## Verification

Test: stop the firmware (hold the processor in reset) and time from the last service pulse on the watchdog input to buzzer sound; pass at 10 s or less, 10 trials.
