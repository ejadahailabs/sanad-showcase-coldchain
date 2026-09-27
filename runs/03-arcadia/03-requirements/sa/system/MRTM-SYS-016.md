---
id: "MRTM-SYS-016"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-008"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Battery operation

## Description

The monitor shall switch to the internal battery within 100 ms of mains power loss.

## Rationale

US-8: monitoring must continue through a power cut.

## Verification

Test: remove mains power and confirm sampling continues.
