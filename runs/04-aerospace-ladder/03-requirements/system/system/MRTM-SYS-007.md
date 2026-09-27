---
id: "MRTM-SYS-007"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-FUN-003"]
safetyClass: "A"
derived: false
---

# Warning stays while excursion is open

## Description

The monitor shall keep the excursion warning on the display for the duration of the excursion.

## Rationale

Silencing the buzzer must not hide the problem.

## Verification

Test: acknowledge an alert and confirm the warning stays until the temperature returns to band.
