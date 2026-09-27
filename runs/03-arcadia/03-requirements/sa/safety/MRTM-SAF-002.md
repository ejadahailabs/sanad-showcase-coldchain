---
id: "MRTM-SAF-002"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012"]
safetyClass: "C"
hazard: ["HAZ-001"]
derived: false
allocated_to: []

implemented_by: []
---

# Probe fault raises alert

## Description

The monitor shall sound the buzzer within 5 s of the probe fault declaration.

## Rationale

Risk control for hazard 'silent loss of monitoring'.

## Safety

Mitigates HAZ-001 (excursion not detected): a probe that stops answering is alarmed, so a missing reading is never read as a good one.

## Verification

Test: disconnect the probe and time the buzzer.
