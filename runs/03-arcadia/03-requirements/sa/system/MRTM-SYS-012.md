---
id: "MRTM-SYS-012"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-007"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Probe fault detection

## Description

The monitor shall declare the probe fault when no sample with a correct CRC arrives for 30 s.

## Rationale

Three missed samples mean the probe cannot be trusted.

## Verification

Test: disconnect the probe and time the fault declaration.
