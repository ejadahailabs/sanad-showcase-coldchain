---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `diagnostics`, level 4 `software-unit`).
id: ""
type: "diagnostics"
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
  label: "Diagnostics requirement"
  idPrefix: "MRTM-DGN"
  order: 30
  folder: "03-requirements/L4-software-units/diagnostics"
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
