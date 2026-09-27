---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `power-item`, level 3 `software-item`).
id: ""
type: "power-item"
status: "draft"
priority: "medium"
author: ""
created: ""
modified: ""
tags: []
uplinks: []
safetyClass: ""
derived: false
implemented_by: []
rew:
  label: "Power item requirement"
  idPrefix: "MRTM-PWI"
  order: 18
  folder: "03-requirements/L3-software-items/power-item"
  roles:
    "implemented_by": implements
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
