# Folder structure — numbered in the order the product is developed

```
dogfood-fridge/
  .ejadah/rew/config.yaml        written by Sanad Setup (Phase 0) — never by hand
  CLAUDE.md PROMPT.md DOGFOOD-STATE.md FINDINGS.md ASSUMPTIONS.md RISKS.md OPEN-QUESTIONS.md
  00-project/                    charter, scope, stakeholders               Phase 0  (MANUAL)
  01-data-dictionary/            glossary terms Sanad resolves              Phase 0
  02-conops/                     ConOps documents, Mermaid allowed here     Phase 1
  03-requirements/<kind>/        one file per requirement, allocator ids    Phase 2
  03-requirements/mrtm/<node-path>/  node requirements MRTM-<NODE>-NNN     MODEL-LEVELS
  04-baselines/                  frozen sets + drift reports                Phase 2b, 11
  05-reviews/                    review rounds + own checklists             Phase 3
  06-design/DECOMPOSITION.md     the decomposition story — read first      MODEL-LEVELS
  06-design/context/             top node: stakeholder needs, use cases    MODEL-LEVELS
  06-design/mrtm/<subsystem>/<leaf>/   one folder per node: Node*.sysml, INDEX.md, pictures/
  06-design/system|hardware|software/  solution library (parts, units, states), no satisfy lines   Phase 4, 6, 7, 8
  06-design/views/               every view (Sanad keeps them in one folder, F-128) + rendered/
  06-design/packages/            Sanad's requirement package + per-node packages (per-node/)
  07-adr/                        one ADR per decision                       every phase
  08-safety/01…06                ISO 14971 order: analysis → evaluation → control → residual → overall → report   Phase 5, MODEL-LEVELS
  09-hardware/                   HDD, BOM, power budget, pin map            Phase 6  (mostly MANUAL)
  10-src/firmware|config|test/   code with @implements / @verifies          Phase 8, 9
  11-verification/strategy|cases|procedures|results|evidence/               Phase 10, 10b
  12-impact/                     impact + drift reports                     Phase 11
  13-assessment/                 the Sanad assessment                       Phase 12
```

Rule: Setup (Phase 0) may rename or move any of these; the config.yaml it writes wins, and Claude moves the READMEs to match. ADRs sit at 07 because the first ones are written in Phase 0 and the folder is used by every phase after.

Decomposition rules: `.ejadah/rew/framework.yaml` (MagicGrid default, IEC 62304 / 60601-1 flavour); checked by `python3 tools/level-check.py`.
