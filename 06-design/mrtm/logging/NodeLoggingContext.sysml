// NodeLoggingContext — black box of node `logging`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodeLoggingContext {
    doc /* Black box: logging and its neighbours, each shown by the ports it shares with logging only. */
    part logging : Logging;
    part alarm { port records : RecordFlow; }  // one Alarm: only the ports it shares with logging
    part power { port records : RecordFlow; }  // one Power: only the ports it shares with logging
    part usbHost { port usb : ~UsbPort; }  // one UsbHost: only the ports it shares with logging
    connect alarm.records to logging.records;
    connect power.records to logging.records;
    connect logging.usb to usbHost.usb;
}
