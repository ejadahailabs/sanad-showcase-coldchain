// NodeSensingContext — black box of node `sensing`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodeSensingContext {
    doc /* Black box: sensing and its neighbours, each shown by the ports it shares with sensing only. */
    part sensing : Sensing;
    part fridge { port air : ThermalPort; }  // one Fridge: only the ports it shares with sensing
    part alarm { port samples : ~SampleFlow; }  // one Alarm: only the ports it shares with sensing
    part display { port samples : ~SampleFlow; }  // one Display: only the ports it shares with sensing
    connect fridge.air to sensing.air;
    connect sensing.samples to alarm.samples;
    connect sensing.samples to display.samples;
}
