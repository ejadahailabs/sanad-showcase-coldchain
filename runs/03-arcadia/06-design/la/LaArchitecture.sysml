// LA — Logical Architecture (Arcadia layer 3 of 5): six logical components and their logical interfaces.
// Hand-written (RUN-03-ARCADIA). Package-level parts so Sanad's canvas can place them (run 2 F-129).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import SaContext::*;

package LaInterfaces {

    doc /* Logical interfaces: what one logical component hands another. Ideas only — no bus, no pin, no chip. */

    port def SampleFlow { out item sample : TemperatureSample; }
    port def AlarmStateFlow { out item alarmState : ExcursionState; }
    port def RecordFlow { out item rec : LogRecord; }
    port def PowerEventFlow { out item evt : PowerEvent; }
    port def HeartbeatFlow { out attribute beat : Natural; }
    port def ServiceFlow { doc /* "I am alive" pulses; when they stop, the independent alarm sounds. */ out attribute pulse : Boolean; }
    port def SupplyFlow { out attribute volts : Real; }
}

package LaArchitecture {

    doc /* How the monitor works, in ideas: six logical components share the nine system functions
       (SA→LA transition, 06-design/transitions/). Each logical requirement is satisfied by one of them (LaSatisfy). */

    private import LaInterfaces::*;

    part def Sensing { port air : ~ThermalPort; port samples : SampleFlow; }
    part def Alarm { doc /* Detects excursions and announces them; holds the independent backup alarm. */
        port samples : ~SampleFlow; port alarmState : AlarmStateFlow; port records : RecordFlow;
        port powerEvents : ~PowerEventFlow; port heartbeat : HeartbeatFlow; port service : ~ServiceFlow;
        port supply : ~SupplyFlow; port alarmSignals : AlarmHmiPort; }
    part def Display { port samples : ~SampleFlow; port alarmState : ~AlarmStateFlow; port screen : ScreenPort; }
    part def Logging { port records : ~RecordFlow; port usb : UsbPort; }
    part def Power { port mains : ~PowerPort; port records : RecordFlow; port powerEvents : PowerEventFlow; port supply : SupplyFlow; }
    part def Supervision { port heartbeat : ~HeartbeatFlow; port service : ServiceFlow; port supply : ~SupplyFlow; }

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
