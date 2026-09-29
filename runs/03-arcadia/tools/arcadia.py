#!/usr/bin/env python3
"""RUN-03-ARCADIA builder — does from .ejadah/rew/framework.yaml what Sanad cannot yet (run 2 F-125, F-126; F-3-001).
Usage (run folder):
  python3 tools/arcadia.py satisfy       06-design/<layer>/<L>Satisfy.sysml: each layer's elements satisfy that layer's requirements only
  python3 tools/arcadia.py transitions   06-design/transitions/Transitions.sysml (one `allocate` per element) + one table per layer pair
  python3 tools/arcadia.py index         06-design/<layer>/INDEX.md (pictures in reading order + the requirement ids of the layer)
Every write is idempotent. DRAFT — needs Masood's review."""
import json, pathlib, re, sys, yaml
import fwload  # framework.yaml + tools/levels.yaml (run-local fields, 2026-09-29)
ROOT = pathlib.Path(__file__).resolve().parent.parent
FW = fwload.load()
LAYERS = {l["name"]: l for l in FW["layers"]}
SPEC = json.loads((ROOT / "tools/arcadia-spec.json").read_text())
IDS = json.loads((ROOT / "03-requirements/allocation-log.json").read_text())
PKG = {"oa": "Oa", "sa": "Sa", "la": "La", "pa": "Pa", "epbs": "Epbs"}

# OA: stakeholder need -> operational capability (the only layer whose requirements are not in the spec).
STK = {1: "knowTheFridgeIsSafe", 2: "knowTheFridgeIsSafe", 4: "knowTheFridgeIsSafe", 3: "respondToAnExcursion",
       5: "proveTheStorageHistory", 6: "proveTheStorageHistory", 7: "trustTheWatching", 8: "trustTheWatching"}
# Element name in the spec -> qualified model element that satisfies.
def target(layer, el):
    if layer == "oa": return f"OaCapabilities::{el}"
    if layer == "sa": return "SaContext::monitor" if el == "monitor" else f"SaFunctions::{el}"
    if layer == "la": return f"LaArchitecture::{el}"
    if layer == "pa":
        inside = {"backupTimer": "timer", "backupDriver": "driver", "holdUp": "holdUp"}
        if el in inside: return f"PaBackupAlarm::{inside[el]}"
        return f"PaSoftware::{el}" if el.endswith("Item") else f"PaInterconnection::{el}"
    return f"EpbsBreakdown::product.{el}"

def rows():  # (layer, id, qualified element)
    out = [("oa", f"MRTM-STK-{n:03d}", target("oa", el)) for n, el in sorted(STK.items())]
    return out + [(r["layer"], IDS[r["key"]], target(r["layer"], r["element"])) for r in SPEC]

