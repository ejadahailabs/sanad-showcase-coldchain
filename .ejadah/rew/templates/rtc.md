---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `rtc`, kind `hardware-part`).
id: ""
type: "rtc"
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
  label: "Rtc requirement"
  idPrefix: "MRTM-RTC"
  order: 28
  folder: "03-requirements/mrtm/logging/rtc"
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
