#!/usr/bin/env python3
"""RUN-04 builder — does from .ejadah/rew/framework.yaml what Sanad cannot yet (run 2 F-125, F-126).
Usage (run folder):
  python3 tools/aero-build.py spec TYPES OUT   create-path spec for tools/author-requirements.cjs (TYPES: comma list)
  python3 tools/aero-build.py fix-system       aerospace uplinks + DAL on the copied STK and system requirements
  python3 tools/aero-build.py markers          re-point the implements markers (LLR), the verifies markers (HLR/LLR) and SP rows
Ids come from Sanad's allocator; tools/aero-ids.json maps each key of tools/aero_data.py to its id.
Every write is idempotent. DRAFT — needs Masood's review."""
import json, pathlib, re, sys, yaml
ROOT = pathlib.Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
from aero_data import REQS, TESTS

FW = yaml.safe_load((ROOT / ".ejadah/rew/framework.yaml").read_text())
NODES = {n["name"]: n for n in FW["nodes"]}
IDS_PATH = ROOT / "tools/aero-ids.json"
IDS = json.loads(IDS_PATH.read_text()) if IDS_PATH.exists() else {}
BY_KEY = {r[0]: r for r in REQS}
IMPL = "@" "implements"  # split so Sanad's code index does not read this tool as a trace (F-4-010)
RANK = "EDCBA"  # higher index = more severe

def rid(k): return IDS.get(k, k)

def folder(key, typ, node):
    """Sanad claims a folder tree for ONE type (F-4-005), so the item is the sub-folder of its kind's tree."""
    if node == "aircraft": return f"03-requirements/aircraft/{typ}"
    return f"03-requirements/{ {'hardware-item': 'hwr', 'hlr': 'hlr', 'llr': 'llr'}[typ] }/{node.removesuffix('-design')}"

def dal_note(dal, node):
    fc = FW["dal"]["failure_condition"][dal]
    return (f"DAL {dal} ({fc} failure condition), assigned to `{node}` by the PSSA (08-safety/02-pssa.md). "
            "Independence of verification is not required in this run (A-4-03).")

def spec(types, out):
    rows = []
    for key, typ, node, parents, title, text, why, verify, dal, x in REQS:
        if typ not in types: continue
        rows.append([key, typ, parents, title, text, why, verify, x.get("hazards"), dal_note(dal, node), dal,
                     folder(key, typ, node), bool(x.get("derived"))])
    pathlib.Path(out).write_text(json.dumps(rows, ensure_ascii=False, indent=1))
    print(f"spec: {len(rows)} rows -> {out}")

def set_front(p, key, value):
    s = p.read_text()
    s2 = re.sub(rf"^{key}: .*$", f"{key}: {value}", s, count=1, flags=re.M)
    if s2 != s: p.write_text(s2)

def fix_system():
    """ARP4754A: system requirements derive from the product functions; safety requirements also from the
    FHA objectives of their hazards. DAL of a system requirement = DAL of the function / objective it serves."""
    fun_of = {"MRTM-STK-001": "FUN2", "MRTM-STK-002": "FUN2", "MRTM-STK-003": "FUN3", "MRTM-STK-004": "FUN1",
              "MRTM-STK-005": "FUN4", "MRTM-STK-006": "FUN4", "MRTM-STK-007": "FUN1", "MRTM-STK-008": "FUN5"}
    sob_of = {"HAZ-001": "SOB1", "HAZ-003": "SOB1", "HAZ-005": "SOB1", "HAZ-006": "SOB1",
              "HAZ-007": "SOB2", "HAZ-004": "SOB3", "HAZ-002": "SOB4", "HAZ-008": "SOB5"}
    # PSSA overrides (08-safety/02-pssa.md §3): the screen is not credited as the excursion signal.
    override = {"MRTM-SAF-016": "B", "MRTM-SAF-021": "B"}
    req = ROOT / "03-requirements"
    dal = {}
    for f in (req / "aircraft/stakeholder").glob("*.md"):
        d = BY_KEY[fun_of[f.stem]][8]; dal[f.stem] = d; set_front(f, "safetyClass", f'"{d}"')
    for f in (req / "system/system").glob("*.md"):
        up = re.findall(r'"([^"]+)"', re.search(r"^uplinks: (.*)$", f.read_text(), re.M).group(1))
        new = sorted({rid(fun_of[u]) if u in fun_of else u for u in up})
        set_front(f, "uplinks", json.dumps(new))
        d = max((BY_KEY[fun_of[u]][8] for u in up if u in fun_of), key=RANK.index); dal[f.stem] = d
        set_front(f, "safetyClass", f'"{d}"')
    for f in (req / "system/safety").glob("*.md"):
        s = f.read_text()
        up = re.findall(r'"([^"]+)"', re.search(r"^uplinks: (.*)$", s, re.M).group(1))
        haz = re.findall(r'"([^"]+)"', re.search(r"^hazard: (.*)$", s, re.M).group(1))
        sobs = sorted({sob_of[h] for h in haz})
        new = [u for u in up if not u.startswith("MRTM-SOB")] + [rid(k) for k in sobs]
        set_front(f, "uplinks", json.dumps(new))
        d = override.get(f.stem, max((BY_KEY[k][8] for k in sobs), key=RANK.index)); dal[f.stem] = d
        set_front(f, "safetyClass", f'"{d}"')
    for kind in ("performance", "environmental", "maintainability", "interface"):
        for f in (req / "system" / kind).glob("*.md"):
            up = re.findall(r'"([^"]+)"', re.search(r"^uplinks: (.*)$", f.read_text(), re.M).group(1))
            d = max((dal.get(u, "A") for u in up), key=RANK.index); dal[f.stem] = d
            set_front(f, "safetyClass", f'"{d}"')
    print("fix-system:", {k: sum(1 for v in dal.values() if v == k) for k in "ABCD"})

