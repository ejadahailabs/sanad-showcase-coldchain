---
id: "MRTM-SAF-015"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-004"]
safetyClass: "C"
hazard: ["HAZ-006"]
derived: false
---

# Diverse signal for buzzer fault

## Description

The monitor shall flash the red indicator at 4 Hz within 5 s of the buzzer fault declaration.

## Rationale

Risk control for HAZ-006: when the buzzer is broken a second, different channel must say so; the red indicator does not share the display bus (decision record 0010).

## Safety

Mitigates HAZ-006: a faster red flash is a second, independent way of telling staff the monitor cannot sound.

## Verification

Test: force the buzzer fault and measure the red indicator frequency and delay with a photodiode; pass at 4 Hz ± 0.4 Hz within 5 s.
