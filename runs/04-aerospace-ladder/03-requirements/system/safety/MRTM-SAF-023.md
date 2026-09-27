---
id: "MRTM-SAF-023"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003", "MRTM-SOB-001"]
safetyClass: "A"
hazard: ["HAZ-003"]
derived: false
---

# Backup alarm power-up test

## Description

The monitor shall test the backup alarm within 15 s of power-up.

## Rationale

Risk control for HAZ-003 found by the FMEA (FM-23): the backup alarm is a second channel that is silent until needed, so a broken one would stay hidden (latent fault). ISO 14971 cl. 7.1 b.

## Safety

Mitigates HAZ-003: the firmware withholds the watchdog pulses at start-up and checks, through the buzzer sense line, that the backup alarm really sounds.

## Verification

Test: power up 5 times with the backup alarm output disconnected; pass when the monitor declares the backup alarm fault within 15 s each time, and with it connected when the buzzer sense line confirms the backup sound.
