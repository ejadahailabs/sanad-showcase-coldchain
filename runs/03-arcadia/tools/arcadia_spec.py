#!/usr/bin/env python3
"""RUN-03-ARCADIA: the requirement spec for the five Arcadia layers, taken from run 2's text (same product,
same words) and re-homed per layer. Run once: python3 tools/arcadia_spec.py <run-2 folder> > tools/arcadia-spec.json
Rows: {key (run-2 id or new CI key), type (Sanad template), parents (keys), body (Markdown after the front matter),
safetyClass, hazard, layer, element (the model element that satisfies it)}. DRAFT — needs Masood's review."""
import json, pathlib, re, sys

R2 = pathlib.Path(sys.argv[1]) / "03-requirements"

# SA: each system requirement -> the system function that satisfies it (ENV-002/003 = the system as a whole).
FUNCTION = {
 "acquireTemperature": "SYS-001 SYS-012 SAF-003 SAF-020 PRF-001 ENV-004 IFC-001 MNT-001",
 "detectExcursion":    "SYS-002 SYS-017 SYS-018 SYS-024",
 "announceAlarm":      "SYS-003 SYS-004 SYS-006 SYS-019 SAF-001 SAF-002 SAF-011 SAF-014 SAF-015 SAF-019 IFC-002 PRF-002",
 "alarmOnOwnFailure":  "SAF-009 SAF-013",
 "showStatus":         "SYS-005 SYS-007 SYS-011 SYS-013 SYS-022 SAF-012 SAF-016 SAF-021 PRF-004 IFC-004",
 "recordEvents":       "SYS-008 SYS-009 SYS-010 SYS-015 SYS-020 SYS-021 SAF-018 SAF-022",
 "exportHistory":      "SYS-014 IFC-003 PRF-003",
 "keepPowered":        "SYS-016 SYS-023 SAF-005 SAF-008 ENV-001 MNT-002",
 "superviseItself":    "SAF-004 SAF-006 SAF-007 SAF-010 SAF-017 SAF-023 MNT-003",
 "monitor":            "ENV-002 ENV-003",
}
FN = {"MRTM-" + i: f for f, ids in FUNCTION.items() for i in ids.split()}
# LA: run-2 subsystem prefix -> logical component. PA: run-2 leaf prefix -> physical (hw) or behaviour (sw) component.
LA = {"SEN": "sensing", "ALM": "alarm", "DSP": "display", "LOG": "logging", "PWR": "power", "SUP": "supervision"}
PH = {"PRB": "probe", "BZR": "buzzer", "IND": "indicators", "BKA": "backupAlarm", "BKT": "backupTimer", "BKD": "backupDriver",
      "BKH": "holdUp", "OLD": "oled", "RTC": "rtc", "BAT": "battery", "PPT": "powerPath", "MCU": "mcu"}
SW = {"SNI": "sensorItem", "EXI": "excursionItem", "ALI": "alarmItem", "DSI": "displayItem", "LGI": "logItem",
      "USI": "usbItem", "PWI": "powerItem", "SVI": "supervisorItem"}
SA_KINDS = ["system", "safety", "performance", "environmental", "maintainability", "interface"]

def read(f):
    s = f.read_text()
    fm, body = s.split("\n---\n", 1)
    get = lambda k: (re.search(rf"^{k}: (.*)$", fm, re.M) or [None, None])[1]
    return {"id": f.stem, "parents": json.loads(get("uplinks")), "safetyClass": json.loads(get("safetyClass")),
            "hazard": json.loads(get("hazard")) if get("hazard") else None, "body": body.lstrip("\n")}

rows = []
for kind in SA_KINDS:
    for f in sorted((R2 / kind).glob("MRTM-*.md")):
        r = read(f); rows.append({**r, "key": r["id"], "type": kind, "layer": "sa", "element": FN[r["id"]]})
node = sorted((R2 / "mrtm").rglob("MRTM-*.md"))
by = {f.stem: read(f) for f in node}
for f in node:  # LA first (parents must exist before children)
    p = f.stem.split("-")[1]
    if p in LA:
        r = by[f.stem]
        r["body"] = r["body"].replace("subsystem", "logical component")
        rows.append({**r, "key": r["id"], "type": "logical", "layer": "la", "element": LA[p]})
