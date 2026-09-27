#!/usr/bin/env python3
"""MODEL-LEVELS: writes one SysML v2 package per node of .ejadah/rew/framework.yaml into 06-design/<node-path>/.
The structure of each node (black box, its neighbours, white box) is written below as SysML text (MANUAL, F-127);
the `satisfy` lines are generated from the requirement files: a node satisfies ITS OWN requirements only.
Usage (repo root): python3 tools/levels_model.py.  DRAFT — needs Masood's review."""
import pathlib, re, sys, yaml
ROOT = pathlib.Path(__file__).resolve().parent.parent
FW = yaml.safe_load((ROOT / ".ejadah/rew/framework.yaml").read_text())
NODES = {n["name"]: n for n in FW["nodes"]}

def pkg(name): return "Node" + "".join(w.capitalize() for w in name.split("-"))

# node -> (imports, doc, body, satisfy-by feature); body may use {pkg} names of other nodes literally.
M = {}
PORTS = """
    // Logical flows between the subsystems (what crosses a subsystem boundary). The hardware wires are in MrtmInterfaces.
    port def SampleFlow { out item sample : TemperatureSample; }
    port def ExcursionFlow { out item excursion : ExcursionState; }
    port def AlarmStateFlow { out item alarmState : ExcursionState; }
    port def RecordFlow { out item rec : LogRecord; }
    port def PowerEventFlow { out item evt : PowerEvent; }
    port def HeartbeatFlow { out attribute beat : Natural; }
    port def HistoryFlow { out item file : LogFile; }
    // What people meet: the alarm signals (sound, light, button) and the screen.
    port def AlarmHmiPort { out item signal : AlarmCommand; in item press : ButtonPress; }
    port def ScreenPort { out item screenFrame : DisplayFrame; }
    // The alarm signals people meet, one item each so a scenario reads without its message names (F-131).
    item def LowPriorityLight :> AlarmCommand;
    item def ExcursionSound :> AlarmCommand;
    item def AudioPaused :> AlarmCommand;
    item def LowBatterySound :> AlarmCommand;
    item def BackupSound :> AlarmCommand;
    item def ProbeFaultSound :> AlarmCommand;
    // The people at the monitor (nurse, pharmacist, manager, technician): a neighbour of several nodes.
    part def Staff {
        port alarmSignals : ~AlarmHmiPort;
        port screen : ~ScreenPort;
    }
"""

M["context"] = (["MrtmInterfaces", "NodePorts", "NodeMrtm", "MrtmSystemContext"],
 "TOP (MagicGrid problem domain): the monitor as ONE box in the clinic, with the people and things it touches. Satisfies the stakeholder requirements only.",
 """
    // Package-level parts so the canvas can place them (F-129). The monitor is ONE box here.
    part fridge : Fridge;
    part monitor : MonitorSystem;
    part mains : MainsSupply;
    part usbHost : UsbHost;
    part staff : Staff;
    interface airContact : ThermalContact connect fridge.air to monitor.air;
    interface mainsFeed : PowerFeed connect mains.output to monitor.mains;
    interface historyLink : UsbLink connect monitor.usb to usbHost.usb;
    connect monitor.alarmSignals to staff.alarmSignals;
    connect monitor.screen to staff.screen;
""", "monitor")

M["system"] = (["MrtmInterfaces", "NodePorts", "NodeSensing", "NodeAlarm", "NodeDisplay", "NodeLogging", "NodePower", "NodeSupervision"],
 "SYSTEM node (IEC 60601-1 PEMS; IEC 62304 software system, class C). Black box: MonitorSystem and its five boundary ports. White box: the six subsystems and their wires.",
 """
    part def MonitorSystem {
        doc /* Black box: what the clinic sees of the monitor. */
        port air : ~ThermalPort;
        port mains : ~PowerPort;
        port usb : UsbPort;
        port alarmSignals : AlarmHmiPort;
        port screen : ScreenPort;
    }
    part def MonitorWhiteBox :> MonitorSystem {
        doc /* White box: six subsystems. Each is a black box of its own one level down. */
        part sensing : Sensing;
        part alarm : Alarm;
        part display : Display;
        part logging : Logging;
        part power : Power;
        part supervision : Supervision;
        connect air to sensing.air;
        connect sensing.samples to alarm.samples;
        connect sensing.samples to display.samples;
        connect alarm.alarmState to display.alarmState;
        connect alarm.records to logging.records;
        connect power.records to logging.records;
        connect power.powerEvents to alarm.powerEvents;
        connect alarm.heartbeat to supervision.heartbeat;
        connect supervision.kick to alarm.kick;
        connect power.supply to supervision.supply;
        connect power.supply to alarm.supply;
        connect mains to power.mains;
        connect logging.usb to usb;
        connect alarm.alarmSignals to alarmSignals;
        connect display.screen to screen;
    }
    part monitor : MonitorSystem;
""", "monitor")

