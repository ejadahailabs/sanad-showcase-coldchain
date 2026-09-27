// LA — the six logical components as definitions (Arcadia LA). Hand-written (RUN-03-ARCADIA). Usages and wires: LaArchitecture.
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import SaActors::*;
private import LaInterfaces::*;

package LaComponents {

    doc /* Six logical components: ideas, not parts. Each port is a logical interface (LaInterfaces). */

    part def Sensing { port air : ~ThermalPort; port samples : SampleFlow; }
    part def Alarm { doc /* Detects excursions and announces them; holds the independent backup alarm. */
        port samples : ~SampleFlow; port alarmState : AlarmStateFlow; port records : RecordFlow;
        port powerEvents : ~PowerEventFlow; port heartbeat : HeartbeatFlow; port service : ~ServiceFlow;
        port supply : ~SupplyFlow; port alarmSignals : AlarmHmiPort; }
    part def Display { port samples : ~SampleFlow; port alarmState : ~AlarmStateFlow; port screen : ScreenPort; }
    part def Logging { port records : ~RecordFlow; port usb : UsbPort; }
    part def Power { port mains : ~PowerPort; port records : RecordFlow; port powerEvents : PowerEventFlow; port supply : SupplyFlow; }
    part def Supervision { port heartbeat : ~HeartbeatFlow; port service : ServiceFlow; port supply : ~SupplyFlow; }
}
