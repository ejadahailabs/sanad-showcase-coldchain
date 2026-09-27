# Lessons — one entry per run, same four headings

**In one line:** after each run we write down what the framework made easy and hard, so the next run starts smarter — like notes after each practice match.

Sanad is a build in progress. "Could not do" below means "not yet", with the finding number that asks for it.

## Run 01 — flat (no framework)

### What the pattern made easy
- Fast start. Requirements, model, code and tests all landed in one place.
- Sanad handled the requirement side well: 70 requirements, all with its own ids; quality checks caught weak words.
- One model, so every picture drew and the OMG checker passed (40 files, 0 issues).

### What it made hard
- No story from need to part. One block satisfied every requirement level at once.
- Pictures were grouped by kind (blocks, states), not by level. A reader could not tell where to start.
- Changes were hard to follow: the 5-second change clashed with 3 requirements and 30 affected items were found by hand.

### What Sanad could not do
- Impact of a new requirement showed 0 and never reached the model or hazards (F-106, F-107).
- A hazard was only an id, so hazard coverage could not drop below 100 % (F-48).
- No C/C++ test lane; test output needed converters (F-93, F-103).
- A baseline did not freeze text; reworded requirements were invisible (F-25, F-30, F-112).
- Many Class-C records had no home: problem reports, verification records, release notes (F-10, F-94, F-105, F-117).

### What we would keep
- Headless-first: every step tried through Sanad's own code before any manual file.
- The four closing lines per phase (Sanad did · proved by · manual · click only).
- The click list: one sitting for Masood at the end, never mid-run.

## Run 02 — MagicGrid (black box / white box, repeated per node)

### What the pattern made easy
- A clear story: context → system → 6 subsystems → leaves. Each node owns its pictures and its requirements.
- Every node requirement derives from its parent node, so the alarm path reads end to end (STK-002 → unit test).
- Small pictures (at most 12 boxes), each with an index page, in reading order.

### What it made hard
- Much more hand work: node structure, templates, layouts and per-node packages came from our own scripts (F-127…F-130).
- 132 requirements instead of 70; more wording to keep testable (19 rewords to close the gate).
- Mixed safety classes under one parent needed an argument and an owner decision (F-133).

### What Sanad could not do
- No framework file and no Decomposition view; levels are neither asked for nor checked (F-124, F-125, F-126).
- One parent type per requirement type, so "derive from any requirement of the parent node" cannot be declared (F-134).
- Conformance does not understand a decomposed model: 46 "outside component" + 12 "empty component" warnings (F-132).
- A stale code index kept an old error alive (F-139); moving the repository into a subfolder broke history reads (F-140).

### What we would keep
- The node tree and `tools/level-check.py` (0 violations, self-test 6 of 6) as the yardstick for runs 03+.
- The IEC 62304 clause index as the Class-C yardstick, so runs compare.
- `shared/` as the one source of needs and numbers.

## Run 03 — Arcadia
### What the pattern made easy
### What it made hard
### What Sanad could not do
### What we would keep

## Run 04 — aerospace ladder
### What the pattern made easy
### What it made hard
### What Sanad could not do
### What we would keep

## Run 05 — IEC 62304 pinned
### What the pattern made easy
### What it made hard
### What Sanad could not do
### What we would keep
