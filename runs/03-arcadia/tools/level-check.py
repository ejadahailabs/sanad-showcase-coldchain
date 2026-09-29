#!/usr/bin/env python3
"""level-check (Arcadia, five fixed layers) — the rules of .ejadah/rew/framework.yaml that Sanad does not check yet (F-3-001).
  1 own-layer satisfy : a `satisfy` line in 06-design/<layer>/ names a requirement of that layer only
  2 coverage          : every requirement is satisfied in its own layer
  3 derive            : every uplink names a requirement of the layer above (SA may also refine SA); non-OA requirements
                        have one; every requirement reaches a stakeholder need
  4 boxes             : every rendered view has <= max_boxes_per_view boxes
  5 index             : every layer has INDEX.md and it shows every picture in its pictures/ folder
  6 transitions       : every source element of a layer pair is allocated one layer down, to an element of that layer
  info                : SA→LA and LA→PA derive links that cross the transition (a requirement derived from an element not allocated to its own)
Usage (run folder): python3 tools/level-check.py [--selftest]. Exit 1 on any violation. MANUAL (F-3-001).
The run-2 MagicGrid version is kept as tools/level-check-magicgrid.py."""
import pathlib, re, sys, yaml
import fwload  # framework.yaml + tools/levels.yaml (run-local fields, 2026-09-29)
ROOT = pathlib.Path(__file__).resolve().parent.parent
PKG = {"oa": "Oa", "sa": "Sa", "la": "La", "pa": "Pa", "epbs": "Epbs"}

def load():
    fw = fwload.load()
    reqs = {f.stem: re.findall(r'"([^"]+)"', re.search(r"^uplinks: (.*)$", f.read_text(), re.M).group(1))
            for f in (ROOT / "03-requirements").rglob("MRTM-*.md")}
    sat, alloc, src = [], [], {}
    for f in (ROOT / "06-design").rglob("*.sysml"):
        rel = f.relative_to(ROOT / "06-design"); t = f.read_text()
        for i, l in enumerate(t.splitlines(), 1):
            m = re.match(r"\s*satisfy '([^']+)' by (\S+);", l)
            if m: sat.append((rel.parts[0], m.group(1), m.group(2), f"{rel}:{i}"))
        if rel.parts[0] == "transitions":
            for pkg, body in re.findall(r"package (\w+) \{(.*?)\n\}", t, re.S):
                alloc += [(pkg, a, b) for a, b in re.findall(r"allocate (\S+) to (\S+);", body)]
    # transition sources: OA activities + entities, SA functions; LA and PA = the elements that satisfy requirements
    txt = lambda p: (ROOT / "06-design" / p).read_text()
    src["oa"] = {f"OaModel::{a}" for a in re.findall(r"^\s*action (\w+) :", txt("oa/OaModel.sysml"), re.M)} | \
                {f"OaArchitecture::{a}" for a in re.findall(r"^\s*part (\w+) :", txt("oa/OaArchitecture.sysml"), re.M)}
    src["sa"] = {f"SaFunctions::{a}" for a in re.findall(r"^\s*action (\w+) :", txt("sa/SaFunctions.sysml").split("package SaAlarmChain")[0], re.M)}
    for layer in ("la", "pa"): src[layer] = {e for l, _, e, _ in sat if l == layer}
    views = {s.stem: s.read_text().count('<g class="nd') for s in (ROOT / "06-design/views/rendered").glob("*.svg")}
    return fw, reqs, sat, alloc, src, views

def check(fw, reqs, sat, alloc, src, views, pics=None, indexes=None):
    bad, info = [], []
    layers = fw["layers"]; names = [l["name"] for l in layers]
    layer_of_prefix = {p: l["name"] for l in layers for p in l["prefixes"]}
    lay = lambda rid: layer_of_prefix.get(rid.rsplit("-", 1)[0])
    L = {l["name"]: l for l in layers}
    seen = set()
    for folder, rid, el, where in sat:  # 1 + 2
        if folder not in L: bad.append(f"satisfy outside any layer folder: {rid} at {where}")
        elif lay(rid) != folder: bad.append(f"satisfy of another layer's requirement: {rid} ({lay(rid)}) in layer {folder} at {where}")
        seen.add(rid)
    for rid in reqs:
        if lay(rid) is None: bad.append(f"requirement with no layer: {rid}")
        elif rid not in seen: bad.append(f"requirement not satisfied in its layer: {rid}")
    for rid, ups in reqs.items():  # 3
        me = lay(rid); want = L[me]["derive"] if me else None
        if me and want and not ups: bad.append(f"{rid}: no derive link")
        for u in ups:
            if u not in reqs: bad.append(f"{rid}: derive target {u} does not exist"); continue
            if not (lay(u) == want or (L[me].get("derive_within_layer") and lay(u) == me)):
                bad.append(f"{rid}: derives from {u} of layer {lay(u)}, not the layer above ({want})")
    top = {r for r in reqs if lay(r) == names[0]}
    def reaches(r, path=()):
        if r in top: return True
        if r in path: return False
        return any(reaches(u, path + (r,)) for u in reqs.get(r, []) if u in reqs)
    for r in reqs:
        if not reaches(r): bad.append(f"{r}: derive chain does not reach a stakeholder need")
    cap = fw["rules"]["max_boxes_per_view"]  # 4
    for v, k in views.items():
        if k > cap: bad.append(f"view {v}: {k} boxes > {cap}")
    for l in layers:  # 5
        idx = (indexes or {}).get(l["path"])
        if idx is None: bad.append(f"layer {l['name']}: no INDEX.md"); continue
        for p in (pics or {}).get(l["path"], []):
            if p not in idx: bad.append(f"layer {l['name']}: INDEX.md does not show {p}")
    elem_layer = lambda e: next((n for n in names if e.startswith(PKG[n]) and not e.startswith("Epbs" if n == "pa" else "\0")), None)
    for t in fw["transitions"]:  # 6
        pkg = f"Transition{PKG[t['from']]}To{PKG[t['to']]}"
        pairs = [(a, b) for p, a, b in alloc if p == pkg]
        for a, b in pairs:
            if elem_layer(b) != t["to"]: bad.append(f"{pkg}: {a} goes to {b}, not an element of layer {t['to']}")
        missing = sorted(src.get(t["from"], set()) - {a for a, _ in pairs})
        for m in missing: bad.append(f"{pkg}: {m} of layer {t['from']} is not allocated to layer {t['to']}")
    el_of = {rid: el for _, rid, el, _ in sat}  # info
    goes = {}
    for p, a, b in alloc: goes.setdefault(a, set()).add(b)
    for rid, ups in reqs.items():
        for u in ups:
            mine = re.sub(r"^PaBackupAlarm::\w+$", "PaInterconnection::backupAlarm", el_of.get(rid, ""))  # the board's own parts
            if lay(u) not in (lay(rid), "oa") and u in el_of and rid in el_of and mine not in goes.get(el_of[u], set()):
                info.append(f"{rid} ({el_of[rid]}) derives from {u} ({el_of[u]})")
    return bad, info

