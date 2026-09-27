#!/usr/bin/env python3
"""level-check — the rules of .ejadah/rew/framework.yaml that Sanad does not check yet (F-124, F-125).
  1 own-node satisfy : a `satisfy` line sits in its node's folder and names that node's requirement only
  2 coverage         : every requirement is satisfied by its own node exactly there
  3 derive           : every uplink names the PARENT node (or, at a node with several kinds, the same node);
                       every requirement reaches a stakeholder requirement (chain complete to the top)
  4 boxes            : every view's picture has <= max_boxes_per_view boxes
  5 index            : every node has INDEX.md, and it shows every picture in its pictures/ folder
Usage (repo root): python3 tools/level-check.py [--selftest]. Exit 1 on any violation. MANUAL (F-126)."""
import pathlib, re, sys, yaml
ROOT = pathlib.Path(__file__).resolve().parent.parent

def load():
    fw = yaml.safe_load((ROOT / ".ejadah/rew/framework.yaml").read_text())
    reqs = {}
    for f in (ROOT / "03-requirements").rglob("MRTM-*.md"):
        up = re.search(r"^uplinks: (.*)$", f.read_text(), re.M).group(1)
        reqs[f.stem] = re.findall(r'"([^"]+)"', up)
    sat = []
    for f in (ROOT / "06-design").rglob("*.sysml"):
        rel = f.relative_to(ROOT / "06-design")
        if rel.parts[0] in ("views", "packages"): continue
        for i, l in enumerate(f.read_text().splitlines(), 1):
            m = re.match(r"\s*satisfy '([^']+)'", l)
            if m: sat.append((str(rel.parent), m.group(1), f"{rel}:{i}"))
    views = {}
    for s in (ROOT / "06-design/views/rendered").glob("*.svg"):
        views[s.stem] = s.read_text().count('<g class="nd')
    return fw, reqs, sat, views

def check(fw, reqs, sat, views, pics=None, indexes=None):
    bad = []
    prefix = {}
    for n in fw["nodes"]:
        for p in (n["prefix"] if isinstance(n["prefix"], list) else [n["prefix"]]): prefix[p] = n["name"]
    nodes = {n["name"]: n for n in fw["nodes"]}
    by_path = {n["path"]: n["name"] for n in fw["nodes"]}
    node_of = lambda rid: prefix.get(rid.rsplit("-", 1)[0])
    # 1 + 2
    seen = {}
    for folder, rid, where in sat:
        own = by_path.get(folder)
        if own is None: bad.append(f"satisfy outside any node folder: {rid} at {where}")
        elif node_of(rid) != own: bad.append(f"satisfy of another node's requirement: {rid} ({node_of(rid)}) in node {own} at {where}")
        seen[rid] = seen.get(rid, 0) + 1
    for rid in reqs:
        if node_of(rid) is None: bad.append(f"requirement with no node: {rid}")
        elif rid not in seen: bad.append(f"requirement not satisfied by its node: {rid}")
    # 3
    multi = {n["name"] for n in fw["nodes"] if isinstance(n["prefix"], list)}
    for rid, ups in reqs.items():
        me = node_of(rid)
        for u in ups:
            if u not in reqs: bad.append(f"{rid}: derive target {u} does not exist"); continue
            ok = node_of(u) == nodes[me].get("parent") or (me in multi and node_of(u) == me)
            if not ok: bad.append(f"{rid}: derives from {u} of node {node_of(u)}, not its parent {nodes[me].get('parent')}")
        if nodes[me]["kind"] != "context" and not ups: bad.append(f"{rid}: no derive link")
    top = {r for r in reqs if nodes[node_of(r)]["kind"] == "context"}
    def reaches(r, path=()):
        if r in top: return True
        if r in path: return False
        return any(reaches(u, path + (r,)) for u in reqs.get(r, []) if u in reqs)
    for r in reqs:
        if not reaches(r): bad.append(f"{r}: derive chain does not reach a stakeholder requirement")
    # 4
    cap = fw["rules"]["max_boxes_per_view"]
    for v, k in views.items():
        if k > cap: bad.append(f"view {v}: {k} boxes > {cap}")
    # 5
    for n in fw["nodes"]:
        idx = (indexes or {}).get(n["path"])
        if idx is None: bad.append(f"node {n['name']}: no INDEX.md"); continue
        for p in (pics or {}).get(n["path"], []):
            if p not in idx: bad.append(f"node {n['name']}: INDEX.md does not show {p}")
    for leaf in fw["leaves"]:
        if leaf not in nodes: bad.append(f"declared leaf {leaf} is not a node")
    return bad

def selftest():
    fw = {"nodes": [{"name": "top", "path": "top", "kind": "context", "prefix": "S"},
                    {"name": "sys", "path": "m", "kind": "system", "prefix": ["Y", "Z"], "parent": "top"},
                    {"name": "a", "path": "m/a", "kind": "subsystem", "prefix": "A", "parent": "sys"}],
          "leaves": ["a"], "rules": {"max_boxes_per_view": 12}}
    reqs = {"S-001": [], "Y-001": ["S-001"], "Z-001": ["Y-001"], "A-001": ["Z-001"]}
    sat = [("top", "S-001", "x"), ("m", "Y-001", "x"), ("m", "Z-001", "x"), ("m/a", "A-001", "x")]
    idx = {"top": "", "m": "", "m/a": "p1"}
    assert check(fw, reqs, sat, {"v": 12}, {"m/a": ["p1"]}, idx) == []
    assert any("another node" in b for b in check(fw, reqs, sat + [("m", "A-001", "y")], {}, {}, idx))
    assert any("not its parent" in b for b in check(fw, {**reqs, "A-001": ["S-001"]}, sat, {}, {}, idx))
    assert any("reach" in b for b in check(fw, {**reqs, "A-002": ["A-003"], "A-003": ["A-002"]}, sat + [("m/a", "A-002", "z"), ("m/a", "A-003", "z")], {}, {}, idx))
    assert any("13 boxes" in b for b in check(fw, reqs, sat, {"v": 13}, {}, idx))
    assert any("INDEX.md does not show" in b for b in check(fw, reqs, sat, {}, {"m/a": ["p2"]}, idx))
    print("selftest: 6 of 6 planted cases behave")

if __name__ == "__main__":
    if "--selftest" in sys.argv: selftest(); sys.exit(0)
    fw, reqs, sat, views = load()
    pics = {n["path"]: [p.name for p in (ROOT / "06-design" / n["path"] / "pictures").glob("*.png")] for n in fw["nodes"]}
    idx = {n["path"]: (ROOT / "06-design" / n["path"] / "INDEX.md").read_text() for n in fw["nodes"] if (ROOT / "06-design" / n["path"] / "INDEX.md").exists()}
    bad = check(fw, reqs, sat, views, pics, idx)
    leaf_reqs = [r for r in reqs if next(n for n in fw["nodes"] if r.rsplit("-", 1)[0] in ([n["prefix"]] if isinstance(n["prefix"], str) else n["prefix"]))["name"] in fw["leaves"]]
    print(f"level-check: {len(fw['nodes'])} nodes ({len(fw['leaves'])} leaves) · {len(reqs)} requirements ({len(leaf_reqs)} on leaves) · "
          f"{len(sat)} satisfy lines · {len(views)} views (most boxes {max(views.values())}) · violations {len(bad)}")
    for b in bad: print("  FAIL", b)
    sys.exit(1 if bad else 0)
