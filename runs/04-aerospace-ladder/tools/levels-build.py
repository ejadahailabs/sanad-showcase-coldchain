#!/usr/bin/env python3
"""MODEL-LEVELS builder — does from .ejadah/rew/framework.yaml what Sanad cannot yet (F-125, F-126).
Usage (repo root):
  python3 tools/levels-build.py templates   one Sanad requirement template per node below the system
  python3 tools/levels-build.py spec OUT    the create-path spec for tools/author-requirements.cjs
  python3 tools/levels-build.py markers     add the leaf ids to the existing @implements / @verifies markers and SP rows
  python3 tools/levels-build.py index       06-design/<node-path>/INDEX.md for every node
Every write is idempotent. DRAFT — needs Masood's review."""
import json, pathlib, re, sys, yaml
import fwload  # framework.yaml + tools/levels.yaml (run-local fields, 2026-09-29)
ROOT = pathlib.Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
from levels_data import REQS

FW = fwload.load()
NODES = {n["name"]: n for n in FW["nodes"]}
LEAVES = set(FW["leaves"])
PREFIX = {n["prefix"]: n["name"] for n in FW["nodes"] if isinstance(n["prefix"], str)}
for n in FW["nodes"]:
    if isinstance(n["prefix"], list): PREFIX.update({p: n["name"] for p in n["prefix"]})

def node_of(rid):  # MRTM-ALM-001 -> alarm
    return PREFIX[rid.rsplit("-", 1)[0]]

def label(n): return n.get("title", n["name"]).replace("-", " ")

CLASS_WHY = {
    "C": "Class C (IEC 62304 §4.3): a failure of this {kind} can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.",
    "hardware": "Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.",
    "display-item": "Stays class C (IEC 62304 §4.3): it carries two risk controls that have no other signal — calibration due (SAF-012, HAZ-004) and band limits at power-up (SAF-016, HAZ-007). Segregating it would not lower its class (ADR-0034).",
    "usb-item": "Class B (IEC 62304 §4.3), one below its parent logging (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (IEC 62304 §5.3.5): (1) it reads the ring only through the log item's read-only accessor and refuses every host write (USI-002); (2) it runs in its own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) it owns no data another item reads; (4) the supervisor's task watchdog catches a hang; (5) every record read carries a CRC-32. Weakness, said plainly: FreeRTOS on this processor gives no memory protection between tasks, so (1)–(3) rest on design and static analysis (assumption A-43, risk R-19). ADR-0034.",
}

def why(n):
    if n["kind"] == "hardware-part": return CLASS_WHY["hardware"]
    return CLASS_WHY.get(n["name"], CLASS_WHY["C"].format(kind=n["kind"].replace("-", " ")))

TEMPLATE = """---
# MODEL-LEVELS: one template per node of .ejadah/rew/framework.yaml (node `{name}`, kind `{kind}`).
id: ""
type: "{name}"
status: "draft"
priority: "medium"
author: ""
created: ""
modified: ""
tags: []
uplinks: []
safetyClass: ""
derived: false
{impl}rew:
  label: "{label} requirement"
  idPrefix: "{prefix}"
  order: {order}
  folder: "03-requirements/{path}"
  roles:
{roles}    "safetyClass": dal
  choices:
    status: ["draft", "review", "approved", "obsolete"]
    priority: ["low", "medium", "high", "critical"]
  required: ["## Description", "## Rationale"]
  readOnly: ["id"]
---

# Requirement Name

## Description

TODO

## Rationale

TODO

## Verification

TODO

## Safety

TODO
"""

def templates():
    order = 10
    for n in FW["nodes"]:
        if n["kind"] in ("context", "system"): continue
        sw = n["kind"] == "software-item"
        t = TEMPLATE.format(name=n["name"], kind=n["kind"], label=label(n).capitalize(), prefix=n["prefix"], order=order,
                            path=n["path"], impl='implemented_by: []\n' if sw else "",
                            roles='    "implemented_by": implements\n' if sw else "")
        (ROOT / f".ejadah/rew/templates/{n['name']}.md").write_text(t); order += 1
        d = ROOT / "03-requirements" / n["path"]; d.mkdir(parents=True, exist_ok=True)
        rd = d / "README.md"
        if not rd.exists():
            rd.write_text(f"# {label(n).capitalize()} — {n['kind'].replace('-', ' ')} node\n\nRequirements of the `{n['name']}` node "
                          f"(`{n['prefix']}-NNN`), each derived from its parent node `{n['parent']}`. Model and pictures: "
                          f"`06-design/{n['path']}/INDEX.md`. Framework: `.ejadah/rew/framework.yaml`.\n")
    print(f"templates: {order - 10}")

def spec(out):
    rows = []
    for rid, parents, title, text, rationale, verify, *_ in REQS:
        n = NODES[node_of(rid)]
        rows.append([rid, n["name"], parents, title, text, rationale, verify, None, why(n), n["class"]])
    pathlib.Path(out).write_text(json.dumps(rows, ensure_ascii=False, indent=1))
    print(f"spec: {len(rows)} rows -> {out}")

def add_ids(line, ids, tag):
    m = re.match(rf"(\s*/\*\s*@{tag}\s+)(.*?)(\s*\*/.*)$", line)
    have = m.group(2).split()
    return m.group(1) + " ".join(have + [i for i in ids if i not in have]) + m.group(3)

def markers():
    impl, ver, sp = {}, {}, {}
    for rid, *_, im, ve in REQS:
        for f, ln in im: impl.setdefault((f, ln), []).append(rid)
        for v in ve:
            if isinstance(v, str): sp.setdefault(v, []).append(rid)
            else: ver.setdefault(v, []).append(rid)
    n = 0
    for (f, ln), ids in impl.items():
        p = ROOT / "10-src/firmware/components" / f; L = p.read_text().split("\n")
        assert "@implements" in L[ln - 1], (f, ln, L[ln - 1]); L[ln - 1] = add_ids(L[ln - 1], ids, "implements"); p.write_text("\n".join(L)); n += 1
    for (f, fn), ids in ver.items():
        p = ROOT / "10-src" / f; L = p.read_text().split("\n")
        i = next(k for k, l in enumerate(L) if l.startswith(f"void {fn}("))
        j = next(k for k in range(i - 1, -1, -1) if "@verifies" in L[k])
        assert i - j <= 2, (f, fn); L[j] = add_ids(L[j], ids, "verifies"); p.write_text("\n".join(L)); n += 1
    p = ROOT / "11-verification/procedures/system-procedures.md"; L = p.read_text().split("\n")
    for k, l in enumerate(L):
        c = l.split("|")
        if len(c) > 3 and c[1].strip() in sp:
            have = c[3].split(); c[3] = " " + " ".join(have + [i for i in sp[c[1].strip()] if i not in have]) + " "; L[k] = "|".join(c); n += 1
    p.write_text("\n".join(L))
    print(f"markers: {n} lines touched")

if __name__ == "__main__":
    cmd = sys.argv[1]
    {"templates": templates, "markers": markers}.get(cmd, lambda: None)()
    if cmd == "spec": spec(sys.argv[2])
    if cmd == "index":
        import levels_index; levels_index.main()
