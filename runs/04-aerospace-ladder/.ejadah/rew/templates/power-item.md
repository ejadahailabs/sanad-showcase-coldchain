---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `power-item`, kind `software-item`).
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
  order: 33
  folder: "03-requirements/mrtm/power/power-item"
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
