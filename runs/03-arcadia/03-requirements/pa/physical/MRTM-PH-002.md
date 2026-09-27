---
id: "MRTM-PH-002"
type: "physical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-008"]
safetyClass: "C"
derived: false
---

# Backup alarm hold-up

## Description

The backup alarm shall drive the buzzer for 60 s or more after the loss of both mains and battery power.

## Rationale

Its own stored energy; nothing else in the monitor is powered then.

## Verification

Test: SP-03.

## Safety

Class C (IEC 62304 §4.3): a failure of this assembly can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
