// NodePorts — the flows that cross subsystem boundaries (system white box vocabulary). MODEL-LEVELS.
private import ScalarValues::*;
private import MrtmInterfaces::*;

package NodePorts {

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
}
