// Sequence: mains power loss. IEC 62304 §5.3.1; MRTM-SYS-016 (hardware switch <= 100 ms),
// MRTM-SAF-005 (log within 1 s), MRTM-SAF-018 (two sectors), MRTM-SYS-023 (restore event).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import MrtmSoftware::*;

package MrtmSeqPowerLoss {

    // Lifeline names are unique to this package: Sanad's sequence view draws every message in the model
    // whose ends share a lifeline name, so shared names would mix sequences (F-67).
    doc /* Mains drops, the power path moves to the battery, the firmware logs it twice and keeps monitoring. */

    part powerPath : MrtmPhysical::PowerPath;
    part powerMon : PowerMon;
    part powerLogger : EventLog;
    part powerRing : HistoryRingStore;
    part powerClock : RtcClock;

    message mainsSense of PowerEvent from powerPath to powerMon;
    message logLoss of LogRecord from powerMon to powerLogger;
    message stamp of LogRecord from powerLogger to powerClock;
    message writeBoth of LogRecord from powerLogger to powerRing;
    message mainsBack of PowerEvent from powerPath to powerMon;
    message logRestore of LogRecord from powerMon to powerLogger;

    succession first mainsSense then logLoss;
    succession first logLoss then stamp;
    succession first stamp then writeBoth;
    succession first writeBoth then mainsBack;
    succession first mainsBack then logRestore;
}
