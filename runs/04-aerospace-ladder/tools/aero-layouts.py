#!/usr/bin/env python3
"""RUN-04: arrangement of the interconnection and tree views, written through Sanad's own layout writer
(tools/layout-headless.cjs — what a drag on the canvas saves). Usage (run folder): python3 tools/aero-layouts.py"""
import json, os, subprocess
EXT = os.path.expanduser("~/.cache/tmp-dogfood1/vsix/extension")
L = {  # view: (view file stem, package, {element: (x, y)}, plain)
 "aircraft_context": ("Aircraft_context", "AircraftContext", {"fridge": (20, 60), "mains": (20, 300), "monitor": (400, 180), "usbHost": (820, 60), "staff": (820, 300)}, True),
 "system_hardware": ("System_hardware", "SystemHardware", {"fridge": (20, 40), "sensorHw": (340, 40), "controllerHw": (700, 260), "alarmHw": (1100, 100),
     "displayHw": (1100, 440), "powerHw": (340, 480), "mains": (20, 480), "staff": (1480, 260)}, True),
 "system_software": ("System_software", "SystemSoftware", {"platformSw": (20, 220), "alarmSw": (380, 40), "displaySw": (760, 40), "recordSw": (380, 400), "exportSw": (760, 400)}, True),
}
TREE = {"system_items": ("System_items", "SystemItems::MonitorSystemItems", (1000, 20),
          [("sensorHw", 20, 200), ("alarmHw", 420, 200), ("controllerHw", 820, 200), ("powerHw", 1220, 200), ("displayHw", 1620, 200),
           ("alarmSw", 20, 560), ("platformSw", 420, 560), ("displaySw", 820, 560), ("recordSw", 1220, 560), ("exportSw", 1620, 560)])}
cap = ["systemd-run", "--user", "--scope", "-q", "-p", "MemoryMax=6G", "-p", "MemorySwapMax=1G", "node", "tools/layout-headless.cjs", EXT, os.getcwd()]
for view, (f, pkg, slots, plain) in L.items():
    boxes = {f"{pkg}::{p}": list(xy) for p, xy in slots.items()}
    subprocess.run(cap + [f"06-design/views/{f}View.sysml", view, json.dumps(boxes)] + (["--plain"] if plain else []), check=True)
for view, (f, root, xy, kids) in TREE.items():
    boxes = {root: list(xy), **{f"{root}::{k}": [x, y] for k, x, y in kids}}
    subprocess.run(cap + [f"06-design/views/{f}View.sysml", view, json.dumps(boxes)], check=True)
