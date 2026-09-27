---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `backup-alarm`, kind `assembly`).
id: ""
type: "backup-alarm"
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
  label: "Backup alarm requirement"
  idPrefix: "MRTM-BKA"
  order: 22
  folder: "03-requirements/mrtm/alarm/backup-alarm"
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
