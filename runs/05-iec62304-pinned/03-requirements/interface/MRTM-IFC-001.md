---
id: "MRTM-IFC-001"
type: "interface"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
derived: false
---

# Probe bus

## Description

The monitor shall read the temperature probe over a 1-Wire bus.

## Rationale

DS18B20-class digital probe (Phase 6 assumption).

## Verification

Inspection: bus capture of one sample.
