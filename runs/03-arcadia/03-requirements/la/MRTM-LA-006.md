---
id: "MRTM-LA-006"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
derived: false
---

# Alarm high-priority auditory pattern

## Description

The alarm logical component shall sound the confirmed excursion alarm as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s.

## Rationale

Derived from the standard, not from a stakeholder: IEC 60601-1-8 high-priority auditory alarm signal (§6.3.3, table 3); source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition). The design today sounds a continuous tone (MRTM-SYS-003 as built) — delta D-2 in 13-assessment/iec60601-1-8-check.md. NOT YET DECOMPOSED OR IMPLEMENTED: owner decision Q-20.

## Verification

Test (planned): SP-06 with a sound recorder; pulse count and interval.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
