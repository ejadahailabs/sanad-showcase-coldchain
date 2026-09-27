# shared/ — the truth every run starts from

**In one line:** one product, one set of needs; each run only changes *how* it breaks the product into parts — like building the same house from different floor plans.

| File | What it holds |
|---|---|
| `stakeholder/MRTM-STK-001…008.md` | The 8 stakeholder needs — what the clinic wants, in their words. The canonical copy. |
| `domain-figures.md` | Every domain number, with its source or assumption id. |
| `glossary.md` | The shared words (part 1) and the named settings with units (part 2). |

## Rules
- Runs **03 and later start from here.** Copy these files into the run; do not edit them here.
- This folder is **read-only truth.** A change to a need is an owner decision, then it lands here first.
- Run 2 keeps its own copies inside `runs/02-magicgrid/`. They are the **same text as at tag `dogfood-run-2`**.
- Run 1 (`runs/01-flat/`) is older and has its own wording. It is kept as it was.
