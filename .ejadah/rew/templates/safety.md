---
# Everything above the `rew:` block is the frontmatter a new requirement starts
# with, and these values are its defaults. Add or remove fields freely: Sanad has
# no schema of its own and reads whatever this template declares.
id: ""
type: "safety"
status: "draft"
priority: "medium"
author: ""
created: ""
modified: ""
tags: []
uplinks: []
safetyClass: ""
hazard: []
derived: false

# The `rew:` block configures Sanad. It is stripped when a requirement is created.
rew:
  label: "Safety Requirement"
  idPrefix: "MRTM-SAF"
  order: 1
  folder: "03-requirements/safety"

  # Conventional names are inferred: status, priority, author, tags, uplinks,
  # derived, and the "## Description" / "## Rationale" / "## Verification" /
  # "## Safety" / "## Security" sections. Sanad reports every inference it makes,
  # so nothing is guessed silently.
  #
  # Declare a role below only to override an inference, or to name something Sanad
  # cannot guess. A field with no role is stored and shown, never analysed.
  roles:
    "safetyClass": dal
    "hazard": hazard

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

## Safety

TODO

## Verification

TODO
