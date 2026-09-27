---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `usb-item`, level 3 `software-item`).
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
  order: 17
  folder: "03-requirements/L3-software-items/usb-item"
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
