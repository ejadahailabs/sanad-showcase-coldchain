// SA — System Analysis: the system as ONE box, its actors and its external interfaces (Arcadia SAB / context).
// Hand-written (RUN-03-ARCADIA). Package-level parts so Sanad's canvas can place them (run 2 F-129).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import SaFunctions::*;

package SaContext {

    doc /* The monitor as one box among the actors it touches. The actors come from the OA entities (OA→SA transition).
       The monitor performs the nine system functions of SaFunctions. */

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

    part monitor : MonitorSystem;
    part fridge : Fridge;
    part mains : MainsSupply;
    part staff : ClinicStaff;
    part recordsComputer : RecordsComputer;

    interface airContact : ThermalContact connect fridge.air to monitor.air;
    interface mainsFeed : PowerFeed connect mains.output to monitor.mains;
    interface historyLink : UsbLink connect monitor.usb to recordsComputer.usb;
    connect monitor.alarmSignals to staff.alarmSignals;
    connect monitor.screen to staff.screen;
}
