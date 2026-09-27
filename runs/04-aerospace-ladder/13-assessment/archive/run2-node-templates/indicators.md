---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `indicators`, kind `hardware-part`).
id: ""
type: "indicators"
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
  label: "Indicators requirement"
  idPrefix: "MRTM-IND"
  order: 21
  folder: "03-requirements/mrtm/alarm/indicators"
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