# ---- Transitions: source element -> target elements, per layer pair -----------------------------------
T = {
 ("oa", "sa"): {
   "OaModel::storeVaccinesCold": ["SaContext::fridge"],
   "OaModel::watchFridgeTemperature": ["SaFunctions::acquireTemperature", "SaFunctions::detectExcursion", "SaFunctions::showStatus"],
   "OaModel::respondToWarmFridge": ["SaFunctions::announceAlarm", "SaFunctions::alarmOnOwnFailure", "SaContext::staff"],
   "OaModel::auditStorageHistory": ["SaFunctions::recordEvents", "SaFunctions::exportHistory", "SaContext::recordsComputer"],
   "OaModel::serviceMeasuringEquipment": ["SaFunctions::superviseItself", "SaContext::staff"],
   "OaModel::rideThroughPowerCut": ["SaFunctions::keepPowered", "SaContext::mains"],
   "OaArchitecture::fridge": ["SaContext::fridge"], "OaArchitecture::stock": ["SaContext::fridge"],
   "OaArchitecture::nurse": ["SaContext::staff"], "OaArchitecture::manager": ["SaContext::staff"],
   "OaArchitecture::technician": ["SaContext::staff"], "OaArchitecture::mains": ["SaContext::mains"]},
 ("sa", "la"): {
   "SaFunctions::acquireTemperature": ["LaArchitecture::sensing"], "SaFunctions::detectExcursion": ["LaArchitecture::alarm"],
   "SaFunctions::announceAlarm": ["LaArchitecture::alarm"], "SaFunctions::alarmOnOwnFailure": ["LaArchitecture::alarm"],
   "SaFunctions::showStatus": ["LaArchitecture::display"], "SaFunctions::recordEvents": ["LaArchitecture::logging"],
   "SaFunctions::exportHistory": ["LaArchitecture::logging"], "SaFunctions::keepPowered": ["LaArchitecture::power"],
   "SaFunctions::superviseItself": ["LaArchitecture::supervision"], "SaContext::monitor": ["LaArchitecture"]},
 ("la", "pa"): {
   "LaArchitecture::sensing": ["PaInterconnection::probe", "PaSoftware::sensorItem"],
   "LaArchitecture::alarm": ["PaSoftware::excursionItem", "PaSoftware::alarmItem", "PaInterconnection::buzzer",
                             "PaInterconnection::indicators", "PaInterconnection::backupAlarm"],
   "LaArchitecture::display": ["PaInterconnection::oled", "PaSoftware::displayItem"],
   "LaArchitecture::logging": ["PaInterconnection::rtc", "PaSoftware::logItem", "PaSoftware::usbItem"],
   "LaArchitecture::power": ["PaInterconnection::battery", "PaInterconnection::powerPath", "PaSoftware::powerItem"],
   "LaArchitecture::supervision": ["PaInterconnection::mcu", "PaSoftware::supervisorItem"]},
 ("pa", "epbs"): {
   **{f"PaSoftware::{s}": ["EpbsBreakdown::product.firmwareImage"] for s in
      ["sensorItem", "excursionItem", "alarmItem", "displayItem", "logItem", "usbItem", "powerItem", "supervisorItem"]},
   **{f"PaInterconnection::{h}": ["EpbsBreakdown::product.mainBoard"] for h in ["mcu", "rtc", "indicators", "buzzer", "powerPath"]},
   "PaInterconnection::probe": ["EpbsBreakdown::product.probeAssembly"], "PaInterconnection::oled": ["EpbsBreakdown::product.displayModule"],
   "PaInterconnection::backupAlarm": ["EpbsBreakdown::product.backupAlarmBoard"], "PaBackupAlarm::timer": ["EpbsBreakdown::product.backupAlarmBoard"],
   "PaBackupAlarm::driver": ["EpbsBreakdown::product.backupAlarmBoard"], "PaBackupAlarm::holdUp": ["EpbsBreakdown::product.backupAlarmBoard"],
   "PaInterconnection::battery": ["EpbsBreakdown::product.batteryPack"]},
}
# SA -> LA: SaContext::monitor (ENV-002/003, the system as a whole) goes to the whole logical architecture; not an `allocate` (no element).

def satisfy():
    by = {}
    for layer, rid, el in rows(): by.setdefault(layer, []).append((rid, el))
    for layer, items in by.items():
        name = PKG[layer] + "Trace"  # file sorts after the layer's model files: Pilot resolves qualified names only backwards (F-3-004)
        body = "\n".join(f"    satisfy '{rid}' by {el};" for rid, el in sorted(items))
        (ROOT / "06-design" / layer / f"{name}.sysml").write_text(
            f"// {name} — layer `{layer}` ({LAYERS[layer]['title']}) of .ejadah/rew/framework.yaml. Generated by tools/arcadia.py satisfy — edit there.\n"
            f"// Covers ONLY this layer's requirements ({len(items)}): rule `satisfy: own-layer-only`.\n"
            f"private import ProjectRequirements::*;\n\npackage {name} {{\n{body}\n}}\n")
        print(f"satisfy {layer}: {len(items)}")

