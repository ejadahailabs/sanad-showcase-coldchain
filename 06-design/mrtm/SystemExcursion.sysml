// SystemExcursion — system white box scenario at SUBSYSTEM granularity (node `system`). MODEL-LEVELS.
// Budgets (ADR-0030, ADR-0031): sample every 2 s + conversion ≤ 0.75 s (sensing) + early signal ≤ 1 s (alarm) ≤ 5 s;
// 31 samples = 60 s to confirm; buzzer ≤ 1 s after confirmation (alarm). Timing is text only (F-123).
private import MrtmInterfaces::*;
private import NodePorts::*;
private import MrtmSystemContext::*;
private import NodeSensing::*;
private import NodeAlarm::*;
private import NodeDisplay::*;
private import NodeLogging::*;
private import NodePower::*;
private import NodeSupervision::*;

package SystemExcursion {

    doc /* Warm air: sensing samples it, alarm shows the quiet early light, then after 60 s confirms and sounds; display warns; logging records; staff acknowledge. */

    part fridge : Fridge;
    part sensing : Sensing;
    part alarm : Alarm;
    part display : Display;
    part logging : Logging;
    part staff : Staff;

    message warmAir of AirHeat from fridge to sensing;
    message sample of TemperatureSample from sensing to alarm;
    message earlyLight of LowPriorityLight from alarm to staff;
    message sounding of ExcursionSound from alarm to staff;
    message warning of ExcursionState from alarm to display;
    message showWarning of DisplayFrame from display to staff;
    message logStart of LogRecord from alarm to logging;
    message acknowledge of ButtonPress from staff to alarm;
    message silence of AudioPaused from alarm to staff;
    message logAck of LogRecord from alarm to logging;

    succession first warmAir then sample;
    succession first sample then earlyLight;
    succession first earlyLight then sounding;
    succession first sounding then warning;
    succession first warning then showWarning;
    succession first showWarning then logStart;
    succession first logStart then acknowledge;
    succession first acknowledge then silence;
    succession first silence then logAck;
}
