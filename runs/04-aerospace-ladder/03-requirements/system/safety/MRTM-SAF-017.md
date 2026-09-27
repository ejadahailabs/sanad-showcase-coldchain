---
id: "MRTM-SAF-017"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-017", "MRTM-SOB-002"]
safetyClass: "A"
hazard: ["HAZ-007"]
derived: false
---

# Band integrity check

## Description

The monitor shall sound the buzzer within 5 s of power-up when the stored allowed band fails its CRC-32 check.

## Rationale

Risk control for HAZ-007: a corrupted limit must stop the monitor from silently watching the wrong band. ISO 14971 cl. 7.1 b.

## Safety

Mitigates HAZ-007: the stored limits carry a checksum, and a bad checksum alarms instead of running with a wrong band.

## Verification

Test: corrupt one byte of the stored band and power up; pass when the buzzer sounds within 5 s.
