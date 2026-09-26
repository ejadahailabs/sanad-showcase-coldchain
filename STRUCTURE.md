# Folder structure — where each phase writes

```
dogfood-fridge/
  .ejadah/rew/config.yaml   written by Sanad Setup (Phase 0) — do not create by hand
  CLAUDE.md PROMPT.md DOGFOOD-STATE.md FINDINGS.md ASSUMPTIONS.md RISKS.md OPEN-QUESTIONS.md
  docs/project/             charter, scope, stakeholders            (0, MANUAL)
  docs/conops/              ConOps documents, Mermaid allowed        (1)
  data-dictionary/          glossary terms Sanad resolves            (0)
  requirements/<kind>/      one file per requirement, allocator ids  (2)
  reviews/                  review rounds + own checklists           (3)
  baselines/                frozen sets + drift reports              (2b, 11)
  design/system|hardware|software|views/   SysML v2 model + views    (4, 6, 7, 8)
  adr/                      one ADR per decision                     (all)
  safety/                   hazards, FMEA, FTA                       (5, MANUAL)
  hardware/                 HDD, BOM, power budget, pin map          (6, mostly MANUAL)
  src/firmware|config|test/ code with @implements / @verifies        (8, 9)
  verification/strategy|cases|procedures|results|evidence/           (10, 10b)
  impact/                   impact + drift reports                   (11)
  assessment/               the Sanad assessment                     (12)
```

Rule: Setup (Phase 0) may rename or move any of these; the config.yaml it writes wins, and Claude moves the READMEs to match. Each folder's README says what belongs there and in which phase.