CTX = {}  # node -> (me, meDef, neighbours, wires); written in main as its own package (no sibling import cycle)
def sub_ctx(me, meDef, neighbours, wires):
    CTX["backup-alarm" if me == "backupAlarm" else me] = (me, meDef, neighbours, wires)
    return ""

def port_types():
    """(def, port) -> type, read from every node body and the library context/port defs."""
    texts = [b for _, _, b, _ in M.values()] + [b for b, _ in LEAF.values()] + [PORTS] + [(ROOT / f).read_text() for f in
        ("06-design/system/MrtmSystemContext.sysml", "06-design/system/MrtmPhysical.sysml", "06-design/hardware/MrtmHardware.sysml")]
    pt, base = {}, {}
    for t in texts:
        for d, b in re.findall(r"part def (\w+)\s*:>\s*([\w:]+)", t): base[d] = b.split("::")[-1]
        for d, body in re.findall(r"part def (\w+)[^{]*\{(.*?)\n    \}", t, re.S):
            for pn, ty in re.findall(r"port (\w+) : (~?\w+);", body): pt[(d, pn)] = ty
    class PT(dict):
        def __missing__(self, k): return self[(base[k[0]], k[1])]
    return PT(pt)

def ctx_text(me, meDef, neighbours, wires, pt):
    # Package-level parts, so the canvas can place them (nested parts cannot be placed, F-129).
    # The node keeps its full type; each neighbour is drawn by the ports it shares with the node ONLY
    # (a typed neighbour would bring every port it has and bury the node's boundary).
    lines = [f"    doc /* Black box: {me} and its neighbours, each shown by the ports it shares with {me} only. */",
             f"    part {me} : {meDef};"]
    for n, d in neighbours:
        used = sorted({e.split(".")[1] for w in wires for e in w if e.split(".")[0] == n})
        ports = " ".join(f"port {u} : {pt[(d, u)]};" for u in used)
        lines.append(f"    part {n} {{ {ports} }}  // one {d}: only the ports it shares with {me}")
    return "\n".join(lines) + "\n" + "\n".join(f"    connect {a} to {b};" for a, b in wires) + "\n"

SYSTEM_BOUNDARY = {"air": [("fridge", "Fridge", "air")], "mains": [("mains", "MainsSupply", "output")], "usb": [("usbHost", "UsbHost", "usb")],
                   "alarmSignals": [("staff", "Staff", "alarmSignals")], "screen": [("staff", "Staff", "screen")]}

