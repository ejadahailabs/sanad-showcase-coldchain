// NodeDisplayWhiteBox — white box of node `display` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeOled::*;
private import NodeDisplayItem::*;

package NodeDisplayWhiteBox {
    doc /* White box of Display in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeDisplay::DisplayWhiteBox. */
    part displayItem : DisplaySwItem;
    part oled : Oled;
    part alarm { port alarmState : AlarmStateFlow; }  // outside display: one Alarm
    part sensing { port samples : SampleFlow; }  // outside display: one Sensing
    part staff { port screen : ~ScreenPort; }  // outside display: one Staff
    connect sensing.samples to displayItem.samples;
    connect alarm.alarmState to displayItem.alarmState;
    interface panelLink : I2cBus connect displayItem.i2c to oled.i2c;
    connect oled.picture to staff.screen;
}
