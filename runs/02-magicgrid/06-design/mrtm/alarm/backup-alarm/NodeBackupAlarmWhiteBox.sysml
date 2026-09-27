// NodeBackupAlarmWhiteBox — white box of node `backup-alarm` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeBackupTimer::*;
private import NodeBackupDriver::*;
private import NodeHoldUp::*;

package NodeBackupAlarmWhiteBox {
    doc /* White box of BackupAlarmAssembly in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeBackupAlarm::BackupAlarmWhiteBox. */
    part timer : BackupTimer;
    part driver : BackupDriver;
    part holdUp : HoldUp;
    part buzzer { port backupDrive : ~GpioOutPort; }  // outside backup-alarm: one AlarmBuzzer
    part power { port supply : PowerPort; }  // outside backup-alarm: one Power
    part supervision { port kick : GpioOutPort; }  // outside backup-alarm: one Supervision
    interface kickLine : SignalLine connect supervision.kick to timer.kick;
    connect timer.alarmOut to driver.input;
    connect driver.output to buzzer.backupDrive;
    interface charge : PowerFeed connect power.supply to holdUp.charge;
    interface timerFeed : PowerFeed connect holdUp.terminal to timer.holdUp;
    interface driverFeed : PowerFeed connect holdUp.terminal to driver.supply;
}