def split_white_box(node, body, pt):
    """The white box def keeps the composition (parts only); the wiring goes to a package of its own with
    package-level parts the canvas can place (F-129). A wire to a boundary port is drawn to the neighbour
    that port meets outside (from the node's black box), so the picture is the white box in its context."""
    m = re.search(r"    part def (\w+WhiteBox) :> (\w+) \{\n(.*?)\n    \}\n", body, re.S)
    wb, bb, inner = m.group(1), m.group(2), m.group(3).split("\n")
    parts = [l for l in inner if l.strip().startswith(("part ", "doc "))]
    wires = [l.strip() for l in inner if " connect " in l or l.strip().startswith("connect ")]
    new_body = body[:m.start()] + f"    part def {wb} :> {bb} {{\n" + "\n".join(parts) + \
        f"\n        // its wires: package {pkg(node)}WhiteBox (one file beside this one)\n    }}\n" + body[m.end():]
    if node == "system": bmap = SYSTEM_BOUNDARY
    else:
        me, _, nbrs, cw = CTX[node]; nd = dict(nbrs); bmap = {}
        for a, b in cw:
            for x, y in ((a, b), (b, a)):
                if x.split(".")[0] == me: bmap.setdefault(x.split(".")[1], []).append((y.split(".")[0], nd[y.split(".")[0]], y.split(".")[1]))
    stubs, out = {}, []
    for w in wires:
        mm = re.match(r"(.*?connect )(\S+) to (\S+);", w)
        head, a, b = mm.groups()
        ends_a = [(f"{n}.{q}", n, d, q) for n, d, q in bmap[a]] if "." not in a else [(a, None, None, None)]
        ends_b = [(f"{n}.{q}", n, d, q) for n, d, q in bmap[b]] if "." not in b else [(b, None, None, None)]
        for ea in ends_a:
            for eb in ends_b:
                for e in (ea, eb):
                    if e[1]: stubs.setdefault((e[1], e[2]), set()).add(e[3])
                h = head if len(ends_a) * len(ends_b) == 1 else "connect "
                out.append(f"    {h}{ea[0]} to {eb[0]};")
    lines = [l.replace("        ", "    ", 1) for l in parts if l.strip().startswith("part ")]
    for (n, d), ps in sorted(stubs.items()):
        lines.append(f"    part {n} {{ " + " ".join(f"port {q} : {pt[(d, q)]};" for q in sorted(ps)) + f" }}  // outside {node}: one {d}")
    text = f"    doc /* White box of {bb} in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is {pkg(node) if node != 'system' else 'NodeMrtm'}::{wb}. */\n" + \
        "\n".join(lines) + "\n" + "\n".join(dict.fromkeys(out)) + "\n"
    return new_body, text

SUBS = ["NodeSensing", "NodeAlarm", "NodeDisplay", "NodeLogging", "NodePower", "NodeSupervision"]
def imps(me, extra): return ["MrtmInterfaces", "NodePorts", "MrtmSystemContext"] + extra

M["sensing"] = (imps("NodeSensing", ["NodeProbe", "NodeSensorItem"]),
 "SENSING subsystem (class C): turns fridge air into one valid-or-invalid sample every 2 s.",
 """
    part def Sensing {
        port air : ~ThermalPort;
        port samples : SampleFlow;
    }
""" + sub_ctx("sensing", "Sensing", [("fridge", "Fridge"), ("alarm", "Alarm"), ("display", "Display")],
              [("fridge.air", "sensing.air"), ("sensing.samples", "alarm.samples"), ("sensing.samples", "display.samples")]) + """
    part def SensingWhiteBox :> Sensing {
        part probe : Probe;
        part sensorItem : SensorSwItem;
        connect air to probe.air;
        interface probeLink : ProbeBus connect sensorItem.bus to probe.dq;
        connect sensorItem.samples to samples;
    }
    part sensing : Sensing;
""", "sensing")

