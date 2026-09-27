# Dogfood fridge — one product, several ways to break it down

**In one line:** we build the same medical fridge monitor again and again, each time with a different design framework, to learn which way Sanad (a build in progress) handles best — like cooking one recipe in several kitchens to see which kitchen helps most.

## The runs

| Run | Folder | Framework (how the product is broken into parts) | Status |
|---|---|---|---|
| 01 | `runs/01-flat/` | None — one flat model, pictures grouped by kind | Done. Kept exactly as tag `dogfood-run-1`. The honest "before". |
| 02 | `runs/02-magicgrid/` | MagicGrid — black box, then white box, repeated per part | Gate closed (0 errors). Pictures being judged (SYSML-EVAL). |
| 03 | `runs/03-arcadia/` | Arcadia — five fixed layers | Planned |
| 04 | `runs/04-aerospace-ladder/` | Aircraft → system → item, HLR → LLR | Planned |
| 05 | `runs/05-iec62304-pinned/` | Medical fixed stack: system → items → units | Planned |

## The pages at the top

| Page | What it answers |
|---|---|
| `COMPARE.md` | One table: how each run did, side by side. |
| `LESSONS.md` | Per run: what was easy, what was hard, what Sanad could not do, what we keep. |
| `RUNS-PLAN.md` | Masood's order and the layout. Read-only. |
| `shared/` | The truth every run starts from: stakeholder needs, domain numbers, glossary. |
| `CLAUDE.md` | Rules for workers who add a run. |

## How to read one run

1. Open the run's `DOGFOOD-STATE.md`. The top line says where it stands.
2. Open `13-assessment/SUMMARY.md` (run 1) or `06-design/DECOMPOSITION.md` (run 2) for the story.
3. `FINDINGS.md` lists every gap in Sanad the run found. Each is a small "Sanad could not do this yet".
4. `CLICK-LIST.md` lists the few things only a person at a keyboard can check.

Each run is self-contained. Its tools run from inside its own folder.

## The click lists (Masood's keyboard time)

| Run | Clicks | Minutes | File |
|---|---:|---:|---|
| 01 | 29 | 143 | `runs/01-flat/CLICK-LIST.md` |
| 02 | 32 (run 1's 29 + 3 new) | 171 | `runs/02-magicgrid/CLICK-LIST.md` |

Run 2's list replaces run 1's for the same product. Do run 2's list; skip run 1's.

## The tags (bookmarks in history)

| Tag | Marks |
|---|---|
| `REQ-BL-1`, `REQ-BL-2`, `REQ-BL-3` | Requirement baselines Sanad wrote (a frozen snapshot, like a dated photo) |
| `dogfood-run-1` | Run 1 as it ended |
| `dogfood-run-2` | Run 2 at the end of MODEL-LEVELS |
| `dogfood-runs-restructured` | This layout: `runs/` + `shared/` + these pages |

Synthetic data only. No real patient, device or vendor data.
