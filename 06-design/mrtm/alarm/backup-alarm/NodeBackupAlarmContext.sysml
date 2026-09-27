// NodeBackupAlarmContext — black box of node `backup-alarm`: the node and its wired neighbours only. No satisfy here (the node file holds them). MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeBackupAlarm::*;
private import NodeBuzzer::*;
private import NodeSupervision::*;
private import NodePower::*;

package NodeBackupAlarmContext {
    doc /* Black box: backupAlarm and its neighbours, each shown by the ports it shares with backupAlarm only. */
    part backupAlarm : BackupAlarmAssembly;
    part buzzer { port backupDrive : ~GpioOutPort; }  // one AlarmBuzzer: only the ports it shares with backupAlarm
    part supervision { port kick : GpioOutPort; }  // one Supervision: only the ports it shares with backupAlarm
    part power { port supply : PowerPort; }  // one Power: only the ports it shares with backupAlarm
    connect supervision.kick to backupAlarm.kick;
    connect power.supply to backupAlarm.supply;
    connect backupAlarm.drive to buzzer.backupDrive;
}
