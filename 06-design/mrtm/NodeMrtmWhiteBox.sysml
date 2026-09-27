// NodeMrtmWhiteBox — white box of node `system` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodeMrtmWhiteBox {
    doc /* White box of MonitorSystem in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeMrtm::MonitorWhiteBox. */
    part sensing : Sensing;
    part alarm : Alarm;
    part display : Display;
    part logging : Logging;
    part power : Power;
    part supervision : Supervision;
    part fridge { port air : ThermalPort; }  // outside system: one Fridge
    part mains { port output : PowerPort; }  // outside system: one MainsSupply
    part staff { port alarmSignals : ~AlarmHmiPort; port screen : ~ScreenPort; }  // outside system: one Staff
    part usbHost { port usb : ~UsbPort; }  // outside system: one UsbHost
    connect fridge.air to sensing.air;
    connect sensing.samples to alarm.samples;
    connect sensing.samples to display.samples;
    connect alarm.alarmState to display.alarmState;
    connect alarm.records to logging.records;
    connect power.records to logging.records;
    connect power.powerEvents to alarm.powerEvents;
    connect alarm.heartbeat to supervision.heartbeat;
    connect supervision.kick to alarm.kick;
    connect power.supply to supervision.supply;
    connect power.supply to alarm.supply;
    connect mains.output to power.mains;
    connect logging.usb to usbHost.usb;
    connect alarm.alarmSignals to staff.alarmSignals;
    connect display.screen to staff.screen;
}
