---
id: "MRTM-IFC-002"
type: "interface"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006"]
safetyClass: "A"
derived: false
---

# Acknowledge input

## Description

The monitor shall debounce the acknowledge button input for 50 ms.

## Rationale

A momentary contact bounces; one press must be one acknowledgement.

## Verification

Test: apply a bouncing contact and count acknowledgements.