M["alarm"] = (imps("NodeAlarm", ["NodeExcursionItem", "NodeAlarmItem", "NodeBuzzer", "NodeIndicators", "NodeBackupAlarm"]),
 "ALARM-AND-INDICATION subsystem (class C): decides the alarm condition and gives the alarm signals (IEC 60601-1-8 frame). The only branch that goes one step deeper (backup alarm).",
 """
    part def Alarm {
        port samples : ~SampleFlow;
        port alarmState : AlarmStateFlow;
        port records : RecordFlow;
        port powerEvents : ~PowerEventFlow;
        port heartbeat : HeartbeatFlow;
        port kick : ~GpioOutPort;
        port supply : ~PowerPort;
        port alarmSignals : AlarmHmiPort;
    }
""" + sub_ctx("alarm", "Alarm", [("sensing", "Sensing"), ("display", "Display"), ("logging", "Logging"), ("power", "Power"), ("supervision", "Supervision"), ("staff", "Staff")],
              [("sensing.samples", "alarm.samples"), ("alarm.alarmState", "display.alarmState"), ("alarm.records", "logging.records"), ("power.powerEvents", "alarm.powerEvents"),
               ("alarm.heartbeat", "supervision.heartbeat"), ("supervision.kick", "alarm.kick"), ("power.supply", "alarm.supply"), ("alarm.alarmSignals", "staff.alarmSignals")]) + """
    part def AlarmWhiteBox :> Alarm {
        part excursionItem : ExcursionSwItem;
        part alarmItem : AlarmSwItem;
        part buzzer : AlarmBuzzer;
        part indicators : Indicators;
        part backupAlarm : BackupAlarmAssembly;
        connect samples to excursionItem.samples;
        connect excursionItem.excursion to alarmItem.excursion;
        connect alarmItem.alarmState to alarmState;
        connect alarmItem.records to records;
        connect powerEvents to alarmItem.powerEvents;
        connect alarmItem.heartbeat to heartbeat;
        interface buzzerLine : SignalLine connect alarmItem.buzzerDrive to buzzer.drive;
        interface lightLine : SignalLine connect alarmItem.lightDrive to indicators.redDrive;
        interface ackLine : ButtonLine connect alarmItem.button to indicators.contact;
        connect kick to backupAlarm.kick;
        connect supply to backupAlarm.supply;
        interface backupLine : SignalLine connect backupAlarm.drive to buzzer.backupDrive;
        connect buzzer.sound to alarmSignals;
    }
    part alarm : Alarm;
""", "alarm")

M["backup-alarm"] = (["MrtmInterfaces", "NodePorts", "NodeBackupTimer", "NodeBackupDriver", "NodeHoldUp"],
 "BACKUP ALARM assembly (class C risk control for HAZ-003, HAZ-005; ADR-0013): the step repeats here — its own black box and white box — because it needs no processor and must be argued on its own.",
 """
    part def BackupAlarmAssembly {
        port kick : ~GpioOutPort;
        port supply : ~PowerPort;
        port drive : GpioOutPort;
    }
""" + sub_ctx("backupAlarm", "BackupAlarmAssembly", [("buzzer", "AlarmBuzzer"), ("supervision", "Supervision"), ("power", "Power")],
              [("supervision.kick", "backupAlarm.kick"), ("power.supply", "backupAlarm.supply"), ("backupAlarm.drive", "buzzer.backupDrive")]) + """
    part def BackupAlarmWhiteBox :> BackupAlarmAssembly {
        part timer : BackupTimer;
        part driver : BackupDriver;
        part holdUp : HoldUp;
        interface kickLine : SignalLine connect kick to timer.kick;
        connect timer.alarmOut to driver.input;
        connect driver.output to drive;
        interface charge : PowerFeed connect supply to holdUp.charge;
        interface timerFeed : PowerFeed connect holdUp.terminal to timer.holdUp;
        interface driverFeed : PowerFeed connect holdUp.terminal to driver.supply;
    }
    part backupAlarm : BackupAlarmAssembly;
""", "backupAlarm")

M["display"] = (imps("NodeDisplay", ["NodeOled", "NodeDisplayItem"]),
 "DISPLAY subsystem (class C: carries two risk controls with no other signal, ADR-0034): shows temperature, warnings and messages.",
 """
    part def Display {
        port samples : ~SampleFlow;
        port alarmState : ~AlarmStateFlow;
        port screen : ScreenPort;
    }
""" + sub_ctx("display", "Display", [("sensing", "Sensing"), ("alarm", "Alarm"), ("staff", "Staff")],
              [("sensing.samples", "display.samples"), ("alarm.alarmState", "display.alarmState"), ("display.screen", "staff.screen")]) + """
    part def DisplayWhiteBox :> Display {
        part displayItem : DisplaySwItem;
        part oled : Oled;
        connect samples to displayItem.samples;
        connect alarmState to displayItem.alarmState;
        interface panelLink : I2cBus connect displayItem.i2c to oled.i2c;
        connect oled.picture to screen;
    }
    part display : Display;
""", "display")

