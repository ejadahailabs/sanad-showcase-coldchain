// Sequence: excursion -> alarm within the timing budget. IEC 62304 §5.3.1, §5.3.2;
// MRTM-PRF-002 (<= 65 s from the first out-of-band sample to the buzzer), MRTM-SYS-003/004/005/008.
// Software share of the budget (ADR-0020): confirmation -> buzzer <= 5 s, split as
// evaluate 50 ms + queue hand-off <= 1 s (alarm task period) + drive 10 ms + margin.
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import MrtmSoftware::*;
private import MrtmSwStates::*;

package MrtmSeqExcursion {

    doc /* Warm air is seen, confirmed by 7 samples in 60 s, and the alarm sounds, shows and is logged. */

    part probe : MrtmPhysical::Ds18b20Probe;
    part sampler : SensorSampler;
    part evaluator : LimitEvaluator;
    part alarm : AlarmMgr;
    part display : DisplayMgr;
    part logger : EventLog;
    part buzzer : MrtmPhysical::Buzzer;

    message readProbe of TemperatureSample from probe to sampler;
    message sampleOut of TemperatureSample from sampler to evaluator;
    message confirmed of ExcursionConfirmed from evaluator to alarm;
    message soundBuzzer of AlarmCommand from alarm to buzzer;
    message showWarning of AlarmCommand from alarm to display;
    message logStart of LogRecord from alarm to logger;

    succession first readProbe then sampleOut;
    succession first sampleOut then confirmed;
    succession first confirmed then soundBuzzer;
    succession first soundBuzzer then showWarning;
    succession first showWarning then logStart;
}