def transitions():
    out = ["// Transitions (Arcadia): one `allocate` per element, one package per layer pair. Generated by tools/arcadia.py transitions.",
           "// Read by tools/level-check.py (rule `transitions: complete`); tables in the .md files beside this one."]
    elem_reqs = {}
    for layer, rid, el in rows(): elem_reqs.setdefault(el, []).append(rid)
    ups = {}
    for f in (ROOT / "03-requirements").rglob("MRTM-*.md"):
        ups[f.stem] = re.findall(r'"([^"]+)"', re.search(r"^uplinks: (.*)$", f.read_text(), re.M).group(1))
    for (a, b), m in T.items():
        pkg = f"Transition{PKG[a]}To{PKG[b]}"
        lines = [f"    allocate {s} to {t};" for s, ts in m.items() for t in ts if "::" in t]
        out.append(f"\npackage {pkg} {{\n    doc /* {LAYERS[a]['title']} → {LAYERS[b]['title']}: {next(x['what'] for x in FW['transitions'] if x['from'] == a)}. */\n" + "\n".join(lines) + "\n}")
        md = [f"# Transition {a.upper()} → {b.upper()} — {LAYERS[a]['title']} to {LAYERS[b]['title']}", "",
              f"**In one line:** where each {a.upper()} element went one layer down — like a moving list that says which box went to which room.", "",
              f"Model: `06-design/transitions/Transitions.sysml`, package `{pkg}` (one Sanad `allocate` per row). Generated by `tools/arcadia.py transitions`.", "",
              f"| {a.upper()} element | goes to ({b.upper()}) | {a.upper()} requirements it carries | {b.upper()} requirements derived from them |", "|---|---|---|---|"]
        for s, ts in m.items():
            src = elem_reqs.get(s, [])
            kids = sorted({k for k, us in ups.items() for t in ts for k2 in [k] if k in elem_reqs.get(t, []) and set(us) & set(src)})
            md.append(f"| `{s.split('::')[-1]}` | {', '.join('`' + t.split('::')[-1] + '`' for t in ts)} | {' '.join(src) or '—'} | {' '.join(kids) or '—'} |")
        (ROOT / f"06-design/transitions/{a}-to-{b}.md").write_text("\n".join(md) + "\n")
        print(f"transition {a}->{b}: {len(lines)} allocate")
    (ROOT / "06-design/transitions/Transitions.sysml").write_text("\n".join(out) + "\n")

SAYS = {  # one plain line per picture: what a reader sees in it
 "oa_capabilities": "What the clinic must be able to do, and who takes part — four capabilities, no device yet.",
 "oa_architecture": "Who is in the clinic, what each one does, and who deals with whom.",
 "sa_context": "The monitor as ONE box with its four actors and five boundary ports; its nine system functions listed inside.",
 "sa_functions": "The nine system functions and what they hand each other (system data flow).",
 "sa_alarm_chain": "The excursion-alarm functional chain: acquire → detect → announce / show / record. Budget ≤ 5 s in the package doc (the picture cannot show time yet, run 2 F-123).",
 "la_architecture": "Six logical components and the logical wires between them, with the actors at the edge.",
 "la_interfaces": "The seven logical interfaces: what one logical component hands another.",
 "pa_architecture": "What is inside the box: nine node components (hardware).",
 "pa_interconnection": "The physical links: which part is wired to which, by bus or line kind.",
 "pa_backup_alarm": "Inside the backup alarm board: timer → driver → buzzer, fed by the hold-up store.",
 "pa_software": "The eight software items (with their IEC 62304 class) deployed on the microcontroller.",
 "epbs_breakdown": "The six configuration items we build, buy, version and ship.",
}

def index():
    for l in FW["layers"]:
        ids = sorted(r for layer, r, _ in rows() if layer == l["name"])
        nxt = next((t for t in FW["transitions"] if t["from"] == l["name"]), None)
        md = [f"# {l['title']} ({l['name'].upper()}) — layer {FW['layers'].index(l) + 1} of 5", "",
              f"**Question this layer answers:** {l['question']}", "",
              f"**Read in this order** (Arcadia viewpoints, drawn by Sanad's canvas, looked at):", "",
              "| # | Picture | Arcadia viewpoint | What you see |", "|---|---|---|---|"]
        for i, v in enumerate(l["views"], 1):
            md.append(f"| {i} | ![{v['name']}](pictures/{v['name']}.png) `{v['name']}.png` | {v['arcadia']} | {SAYS[v['name']]} |")
        md += ["", f"**Requirements of this layer ({len(ids)}, {l['requirement_kind']}):** " + " ".join(ids), "",
               f"**Model:** the `.sysml` files in this folder; `{PKG[l['name']]}Trace.sysml` holds the satisfy lines (this layer's requirements only).",
               f"**Derived from:** {('layer ' + l['derive'].upper()) if l['derive'] else 'nothing — these are the stakeholder needs'}."]
        if nxt: md.append(f"**Goes down to:** [{nxt['to'].upper()}](../{nxt['to']}/INDEX.md) through the transition table [`../transitions/{nxt['from']}-to-{nxt['to']}.md`](../transitions/{nxt['from']}-to-{nxt['to']}.md).")
        (ROOT / "06-design" / l["path"] / "INDEX.md").write_text("\n".join(md) + "\n")
        print(f"index {l['name']}: {len(l['views'])} pictures, {len(ids)} requirements")

if __name__ == "__main__":
    {"satisfy": satisfy, "transitions": transitions, "index": index}[sys.argv[1]]()
