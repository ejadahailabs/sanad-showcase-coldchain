// LA — logical interfaces (Arcadia LA). Hand-written (RUN-03-ARCADIA).
private import ScalarValues::*;
private import MrtmInterfaces::*;

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