def selftest():
    fw = {"layers": [{"name": "oa", "path": "oa", "prefixes": ["S"], "derive": None},
                     {"name": "sa", "path": "sa", "prefixes": ["Y"], "derive": "oa", "derive_within_layer": True},
                     {"name": "la", "path": "la", "prefixes": ["A"], "derive": "sa"}],
          "rules": {"max_boxes_per_view": 12}, "transitions": [{"from": "sa", "to": "la"}]}
    reqs = {"S-001": [], "Y-001": ["S-001"], "Y-002": ["Y-001"], "A-001": ["Y-001"]}
    sat = [("oa", "S-001", "OaX::c", "x"), ("sa", "Y-001", "SaF::f", "x"), ("sa", "Y-002", "SaF::f", "x"), ("la", "A-001", "LaA::a", "x")]
    alloc = [("TransitionSaToLa", "SaF::f", "LaA::a")]; src = {"sa": {"SaF::f"}}
    idx = {"oa": "", "sa": "", "la": "p1"}
    ok = lambda *a, **k: check(*a, **k)[0]
    assert ok(fw, reqs, sat, alloc, src, {"v": 12}, {"la": ["p1"]}, idx) == []
    assert any("another layer" in b for b in ok(fw, reqs, sat + [("sa", "A-001", "SaF::f", "y")], alloc, src, {}, {}, idx))
    assert any("not the layer above" in b for b in ok(fw, {**reqs, "A-001": ["S-001"]}, sat, alloc, src, {}, {}, idx))
    assert any("reach" in b for b in ok(fw, {**reqs, "A-002": ["A-003"], "A-003": ["A-002"]}, sat + [("la", "A-002", "LaA::a", "z"), ("la", "A-003", "LaA::a", "z")], alloc, src, {}, {}, idx))
    assert any("13 boxes" in b for b in ok(fw, reqs, sat, alloc, src, {"v": 13}, {}, idx))
    assert any("INDEX.md does not show" in b for b in ok(fw, reqs, sat, alloc, src, {}, {"la": ["p2"]}, idx))
    assert any("not allocated" in b for b in ok(fw, reqs, sat, alloc, {"sa": {"SaF::f", "SaF::g"}}, {}, {}, idx))
    assert any("not an element of layer" in b for b in ok(fw, reqs, sat, alloc + [("TransitionSaToLa", "SaF::f", "SaF::g")], src, {}, {}, idx))
    print("selftest: 8 of 8 planted cases behave")

if __name__ == "__main__":
    if "--selftest" in sys.argv: selftest(); sys.exit(0)
    fw, reqs, sat, alloc, src, views = load()
    pics = {l["path"]: [p.name for p in (ROOT / "06-design" / l["path"] / "pictures").glob("*.png")] for l in fw["layers"]}
    idx = {l["path"]: (ROOT / "06-design" / l["path"] / "INDEX.md").read_text() for l in fw["layers"] if (ROOT / "06-design" / l["path"] / "INDEX.md").exists()}
    bad, info = check(fw, reqs, sat, alloc, src, views, pics, idx)
    per = {l["name"]: sum(1 for r in reqs if r.rsplit("-", 1)[0] in l["prefixes"]) for l in fw["layers"]}
    print(f"level-check: {len(fw['layers'])} layers · requirements {sum(per.values())} ({' · '.join(f'{k.upper()} {v}' for k, v in per.items())}) · "
          f"{len(sat)} satisfy lines · {len(alloc)} allocate lines · {len(views)} views (most boxes {max(views.values())}) · violations {len(bad)} · "
          f"derive crosses the transition {len(info)}×")
    for b in bad: print("  FAIL", b)
    if "-v" in sys.argv:
        for i in info: print("  info", i)
    sys.exit(1 if bad else 0)
