---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `sensor-item`, level 3 `software-item`).
id: ""
type: "sensor-item"
status: "draft"
priority: "medium"
author: ""
created: ""
modified: ""
tags: []
uplinks: []
safetyClass: ""
derived: false
implemented_by: []
rew:
  label: "Sensor item requirement"
  idPrefix: "MRTM-SNI"
  order: 12
  folder: "03-requirements/L3-software-items/sensor-item"
  roles:
    "implemented_by": implements
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
