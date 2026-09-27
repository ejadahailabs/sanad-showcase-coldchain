---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `excursion-item`, kind `software-item`).
id: ""
type: "excursion-item"
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
  label: "Excursion item requirement"
  idPrefix: "MRTM-EXI"
  order: 18
  folder: "03-requirements/mrtm/alarm/excursion-item"
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