M["logging"] = (imps("NodeLogging", ["NodeRtc", "NodeLogItem", "NodeUsbItem"]),
 "LOGGING-AND-HISTORY subsystem (class C; its USB item is class B with segregation, ADR-0034): keeps 10 000 time-stamped events and gives them read-only over USB.",
 """
    part def Logging {
        port records : ~RecordFlow;
        port usb : UsbPort;
    }
""" + sub_ctx("logging", "Logging", [("alarm", "Alarm"), ("power", "Power"), ("usbHost", "UsbHost")],
              [("alarm.records", "logging.records"), ("power.records", "logging.records"), ("logging.usb", "usbHost.usb")]) + """
    part def LoggingWhiteBox :> Logging {
        part logItem : LogSwItem;
        part rtc : Rtc;
        part usbItem : UsbSwItem;
        connect records to logItem.records;
        interface clockLink : I2cBus connect logItem.clock to rtc.i2c;
        connect logItem.history to usbItem.history;
        connect usbItem.usb to usb;
    }
    part logging : Logging;
""", "logging")

M["power"] = (imps("NodePower", ["NodeBattery", "NodePowerPath", "NodePowerItem"]),
 "POWER subsystem (class C): mains or battery, switch-over, and the power events.",
 """
    part def Power {
        port mains : ~PowerPort;
        port supply : PowerPort;
        port powerEvents : PowerEventFlow;
        port records : RecordFlow;
    }
""" + sub_ctx("power", "Power", [("mainsSupply", "MainsSupply"), ("alarm", "Alarm"), ("logging", "Logging"), ("supervision", "Supervision")],
              [("mainsSupply.output", "power.mains"), ("power.supply", "supervision.supply"), ("power.supply", "alarm.supply"),
               ("power.powerEvents", "alarm.powerEvents"), ("power.records", "logging.records")]) + """
    part def PowerWhiteBox :> Power {
        part powerPath : SupplyPath;
        part battery : MainBattery;
        part powerItem : PowerSwItem;
        connect mains to powerPath.mainsIn;
        interface batteryFeed : PowerFeed connect battery.terminal to powerPath.batteryIn;
        connect powerPath.output to supply;
        connect powerPath.mainsOk to powerItem.mainsSense;
        interface batterySense : PowerFeed connect battery.terminal to powerItem.batterySense;
        connect powerItem.events to powerEvents;
        connect powerItem.records to records;
    }
    part power : Power;
""", "power")

M["supervision"] = (imps("NodeSupervision", ["NodeMcu", "NodeSupervisorItem"]),
 "SUPERVISION subsystem (class C): the processor, its watchdogs, the self-tests and the band check.",
 """
    part def Supervision {
        port heartbeat : ~HeartbeatFlow;
        port kick : GpioOutPort;
        port supply : ~PowerPort;
    }
""" + sub_ctx("supervision", "Supervision", [("alarm", "Alarm"), ("power", "Power")],
              [("alarm.heartbeat", "supervision.heartbeat"), ("supervision.kick", "alarm.kick"), ("power.supply", "supervision.supply")]) + """
    part def SupervisionWhiteBox :> Supervision {
        part mcu : Mcu;
        part supervisorItem : SupervisorSwItem;
        connect heartbeat to supervisorItem.heartbeat;
        connect supervisorItem.pulses to mcu.kickCommand;
        connect mcu.wdtKickPin to kick;
        connect supply to mcu.supply;
    }
    part supervision : Supervision;
""", "supervision")

# ---- leaves: (definition text, satisfy-by feature) ----
def leaf(defname, base, ports, doc, by=None, extra=""):
    p = "\n".join(f"        port {x};" for x in ports)
    usage = defname[0].lower() + defname[1:]
    body = f"""
    part def {defname} :> {base} {{
        doc /* {doc} */
{p}{extra}
    }}
    part {usage} : {defname};
"""
    return body, f"{usage}.{by}" if by else usage

