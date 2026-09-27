---
id: "MRTM-HWI-007"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-009"]
safetyClass: "C"
derived: false
---

# Backup alarm timeout

## Description

The hardware item shall drive the buzzer from the backup alarm within 10 s of the last watchdog service pulse.

## Rationale

Risk control for HAZ-003 and HAZ-005 that needs no processor (ADR-0013): timer 9 s ± 0.9 s + driver 100 ms.

## Verification

Test: SP-03.

## Safety

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.
