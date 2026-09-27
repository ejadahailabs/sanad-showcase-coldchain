// SA — System Analysis (Arcadia layer 2 of 5): the system functions and the excursion-alarm functional chain.
// Hand-written (RUN-03-ARCADIA). Items are the shared library's (MrtmInterfaces).
private import ScalarValues::*;
private import MrtmInterfaces::*;

package SaFunctions {

    doc /* What the monitor must DO, seen as one box: nine system functions. Each system requirement is satisfied by one of them
       (06-design/sa/SaSatisfy.sysml). Which logical component does each one is the SA→LA transition. */

    action def AcquireTemperature { doc /* Read the fridge air temperature at a fixed period; mark bad readings invalid. */
        out sample : TemperatureSample; }
    action def DetectExcursion { doc /* Compare samples with the allowed band; report early, confirmed and ended excursions. */
        in sample : TemperatureSample; out excursion : ExcursionState; }
    action def AnnounceAlarm { doc /* Sound and light the alarm; take the acknowledge press; re-sound after the pause. */
        in excursion : ExcursionState; in press : ButtonPress; out signal : AlarmCommand; }
    action def AlarmOnOwnFailure { doc /* Sound an alarm even when the monitor's own software or power has failed. */
        out signal : AlarmCommand; }
    action def ShowStatus { doc /* Show the temperature, the warnings and the service messages. */
        in sample : TemperatureSample; in excursion : ExcursionState; out displayFrame : DisplayFrame; }
    action def RecordEvents { doc /* Keep a time-stamped, protected record of every excursion, acknowledgement and power event. */
        in excursion : ExcursionState; in power : PowerEvent; out rec : LogRecord; }
    action def ExportHistory { doc /* Give the record to a computer, read-only. */
        in rec : LogRecord; out file : LogFile; }
    action def KeepPowered { doc /* Keep running from the battery through a mains loss; report power events. */
        out power : PowerEvent; }
    action def SuperviseItself { doc /* Watch the monitor's own health: watchdog, self-tests, settings integrity. */
        in excursion : ExcursionState; }

    action acquireTemperature : AcquireTemperature;
    action detectExcursion : DetectExcursion;
    action announceAlarm : AnnounceAlarm;
    action alarmOnOwnFailure : AlarmOnOwnFailure;
    action showStatus : ShowStatus;
    action recordEvents : RecordEvents;
    action exportHistory : ExportHistory;
    action keepPowered : KeepPowered;
    action superviseItself : SuperviseItself;
}

package SaAlarmChain {

    doc /* Functional chain "excursion alarm" (Arcadia): the path from a warm fridge to a sounding alarm and a record.
       Time budget of the early alarm (MRTM-SYS-024, ≤ 5 s): up to 2 s wait for the next sample + 0.75 s conversion
       (acquire) + one 1 s alarm cycle (detect + announce) = 3.75 s (ADR-0030, ADR-0031). */

    private import SaFunctions::*;

    action def ExcursionAlarmChain {
        action acquire : AcquireTemperature;
        action detect : DetectExcursion;
        action announce : AnnounceAlarm;
        action show : ShowStatus;
        action record : RecordEvents;
        flow of TemperatureSample from acquire.sample to detect.sample;
        flow of TemperatureSample from acquire.sample to show.sample;
        flow of ExcursionState from detect.excursion to announce.excursion;
        flow of ExcursionState from detect.excursion to show.excursion;
        flow of ExcursionState from detect.excursion to record.excursion;
    }
}

package SaDataFlow {

    doc /* System data flow (Arcadia SDFB): the nine system functions and the functional exchanges between them. */

    private import SaFunctions::*;

    action def SystemDataFlow {
        action acquire : AcquireTemperature;
        action detect : DetectExcursion;
        action announce : AnnounceAlarm;
        action ownFailure : AlarmOnOwnFailure;
        action show : ShowStatus;
        action record : RecordEvents;
        action export : ExportHistory;
        action power : KeepPowered;
        action supervise : SuperviseItself;
        flow of TemperatureSample from acquire.sample to detect.sample;
        flow of TemperatureSample from acquire.sample to show.sample;
        flow of ExcursionState from detect.excursion to announce.excursion;
        flow of ExcursionState from detect.excursion to show.excursion;
        flow of ExcursionState from detect.excursion to record.excursion;
        flow of ExcursionState from detect.excursion to supervise.excursion;
        flow of PowerEvent from power.power to record.power;
        flow of LogRecord from record.rec to export.rec;
    }
}
