#!/usr/bin/env python3
"""RUN-03-ARCADIA: rewrite run-2 node ids (MRTM-ALM-002 …) to this run's layer ids (MRTM-LA-002 …) in every text
file of the run, using the allocator's own log (03-requirements/allocation-log.json). The SA ids came out identical.
Usage (run folder): python3 tools/remap-ids.py [dirs…]. Prints the files touched and any node id left unmapped."""
import json, pathlib, re, sys
m = {k: v for k, v in json.load(open("03-requirements/allocation-log.json")).items() if k.startswith("MRTM-") and k != v}
pat = re.compile(r"\bMRTM-(?:" + "|".join(sorted({k.split("-")[1] for k in m})) + r")-\d{3}\b")
left, n = set(), 0
for d in sys.argv[1:]:  # never the allocation log itself (its keys ARE the run-2 ids)
    for f in pathlib.Path(d).rglob("*"):
        if f.name == "allocation-log.json" or not f.is_file() or f.suffix not in (".md", ".c", ".h", ".sysml", ".csv", ".yaml", ".py", ".txt", ".json", ".xml"): continue
        s = f.read_text(errors="strict"); t = pat.sub(lambda x: m.get(x.group(0)) or left.add(x.group(0)) or x.group(0), s)
        if t != s: f.write_text(t); n += 1
print(f"remap: {n} files rewritten; unmapped: {sorted(left) or 'none'}")
