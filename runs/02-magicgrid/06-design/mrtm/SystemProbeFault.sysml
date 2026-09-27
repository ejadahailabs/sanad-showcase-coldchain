// SystemProbeFault — system white box scenario at SUBSYSTEM granularity (node `system`). MODEL-LEVELS.
// No valid sample for 30 s → probe fault (SYS-012); fault sound ≤ 5 s (SAF-002, 1 s on / 1 s off SAF-011); message ≤ 5 s (SYS-013).
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package SystemProbeFault {

    doc /* The probe stops giving valid samples: alarm declares the fault after 30 s, sounds the fault pattern, display shows it, logging records it. */

    part sensingF : Sensing;
    part alarmF : Alarm;
    part displayF : Display;
    part loggingF : Logging;
    part staffF : Staff;

    message invalidSample of TemperatureSample from sensingF to alarmF;
    message faultSound of ProbeFaultSound from alarmF to staffF;
    message faultState of ExcursionState from alarmF to displayF;
    message showFault of DisplayFrame from displayF to staffF;
    message logFault of LogRecord from alarmF to loggingF;

    succession first invalidSample then faultSound;
    succession first faultSound then faultState;
    succession first faultState then showFault;
    succession first showFault then logFault;
}
