// NodeAlarmContext — black box of node `alarm`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package NodeAlarmContext {
    doc /* Black box: alarm and its neighbours, each shown by the ports it shares with alarm only. */
    part alarm : Alarm;
    part sensing { port samples : SampleFlow; }  // one Sensing: only the ports it shares with alarm
    part display { port alarmState : ~AlarmStateFlow; }  // one Display: only the ports it shares with alarm
    part logging { port records : ~RecordFlow; }  // one Logging: only the ports it shares with alarm
    part power { port powerEvents : PowerEventFlow; port supply : PowerPort; }  // one Power: only the ports it shares with alarm
    part supervision { port heartbeat : ~HeartbeatFlow; port kick : GpioOutPort; }  // one Supervision: only the ports it shares with alarm
    part staff { port alarmSignals : ~AlarmHmiPort; }  // one Staff: only the ports it shares with alarm
    connect sensing.samples to alarm.samples;
    connect alarm.alarmState to display.alarmState;
    connect alarm.records to logging.records;
    connect power.powerEvents to alarm.powerEvents;
    connect alarm.heartbeat to supervision.heartbeat;
    connect supervision.kick to alarm.kick;
    connect power.supply to alarm.supply;
    connect alarm.alarmSignals to staff.alarmSignals;
}
