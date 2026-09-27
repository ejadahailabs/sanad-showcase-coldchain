---
# RUN-03-ARCADIA: layer template for Arcadia layer `pa` (.ejadah/rew/framework.yaml). Each requirement derives from the layer above.
id: ""
type: "physical"
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
  label: "Physical Requirement (PA hardware)"
  idPrefix: "MRTM-PH"
  order: 3
  folder: "03-requirements/pa/physical"
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
