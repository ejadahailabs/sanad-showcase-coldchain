---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `display-item`, kind `software-item`).
id: ""
type: "display-item"
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
  label: "Display item requirement"
  idPrefix: "MRTM-DSI"
  order: 27
  folder: "03-requirements/mrtm/display/display-item"
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
