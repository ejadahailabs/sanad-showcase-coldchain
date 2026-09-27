---
id: "MRTM-LLR-018"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-016"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Pulse gate

## Description

wdt_kicker_step shall pulse the external watchdog only while the heartbeat changed within the last 2000 ms and the pulses are not held.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: wdt_kicker.c line 18.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
