// NodePowerContext — black box of node `power`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodePowerContext {
    doc /* Black box: power and its neighbours, each shown by the ports it shares with power only. */
    part power : Power;
    part mainsSupply { port output : PowerPort; }  // one MainsSupply: only the ports it shares with power
    part alarm { port powerEvents : ~PowerEventFlow; port supply : ~PowerPort; }  // one Alarm: only the ports it shares with power
    part logging { port records : ~RecordFlow; }  // one Logging: only the ports it shares with power
    part supervision { port supply : ~PowerPort; }  // one Supervision: only the ports it shares with power
    connect mainsSupply.output to power.mains;
    connect power.supply to supervision.supply;
    connect power.supply to alarm.supply;
    connect power.powerEvents to alarm.powerEvents;
    connect power.records to logging.records;
}
