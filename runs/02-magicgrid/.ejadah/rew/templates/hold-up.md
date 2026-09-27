---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `hold-up`, kind `hardware-part`).
id: ""
type: "hold-up"
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
  label: "Hold up requirement"
  idPrefix: "MRTM-BKH"
  order: 25
  folder: "03-requirements/mrtm/alarm/backup-alarm/hold-up"
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
