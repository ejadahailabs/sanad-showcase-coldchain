// SystemPowerLoss — system white box scenario at SUBSYSTEM granularity (node `system`). MODEL-LEVELS.
// Switch-over ≤ 100 ms (PWR-001); events logged ≤ 1 s (PWR-003, LOG-001); low battery sounds ≤ 5 s (SAF-008);
// with no power at all the backup alarm sounds ≥ 60 s (ALM-008).
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package SystemPowerLoss {

    doc /* Mains drops: power switches to the battery and reports it; logging records it; a low battery sounds the alarmP; with all power gone the backup alarm sounds. */

    part mainsSupply : MainsSupply;
    part power : Power;
    part alarmP : Alarm;
    part loggingP : Logging;
    part supervision : Supervision;
    part staffP : Staff;

    message mainsLost of PowerEvent from mainsSupply to power;
    message lostEvent of PowerEvent from power to alarmP;
    message logLoss of LogRecord from power to loggingP;
    message batteryLow of PowerEvent from power to alarmP;
    message lowBatterySound of LowBatterySound from alarmP to staffP;
    message pulsesStop of PowerEvent from supervision to alarmP;
    message backupSound of BackupSound from alarmP to staffP;

    succession first mainsLost then lostEvent;
    succession first lostEvent then logLoss;
    succession first logLoss then batteryLow;
    succession first batteryLow then lowBatterySound;
    succession first lowBatterySound then pulsesStop;
    succession first pulsesStop then backupSound;
}
