# Dogfood fridge — one product, five ways to build it

**In one line:** we built the same small medical fridge monitor five times, once for each popular "systems engineering" method, using our own tool Sanad each time — like cooking one recipe in five different kitchens to see which kitchen actually helps the cook.

> **Status:** Sanad is a build in progress, not a finished product. Every number below is a finding the tool made about *itself*, kept exactly as it came out — good and bad. This repository is that evidence, made public so anyone can check our claims instead of taking our word for them.

## What is a "fridge monitor" and why does it matter here

A medical fridge monitor is a small computer that watches the temperature inside a fridge that stores medicine or vaccines, and sounds an alarm before the medicine spoils. It is a real, well-understood example of "safety-critical software" — software where a bug can hurt someone — small enough to build in a few days, but with the same kind of paperwork (requirements, risk analysis, tests, traceability) that a real medical device or aircraft part needs.

We picked one product and held it still, then changed only *how the work is organised* — the "framework" — five times, so any difference between runs is the framework's doing, not the product's.

## The five runs

| # | Folder | Framework — how the work was broken into levels | What it's like |
|---|---|---|---|
| 01 | `runs/01-flat/` | None. One flat list, requirements grouped only by type (safety, performance, …) | Building without floor plans — everything in one room |
| 02 | `runs/02-magicgrid/` | MagicGrid — "black box, then white box", repeated for every part | Russian nesting dolls — open one, find a smaller version inside |
| 03 | `runs/03-arcadia/` | Arcadia — five fixed layers (why → what → how in ideas → with which parts → what we ship) | An architect's drawing set: site plan, floor plan, structural plan, then the parts list |
| 04 | `runs/04-aerospace-ladder/` | Aerospace style (ARP4754A / DO-178C) — aircraft → system → item, high-level then low-level requirements inside each item | How an aircraft part is signed off: one rung of the ladder at a time |
| 05 | `runs/05-iec62304-pinned/` | Medical-device style (IEC 62304) — device → software system → software items → software units, a fixed four floors | The exact shape a medical-device auditor expects to see |

Run 01 is the deliberate "before" picture — no method at all — kept untouched forever so every later run can be compared against it honestly.

## What Sanad is

**Sanad is the Engineering Intelligence (EI) Platform that generates, validates and governs the digital thread** — the digital thread being the unbroken chain of "why we need this → what we built → does it work", so anyone can follow one link all the way from a customer need to a line of tested code. Sanad is made by Ejadah AI Labs. It is still being built; nothing here claims otherwise.

## What Sanad did by itself, what a person had to do, and what only a mouse-click could do

Each run's `FINDINGS.md` and `13-assessment/SUMMARY.md` sort every step into three buckets:

| Bucket | Meaning | Everyday version |
|---|---|---|
| **Sanad did (headless)** | The tool's own command line did the work, unattended | A dishwasher — load it, it runs itself |
| **Manual** | A person had to write or fix something by hand because the tool has no feature for it yet | Hand-washing a pot the dishwasher can't reach |
| **UI-only / click list** | The step only exists as a button in the editor, so it had to be recorded as "press this, check that" for a person to do later | A light switch — you have to be there to flip it |

`COMPARE.md` lays the five runs side by side on this and on every other measure (how many pictures, how many requirements, how deep the levels go, whether the "why → how" chain is unbroken). We do not repeat its numbers here so there is only one place they can go out of date — read `COMPARE.md` for the table.

## Where the findings live

Every gap Sanad found in itself — 118 in run 01 alone, more in every later run — is one row in that run's `FINDINGS.md`, each with an id like `F-047` or `F-3-012`. **All of them, across all five runs, are collected with a status column in [`FINDINGS-ALL.md`](./FINDINGS-ALL.md)** — open, fixed, or won't-fix, and why. Findings are published raw, each with a status; nothing is curated out.

## How to read one run in about 10 minutes

1. Open the run's `DOGFOOD-STATE.md` — the top line says exactly where the run stands.
2. Open `13-assessment/SUMMARY.md` for the story: what got built, the headline numbers, and the ten biggest gaps.
3. Skim `FINDINGS.md` — every row is one small "Sanad could not do this yet, here's why, here's the id".
4. Skim `CLICK-LIST.md` — the handful of things that needed an actual person at a keyboard, and how long they took.
5. If you want the pictures: open the `.svg` files under the run's design folder, or render them yourself (next section).

## How to render a picture yourself

Sanad draws its architecture diagrams ("views") as SVG files using its own picture stylesheet. That stylesheet is Sanad's own code, so it is **not** included in this public repository — each run's `tools/picture.css` is a stub that says so, and `tools/render-view.sh` will refuse to run and print the same message until you replace the stub:

```
render-view.sh: copy Sanad's picture.css here first: <run>/tools/picture.css
```

To render a picture: get your own copy of Sanad, copy its `dist/design/picture.css` over the stub file, then run `bash tools/render-view.sh <view.svg> <out.png>` from inside the run folder. Without a Sanad build, you can still open the `.svg` files directly in a browser — they just won't have Sanad's colours and fonts.

## Licensing and third-party notices

This repository's licence has **not been decided yet** — that is Masood's call, not ours to make for him. Two plain options are laid out in [`LICENSING-OPTIONS.md`](./LICENSING-OPTIONS.md). Names of third-party tools and specifications used across the runs (Unity, GoogleTest, ESP-IDF, OMG SysML v2) are listed, with no licence text copied, in [`THIRD-PARTY-NOTICES.md`](./THIRD-PARTY-NOTICES.md). No `LICENSE` file exists yet on purpose.

## The honesty paragraph

Sanad is a build in progress, not a finished, complete, qualified, or production-ready tool. Every score, count and "could not do this yet" in this repository is a finding the tool produced about itself, kept as it came out — we did not soften the bad ones or polish the good ones. The fridge monitor itself is synthetic: no real patient, device or vendor data was used anywhere in these five runs.

## The pages at the top

| Page | What it answers |
|---|---|
| `COMPARE.md` | One table: how the five runs did, side by side. |
| `LESSONS.md` | Per run: what the framework made easy, what it made hard, what Sanad could not do, what we'd keep. |
| `FINDINGS-ALL.md` | Every finding from every run, in one place, with a status. |
| `RUNS-PLAN.md` | The original plan and layout Masood set for these runs. |
| `shared/` | The one set of stakeholder needs, domain numbers and glossary every run starts from — never edited, only copied. |
| `CLAUDE.md` | Working rules for the AI workers who add a run. |

## The tags (bookmarks in the project's history)

| Tag | Marks |
|---|---|
| `REQ-BL-1`, `REQ-BL-2`, `REQ-BL-3` | Requirement baselines Sanad wrote — a frozen snapshot, like a dated photo |
| `dogfood-run-1` | Run 1 exactly as it ended |
| `dogfood-run-2` | Run 2 at the end of its MODEL-LEVELS phase |
| `dogfood-runs-restructured` | The point this five-run layout (`runs/` + `shared/` + these top pages) was put in place |

## Who made this

Sanad and this dogfood repository are made by **Ejadah AI Labs**. Sanad is the Engineering Intelligence Platform that generates, validates and governs the digital thread; this repository is Sanad testing itself, in public, on a small honest example.

## Links

- This repository: https://github.com/ejadahailabs/sanad-showcase-coldchain
- Companion knowledge base: https://github.com/ejadahailabs/sanad-knowledge (private, on request)
