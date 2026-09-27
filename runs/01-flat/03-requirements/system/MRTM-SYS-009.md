---
id: "MRTM-SYS-009"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-STK-005"]
safetyClass: "C"
derived: false
---

# Log excursion end

## Description

The monitor shall log the excursion end event with the peak temperature of the excursion at 0.1 °C resolution.

## Rationale

Auditors need the worst value to judge the stock.

## Verification

Test: end an excursion with a known peak and read the logged end event.
