---
id: "MRTM-CFG-001"
type: "config-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SVI-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Config manager CRC refusal

## Description

The configuration manager unit shall return MRTM_ERR_CRC and no band when the stored record fails its CRC-32 check.

## Rationale

Contract: 10-src/firmware/components/config_mgr/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `supervisor-item` (IEC 62304 §4.3 — a unit takes its item's class).
