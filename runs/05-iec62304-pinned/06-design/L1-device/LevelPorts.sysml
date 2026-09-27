// LevelPorts — the words every level uses for what crosses a boundary. RUN-05.
private import ScalarValues::*;
private import MrtmInterfaces::*;

package LevelPorts {

    // Flows between software items (what crosses an item boundary).
    port def SampleFlow { out item sample : TemperatureSample; }
    port def ExcursionFlow { out item excursion : ExcursionState; }
    port def AlarmStateFlow { out item alarmState : ExcursionState; }
    port def RecordFlow { out item rec : LogRecord; }
    port def PowerEventFlow { out item evt : PowerEvent; }
    port def HeartbeatFlow { out attribute beat : Natural; }
    port def HistoryFlow { out item file : LogFile; }
    port def BandFlow { out attribute lowTenths : Integer; out attribute highTenths : Integer; }
    port def TimeFlow { out attribute utcS : Natural; }
    // What people meet at the device: the alarm signals (sound, light, button) and the screen.
    port def AlarmHmiPort { out item signal : AlarmCommand; in item press : ButtonPress; }
    port def ScreenPort { out item screenFrame : DisplayFrame; }
    // The people at the device (nurse, pharmacist, manager, technician).
    part def Staff { port alarmSignals : ~AlarmHmiPort; port screen : ~ScreenPort; }
}