for f in node:
    p = f.stem.split("-")[1]
    if p in PH or p in SW:
        r = dict(by[f.stem])
        # Arcadia has no level below PA inside PA: the backup alarm's own parts derive from what the backup alarm
        # derived from (the LA requirements), not from the backup alarm requirement beside them (F-3-002).
        if p in ("BKT", "BKD", "BKH"):
            r["parents"] = sorted({q for u in r["parents"] for q in by[u]["parents"]})
        rows.append({**r, "key": r["id"], "type": "physical" if p in PH else "software", "layer": "pa",
                     "element": (PH if p in PH else SW)[p]})

# EPBS: one configuration item per thing we build, buy, version and ship (IEC 62304 §8.1.1 identification).
pa_of = lambda comps: [r["key"] for r in rows if r["layer"] == "pa" and r["element"] in comps]
CI = [
 ("CI-FW", "firmwareImage", ["sensorItem", "excursionItem", "alarmItem", "displayItem", "logItem", "usbItem", "powerItem", "supervisorItem"], "C",
  "Firmware image",
  "The firmware configuration item shall be released as one binary image identified by a version number and a SHA-256 checksum, and the monitor shall show that version number at power-up.",
  "IEC 62304 §8.1.1 (identify each configuration item and its version) and §5.8.4 (release). One image holds all eight software items, so one version names the whole software system; the power-up display lets a technician confirm the running version (MRTM-MNT-003).",
  "Inspection of the release record (checksum recomputed from the image); test: power-up screen shows the version."),
 ("CI-MB", "mainBoard", ["mcu", "rtc", "indicators", "buzzer", "powerPath"], "C",
  "Main board assembly",
  "The main board configuration item shall carry a part number and revision on its label, and its bill of materials shall list the microcontroller, real-time clock, indicators, acknowledge button, buzzer stage and power path at that revision.",
  "IEC 62304 §8.1.2 asks the software's SOUP and platform to be identified; the board is the platform the firmware runs on. The BOM (09-hardware) is the content list. Part classes are synthetic (A-40).",
  "Inspection of the label and the BOM against the configuration record."),
 ("CI-PR", "probeAssembly", ["probe"], "C",
  "Probe assembly",
  "The probe configuration item shall carry a part number and revision on its cable label, and a replacement probe of the same part number shall meet the ±0.5 °C accuracy without calibration.",
  "The probe is the field-replaceable part (MRTM-MNT-001); interchangeability is the part's factory accuracy (A-40).",
  "Inspection of the label; test: SP-10 with two probes of the same part number."),
 ("CI-DM", "displayModule", ["oled"], "C",
  "Display module",
  "The display configuration item shall carry a part number and revision, and its bill of materials entry shall name the panel's character height of 5 mm or more.",
  "A bought module; its identity and the one figure the requirements depend on are recorded (MRTM-IFC-004).",
  "Inspection of the BOM entry and the module label."),
 ("CI-BA", "backupAlarmBoard", ["backupAlarm", "backupTimer", "backupDriver", "holdUp"], "C",
  "Backup alarm board",
  "The backup alarm configuration item shall carry a part number and revision on its label, and its bill of materials shall list the backup timer, the backup driver and the hold-up store at that revision.",
  "The independent alarm path (ADR-0013) is its own board so it can be revised and tested apart from the main board (IEC 60601-1 cl. 14 single-fault view).",
  "Inspection of the label and the BOM against the configuration record."),
 ("CI-BP", "batteryPack", ["battery"], "C",
  "Battery pack",
  "The battery configuration item shall carry a part number, a revision and a manufacturing date code on its label.",
  "The only part with a shelf life; the date code lets service replace it on time (MRTM-MNT-002). Synthetic part class (A-40).",
  "Inspection of the label."),
]
for key, el, comps, cls, title, text, why, verify in CI:
    rows.append({"key": key, "id": None, "type": "configuration-item", "layer": "epbs", "element": el, "parents": pa_of(comps),
                 "safetyClass": cls, "hazard": None,
                 "body": f"# {title}\n\n## Description\n\n{text}\n\n## Rationale\n\n{why}\n\n## Verification\n\n{verify}\n\n## Safety\n\n"
                         f"Class {cls}: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.\n"})
json.dump(rows, sys.stdout, ensure_ascii=False, indent=1)
print(f"{len(rows)} rows", file=sys.stderr)
