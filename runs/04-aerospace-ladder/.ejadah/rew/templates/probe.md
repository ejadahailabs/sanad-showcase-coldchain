---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `probe`, kind `hardware-part`).
id: ""
type: "probe"
status: "draft"
priority: "medium"
author: ""
created: ""
modified: ""
tags: []
uplinks: []
safetyClass: ""
derived: false
rew:
  label: "Probe requirement"
  idPrefix: "MRTM-PRB"
  order: 16
  folder: "03-requirements/mrtm/sensing/probe"
  roles:
    "safetyClass": dal
  choices:
    status: ["draft", "review", "approved", "obsolete"]
    priority: ["low", "medium", "high", "critical"]
  required: ["## Description", "## Rationale"]
  readOnly: ["id"]
---

# Requirement Name

## Description

TODO

## Rationale

TODO

## Verification

TODO

## Safety

TODO
