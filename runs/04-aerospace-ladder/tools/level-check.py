#!/usr/bin/env python3
"""level-check (RUN-04, aerospace ladder) — the rules of .ejadah/rew/framework.yaml that Sanad does not check yet.
  1 own-node satisfy : a `satisfy` line sits in its node's folder and names that node's requirement only
  2 coverage         : every requirement is satisfied by its own node
  3 derive           : every uplink names the PARENT node's requirement (or its own node's, same rung);
                       every non-derived requirement reaches a stakeholder need; a derived one (DO-178C §5.1.2)
                       has no uplink and is named in 08-safety/02-pssa.md
  4 depth pinned     : each node sits exactly one rung below its parent; a software design only under a software item
  5 DAL              : an item / design requirement carries its node's DAL
  6 code → LLR       : every code-trace marker id in 10-src is an LLR (DO-178C §11.21)
  7 boxes            : every view's picture has <= max_boxes_per_view boxes
  8 index            : every node has INDEX.md, and it shows every picture in its pictures/ folder
The node of a requirement is its FOLDER: 03-requirements/{aircraft,system}/…, {hwr,hlr}/<item>, llr/<item> (F-4-005).
Usage (run folder): python3 tools/level-check.py [--selftest]. Exit 1 on any violation. MANUAL (run 2 F-126)."""
import pathlib, re, sys, yaml
import fwload  # framework.yaml + tools/levels.yaml (run-local fields, 2026-09-29)
ROOT = pathlib.Path(__file__).resolve().parent.parent
RUNGS = ["aircraft", "system", "item", "software-design"]

def node_of_path(rel):  # 03-requirements-relative folder parts -> node name
    if rel[0] in ("aircraft", "system"): return rel[0]
    if rel[0] in ("hwr", "hlr"): return rel[1]
    if rel[0] == "llr": return rel[1] + "-design"

def load():
    fw = fwload.load()
    reqs = {}
    for f in (ROOT / "03-requirements").rglob("MRTM-*.md"):
        s = f.read_text()
        reqs[f.stem] = {"node": node_of_path(f.relative_to(ROOT / "03-requirements").parts),
                        "up": re.findall(r'"([^"]+)"', re.search(r"^uplinks: (.*)$", s, re.M).group(1)),
                        "derived": re.search(r"^derived: true", s, re.M) is not None,
                        "dal": re.search(r'^safetyClass: "(\w*)"', s, re.M).group(1)}
    sat = []
    for f in (ROOT / "06-design").rglob("*.sysml"):
        rel = f.relative_to(ROOT / "06-design")
        if rel.parts[0] in ("views", "packages", "common"): continue
        for i, l in enumerate(f.read_text().splitlines(), 1):
            m = re.match(r"\s*satisfy '([^']+)'", l)
            if m: sat.append((str(rel.parent), m.group(1), f"{rel}:{i}"))
    views = {s.stem: s.read_text().count('<g class="nd') for s in (ROOT / "06-design/views/rendered").glob("*.svg")}
    impl = []
    for p in (ROOT / "10-src").rglob("*.c*"):
        for i, l in enumerate(p.read_text().split("\n"), 1):
            m = re.search("@" + "impl" + "ements" + r"\s+([^*]*)", l)
            if m and "MRTM-" in m.group(1): impl += [(i2, f"{p.relative_to(ROOT)}:{i}") for i2 in m.group(1).split()]
    pssa = (ROOT / "08-safety/02-pssa.md").read_text() if (ROOT / "08-safety/02-pssa.md").exists() else ""
    return fw, reqs, sat, views, impl, pssa

def check(fw, reqs, sat, views, impl, pssa, pics=None, indexes=None):
    bad = []
    nodes = {n["name"]: n for n in fw["nodes"]}
    by_path = {n["path"]: n["name"] for n in fw["nodes"]}
    # 1 + 2
    seen = set()
    for folder, rid, where in sat:
        own = by_path.get(folder)
        if own is None: bad.append(f"satisfy outside any node folder: {rid} at {where}")
        elif rid not in reqs: bad.append(f"satisfy of an unknown requirement: {rid} at {where}")
        elif reqs[rid]["node"] != own: bad.append(f"satisfy of another node's requirement: {rid} ({reqs[rid]['node']}) in node {own} at {where}")
        seen.add(rid)
    for rid, r in reqs.items():
        if r["node"] not in nodes: bad.append(f"requirement in no node folder: {rid}")
        elif rid not in seen: bad.append(f"requirement not satisfied by its node: {rid}")
    # 3
    for rid, r in reqs.items():
        me = r["node"]
        if me not in nodes: continue
        for u in r["up"]:
            if u not in reqs: bad.append(f"{rid}: derive target {u} does not exist"); continue
            if reqs[u]["node"] not in (nodes[me].get("parent"), me):
                bad.append(f"{rid}: derives from {u} of node {reqs[u]['node']}, not its parent {nodes[me].get('parent')}")
        if r["derived"]:
            if r["up"]: bad.append(f"{rid}: derived requirement with an uplink")
            if rid not in pssa: bad.append(f"{rid}: derived requirement not fed back to the safety assessment (08-safety/02-pssa.md)")
        elif nodes[me]["kind"] != "aircraft" and not r["up"]: bad.append(f"{rid}: no derive link")
    top = {x for x, r in reqs.items() if r["node"] == "aircraft" and not r["up"]}
    def reaches(x, path=()):
        if x in top: return True
        if x in path: return False
        return any(reaches(u, path + (x,)) for u in reqs.get(x, {}).get("up", []) if u in reqs)
    for x, r in reqs.items():
        if not r["derived"] and not reaches(x): bad.append(f"{x}: derive chain does not reach a stakeholder need")
    # 4
    for n in fw["nodes"]:
        p = nodes.get(n.get("parent"))
        if p is None: continue
        if RUNGS.index(n["level"]) != RUNGS.index(p["level"]) + 1: bad.append(f"node {n['name']}: rung {n['level']} is not one below {p['level']}")
        if n["kind"] == "software-design" and p["kind"] != "software-item": bad.append(f"node {n['name']}: software design under {p['kind']}")
    # 5
    for x, r in reqs.items():
        n = nodes.get(r["node"])
        if n and n["level"] in ("item", "software-design") and r["dal"] != n["dal"]:
            bad.append(f"{x}: DAL {r['dal']} differs from its node {n['name']} (DAL {n['dal']})")
    # 6
    for i, where in impl:
        if not i.startswith("MRTM-LLR-"): bad.append(f"code names a non-LLR id {i} at {where}")
        elif i not in reqs: bad.append(f"code names an unknown LLR {i} at {where}")
    # 7
    cap = fw["rules"]["max_boxes_per_view"]
    for v, k in views.items():
        if k > cap: bad.append(f"view {v}: {k} boxes > {cap}")
    # 8
    for n in fw["nodes"]:
        idx = (indexes or {}).get(n["path"])
        if idx is None: bad.append(f"node {n['name']}: no INDEX.md"); continue
        for p in (pics or {}).get(n["path"], []):
            if p not in idx: bad.append(f"node {n['name']}: INDEX.md does not show {p}")
    return bad

