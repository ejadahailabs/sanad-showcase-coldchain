#!/usr/bin/env python3
"""RUN-05: the arrangement of every internal-block view (flow left to right, neighbours on the edges), written through
Sanad's own layout writer (tools/layout-headless.cjs). Usage (run folder): python3 tools/pinned-layouts.py"""
import json, os, subprocess
EXT = os.path.expanduser("~/.cache/tmp-dogfood1/vsix/extension")
CAP = ["systemd-run", "--user", "--scope", "-q", "-p", "MemoryMax=6G", "-p", "MemorySwapMax=1G"]
L = {  # view: (package, {part: slot}, plain = no compartments, hidden)
 "L1_device_context": ("NodeDeviceContext", {"device": (380, 160), "fridge": (40, 40), "mains": (40, 290), "usbHost": (720, 40), "staff": (720, 290)}, True, []),
 "L1_device_block": ("NodeDeviceWhiteBox", {"fridge": (20, 40), "mains": (20, 240), "hardwareItem": (360, 120), "softwareSystem": (360, 400),
                     "usbHost": (760, 40), "staff": (760, 240)}, True, []),
 "L2_hardware_item_parts": ("NodeHardwareItemParts", {"probe": (20, 40), "ackButton": (20, 240), "redLed": (20, 440), "mcu": (360, 200), "oled": (720, 20),
                            "rtc": (720, 200), "buzzer": (720, 400), "backupTimer": (360, 480), "holdUp": (360, 700), "powerPath": (20, 700), "battery": (20, 900)}, True, []),
 "L2_software_system_architecture": ("NodeSoftwareSystemArchitecture", {"sensorItem": (20, 20), "excursionItem": (420, 20), "alarmItem": (820, 20), "displayItem": (1220, 20),
                            "supervisorItem": (420, 360), "logItem": (820, 360), "powerItem": (1220, 360), "usbItem": (820, 700)}, False, []),
 "L2_software_system_hardware": ("NodeSoftwareSystemHardwareInterface", {"sensorItem": (20, 20), "alarmItem": (20, 150), "displayItem": (20, 280), "logItem": (20, 410),
                            "usbItem": (20, 540), "powerItem": (20, 670), "supervisorItem": (20, 800), "hardwareItem": (700, 300)}, True, ["excursionItem"]),
 "L3_sensor_item_structure": ("NodeSensorItemStructure", {"hardwareItem": (20, 100), "sensorSampler": (360, 100), "excursionItem": (700, 20), "displayItem": (700, 200)}, True, []),
 "L3_excursion_item_structure": ("NodeExcursionItemStructure", {"sensorItem": (20, 100), "limitEvaluator": (360, 100), "alarmItem": (700, 100), "supervisorItem": (360, 320)}, True, []),
 "L3_alarm_item_structure": ("NodeAlarmItemStructure", {"excursionItem": (20, 20), "powerItem": (20, 220), "supervisorItem": (20, 420), "alarmMgr": (380, 200),
                             "displayItem": (760, 20), "logItem": (760, 220), "hardwareItem": (760, 420)}, True, []),
 "L3_display_item_structure": ("NodeDisplayItemStructure", {"sensorItem": (20, 20), "alarmItem": (20, 220), "displayMgr": (360, 120), "hardwareItem": (700, 120)}, True, []),
 "L3_log_item_structure": ("NodeLogItemStructure", {"alarmItem": (20, 20), "powerItem": (20, 180), "supervisorItem": (20, 340), "eventLog": (360, 180),
                           "historyRing": (700, 180), "usbItem": (1040, 180), "rtcClock": (360, 420), "hardwareItem": (700, 420)}, True, []),
 "L3_usb_item_structure": ("NodeUsbItemStructure", {"logItem": (20, 100), "usbExport": (360, 100), "hardwareItem": (700, 100)}, True, []),
 "L3_power_item_structure": ("NodePowerItemStructure", {"hardwareItem": (20, 100), "powerMon": (360, 100), "alarmItem": (700, 20), "logItem": (700, 200)}, True, []),
 "L3_supervisor_item_structure": ("NodeSupervisorItemStructure", {"alarmItem": (20, 20), "wdtKicker": (360, 20), "hardwareItem": (700, 20), "diagnostics": (360, 220),
                                  "logItem": (700, 220), "configMgr": (360, 420), "excursionItem": (700, 420)}, True, []),
}
def run(view, boxes, plain, hidden, fname=None):
    env = ["--setenv=HIDE=" + ",".join(hidden)] if hidden else []
    subprocess.run(CAP + env + ["node", "tools/layout-headless.cjs", EXT, os.getcwd(), f"06-design/views/{fname or view}View.sysml", view, json.dumps(boxes)]
                   + (["--plain"] if plain else []), check=True)
for view, (pkg, slots, plain, hidden) in L.items():
    run(view, {f"{pkg}::{p}": list(xy) for p, xy in slots.items()}, plain, [f"{pkg}::{h}" for h in hidden])
# the use-case picture: hide the usage that repeats its own definition (13 -> 12 boxes)
run("L1_device_usecases", {}, False, ["MrtmUseCases::detectExcursion"])
