---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `supervisor-item`, level 3 `software-item`).
id: ""
type: "supervisor-item"
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
  label: "Supervisor item requirement"
  idPrefix: "MRTM-SVI"
  order: 19
  folder: "03-requirements/L3-software-items/supervisor-item"
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
