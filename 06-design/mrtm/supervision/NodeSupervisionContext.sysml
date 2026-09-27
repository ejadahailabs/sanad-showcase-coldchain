// NodeSupervisionContext — black box of node `supervision`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodeSupervisionContext {
    doc /* Black box: supervision and its neighbours, each shown by the ports it shares with supervision only. */
    part supervision : Supervision;
    part alarm { port heartbeat : HeartbeatFlow; port kick : ~GpioOutPort; }  // one Alarm: only the ports it shares with supervision
    part power { port supply : PowerPort; }  // one Power: only the ports it shares with supervision
    connect alarm.heartbeat to supervision.heartbeat;
    connect supervision.kick to alarm.kick;
    connect power.supply to supervision.supply;
}
