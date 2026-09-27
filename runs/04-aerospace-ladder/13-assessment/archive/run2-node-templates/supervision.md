---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `supervision`, kind `subsystem`).
id: ""
type: "supervision"
status: "draft"
priority: "medium"
author: ""
created: ""
modified: ""
tags: []
uplinks: []
safetyClass: ""
derived: false
rew:
  label: "Supervision requirement"
  idPrefix: "MRTM-SUP"
  order: 15
  folder: "03-requirements/mrtm/supervision"
  roles:
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
