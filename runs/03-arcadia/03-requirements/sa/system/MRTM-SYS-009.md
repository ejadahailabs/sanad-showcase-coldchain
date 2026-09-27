---
id: "MRTM-SYS-009"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-005"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Log excursion end

## Description

The monitor shall log the excursion end event with the peak temperature of the excursion at 0.1 °C resolution.

## Rationale

Auditors need the worst value to judge the stock.

## Verification

Test: end an excursion with a known peak and read the logged end event.
