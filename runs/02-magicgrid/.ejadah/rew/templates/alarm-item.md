---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `alarm-item`, kind `software-item`).
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
  order: 19
  folder: "03-requirements/mrtm/alarm/alarm-item"
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
