// SA — the system's black box, its actors and its external interfaces, as definitions (Arcadia SA).
// Hand-written (RUN-03-ARCADIA). The usages and wires are in SaContext.
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import SaFunctions::*;

package SaActors {

    doc /* Definitions for the system context: the monitor as one box (performing the nine system functions), four actors, two external interface kinds. */

    // ---- External interfaces (what crosses the system boundary) ----
    port def AlarmHmiPort { out item signal : AlarmCommand; in item press : ButtonPress; }
    port def ScreenPort { out item screenFrame : DisplayFrame; }

    // ---- The system (black box) ----
    part def MonitorSystem {
        doc /* The Medical Refrigerator Temperature Monitor, seen from outside. */
        port air : ~ThermalPort;
        port mains : ~PowerPort;
        port usb : UsbPort;
        port alarmSignals : AlarmHmiPort;
        port screen : ScreenPort;
        perform acquireTemperature;
        perform detectExcursion;
        perform announceAlarm;
        perform alarmOnOwnFailure;
        perform showStatus;
        perform recordEvents;
        perform exportHistory;
        perform keepPowered;
        perform superviseItself;
    }

    // ---- System actors ----
    part def Fridge { port air : ThermalPort; }
    part def MainsSupply { port output : PowerPort; }
    part def ClinicStaff { doc /* Nurse, manager and technician at the monitor. */
        port alarmSignals : ~AlarmHmiPort; port screen : ~ScreenPort; }
    part def RecordsComputer { port usb : ~UsbPort; }
}
