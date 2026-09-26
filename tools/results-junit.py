#!/usr/bin/env python3
"""Write result rows in the format Sanad's results producer reads (JUnit XML, one file per runner, under
11-verification/results/<level>/) from what actually ran: Unity output files and the system procedure
runner's trace. Rows Sanad joins on the case id `classname.name` (unit/integration) or the bare SP id.
Every suite carries tester, date, build and evidence as properties (stage-5 style row facts).
Usage (repo root): python3 tools/results-junit.py <build-sha> <date> <unity-out-dir> <sp01-trace>"""
import csv, pathlib, re, sys
from xml.sax.saxutils import quoteattr as q
ROOT = pathlib.Path(__file__).resolve().parent.parent
sha, date, outdir, trace = sys.argv[1], sys.argv[2], pathlib.Path(sys.argv[3]), pathlib.Path(sys.argv[4])
TESTER = "DOGFOOD-5 (agent, no independence)"
RES = ROOT / "11-verification/results"

def suite(name, level, cases, evidence, env):
    fails = sum(1 for c in cases if c[2] == "fail"); skips = sum(1 for c in cases if c[2] == "blocked")
    props = "".join(f'\n    <property name="{k}" value={q(v)}/>' for k, v in
                    (("tester", TESTER), ("date", date), ("build", sha), ("environment", env), ("evidence", evidence)))
    body = ""
    for cls, name_, verdict, msg in cases:
        attr = (f' classname={q(cls)}' if cls else "") + f' name={q(name_)}'
        inner = {"pass": "", "fail": f"\n    <failure message={q(msg)}/>", "blocked": f"\n    <skipped message={q(msg)}/>"}[verdict]
        body += f"\n  <testcase{attr} time=\"0\">{inner}\n  </testcase>" if inner else f"\n  <testcase{attr} time=\"0\"/>"
    xml = (f'<?xml version="1.0" encoding="UTF-8"?>\n<testsuite name={q(name)} tests="{len(cases)}" failures="{fails}" '
           f'errors="0" skipped="{skips}" timestamp="{date}T00:00:00">\n  <properties>{props}\n  </properties>{body}\n</testsuite>\n')
    (RES / level).mkdir(parents=True, exist_ok=True)
    (RES / level / f"{name}.xml").write_text(xml)
    return len(cases), fails, skips

tot = {}
for out in sorted(outdir.glob("test_*.out")):
    stem = out.stem; level = "integration" if stem.startswith("test_int_") else "unit"
    cases = []
    for line in out.read_text().splitlines():
        m = re.match(r"^(.*?):(\d+):(test_\w+):(PASS|FAIL|IGNORE)(?::\s*(.*))?$", line)
        if m: cases.append((stem, m.group(3), {"PASS": "pass", "FAIL": "fail", "IGNORE": "blocked"}[m.group(4)], m.group(5) or ""))
    ev = f"11-verification/evidence/{level}/{stem}.out"
    n, f, s = suite(stem, level, cases, ev, "host: gcc 15.2 + Unity v2.6.1 + hal_host stubs")
    tot.setdefault(level, [0, 0, 0]); tot[level] = [a + b for a, b in zip(tot[level], (n, f, s))]

# System: SP-01-H ran on the host; every bench / inspection procedure is blocked in this run (A-30, A-36).
t = trace.read_text()
ok = "RESULT PASS" in t
failed = [l for l in t.splitlines() if l.startswith("CHECK") and " FAIL " in l]
cases = [("", "SP-01-H", "pass" if ok else "fail", "; ".join(failed)[:300])]
for r in csv.DictReader(open(ROOT / "11-verification/cases/verification-cases.csv")):
    if r["Level"] == "system" and r["Case"] != "SP-01-H":
        why = "IFU not written yet" if r["Case"] == "SP-14" else "needs the target bench (ESP32-S3 board + instruments); not available in this run (A-30, A-36)"
        cases.append(("", r["Case"], "blocked", why))
n, f, s = suite("system-procedures", "system", cases, "11-verification/evidence/system/SP-01-H-sim_main-excursion.log", "host dry run (SP-01-H); bench cases blocked")
tot["system"] = [n, f, s]
for lv, (n, f, s) in tot.items(): print(f"results {lv}: {n} rows, pass {n - f - s}, fail {f}, blocked {s}")
