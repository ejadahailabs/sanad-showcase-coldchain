// NodeLoggingWhiteBox — white box of node `logging` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeRtc::*;
private import NodeLogItem::*;
private import NodeUsbItem::*;

package NodeLoggingWhiteBox {
    doc /* White box of Logging in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeLogging::LoggingWhiteBox. */
    part logItem : LogSwItem;
    part rtc : Rtc;
    part usbItem : UsbSwItem;
    part alarm { port records : RecordFlow; }  // outside logging: one Alarm
    part power { port records : RecordFlow; }  // outside logging: one Power
    part usbHost { port usb : ~UsbPort; }  // outside logging: one UsbHost
    connect alarm.records to logItem.records;
    connect power.records to logItem.records;
    interface clockLink : I2cBus connect logItem.clock to rtc.i2c;
    connect logItem.history to usbItem.history;
    connect usbItem.usb to usbHost.usb;
}
