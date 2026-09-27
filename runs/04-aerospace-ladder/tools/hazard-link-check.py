#!/usr/bin/env python3
"""Hazard <-> control links are stated twice: the `hazard:` field of each safety
requirement (what Sanad's safety engine reads) and the `dependency mitigates...`
lines of 06-design/library/MrtmSafety.sysml (what the model shows). Sanad does
not compare them (FINDINGS F-49), so this does. Exit 1 on any difference."""
import json, re, sys
from pathlib import Path
root = Path(__file__).resolve().parent.parent
md = set()
for f in (root / "03-requirements/safety").glob("MRTM-SAF-*.md"):
    m = re.search(r'^hazard: (\[.*\])$', f.read_text(), re.M)
    md |= {(f.stem, h) for h in json.loads(m.group(1))} if m else set()
model = set()
for frm, to in re.findall(r"dependency mitigates\w+ from ([^;]*?) to '(HAZ-\d+)';", (root / "06-design/library/MrtmSafety.sysml").read_text()):
    model |= {(r, to) for r in re.findall(r"'([^']+)'", frm)}
for name, diff in (("in Markdown only", md - model), ("in SysML only", model - md)):
    for r, h in sorted(diff): print(f"{name}: {r} -> {h}")
print(f"{len(md)} links in Markdown, {len(model)} in SysML, {len(md ^ model)} differ")
sys.exit(1 if md ^ model else 0)
