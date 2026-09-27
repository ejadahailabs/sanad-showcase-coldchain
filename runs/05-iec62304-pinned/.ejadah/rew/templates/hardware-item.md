---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `hardware-item`, level 2 `hardware-item`).
id: ""
type: "hardware-item"
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
  label: "Hardware item requirement"
  idPrefix: "MRTM-HWI"
  order: 10
  folder: "03-requirements/L2-hardware-item"
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
