---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `display`, kind `subsystem`).
id: ""
type: "display"
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
  label: "Display requirement"
  idPrefix: "MRTM-DSP"
  order: 12
  folder: "03-requirements/mrtm/display"
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
