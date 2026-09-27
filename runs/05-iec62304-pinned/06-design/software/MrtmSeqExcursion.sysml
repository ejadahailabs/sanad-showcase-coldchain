// Sequence: excursion -> alarm within the timing budget. IEC 62304 §5.3.1, §5.3.2;
// MRTM-SYS-024 (early alarm <= 5 s, ADR-0030: 2 s sample + 750 ms conversion + hand-off),
// MRTM-PRF-002 (<= 65 s from the first out-of-band sample to the buzzer), MRTM-SYS-003/004/005/008.
// Software share of the budget (ADR-0020): confirmation -> buzzer <= 5 s, split as
// evaluate 50 ms + queue hand-off <= 1 s (alarm task period) + drive 10 ms + margin.
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import MrtmSoftware::*;
private import MrtmSwStates::*;

package MrtmSeqExcursion {

    doc /* Warm air is seen, raises the early alarm at the first out-of-band sample, is confirmed by 31 samples in 60 s, and the alarm sounds, shows and is logged. */

    part probe : MrtmPhysical::Ds18b20Probe;
    part sampler : SensorSampler;
    part evaluator : LimitEvaluator;
    part alarmMgr : AlarmMgr;
    part displayMgr : DisplayMgr;
    part logger : EventLog;
    part buzzer : MrtmPhysical::Buzzer;

    message readProbe of TemperatureSample from probe to sampler;
    message sampleOut of TemperatureSample from sampler to evaluator;
    message early of ExcursionEarly from evaluator to alarmMgr;
    message confirmed of ExcursionConfirmed from evaluator to alarmMgr;
    message soundBuzzer of AlarmCommand from alarmMgr to buzzer;
    message showWarning of AlarmCommand from alarmMgr to displayMgr;
    message logStart of LogRecord from alarmMgr to logger;

    succession first readProbe then sampleOut;
    succession first sampleOut then early;
    succession first early then confirmed;
    succession first confirmed then soundBuzzer;
    succession first soundBuzzer then showWarning;
    succession first showWarning then logStart;
}
