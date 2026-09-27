---
id: "MRTM-LLR-022"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-019"]
safetyClass: "A"
implemented_by: []
derived: false
---

# CRC-32

## Description

mrtm_crc32 shall compute the IEEE CRC-32 (reflected polynomial 0xEDB88320, initial and final XOR 0xFFFFFFFF).

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_crc.c line 16.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
