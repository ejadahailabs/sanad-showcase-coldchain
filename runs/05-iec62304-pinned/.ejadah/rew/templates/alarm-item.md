---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `alarm-item`, level 3 `software-item`).
id: ""
type: "alarm-item"
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
  label: "Alarm item requirement"
  idPrefix: "MRTM-ALI"
  order: 14
  folder: "03-requirements/L3-software-items/alarm-item"
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
