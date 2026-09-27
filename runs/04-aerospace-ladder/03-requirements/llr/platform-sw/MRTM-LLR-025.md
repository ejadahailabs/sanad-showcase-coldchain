---
id: "MRTM-LLR-025"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-023","MRTM-HLR-019"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Power-up sequence

## Description

app_power_up shall restore the alarm, read the clock and the band, enter fail-safe with the buzzer on when the band load fails, and enter monitoring only when the power-up tests pass.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 36.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
