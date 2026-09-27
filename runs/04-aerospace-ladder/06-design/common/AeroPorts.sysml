// AeroPorts — RUN-04 vocabulary shared by the ladder (flows, people, DAL). No satisfy here.
private import ScalarValues::*;
private import MrtmInterfaces::*;

package AeroPorts {

    // Flows between items (what crosses an item boundary).
    port def SampleFlow { out item sample : TemperatureSample; }
    port def AlarmStateFlow { out item alarmState : ExcursionState; }
    port def RecordFlow { out item rec : LogRecord; }
    port def PowerEventFlow { out item evt : PowerEvent; }
    port def HeartbeatFlow { out attribute beat : Natural; }
    port def BandFlow { out attribute bandLowTenths : Integer; out attribute bandHighTenths : Integer; }
    port def HistoryFlow { out item file : LogFile; }
    // What people meet: the alarm signals (sound, light, button) and the screen.
    port def AlarmHmiPort { out item signal : AlarmCommand; in item press : ButtonPress; }
    port def ScreenPort { out item screenFrame : DisplayFrame; }
    item def LowPriorityLight :> AlarmCommand;
    item def ExcursionSound :> AlarmCommand;
    item def AudioPaused :> AlarmCommand;
    part def Staff {
        doc /* The people at the monitor: nurse, pharmacist, manager, technician. */
        port alarmSignals : ~AlarmHmiPort;
        port screen : ~ScreenPort;
    }
    // DO-178C §2.3 software level / ARP4754A item development assurance level.
    enum def DesignAssuranceLevel {
        enum A;  // catastrophic failure condition
        enum B;  // hazardous
        enum C;  // major
        enum D;  // minor
        enum E;  // no safety effect
    }
}
