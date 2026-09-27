---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `power-path`, kind `hardware-part`).
id: ""
type: "power-path"
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
  label: "Power path requirement"
  idPrefix: "MRTM-PPT"
  order: 32
  folder: "03-requirements/mrtm/power/power-path"
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
