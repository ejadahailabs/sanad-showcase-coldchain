---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `logging`, kind `subsystem`).
id: ""
type: "logging"
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
  label: "Logging and history requirement"
  idPrefix: "MRTM-LOG"
  order: 13
  folder: "03-requirements/mrtm/logging"
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
