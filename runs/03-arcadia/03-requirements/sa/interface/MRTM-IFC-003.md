---
id: "MRTM-IFC-003"
type: "interface"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-014"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# USB readout

## Description

The monitor shall present the event log to the USB host as a read-only mass-storage volume.

## Rationale

A-10: readout needs no special software.

## Verification

Test: connect to a USB host and attempt to write.
