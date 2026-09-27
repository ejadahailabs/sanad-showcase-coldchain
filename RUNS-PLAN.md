# Runs plan — one product, several frameworks, one repository (owner order 2026-09-27)

**Owner's words:** "lets create different example of same product and let them be in the repo so that it will be like a lessons learned for us. Use one Repo but multiple folders within it."

## Layout (after the MagicGrid rebuild lands)

```
README.md · LESSONS.md · COMPARE.md · RUNS-PLAN.md
shared/          stakeholder needs (MRTM-STK-*), domain figures with sources, glossary — identical for every run
runs/01-flat/            run 1 exactly as tagged dogfood-run-1 (the "before")
runs/02-magicgrid/       recursive black box / white box, per-branch depth (MODEL-LEVELS, in progress)
runs/03-arcadia/         operational → system → logical → physical → EPBS (fixed five layers)
runs/04-aerospace-ladder/ aircraft → system → item; HLR → LLR inside the item; DAL-style classes
runs/05-iec62304-pinned/ medical fixed stack: software system → software items → software units
```

## Rules
1. Every run starts from `shared/` and changes only `.ejadah/rew/framework.yaml` and what follows from it (structure, views, derived requirement levels, compliance story). Same product, same truth, different decomposition.
2. Each run keeps its own `DOGFOOD-STATE.md`, `FINDINGS.md`, `CLICK-LIST.md`, `13-assessment/`; findings are numbered per run (`F-<run>-nnn`).
3. `COMPARE.md` is one table: run × pictures · requirements per level · depth · derive-chain complete · Class-C artifacts with a Sanad home · findings · owner click minutes · what a reviewer could follow.
4. `LESSONS.md` is written per run in the same shape: what the pattern made easy · what it made hard · what Sanad could not do · what we would keep.
5. Nothing is deleted: run 1 stays as the honest "before".

## Order
1. MODEL-LEVELS finishes in place (do not move folders under a running worker).
2. RESTRUCTURE job: `git archive dogfood-run-1` → `runs/01-flat/`; `git mv` the current tree → `runs/02-magicgrid/`; extract `shared/`; write README, COMPARE (two rows), LESSONS (two entries); fix `tools/` paths; tag `dogfood-runs-restructured`.
3. Runs 03, 04, 05: one worker each, reusing `shared/` and run 2's code and tests; framework file first, then structure, views, derived levels, compliance index, pictures LOOKED at, findings, lessons entry, COMPARE row.
