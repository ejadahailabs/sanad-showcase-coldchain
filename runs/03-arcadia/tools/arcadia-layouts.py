#!/usr/bin/env python3
"""RUN-03-ARCADIA: the arrangement of each view, written through Sanad's own layout writer (tools/layout-headless.cjs,
layoutPackageText — what a drag on the canvas saves). Usage (run folder): python3 tools/arcadia-layouts.py [view]"""
import json, os, subprocess, sys
EXT = os.path.expanduser("~/.cache/tmp-dogfood1/vsix/extension")
L = {  # view: (view file, package, {element: [x, y]}, plain)
 "sa_context": ("Sa_context", "SaContext", {"fridge": [20, 60], "mains": [20, 340], "monitor": [420, 120],
     "recordsComputer": [880, 20], "staff": [880, 300]}, False),
 "la_architecture": ("La_architecture", "LaArchitecture", {"fridge": [20, 60], "sensing": [320, 60], "alarm": [640, 220], "display": [960, 60],
     "staff": [1280, 140], "logging": [960, 400], "recordsComputer": [1280, 400], "power": [320, 400], "mains": [20, 400], "supervision": [640, 560]}, True),
 "pa_interconnection": ("Pa_interconnection", "PaInterconnection", {"probe": [20, 40], "oled": [520, 20], "rtc": [960, 40],
     "mcu": [520, 300], "indicators": [1000, 300], "buzzer": [1000, 560], "backupAlarm": [520, 700], "powerPath": [20, 560], "battery": [20, 800]}, True),
 "pa_backup_alarm": ("Pa_backup_alarm", "PaBackupAlarm", {"mcu": [20, 40], "timer": [360, 40], "driver": [700, 40], "buzzer": [1040, 40],
     "powerPath": [20, 320], "holdUp": [520, 320]}, True),
 "pa_software": ("Pa_software", "PaSoftware", {"sensorItem": [20, 20], "excursionItem": [420, 20], "alarmItem": [820, 20],
     "displayItem": [20, 380], "PaInterconnection::mcu": [420, 260], "logItem": [820, 380],
     "usbItem": [20, 740], "powerItem": [420, 740], "supervisorItem": [820, 740]}, False),
 "pa_architecture": ("Pa_architecture", "PaNodes", {}, True),   # automatic tree, compartments off (the BOM detail is in 09-hardware)
 "epbs_breakdown": ("Epbs_breakdown", "EpbsBreakdown", {"EpbsBreakdown::MonitorProduct": [560, 20], "EpbsBreakdown::MonitorProduct::firmwareImage": [20, 220], "EpbsBreakdown::MonitorProduct::mainBoard": [260, 220], "EpbsBreakdown::MonitorProduct::probeAssembly": [500, 220], "EpbsBreakdown::MonitorProduct::displayModule": [740, 220], "EpbsBreakdown::MonitorProduct::backupAlarmBoard": [980, 220], "EpbsBreakdown::MonitorProduct::batteryPack": [1220, 220]}, False),
 "oa_architecture": ("Oa_architecture", "OaArchitecture", {"mains": [380, 20], "technician": [20, 240], "fridge": [380, 240],
     "nurse": [760, 240], "manager": [760, 480], "stock": [380, 480]}, False),
}
HIDE = {"oa_capabilities": "OaCapabilities::knowTheFridgeIsSafe,OaCapabilities::respondToAnExcursion,OaCapabilities::proveTheStorageHistory,OaCapabilities::trustTheWatching"}
L["oa_capabilities"] = ("Oa_capabilities", "OaCapabilities", {}, False)
for view, (f, pkg, slots, plain) in L.items():
    if len(sys.argv) > 1 and sys.argv[1] != view: continue
    boxes = {f"{pkg}::{p}" if "::" not in p else p: xy for p, xy in slots.items()}
    subprocess.run(["systemd-run", "--user", "--scope", "-q", "-p", "MemoryMax=6G", "-p", "MemorySwapMax=1G", f"--setenv=HIDE={HIDE.get(view, '')}", "node", "tools/layout-headless.cjs",
                    EXT, os.getcwd(), f"06-design/views/{f}View.sysml", view, json.dumps(boxes)] + (["--plain"] if plain else []), check=True)
