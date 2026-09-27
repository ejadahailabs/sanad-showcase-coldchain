---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `sensing`, kind `subsystem`).
id: ""
type: "sensing"
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
  label: "Sensing requirement"
  idPrefix: "MRTM-SEN"
  order: 10
  folder: "03-requirements/mrtm/sensing"
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
