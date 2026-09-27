---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `alarm`, kind `subsystem`).
id: ""
type: "alarm"
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
  label: "Alarm and indication requirement"
  idPrefix: "MRTM-ALM"
  order: 11
  folder: "03-requirements/mrtm/alarm"
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
