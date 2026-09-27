---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `buzzer`, kind `hardware-part`).
id: ""
type: "buzzer"
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
  label: "Buzzer requirement"
  idPrefix: "MRTM-BZR"
  order: 20
  folder: "03-requirements/mrtm/alarm/buzzer"
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