HW, SW = "MrtmHardware", "MrtmSoftware"
LEAF = {
 "probe": leaf("Probe", f"{HW}::Ds18b20", [], "Chosen part: 1-Wire digital probe on a lead in the fridge air (ADR-0009, ADR-0015)."),
 "sensor-item": leaf("SensorSwItem", f"{SW}::SensorItem", ["bus : OneWirePort", "samples : SampleFlow"],
                     "Software item (IEC 62304 §5.3.1), class C. Unit: sensorSampler.", "sensorSampler"),
 "excursion-item": leaf("ExcursionSwItem", f"{SW}::ExcursionItem", ["samples : ~SampleFlow", "excursion : ExcursionFlow"],
                        "Software item, class C. Unit: limitEvaluator (early, confirmed, end).", "limitEvaluator"),
 "alarm-item": leaf("AlarmSwItem", f"{SW}::AlarmItem", ["excursion : ~ExcursionFlow", "alarmState : AlarmStateFlow", "records : RecordFlow",
                    "powerEvents : ~PowerEventFlow", "heartbeat : HeartbeatFlow", "buzzerDrive : GpioOutPort", "lightDrive : GpioOutPort", "button : GpioInPort"],
                    "Software item, class C. Unit: alarmMgr (the alarm state machine).", "alarmMgr"),
 "buzzer": leaf("AlarmBuzzer", f"{HW}::PiezoBuzzerStage", ["sound : AlarmHmiPort"], "Chosen part: piezo sounder with two OR-ed drive inputs (ADR-0017)."),
 "indicators": leaf("Indicators", f"{HW}::Component", ["redDrive : ~GpioOutPort", "contact : ~GpioInPort"],
                    "Chosen parts: red and green indicator lamps and the acknowledge button, on one front panel.", None,
                    "\n        part redLed : MrtmHardware::IndicatorLed;\n        part greenLed : MrtmHardware::IndicatorLed;\n        part ackButton : MrtmHardware::TactileButton;"),
 "backup-timer": leaf("BackupTimer", f"{HW}::WatchdogAlarmTimer", [], "Chosen part: stand-alone watchdog timer; times out 9 s after the last pulse (EE-REVIEW)."),
 "backup-driver": leaf("BackupDriver", f"{HW}::Component", ["input : ~GpioOutPort", "output : GpioOutPort", "supply : ~PowerPort"],
                       "Chosen part: transistor stage from the timer output to the buzzer's backup input. Drawn inside the buzzer stage until MODEL-LEVELS (A-44, EE-REVIEW)."),
 "hold-up": leaf("HoldUp", f"{HW}::Supercap", [], "Chosen part: supercapacitor; 133 s computed hold-up (09-hardware/power-budget.md)."),
 "oled": leaf("Oled", f"{HW}::Oled128x64", ["picture : ScreenPort"], "Chosen part: 128 × 64 monochrome panel on I2C (ADR-0016)."),
 "display-item": leaf("DisplaySwItem", f"{SW}::DisplayItem", ["samples : ~SampleFlow", "alarmState : ~AlarmStateFlow", "i2c : I2cPort"],
                      "Software item, class C (two display-only risk controls). Unit: displayMgr.", "displayMgr"),
 "rtc": leaf("Rtc", f"{HW}::TcxoRtc", [], "Chosen part: temperature-compensated clock with its own coin cell."),
 "log-item": leaf("LogSwItem", f"{SW}::LogItem", ["records : ~RecordFlow", "clock : I2cPort", "history : HistoryFlow"],
                  "Software item, class C. Units: eventLog, historyRing, rtcClock.", "eventLog"),
 "usb-item": leaf("UsbSwItem", f"{SW}::UsbItem", ["history : ~HistoryFlow", "usb : UsbPort"],
                  "Software item, class B with segregation (IEC 62304 §5.3.5, ADR-0034). Unit: usbExport.", "usbExport"),
 "battery": leaf("MainBattery", f"{HW}::LiIonCell", [], "Chosen part: one rechargeable cell (synthetic, A-40)."),
 "power-path": leaf("SupplyPath", f"{HW}::ChargerPowerPath", [], "Chosen part: charger with automatic change-over to the battery."),
 "power-item": leaf("PowerSwItem", f"{SW}::PowerItem", ["mainsSense : GpioInPort", "batterySense : ~PowerPort", "events : PowerEventFlow", "records : RecordFlow"],
                    "Software item, class C. Unit: powerMon.", "powerMon"),
 "mcu": leaf("Mcu", f"{HW}::Component", ["kickCommand : ~GpioOutPort", "wdtKickPin : GpioOutPort", "supply : ~PowerPort"],
             "Leaf boundary: only the three pins supervision uses. The chosen part (ESP32-S3 class module, A-25) sits inside with all its pins; it hosts every software item.",
             None, "\n        part module : MrtmHardware::Esp32S3Module;"),
 "supervisor-item": leaf("SupervisorSwItem", f"{SW}::SupervisorItem", ["heartbeat : ~HeartbeatFlow", "pulses : GpioOutPort"],
                         "Software item, class C. Units: wdtKicker, diagnostics, configMgr.", "wdtKicker"),
}
LEAF_IMPORTS = ["MrtmInterfaces", "NodePorts", "MrtmPhysical", "MrtmHardware", "MrtmSoftware"]

