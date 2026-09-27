// LA — Logical Architecture (Arcadia layer 3 of 5): six logical components and their logical interfaces.
// Hand-written (RUN-03-ARCADIA). Package-level parts so Sanad's canvas can place them (run 2 F-129).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import SaActors::*;

package LaArchitecture {

    doc /* How the monitor works, in ideas: six logical components share the nine system functions
       (SA→LA transition, 06-design/transitions/). Each logical requirement is satisfied by one of them (LaSatisfy). */

    private import LaInterfaces::*;
    private import LaComponents::*;

    part sensing : Sensing;
    part alarm : Alarm;
    part display : Display;
    part logging : Logging;
    part power : Power;
    part supervision : Supervision;
    // The system actors, as the logical boundary meets them.
    part fridge : Fridge;
    part mains : MainsSupply;
    part staff : ClinicStaff;
    part recordsComputer : RecordsComputer;

    connect fridge.air to sensing.air;
    connect sensing.samples to alarm.samples;
    connect sensing.samples to display.samples;
    connect alarm.alarmState to display.alarmState;
    connect alarm.records to logging.records;
    connect power.records to logging.records;
    connect power.powerEvents to alarm.powerEvents;
    connect alarm.heartbeat to supervision.heartbeat;
    connect supervision.service to alarm.service;
    connect power.supply to supervision.supply;
    connect power.supply to alarm.supply;
    connect mains.output to power.mains;
    connect logging.usb to recordsComputer.usb;
    connect alarm.alarmSignals to staff.alarmSignals;
    connect display.screen to staff.screen;
}
