# Compare the runs

**In one line:** same fridge monitor, different frameworks; this table shows which one a reviewer can follow best — like comparing maps of one city.

| Run | Framework | Nodes / levels | Depth | Pictures | Requirements per level | Derive chain complete | Class-C artifacts with a Sanad home | Findings | Click minutes | Could a reviewer follow the story? |
|---|---|---|---|---|---|---|---|---|---|---|
| 01 flat | none (grouped by kind) | 1 system block; requirement types, no levels | 1 | 21 drawn, grouped by kind (blocks, interfaces, states) | 70: STK 8 · SYS 24 · SAF 23 · PRF 4 · ENV 4 · MNT 3 · IFC 4 — all on one level | no — STK → SYS uplinks only; one block satisfies every level | partly — 26 artifacts: yes 8 · partly 5 · no 13 | 118 (F-001…F-118) | 143 (29 clicks) | No. Masood: "I am unable to see a proper decomposition story." |
| 02 magicgrid | MagicGrid, black box / white box per node | 28 nodes (19 leaves): context → system → 6 subsystems → leaves; backup alarm one step deeper | 4 below context | 23 views, one set per node, at most 12 boxes each | 132: STK 8 · system 62 · subsystem 26 · below 36 | yes — `level-check` 0 violations; alarm path STK-002 → unit test unbroken; Sanad itself cannot check it yet (F-124, F-134) | partly — IEC 62304, 28 clauses: yes 13 · partly 2 · no 13 | 22 new (F-119…F-140) | 171 (32 clicks) | Not yet judged — SYSML-EVAL is reading the 23 pictures now. The alarm path reads end to end. |
| 03 arcadia | Arcadia | planned | planned | planned | planned | planned | planned | planned | planned | planned |
| 04 aerospace-ladder | aircraft → system → item | planned | planned | planned | planned | planned | planned | planned | planned | planned |
| 05 iec62304-pinned | IEC 62304 pinned stack (+ IEC 60601-1 device, ISO 14971 at the device) | 23 nodes on 4 fixed levels: device → hardware item + software system → 8 items → 12 units | 4 (pinned) | 20 views, at most 12 boxes each; looked at and graded A 1 · B 12 · C 4 · D 3 | 146: L1 device 70 (STK 8 · device 62) · L2 32 (SRS 19 · hardware item 13) · L3 items 21 · L4 units 23 | yes — `level-check` 0 violations (selftest 9/9); alarm path STK-002 → SYS-002 → SRS-003 → EXI-002 → LEV-002 → code → unit test unbroken; Sanad itself cannot check it (F-5-001) | partly — same 28 clauses: yes 13 · partly 2 · no 13, now with the level that owes each clause | 16 (F-5-001…F-5-016) | 45 (4 clicks) | Yes, floor by floor: each 62304 clause has one folder that owes it. Weakest pictures: software-to-hardware and unit contracts (D). |

## Notes on the numbers
- **Class-C yardstick differs.** Run 1 counted 26 artifacts. Run 2 counted 28 IEC 62304 clauses. Runs 03+ use run 2's clause index so rows compare.
- **Gate at the end.** Run 1: 17 warnings, kept on purpose (bench results cannot exist without a board). Run 2: 0 errors, 167 warnings (46 of them the same missing bench results).
- **Sources:** run 1 — `runs/01-flat/13-assessment/SUMMARY.md`, `class-c-checklist.md`, `CLICK-LIST.md`. Run 2 — `runs/02-magicgrid/DOGFOOD-STATE.md`, `13-assessment/iec62304-compliance-index.md`, `alarm-path-trace.md`, `sanad-runs/phase-12b/gate.txt`.