def selftest():
    fw = {"nodes": [{"name": "aircraft", "path": "aircraft", "kind": "aircraft", "level": "aircraft", "dal": "A"},
                    {"name": "system", "path": "system", "kind": "system", "level": "system", "dal": "A", "parent": "aircraft"},
                    {"name": "a-sw", "path": "items/a-sw", "kind": "software-item", "level": "item", "dal": "C", "parent": "system"},
                    {"name": "a-sw-design", "path": "items/a-sw/design", "kind": "software-design", "level": "software-design", "dal": "C", "parent": "a-sw"}],
          "rules": {"max_boxes_per_view": 12}}
    R = lambda node, up, dal="A", derived=False: {"node": node, "up": up, "dal": dal, "derived": derived}
    reqs = {"S-1": R("aircraft", []), "F-1": R("aircraft", ["S-1"]), "Y-1": R("system", ["F-1"]),
            "H-1": R("a-sw", ["Y-1"], "C"), "MRTM-LLR-1": R("a-sw-design", ["H-1"], "C"), "H-2": R("a-sw", [], "C", True)}
    sat = [("aircraft", "S-1", "x"), ("aircraft", "F-1", "x"), ("system", "Y-1", "x"), ("items/a-sw", "H-1", "x"),
           ("items/a-sw", "H-2", "x"), ("items/a-sw/design", "MRTM-LLR-1", "x")]
    idx = {"aircraft": "", "system": "", "items/a-sw": "", "items/a-sw/design": "p1"}
    ok = lambda **k: check(**{"fw": fw, "reqs": reqs, "sat": sat, "views": {"v": 12}, "impl": [("MRTM-LLR-1", "c")], "pssa": "H-2",
                              "pics": {"items/a-sw/design": ["p1"]}, "indexes": idx, **k})
    assert ok() == [], ok()
    assert any("another node" in b for b in ok(sat=sat + [("system", "H-1", "y")]))
    assert any("not its parent" in b for b in ok(reqs={**reqs, "MRTM-LLR-1": R("a-sw-design", ["Y-1"], "C")}))
    assert any("not fed back" in b for b in ok(pssa=""))
    assert any("differs from its node" in b for b in ok(reqs={**reqs, "H-1": R("a-sw", ["Y-1"], "A")}))
    assert any("non-LLR id" in b for b in ok(impl=[("H-1", "c")]))
    assert any("13 boxes" in b for b in ok(views={"v": 13}))
    assert any("not one below" in b for b in ok(fw={**fw, "nodes": fw["nodes"][:3] + [{**fw["nodes"][3], "parent": "system", "level": "software-design"}]}))
    print("selftest: 8 of 8 planted cases behave")

if __name__ == "__main__":
    if "--selftest" in sys.argv: selftest(); sys.exit(0)
    fw, reqs, sat, views, impl, pssa = load()
    pics = {n["path"]: [p.name for p in (ROOT / "06-design" / n["path"] / "pictures").glob("*.png")] for n in fw["nodes"]}
    idx = {n["path"]: (ROOT / "06-design" / n["path"] / "INDEX.md").read_text() for n in fw["nodes"] if (ROOT / "06-design" / n["path"] / "INDEX.md").exists()}
    bad = check(fw, reqs, sat, views, impl, pssa, pics, idx)
    per = {}
    for r in reqs.values(): lv = next(n["level"] for n in fw["nodes"] if n["name"] == r["node"]); per[lv] = per.get(lv, 0) + 1
    print(f"level-check: {len(fw['nodes'])} nodes · {len(reqs)} requirements {per} · {len(sat)} satisfy lines · "
          f"{len(impl)} code links · {len(views)} views (most boxes {max(views.values())}) · violations {len(bad)}")
    for b in bad: print("  FAIL", b)
    sys.exit(1 if bad else 0)
