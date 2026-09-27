// Sequence: probe fault. IEC 62304 §5.3.1; MRTM-SYS-012 (30 s with no good sample),
// MRTM-SAF-003 (reading out of -30..50 degC), MRTM-SAF-002 (buzzer <= 5 s), MRTM-SAF-011 (1 s on/off),
// MRTM-SYS-013 (message <= 5 s).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import MrtmSoftware::*;
private import MrtmSwStates::*;

package MrtmSeqProbeFault {

    // Lifeline names are unique to this package: Sanad's sequence view draws every message in the model
    // whose ends share a lifeline name, so shared names would mix sequences (F-67).
    doc /* The probe goes silent or reads nonsense; after 30 s the sampler declares the fault and the alarm pattern starts. */

    part faultProbe : MrtmPhysical::Ds18b20Probe;
    part faultSampler : SensorSampler;
    part faultAlarm : AlarmMgr;
    part faultDisplay : DisplayMgr;
    part faultLogger : EventLog;
    part faultBuzzer : MrtmPhysical::Buzzer;

    message badRead of TemperatureSample from faultProbe to faultSampler;
    message faultDeclared of ProbeFaultDeclared from faultSampler to faultAlarm;
    message pattern of AlarmCommand from faultAlarm to faultBuzzer;
    message faultMessage of AlarmCommand from faultAlarm to faultDisplay;
    message logFault of LogRecord from faultAlarm to faultLogger;

    succession first badRead then faultDeclared;
    succession first faultDeclared then pattern;
    succession first pattern then faultMessage;
    succession first faultMessage then logFault;
}
