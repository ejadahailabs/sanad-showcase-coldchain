---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `alarm-mgr`, level 4 `software-unit`).
id: ""
type: "alarm-mgr"
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
  label: "Alarm mgr requirement"
  idPrefix: "MRTM-AMG"
  order: 22
  folder: "03-requirements/L4-software-units/alarm-mgr"
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
