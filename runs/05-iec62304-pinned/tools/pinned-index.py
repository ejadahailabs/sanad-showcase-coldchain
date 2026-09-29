#!/usr/bin/env python3
"""RUN-05: 06-design/<node-path>/INDEX.md for every node, a level INDEX.md for L3 and L4, and 06-design/DECOMPOSITION.md.
Grades are the picture review (the coordinator looked at every PNG; A = fit for a design review ... E = not usable).
Usage (run folder): python3 tools/pinned-index.py"""
import pathlib, re, yaml
import fwload  # framework.yaml + tools/levels.yaml (run-local fields, 2026-09-29)
ROOT = pathlib.Path(__file__).resolve().parent.parent; D = ROOT / "06-design"
FW = fwload.load(); N = {n["name"]: n for n in FW["nodes"]}
G = {  # picture: (grade, what it shows / what is wrong)
 "L1_device_context": ("B", "the device as one box with fridge, mains, USB host, staff; port labels sit beside, not on, their ports (F-119)"),
 "L1_device_block": ("B", "hardware item + software system joined by ONE bundled HAL port; outside wires to the neighbours"),
 "L1_device_usecases": ("B", "six use cases, five actors; subject still named 'monitor' from the library"),
 "L2_hardware_item_parts": ("C", "11 chosen parts and their wires; unused pins float as labels (F-119)"),
 "L2_software_system_architecture": ("C", "8 items, class per item (usbItem = B) and units in compartments; 11 flows readable, but labels float and wires cross"),
 "L2_software_system_hardware": ("D", "which item drives which hardware signal; every unused item port is drawn as a floating label (F-119) — hard to read"),
 "L2_software_system_modes": ("A", "power-up, self-test, monitoring, battery, fail-safe; clean"),
 "L2_software_system_excursion": ("C", "item-level excursion scenario reads left to right; the canvas adds two lifelines and one message from another package (F-5-004)"),
 "L3_sensor_item_structure": ("B", "unit sensorSampler between the probe bus and its two readers"),
 "L3_excursion_item_structure": ("B", "unit limitEvaluator: samples in, excursion out, band from the supervisor item"),
 "L3_alarm_item_structure": ("C", "unit alarmMgr with 8 wires; readable but crowded, labels float"),
 "L3_alarm_item_states": ("B", "the alarm state machine; parallel transition labels stack (run 2 F-121)"),
 "L3_display_item_structure": ("B", "unit displayMgr: samples + alarm state in, I2C out"),
 "L3_log_item_structure": ("B", "three units: eventLog -> historyRing -> USB item; rtcClock gives the time"),
 "L3_usb_item_structure": ("B", "class-B unit usbExport between the log item and the USB connector"),
 "L3_power_item_structure": ("B", "unit powerMon: mains sense and battery in, events and records out"),
 "L3_supervisor_item_structure": ("B", "units wdtKicker, diagnostics, configMgr and their one wire each"),
 "L4_units_alarm_path_contracts": ("D", "six unit contracts as named boxes only: the functions (actions) inside an interface def are not drawn (F-5-005)"),
 "L4_units_data_contracts": ("D", "six unit contracts, names only (F-5-005)"),
 "L4_display_mgr_classes": ("B", "display classes with the software profile's «Class» marker; generalisation drawn"),
}
def reqs(n):
    pre = n["prefix"] if isinstance(n["prefix"], list) else [n["prefix"]]; out = []
    for f in sorted((ROOT / "03-requirements").rglob("MRTM-*.md")):
        if f.stem.rsplit("-", 1)[0] in pre:
            t = f.read_text(); up = re.search(r"^uplinks: (.*)$", t, re.M).group(1)
            st = re.search(r"## Description\n\n(.*)", t).group(1)
            out.append(f"| {f.stem} | {', '.join(re.findall(r'\"([^\"]+)\"', up)) or '—'} | {st} |")
    return out
def pics(folder): return sorted(p.stem for p in (D / folder / "pictures").glob("*.png")) if (D / folder / "pictures").exists() else []
def pic_rows(folder, rel=""): return [f"| ![{p}]({rel}pictures/{p}.png) `{p}` | {G[p][0]} | {G[p][1]} |" for p in pics(folder)]
for n in FW["nodes"]:
    kids = [c["name"] for c in FW["nodes"] if c.get("parent") == n["name"]]
    lvl_pics = pic_rows("L4-software-units", "../") if n["kind"] == "software-unit" else []
    txt = [f"# Level {n['level']} — {n['name']} ({n['kind'].replace('-', ' ')})", "",
           f"**In one line:** {FW['step']['levels'][min(n['level'], 4) - 1]['owes'] if n['kind'] != 'hardware-item' else 'the hardware side of the device, as one item'} — this page is the review packet for `{n['name']}`.", "",
           "| Field | Value |", "|---|---|", f"| Level | {n['level']} of 4 (pinned, IEC 62304) |", f"| Parent | {n.get('parent', '— (top)')} |",
           f"| Children | {', '.join(kids) or '— (code and tests below)'} |", f"| IEC 62304 class | {n['class']} |"]
    if n.get("segregation"): txt.append(f"| Segregation (§5.3.5) | {n['segregation']} |")
    if n.get("code"): txt.append(f"| Code | `10-src/firmware/components/{n['code']}/` (contract: `contracts.md`) |")
    txt += [f"| Model | `Node{''.join(w.capitalize() for w in n['name'].split('-'))}.sysml` (satisfies this node's requirements only) |", "",
            "## Pictures (reading order)", "", "| Picture | Grade | What it shows |", "|---|---|---|"] + (pic_rows(n["path"]) + lvl_pics or ["| — | — | no picture of its own at this node |"])
    r = reqs(n)
    txt += ["", f"## Requirements ({len(r)})", "", "| Id | Derived from | Statement |", "|---|---|---|"] + r + ["", "DRAFT — needs Masood's review. Generated by tools/pinned-index.py."]
    (D / n["path"] / "INDEX.md").write_text("\n".join(txt) + "\n")
for lvl, folder, kind in ((3, "L3-software-items", "software-item"), (4, "L4-software-units", "software-unit")):
    rows = [f"| [{n['name']}]({n['path'].split('/', 1)[1]}/INDEX.md) | {n['parent']} | {n['class']} | {len(reqs(n))} |" for n in FW["nodes"] if n["kind"] == kind]
    (D / folder / "INDEX.md").write_text("\n".join([f"# Level {lvl} — {kind.replace('-', ' ')}s", "", f"**In one line:** {FW['step']['levels'][lvl - 1]['owes']}.", "",
        "| Node | Parent | Class | Requirements |", "|---|---|---|---|"] + rows + ["", "## Level pictures", "", "| Picture | Grade | What it shows |", "|---|---|---|"]
        + (pic_rows(folder) or ["| — | — | the pictures sit in each node's folder |"]) + ["", "DRAFT — needs Masood's review."]) + "\n")
print("index pages written")
