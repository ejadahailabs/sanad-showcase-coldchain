---
id: "MRTM-SAF-018"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-015", "MRTM-SOB-005"]
safetyClass: "C"
hazard: ["HAZ-008"]
derived: false
---

# Two copies of every record

## Description

The monitor shall write the event log record to 2 separate flash sectors within 1 s of the event.

## Rationale

Risk control for HAZ-008 (history loss): one worn or corrupted sector must not lose an excursion record (decision record 0011, R-10). ISO 14971 cl. 7.1 a.

## Safety

Mitigates HAZ-008: a second copy in another sector survives the failure of the first, and the CRC-32 (MRTM-SYS-021) says which copy is good.

## Verification

Test: corrupt one copy of 10 records and read the log over USB; pass when all 10 records arrive intact.
