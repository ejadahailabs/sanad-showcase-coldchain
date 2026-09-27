---
id: "MRTM-IFC-002"
type: "interface"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Acknowledge input

## Description

The monitor shall debounce the acknowledge button input for 50 ms.

## Rationale

A momentary contact bounces; one press must be one acknowledgement.

## Verification

Test: apply a bouncing contact and count acknowledgements.
