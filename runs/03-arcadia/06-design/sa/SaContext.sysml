// SA — System Analysis: the system as ONE box, its actors and its external interfaces (Arcadia SAB / context).
// Hand-written (RUN-03-ARCADIA). Package-level parts so Sanad's canvas can place them (run 2 F-129).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import SaActors::*;

package SaContext {

    doc /* The monitor as one box among the actors it touches. The actors come from the OA entities (OA→SA transition).
       The monitor performs the nine system functions of SaFunctions. */

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
