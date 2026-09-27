// NodeDisplayContext — black box of node `display`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodeDisplayContext {
    doc /* Black box: display and its neighbours, each shown by the ports it shares with display only. */
    part display : Display;
    part sensing { port samples : SampleFlow; }  // one Sensing: only the ports it shares with display
    part alarm { port alarmState : AlarmStateFlow; }  // one Alarm: only the ports it shares with display
    part staff { port screen : ~ScreenPort; }  // one Staff: only the ports it shares with display
    connect sensing.samples to display.samples;
    connect alarm.alarmState to display.alarmState;
    connect display.screen to staff.screen;
}
