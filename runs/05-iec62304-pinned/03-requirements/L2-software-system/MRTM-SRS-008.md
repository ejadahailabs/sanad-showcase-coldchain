---
id: "MRTM-SRS-008"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
derived: false
---

# SRS alarm burst pattern

## Description

The software system shall drive the confirmed excursion alarm sound as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s.

## Rationale

High-priority auditory pattern (run 2 check D-2). source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition). Not yet decomposed to an item or implemented: a real, visible gap (Q-20).

## Verification

Test: to be written with the item requirement (bench SP-06 sound capture).

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
