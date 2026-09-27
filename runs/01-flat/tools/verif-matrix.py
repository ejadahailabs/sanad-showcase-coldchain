#!/usr/bin/env python3
"""Build 11-verification/cases/verification-cases.csv — the matrix Sanad reads (producers.verification) —
from the sources that hold the truth: the `/* @verifies <ids> */` markers above each Unity test function
(Sanad reads such markers only in pytest files, F-93) and the index table of the system procedures.
Case ids of tests are `<file stem>.<function>`, the JUnit `classname.name` Sanad joins results on.
Usage (repo root): python3 tools/verif-matrix.py [--check]"""
import csv, glob, io, re, subprocess, sys, pathlib
ROOT = pathlib.Path(__file__).resolve().parent.parent
OUT = ROOT / "11-verification/cases/verification-cases.csv"
AUTHOR = "DOGFOOD-5 (agent, no independence)"
COLS = ["Case", "Title", "Verifies", "Level", "Category", "Procedure", "Setup", "Expected", "Pass criterion", "Author", "At commit"]
sha = subprocess.run(["git", "rev-parse", "HEAD"], cwd=ROOT, capture_output=True, text=True).stdout.strip()
rows, undeclared = [], []

def tests(path, level):
    ids, notes = [], []
    for line in (ROOT / path).read_text().splitlines():
        m = re.match(r"\s*/\*\s*@verifies\s+(.*?)\s*\*/", line)
        if m: ids += m.group(1).split(); continue
        if line.startswith("/*") and not line.startswith("/* test_"): notes.append(line.strip("/* ").rstrip("*/ ").strip()); continue
        m = re.match(r"void (test_\w+)\(void\)", line)
        if m:
            case = f"{pathlib.Path(path).stem}.{m.group(1)}"
            title = notes[-1] if notes else m.group(1)[5:].replace("_", " ")
            if ids:
                rows.append({"Case": case, "Title": title, "Verifies": " ".join(dict.fromkeys(ids)), "Level": level, "Category": "",
                             "Procedure": f"Unity: {path}::{m.group(1)}", "Setup": "host build (make test), stub hardware reset per test",
                             "Expected": "", "Pass criterion": "every TEST_ASSERT holds (Unity PASS)", "Author": AUTHOR, "At commit": sha})
            else:
                undeclared.append(case)
        if not line.startswith("/*"): ids, notes = ([], []) if re.match(r"void test_", line) or line.strip() == "}" else (ids, notes)

for f in sorted(glob.glob(str(ROOT / "10-src/firmware/components/*/test/test_*.c"))): tests(pathlib.Path(f).relative_to(ROOT), "unit")
for f in sorted(glob.glob(str(ROOT / "10-src/test/integration/test_*.c"))): tests(pathlib.Path(f).relative_to(ROOT), "integration")
for line in (ROOT / "11-verification/procedures/system-procedures.md").read_text().splitlines():
    c = [x.strip() for x in line.strip().strip("|").split("|")]
    if len(c) == 8 and re.match(r"SP-\d+(-H)?$", c[0]):
        rows.append({"Case": c[0], "Title": c[1], "Verifies": c[2], "Level": c[3], "Category": c[4],
                     "Procedure": f"11-verification/procedures/system-procedures.md#{c[0].lower()}", "Setup": f"environment {c[5]}; {c[6]} min",
                     "Expected": "", "Pass criterion": c[7], "Author": AUTHOR, "At commit": sha})

buf = io.StringIO(); w = csv.DictWriter(buf, COLS, lineterminator="\n"); w.writeheader(); w.writerows(rows)
if "--check" in sys.argv:
    same = OUT.exists() and [r[:-1] for r in csv.reader(io.StringIO(OUT.read_text()))] == [r[:-1] for r in csv.reader(io.StringIO(buf.getvalue()))]
    print("matrix: up to date" if same else "matrix: STALE — run tools/verif-matrix.py"); sys.exit(0 if same else 1)
OUT.write_text(buf.getvalue())
lv = {}
for r in rows: lv[r["Level"]] = lv.get(r["Level"], 0) + 1
print(f"matrix: {len(rows)} cases {lv}; tests with no @verifies (not declarable, F-96): {undeclared}")
