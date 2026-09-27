---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `mcu`, kind `hardware-part`).
id: ""
type: "mcu"
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
  label: "Mcu requirement"
  idPrefix: "MRTM-MCU"
  order: 34
  folder: "03-requirements/mrtm/supervision/mcu"
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
