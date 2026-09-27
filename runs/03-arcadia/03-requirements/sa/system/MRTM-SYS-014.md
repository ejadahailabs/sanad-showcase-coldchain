---
id: "MRTM-SYS-014"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-006"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Read-only event log

## Description

The monitor shall restrict the user access to the event log to read-only.

## Rationale

US-6: the record must be trustworthy.

## Verification

Test: attempt to write, delete and rename log entries over USB.