def old_map():
    m = {}
    for key, *_, x in REQS:
        for o in x.get("old", []): m.setdefault(o, []).append(rid(key))
    return m

def markers():
    n = 0
    # 1 source: every implements-marker line names the LLR(s) of its site only (DO-178C §11.21 source ↔ LLR)
    site = {}
    for key, typ, *_, x in REQS:
        for s in x.get("sites", []): site.setdefault(s, []).append(rid(key))
    for (f, ln), ids in site.items():
        p = ROOT / "10-src" / f; L = p.read_text().split("\n")
        assert IMPL in L[ln - 1], (f, ln, L[ln - 1])
        L[ln - 1] = re.sub(IMPL + r"[^*]*?(\s*\*/|$)", lambda m: IMPL + " " + " ".join(ids) + m.group(1), L[ln - 1], count=1)
        p.write_text("\n".join(L)); n += 1
    left = [f"{p}:{i}" for p in (ROOT / "10-src").rglob("*.c*") for i, l in enumerate(p.read_text().split("\n"), 1)
            if IMPL + " MRTM-" in l and not any(p == ROOT / "10-src" / f and i == ln for f, ln in site)]
    assert not left, f"implements-marker lines with no LLR site: {left}"
    # 2 tests: @verifies names the HLR / LLR the test drives
    for p in (ROOT / "10-src").rglob("test_*.c"):
        L = p.read_text().split("\n"); changed = False
        for i, l in enumerate(L):
            m = re.match(r"(\s*/\*\s*@verifies\s+)(MRTM-\S+(?:\s+MRTM-\S+)*)(\s*\*/.*)$", l)
            if not m: continue
            fn = next(re.match(r"void (\w+)\(", L[j]).group(1) for j in range(i + 1, i + 3) if re.match(r"void \w+\(", L[j]))
            L[i] = m.group(1) + " ".join(rid(k) for k in TESTS[fn]) + m.group(3); changed = True; n += 1
        if changed: p.write_text("\n".join(L))
    # 3 bench procedures: system ids stay; run-2 node ids become the item requirement that re-homes them
    om, known = old_map(), set(IDS.values())
    sysids = {f.stem for f in (ROOT / "03-requirements").rglob("MRTM-*.md")}
    p = ROOT / "11-verification/procedures/system-procedures.md"; L = p.read_text().split("\n")
    for k, l in enumerate(L):
        c = l.split("|")
        if len(c) > 3 and re.match(r"\s*SP-", c[1]):
            new = []
            for i in c[3].split():
                for j in ([i] if i in sysids else om.get(i, [])):
                    if j not in new: new.append(j)
            c[3] = " " + " ".join(new) + " "; L[k] = "|".join(c); n += 1
    p.write_text("\n".join(L))
    print(f"markers: {n} lines touched")

if __name__ == "__main__":
    cmd = sys.argv[1]
    if cmd == "spec": spec(set(sys.argv[2].split(",")), sys.argv[3])
    elif cmd == "fix-system": fix_system()
    elif cmd == "markers": markers()
