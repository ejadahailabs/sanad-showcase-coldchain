#!/usr/bin/env python3
"""RUN-04: 06-design/<node>/INDEX.md for all 17 nodes and 06-design/DECOMPOSITION.md (the ladder in reading order).
Usage (run folder): python3 tools/aero-index.py. MANUAL (run 2 F-125: Sanad has no Decomposition view)."""
import pathlib, re, yaml
ROOT = pathlib.Path(__file__).resolve().parent.parent
FW = yaml.safe_load((ROOT / ".ejadah/rew/framework.yaml").read_text())
PIC = {
 "aircraft_context": "the monitor as one box among the fridge, the mains, the USB host and the staff",
 "aircraft_functions": "the five product functions (MRTM-FUN-001…005) and what flows between them",
 "system_functions": "the nine system functions, each tagged with the items that perform it",
 "system_items": "the ten items as one tree, each with its DAL",
 "system_hardware": "hardware item interconnection: buses, lines and power feeds",
 "system_software": "software item interconnection: the flows between the five software items",
 "system_alarm_sequence": "the alarm path at item level: warm air → early light → buzzer → log → acknowledge",
 "alarm_sw_functions": "what the alarm software item does, in order, with the HLR each step answers",
 "alarm_sw_design_architecture": "the alarm software architecture: three components, two tasks, software levels (Sanad's profile)",
 "alarm_sw_design_states": "the alarm state machine every 1 s cycle steps through",
}
WHAT = {"aircraft": "the whole product and its needs, functions and FHA objectives", "system": "the monitoring system: requirements, functions, ten items",
        "hardware-item": "a hardware item (DO-254 shape)", "software-item": "a software item: its HLR (DO-178C §5.1)",
        "software-design": "the software design of an item: architecture + LLR (DO-178C §5.2)"}
def reqs(n):
    k = {"aircraft": "aircraft", "system": "system", "hardware-item": f"hwr/{n['name']}", "software-item": f"hlr/{n['name']}",
         "software-design": f"llr/{n['name'].removesuffix('-design')}"}[n["kind"]]
    out = []
    for f in sorted((ROOT / "03-requirements" / k).rglob("MRTM-*.md")):
        s = f.read_text(); out.append((f.stem, re.search(r"^# (.*)$", s, re.M).group(1), re.search(r'^safetyClass: "(\w*)"', s, re.M).group(1), "derived: true" in s))
    return k, out
lines = ["# Decomposition — the aerospace ladder (RUN-04)", "",
         "**In one line:** three fixed floors — product, system, items — and inside each software item one more floor, its design. Read top to bottom; every requirement points to the floor above it.", "",
         "| Rung | Node | Kind | DAL | Requirements | Pictures |", "|---|---|---|---|---|---|"]
for n in FW["nodes"]:
    d = ROOT / "06-design" / n["path"]; d.mkdir(parents=True, exist_ok=True)
    pics = sorted(p.name for p in (d / "pictures").glob("*.png")) if (d / "pictures").exists() else []
    k, rs = reqs(n)
    kids = [c["name"] for c in FW["nodes"] if c.get("parent") == n["name"]]
    t = [f"# {n['name']} — {n['kind'].replace('-', ' ')} (rung: {n['level']}, DAL {n['dal']})", "",
         f"**In one line:** {WHAT[n['kind']]}.", "",
         f"- **Parent:** {n.get('parent', '— (top)')} · **Children:** {', '.join(kids) or '— (leaf)'}",
         f"- **Requirements:** `03-requirements/{k}/` ({len(rs)}) · **Model:** the `.sysml` files in this folder; the `satisfy` lines name this node's requirements only.", ""]
    if pics:
        t += ["## Pictures, in reading order", ""] + [f"{i}. `{p}` — {PIC.get(p[:-4], '')}  \n   ![{p}](pictures/{p})" for i, p in enumerate(pics, 1)] + [""]
    else:
        t += ["## Pictures", "", "None of its own: this item is drawn in the system pictures `system_items`, `system_hardware` / `system_software` (06-design/system/INDEX.md).", ""]
    t += ["## Requirements", "", "| Id | Title | DAL | |", "|---|---|---|---|"] + [f"| {i} | {ti} | {dl} | {'derived (no parent)' if dv else ''} |" for i, ti, dl, dv in rs]
    (d / "INDEX.md").write_text("\n".join(t) + "\n")
    lines.append(f"| {n['level']} | [{n['name']}]({n['path']}/INDEX.md) | {n['kind']} | {n['dal']} | {len(rs)} | {len(pics)} |")
(ROOT / "06-design/DECOMPOSITION.md").write_text("\n".join(lines) + "\n")
print("index: 17 nodes")
