---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `log-item`, kind `software-item`).
id: ""
type: "log-item"
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
  label: "Log item requirement"
  idPrefix: "MRTM-LGI"
  order: 29
  folder: "03-requirements/mrtm/logging/log-item"
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
