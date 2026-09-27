---
id: "MRTM-SRS-019"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-017","MRTM-SYS-017"]
safetyClass: "C"
derived: false
---

# SRS band integrity

## Description

When a stored allowed band fails its CRC-32 check, the software system shall disable that **Allowed Band**.

## Rationale

§5.2.3 risk control (HAZ-007): no default band in firmware (ADR-0024).

## Verification

Test: integration INT-03.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
