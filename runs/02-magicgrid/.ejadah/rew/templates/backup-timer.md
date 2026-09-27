---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `backup-timer`, kind `hardware-part`).
id: ""
type: "backup-timer"
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
  label: "Backup timer requirement"
  idPrefix: "MRTM-BKT"
  order: 23
  folder: "03-requirements/mrtm/alarm/backup-alarm/backup-timer"
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
