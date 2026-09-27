---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `battery`, kind `hardware-part`).
id: ""
type: "battery"
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
  label: "Battery requirement"
  idPrefix: "MRTM-BAT"
  order: 31
  folder: "03-requirements/mrtm/power/battery"
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
