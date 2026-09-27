---
id: "MRTM-HWR-003"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012","MRTM-SAF-003"]
safetyClass: "A"
derived: false
---

# Probe scratchpad check

## Description

The sensor hardware item shall send a CRC-8 value with every scratchpad read.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PRB-003. The CRC-8 lets the alarm software item tell a bad read from a real temperature (ADR-0009).

## Verification

Inspection of a bus capture in SP-10.

## Safety

DAL A (catastrophic failure condition), assigned to `sensor-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
