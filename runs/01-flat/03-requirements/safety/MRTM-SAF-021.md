---
id: "MRTM-SAF-021"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-005"]
safetyClass: "C"
hazard: ["HAZ-006","HAZ-008"]
derived: false
---

# I2C bus recovery

## Description

The monitor shall reset the I2C bus within 1 s of an I2C transaction timeout.

## Rationale

Risk control for HAZ-006 and HAZ-008 found by the FMEA (FM-11): the display and the clock share one bus, and one hung transfer must not freeze both.

## Safety

Mitigates HAZ-006 and HAZ-008: a stuck bus is cleared by the firmware instead of leaving a frozen screen and a stopped clock.

## Verification

Test: hold the data line low with a test fixture for 2 s, release it, and measure the time to the next good display update; pass at 1 s or less after release.
