---
# RUN-03-ARCADIA: layer template for Arcadia layer `la` (.ejadah/rew/framework.yaml). Each requirement derives from the layer above.
id: ""
type: "logical"
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
  label: "Logical Requirement (LA)"
  idPrefix: "MRTM-LA"
  order: 2
  folder: "03-requirements/la"
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
