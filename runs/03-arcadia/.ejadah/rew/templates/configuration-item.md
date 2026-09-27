---
# RUN-03-ARCADIA: layer template for Arcadia layer `epbs` (.ejadah/rew/framework.yaml). Each requirement derives from the layer above.
id: ""
type: "configuration-item"
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
  label: "Configuration Item (EPBS)"
  idPrefix: "MRTM-CI"
  order: 4
  folder: "03-requirements/epbs"
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
