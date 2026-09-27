---
id: "MRTM-LLR-005"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# CRC-8

## Description

mrtm_crc8_maxim shall compute the Dallas/Maxim CRC-8 (reflected polynomial 0x8C, initial value 0) over the bytes given.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_crc.c line 5.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
