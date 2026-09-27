#!/usr/bin/env python3
"""RUN-05 builder — does from .ejadah/rew/framework.yaml what Sanad cannot yet (F-125, F-126), for the pinned IEC 62304 stack.
Usage (run folder):
  python3 tools/pinned-build.py templates   one Sanad requirement template per node below the device
  python3 tools/pinned-build.py spec OUT    the create-path spec for tools/author-requirements.cjs
  python3 tools/pinned-build.py markers     retarget run 2's code markers / SP rows (MAP) and add this run's ids
Every write is idempotent. DRAFT — needs Masood's review."""
import json, pathlib, re, sys, yaml
ROOT = pathlib.Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
from pinned_data import REQS, MAP

FW = yaml.safe_load((ROOT / ".ejadah/rew/framework.yaml").read_text())
NODES = {n["name"]: n for n in FW["nodes"]}
PREFIX = {p: n["name"] for n in FW["nodes"] for p in [n["prefix"]] if isinstance(p, str)}

def node_of(rid): return PREFIX[rid.rsplit("-", 1)[0]]

WHY = {
 "C": "Class C (IEC 62304 §4.3): a failure of this {kind} can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).",
 "hardware-item": "Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.",
 "usb-item": "Class B (IEC 62304 §4.3), one below the software system (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (§5.3.5, ADR-0034, ruling A-48): (1) read-only accessor, every host write refused (USI-002); (2) own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) owns no data another item reads; (4) task watchdog; (5) CRC-32 on every record read. Weakness: FreeRTOS here gives no memory protection between tasks (A-43, R-19).",
 "display-item": "Stays class C (§4.3): it carries two risk controls with no other signal — calibration due (SAF-012) and band limits at power-up (SAF-016) (ADR-0034).",
}
def why(n):
    if n["kind"] == "software-unit": return f"Class {n['class']}: the class of its item `{n['parent']}` (IEC 62304 §4.3 — a unit takes its item's class)."
    return WHY.get(n["name"], WHY["C"].format(kind=n["kind"].replace("-", " ")))

TEMPLATE = """---
# RUN-05: one template per node of .ejadah/rew/framework.yaml (node `{name}`, level {level} `{kind}`).
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
        if n["kind"] == "device": continue
        code = n["kind"] in ("software-item", "software-unit")
        t = TEMPLATE.format(name=n["name"], level=n["level"], kind=n["kind"], label=n["name"].replace("-", " ").capitalize(), prefix=n["prefix"],
                            order=order, path=n["path"], impl='implemented_by: []\n' if code else "",
                            roles='    "implemented_by": implements\n' if code else "")
        (ROOT / f".ejadah/rew/templates/{n['name']}.md").write_text(t); order += 1
        d = ROOT / "03-requirements" / n["path"]; d.mkdir(parents=True, exist_ok=True)
        rd = d / "README.md"
        if not rd.exists():
            rd.write_text(f"# {n['name'].replace('-', ' ').capitalize()} — level {n['level']} ({n['kind'].replace('-', ' ')})\n\n"
                          f"Requirements `{n['prefix']}-NNN`, each derived from its parent `{n['parent']}` one level up. "
                          f"Model and pictures: `06-design/{n['path']}/INDEX.md`. Framework: `.ejadah/rew/framework.yaml`.\n")
    print(f"templates: {order - 10}")

def spec(out):
    rows = [[rid, node_of(rid), parents, title, text, rat, verify, None, why(NODES[node_of(rid)]), NODES[node_of(rid)]["class"]]
            for rid, parents, title, text, rat, verify, *_ in REQS]
    pathlib.Path(out).write_text(json.dumps(rows, ensure_ascii=False, indent=1)); print(f"spec: {len(rows)} rows -> {out}")

def fix_ids(ids, extra=()):
    out = []
    for i in list(ids) + list(extra):
        for j in MAP.get(i, [i]):
            if j not in out: out.append(j)
    return out

def markers():
    impl, ver, sp = {}, {}, {}
    for rid, *_, im, ve in REQS:
        for f, ln in im: impl.setdefault(("firmware/components/" + f, ln), []).append(rid)
        for v in ve:
            if isinstance(v, str): sp.setdefault(v, []).append(rid)
            else: ver.setdefault(v, []).append(rid)
    n = 0
    tag = re.compile(r"(@(?:implements|verifies)\s+)((?:MRTM-[A-Z]+-\d+\s*)+)")
    for p in sorted((ROOT / "10-src").rglob("*")):
        if p.suffix not in (".c", ".cpp", ".h") or "/build/" in str(p): continue
        rel = str(p.relative_to(ROOT / "10-src")); L = p.read_text().split("\n"); ch = False
        for k, l in enumerate(L):
            m = tag.search(l)
            if not m: continue
            extra = impl.get((rel, k + 1), []) if "@implements" in l else []
            if "@verifies" in l:
                fn = next((re.match(r"void (\w+)\(", x).group(1) for x in L[k + 1:k + 3] if re.match(r"void (\w+)\(", x)), None)
                extra = ver.get((rel, fn), [])
            new = " ".join(fix_ids(m.group(2).split(), extra)) + (" " if m.group(2).endswith(" ") else "")
            if new != m.group(2): L[k] = l[:m.start(2)] + new + l[m.end(2):]; ch = True; n += 1
        if ch: p.write_text("\n".join(L))
    for (rel, ln) in impl: assert "@implements" in (ROOT / "10-src" / rel).read_text().split("\n")[ln - 1], (rel, ln)
    for (rel, fn) in ver: assert f"void {fn}(" in (ROOT / "10-src" / rel).read_text(), (rel, fn)
    p = ROOT / "11-verification/procedures/system-procedures.md"; L = p.read_text().split("\n")
    for k, l in enumerate(L):
        c = l.split("|")
        if len(c) > 3 and re.match(r"\s*SP-\d+", c[1]):
            new = " " + " ".join(fix_ids(c[3].split(), sp.get(c[1].strip(), []))) + " "
            if new != c[3]: c[3] = new; L[k] = "|".join(c); n += 1
    p.write_text("\n".join(L))
    left = sorted({i for f in (ROOT / "10-src").rglob("*.c*") for i in re.findall(r"MRTM-[A-Z]+-\d+", f.read_text()) if i in MAP})
    print(f"markers: {n} lines touched; run 2 ids left in code: {left or 'none'}")

if __name__ == "__main__":
    cmd = sys.argv[1]
    {"templates": templates, "markers": markers}.get(cmd, lambda: None)()
    if cmd == "spec": spec(sys.argv[2])
