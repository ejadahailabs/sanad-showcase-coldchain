---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `usb-item`, kind `software-item`).
id: ""
type: "usb-item"
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
  label: "Usb item requirement"
  idPrefix: "MRTM-USI"
  order: 30
  folder: "03-requirements/mrtm/logging/usb-item"
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
