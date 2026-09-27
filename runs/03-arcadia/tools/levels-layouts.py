#!/usr/bin/env python3
"""MODEL-LEVELS: the arrangement of every black-box view (node in the middle, neighbours around it),
written through Sanad's own layout writer (tools/layout-headless.cjs). White boxes cannot be arranged:
the canvas places nested parts itself (F-129). Usage (repo root): python3 tools/levels-layouts.py"""
import json, os, subprocess
EXT = os.path.expanduser("~/.cache/tmp-dogfood1/vsix/extension")
C, W1, W2, E1, E2, E3, S = (380, 160), (40, 40), (40, 290), (720, 20), (720, 160), (720, 300), (380, 400)
L = {  # view: (view file, package, {part: slot})
 "system_blackbox_interfaces": ("System", "NodeContext", {"monitor": C, "fridge": W1, "mains": W2, "usbHost": E1, "staff": S}),
 "sensing_blackbox_interfaces": ("Sensing", "NodeSensingContext", {"sensing": C, "fridge": W1, "alarm": E1, "display": E3}),
 "alarm_blackbox_interfaces": ("Alarm", "NodeAlarmContext", {"alarm": (440, 200), "sensing": (40, 40), "power": (40, 250), "display": E1, "logging": (860, 200), "staff": (860, 360), "supervision": (440, 520)}),
 "backup_alarm_blackbox_interfaces": ("Backup_alarm", "NodeBackupAlarmContext", {"backupAlarm": C, "supervision": W1, "power": W2, "buzzer": E2}),
 "display_blackbox_interfaces": ("Display", "NodeDisplayContext", {"display": C, "sensing": W1, "alarm": W2, "staff": E2}),
 "logging_blackbox_interfaces": ("Logging", "NodeLoggingContext", {"logging": C, "alarm": W1, "power": W2, "usbHost": E2}),
 "power_blackbox_interfaces": ("Power", "NodePowerContext", {"power": C, "mainsSupply": W1, "alarm": E1, "logging": E3, "supervision": S}),
 "supervision_blackbox_interfaces": ("Supervision", "NodeSupervisionContext", {"supervision": C, "alarm": E2, "power": W2}),
}
WB = {  # white boxes: parts in the middle, the neighbours their boundary ports meet on the edges
 "system_whitebox_interconnection": ("System", "NodeMrtmWhiteBox", {"fridge": (20, 60), "sensing": (320, 60), "alarm": (640, 220), "display": (960, 60), "staff": (1280, 140),
     "logging": (960, 400), "usbHost": (1280, 400), "power": (320, 400), "mains": (20, 400), "supervision": (640, 560)}),
 "alarm_whitebox_interconnection": ("Alarm", "NodeAlarmWhiteBox", {"sensing": (20, 40), "excursionItem": (320, 40), "alarmItem": (660, 220), "display": (1040, 40),
     "logging": (1040, 220), "supervision": (1040, 400), "power": (20, 400), "backupAlarm": (320, 580), "buzzer": (660, 580), "indicators": (320, 260), "staff": (1040, 580)}),
 "sensing_whitebox_interconnection": ("Sensing", "NodeSensingWhiteBox", {"fridge": (20, 60), "probe": (320, 60), "sensorItem": (640, 60), "alarm": (960, 0), "display": (960, 180)}),
 "display_whitebox_interconnection": ("Display", "NodeDisplayWhiteBox", {"sensing": (20, 40), "alarm": (20, 240), "displayItem": (340, 140), "oled": (660, 140), "staff": (980, 140)}),
 "logging_whitebox_interconnection": ("Logging", "NodeLoggingWhiteBox", {"alarm": (20, 40), "power": (20, 240), "logItem": (340, 140), "rtc": (340, 380), "usbItem": (660, 140), "usbHost": (980, 140)}),
 "power_whitebox_interconnection": ("Power", "NodePowerWhiteBox", {"mainsSupply": (20, 40), "powerPath": (340, 40), "battery": (340, 300), "powerItem": (660, 300),
     "alarm": (980, 40), "supervision": (980, 220), "logging": (980, 400)}),
 "supervision_whitebox_interconnection": ("Supervision", "NodeSupervisionWhiteBox", {"alarm": (20, 180), "supervisorItem": (340, 180), "mcu": (700, 180), "power": (700, 20)}),
 "backup_alarm_whitebox_interconnection": ("Backup_alarm", "NodeBackupAlarmWhiteBox", {"supervision": (20, 40), "timer": (340, 40), "driver": (660, 40), "buzzer": (980, 40), "power": (20, 300), "holdUp": (500, 300)}),
}
for view, (f, pkg, slots) in WB.items():
    boxes = {f"{pkg}::{p}": list(xy) for p, xy in slots.items()}
    subprocess.run(["systemd-run", "--user", "--scope", "-q", "-p", "MemoryMax=6G", "-p", "MemorySwapMax=1G", "node", "tools/layout-headless.cjs",
                    EXT, os.getcwd(), f"06-design/views/{f}_whitebox_interconnectionView.sysml", view, json.dumps(boxes), "--plain"], check=True)
for view, (f, pkg, slots) in L.items():
    boxes = {f"{pkg}::{p}": list(xy) for p, xy in slots.items()}
    subprocess.run(["systemd-run", "--user", "--scope", "-q", "-p", "MemoryMax=6G", "-p", "MemorySwapMax=1G", "node", "tools/layout-headless.cjs",
                    EXT, os.getcwd(), f"06-design/views/{f}_blackbox_interfacesView.sysml", view, json.dumps(boxes)], check=True)
# The use-case picture: hide the usage that repeats its own definition (13 -> 12 boxes).
subprocess.run(["systemd-run", "--user", "--scope", "-q", "-p", "MemoryMax=6G", "-p", "MemorySwapMax=1G", "--setenv=HIDE=MrtmUseCases::detectExcursion", "node",
                "tools/layout-headless.cjs", EXT, os.getcwd(), "06-design/views/Context_top_usecasesView.sysml", "context_top_usecases", "{}"], check=True)
