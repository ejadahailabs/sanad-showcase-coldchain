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

## Run 03 — Arcadia (five fixed layers)

### What the pattern made easy
- One question per layer: why (clinic, no device) → what (one box, 9 functions) → how in ideas (6 logical parts) → with which parts → what we ship. A reader always knows where to start.
- The operational layer found the needs' real shape: 4 capabilities and 6 activities, before any device existed.
- The fixed stack made the tooling simple: one satisfy file per layer, one transition table per layer pair, 6 checks, 0 violations.
- EPBS gave release and configuration a home: the firmware image got its own requirement and inspection case (IEC 62304 §5.8 moved from "no" to "partly").

### What it made hard
- No place for a deeper branch: the backup alarm board's own parts sit beside it in PA; their parents had to be lifted (F-3-002).
- Two kinds of requirement in one layer (hardware and software in PA) look like two levels to Sanad (F-3-003).
- Budgets live on functional chains, not on one function: 3 logical requirements derive across the transition (the 5 s alarm is split between sensing and alarm, F-3-014).
- Configuration items are records, not behaviours; writing them as requirements trips the quality rules (F-3-008).

### What Sanad could not do
- Read the framework, know layers, check "satisfy own layer", "derive from the layer above" or "transitions complete" (F-3-001, F-3-010).
- Show a transition: the allocation matrix is two-sided logical × physical; Arcadia has four transitions (F-3-006); part-to-part allocates read as requirement ids (F-3-005).
- Run the OMG Pilot on files in any order: names resolve only backwards and one error hides a whole file (F-3-004).
- Notice that the model's safety class and the requirement's class disagreed (USB item, inherited from run 2, F-3-007).

### What we would keep
- The five-layer INDEX pages and `06-design/DECOMPOSITION.md` as the reading order.
- Transition tables per layer pair (generated) — the reviewer's "where did it go" answer.
- `tools/level-check.py` rule 6 (transitions complete) and the "derive crosses the transition" report: both belong in Sanad's framework checks.
- The EPBS layer, even in other frameworks: it gives configuration management and release a place in the model.

## Run 04 — aerospace ladder
### What the pattern made easy
- A fixed ladder is easy to explain and to check: product → system → items → software design, never deeper. `level-check` needed only "one rung up" instead of run 2's per-branch tree.
- **Sanad's own words are this ladder.** Its roles `hlr` and `llr`, the uplink direction LLR → HLR → system, the native DAL scale (`do178c`, A→4 … E→0) and its test-coverage report "high-level 35 of 38 · low-level 39 of 45" all worked without inventing anything. The medical run had to hand-map classes and levels.
- "Code names one LLR" is a crisp rule: 45 code sites, 45 LLR, every test marker names the HLR / LLR it drives.
- The DAL per item turned run 2's single B-under-C argument into a readable table: one line of reason per item (08-safety/02-pssa.md).
### What it made hard
- The safety half is all by hand: FHA, PSSA, DAL per item, and the partitioning argument for lower-DAL software on one processor (no memory protection — A-4-06).
- More requirements than run 2 (177 vs 132): a function rung and an LLR per code site are new.
- Hardware items and software items need different requirement types, and Sanad binds one folder tree per type, so an item's requirements live in three trees (`hwr/`, `hlr/`, `llr/`).
- Two interconnection pictures still read poorly (floating port labels).
### What Sanad could not do
- Allow a lower DAL below a higher one with a reason: 24 `rigour-inconsistency` errors, suppressed by path (F-4-011).
- Hold an FHA, a PSSA, derived-requirement feedback or partitioning evidence (F-4-008, F-4-009); record verification by analysis (F-4-016).
- Roll implementation up the ladder: it wanted code on every system requirement until the `implements` role was left on the LLR template only (F-4-007).
- Produce the project's DO-178C documents: its accomplishment-summary, problem-report and approvals pages describe Sanad's OWN qualification, not the project (F-4-012). No MC/DC or decision coverage (F-4-014).
- Run the OMG Pilot independent of file order: 172 false errors until the library folder sorted first (F-4-006). Derive from "any requirement of the rung above" (75 warnings, F-4-002).
### What we would keep
- The fixed ladder with a DAL per item and a one-line reason — the clearest safety story of the runs so far.
- "Code traces to LLR only" and the per-level coverage numbers as the reviewer's first page.
- The DO-178C objectives index as the aerospace yardstick (yes 15 · partly 22 · no 32 at DAL A), beside run 2's IEC 62304 index.
- Sanad fits this run **better** than the medical one on vocabulary and levels, and **worse** on the safety assessment and on its own DO-178C-named reports.

## Run 05 — IEC 62304 pinned
### What the pattern made easy
- The floors ARE the clauses: device (60601-1, ISO 14971) → software system (§5.2 SRS, §5.3) → items (§4.3, §5.3.5) → units (§5.4, §5.5). An auditor asking "show me §5.4" opens one folder (`L4-software-units/`).
- Class per item is one field in the framework file, and one rule checks it: a unit takes its item's class; an item below C must name its segregation (usb-item B, ruling A-48).
- Reuse was cheap: run 2's code, tests and item/unit text dropped straight onto floors 3 and 4 — the allocator gave the same item ids, so most code markers kept working.
- Pictures stayed small (most 3–8 boxes); 12 of 20 graded B, the software modes A.

### What it made hard
- The product's own story disappears above the software: run 2's six subsystems (alarm-and-indication, power, …) mix hardware and software, and the pinned stack has no floor for them. The alarm story is now split between the SRS and ONE flat hardware item; the backup alarm (a class-C risk control) is just three parts inside it.
- One level holds very different sizes: 8 items but 12 units, and a unit level needs one template and one id prefix per unit (F-5-002).
- 45 code markers still name device ids (a jump over three floors), because Sanad's implementation check asks for them (F-5-009).

### What Sanad could not do
- Read the framework file or the pinned depth; check "parent one level up" and "class per item" (F-5-001) — our `level-check.py` did.
- Make a lower item class legal through segregation: a suppression was needed again (F-5-003).
- Draw a unit contract's functions (F-5-005), keep unused ports off a picture (F-5-006), keep a sequence to its own package (F-5-004).
- Tell floors apart: 7 "refined at several levels" warnings because it reads each type as a level (F-5-010).

### What we would keep
- **For a notified-body reader the fixed 62304 stack is clearer than run 2's recursive grid** for the software: the reader's checklist and the folder tree are the same list, and the "owed at" column falls out of the level names. For the device above the software it is weaker — it hides the subsystems where the hardware and software risk controls meet.
- So `depth: pinned` should stay a first-class option of the SAME `step` in the framework file, with each pinned level bound to its clauses (Sanad can then generate the "owed at" index). Best of both: **recursive above the software system, pinned from the software system down** — declare it per branch in one framework file.
- `level-check.py` with the two new rules (depth pinned, class per item) — selftest 9/9 — as the yardstick for any pinned framework.
