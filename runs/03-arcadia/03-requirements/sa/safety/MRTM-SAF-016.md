---
id: "MRTM-SAF-016"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-017"]
safetyClass: "C"
hazard: ["HAZ-007"]
derived: false
allocated_to: []

implemented_by: []
---

# Show the band at power-up

## Description

The monitor shall show the allowed band limits on the display for 3 s at power-up.

## Rationale

Risk control for HAZ-007 (wrong limits): staff can see at every start that the monitor watches 2 °C to 8 °C. ISO 14971 cl. 7.1 c.

## Safety

Mitigates HAZ-007: wrong limits become visible to the person who starts the monitor.

## Verification

Inspection: power up 3 times and check the band limits are shown for 3 s ± 0.5 s each time.
