#!/usr/bin/env python3
"""Requirement -> code summary read from Sanad's own outputs (Phase 9): the 'Implemented by' column of
report-traceability-audit.csv and the not-implemented suppressions Sanad's gate honoured. MANUAL counting
only (F-86: Sanad prints no reached/not-reached count). Usage (repo root): code-trace-summary.py <sanad-run-dir>"""
import csv, io, re, sys, pathlib
run = pathlib.Path(sys.argv[1])
impl = {}
for block in (run / "report-traceability-audit.csv").read_text().split("\n# ")[1:]:
    rows = list(csv.reader(io.StringIO(block.split("\n", 1)[1])))
    if not rows or "Implemented by" not in rows[0]: continue
    k = rows[0].index("Implemented by")
    for r in rows[1:]:
        if len(r) > k and r[0].startswith("MRTM-"):
            impl.setdefault(r[0], set()).update(x.strip() for x in r[k].split(";") if x.strip())
cfg = pathlib.Path(".ejadah/rew/config.yaml").read_text()
by_design = re.findall(r"rule: not-implemented\n\s+path: 03-requirements/\w+/(MRTM-[A-Z]+-\d+)\.md", cfg)
reached = sorted(i for i, s in impl.items() if s)
missing = sorted(i for i, s in impl.items() if not s)
stk = [i for i in missing if "-STK-" in i]
other = [i for i in missing if i not in by_design and i not in stk]
print(f"| Requirements (Sanad traceability audit) | {len(impl)} |\n|---|---|")
print(f"| reached by code (non-empty 'Implemented by') | {len(reached)} |")
print(f"| not reached — hardware / labelling, in Sanad's accepted not-implemented list | {len(by_design)}: {', '.join(by_design)} |")
print(f"| not reached — stakeholder level (reached through their children; type not code-bearing) | {len(stk)} |")
print(f"| not reached — unexplained | {len(other)}{': ' + ', '.join(other) if other else ''} |")
sys.exit(1 if other else 0)