def ids_of(node):
    n = NODES[node]; pre = n["prefix"] if isinstance(n["prefix"], list) else [n["prefix"]]
    out = []
    for f in sorted((ROOT / "03-requirements").rglob("MRTM-*.md")):
        if f.stem.rsplit("-", 1)[0] in pre: out.append(f.stem)
    return out

def write(node, imports, doc, body, by):
    n = NODES[node]; path = ROOT / "06-design" / n["path"] / f"{pkg(node if node != 'system' else 'mrtm')}.sysml"
    ids = ids_of(node)
    sat = "\n".join(f"    satisfy '{i}' by {by};" for i in ids)
    head = f"// {pkg(node if node != 'system' else 'mrtm')} — node `{node}` ({n['kind']}, IEC 62304 class {n['class']}) of .ejadah/rew/framework.yaml.\n" \
           f"// Satisfies ONLY this node's requirements ({len(ids)}). Generated by tools/levels_model.py — edit there. MODEL-LEVELS.\n"
    text = head + "private import ScalarValues::*;\nprivate import ProjectRequirements::*;\n" + "".join(f"private import {i}::*;\n" for i in imports) + \
           f"\npackage {pkg(node if node != 'system' else 'mrtm')} {{\n\n    doc /* {doc} */\n{body}\n{sat}\n}}\n"
    path.parent.mkdir(parents=True, exist_ok=True); path.write_text(text)
    return path, len(ids)

if __name__ == "__main__":
    # the shared flow ports live with the system node (top-down: children use their parent's words)
    p = ROOT / "06-design/mrtm/NodePorts.sysml"; p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text("// NodePorts — the flows that cross subsystem boundaries (system white box vocabulary). MODEL-LEVELS.\n"
                 "private import ScalarValues::*;\nprivate import MrtmInterfaces::*;\n\npackage NodePorts {\n" + PORTS + "}\n")
    total = 0
    PT = port_types()
    for node, (imports, doc, body, by) in M.items():
        wbtext = None
        if "WhiteBox :>" in body: body, wbtext = split_white_box(node, body, PT)
        path, k = write(node, imports, doc, body, by); total += k
        if wbtext:
            me = pkg(node) if node != "system" else "NodeMrtm"; wp = me + "WhiteBox"
            wi = ["MrtmInterfaces", "NodePorts"] + [i for i in imports if i.startswith("Node") and i != "NodePorts"]
            (path.parent / f"{wp}.sysml").write_text(f"// {wp} — white box of node `{node}` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.\n"
                + "".join(f"private import {i}::*;\n" for i in wi) + f"\npackage {wp} {{\n{wbtext}}}\n")
        if node in CTX:
            cp = "Node" + "".join(w.capitalize() for w in node.split("-")) + "Context"
            ci = ["MrtmInterfaces", "NodePorts", "MrtmSystemContext"] + (SUBS if node != "backup-alarm" else ["NodeBackupAlarm", "NodeBuzzer", "NodeSupervision", "NodePower"])
            (path.parent / f"{cp}.sysml").write_text(f"// {cp} — black box of node `{node}`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.\n"
                + "".join(f"private import {i}::*;\n" for i in ci) + f"\npackage {cp} {{\n{ctx_text(*CTX[node], PT)}}}\n")
    for node, (body, by) in LEAF.items():
        _, k = write(node, LEAF_IMPORTS, f"LEAF `{node}` ({NODES[node]['kind']}).", body, by); total += k
    print(f"nodes: {len(M) + len(LEAF)}, satisfy lines: {total}")
