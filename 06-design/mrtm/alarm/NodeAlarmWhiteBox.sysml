// NodeAlarmWhiteBox — white box of node `alarm` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeExcursionItem::*;
private import NodeAlarmItem::*;
private import NodeBuzzer::*;
private import NodeIndicators::*;
private import NodeBackupAlarm::*;

package NodeAlarmWhiteBox {
    doc /* White box of Alarm in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeAlarm::AlarmWhiteBox. */
    part excursionItem : ExcursionSwItem;
    part alarmItem : AlarmSwItem;
    part buzzer : AlarmBuzzer;
    part indicators : Indicators;
    part backupAlarm : BackupAlarmAssembly;
    part display { port alarmState : ~AlarmStateFlow; }  // outside alarm: one Display
    part logging { port records : ~RecordFlow; }  // outside alarm: one Logging
    part power { port powerEvents : PowerEventFlow; port supply : PowerPort; }  // outside alarm: one Power
    part sensing { port samples : SampleFlow; }  // outside alarm: one Sensing
    part staff { port alarmSignals : ~AlarmHmiPort; }  // outside alarm: one Staff
    part supervision { port heartbeat : ~HeartbeatFlow; port kick : GpioOutPort; }  // outside alarm: one Supervision
    connect sensing.samples to excursionItem.samples;
    connect excursionItem.excursion to alarmItem.excursion;
    connect alarmItem.alarmState to display.alarmState;
    connect alarmItem.records to logging.records;
    connect power.powerEvents to alarmItem.powerEvents;
    connect alarmItem.heartbeat to supervision.heartbeat;
    interface buzzerLine : SignalLine connect alarmItem.buzzerDrive to buzzer.drive;
    interface lightLine : SignalLine connect alarmItem.lightDrive to indicators.redDrive;
    interface ackLine : ButtonLine connect alarmItem.button to indicators.contact;
    connect supervision.kick to backupAlarm.kick;
    connect power.supply to backupAlarm.supply;
    interface backupLine : SignalLine connect backupAlarm.drive to buzzer.backupDrive;
    connect buzzer.sound to staff.alarmSignals;
}
