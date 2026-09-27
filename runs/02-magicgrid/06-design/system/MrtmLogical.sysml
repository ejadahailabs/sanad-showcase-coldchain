// MRTM logical architecture: WHAT the monitor does, with no chip named.
// Functional decomposition as actions; logical parts perform them.
// IEC 62304 §5.3.1 (software architecture), ISO 14971 §7.1 where a part is a risk control.
private import ScalarValues::*;
private import ProjectRequirements::*;
private import MrtmInterfaces::*;

package MrtmLogical {

    doc /* The monitor's functions and the logical parts that perform them. */

    // Functional decomposition: one top function, nine sub-functions, and the data that flows between them.
    action def MonitorFridge {
        action acquireSample {
            out item sample : TemperatureSample;
        }
        action checkProbe {
            in item sample : TemperatureSample;
            out item valid : TemperatureSample;
        }
        action detectExcursion {
            in item valid : TemperatureSample;
            out item excursion : ExcursionState;
        }
        action annunciateAlarm {
            in item excursion : ExcursionState;
            in item ack : ButtonPress;
            out item command : AlarmCommand;
        }
        action showStatus {
            in item valid : TemperatureSample;
            in item excursion : ExcursionState;
            out item picture : DisplayFrame;
        }
        action recordEvent {
            in item excursion : ExcursionState;
            in item power : PowerEvent;
            out item record : LogRecord;
        }
        action serveHistory {
            in item record : LogRecord;
            out item file : LogFile;
        }
        action supervisePower {
            out item power : PowerEvent;
        }
        action superviseSoftware;

        succession first acquireSample then checkProbe;
        succession first checkProbe then detectExcursion;
        flow of TemperatureSample from acquireSample.sample to checkProbe.sample;
        flow of TemperatureSample from checkProbe.valid to detectExcursion.valid;
        flow of TemperatureSample from checkProbe.valid to showStatus.valid;
        flow of ExcursionState from detectExcursion.excursion to annunciateAlarm.excursion;
        flow of ExcursionState from detectExcursion.excursion to showStatus.excursion;
        flow of ExcursionState from detectExcursion.excursion to recordEvent.excursion;
        flow of PowerEvent from supervisePower.power to recordEvent.power;
        flow of LogRecord from recordEvent.record to serveHistory.record;
    }

    part def LogicalMonitor {
        action monitor : MonitorFridge;

        part sampler {
            perform monitor.acquireSample;
        }
        part probeSupervisor {
            perform monitor.checkProbe;
        }
        part excursionDetector {
            perform monitor.detectExcursion;
        }
        part alarmManager {
            doc /* Risk control: alert not heard, alert silenced for good (ISO 14971 §7.1; Phase 5 names the hazards). */
            perform monitor.annunciateAlarm;
        }
        part statusDisplay {
            perform monitor.showStatus;
        }
        part eventLogger {
            doc /* Risk control: excursion history lost or altered (ISO 14971 §7.1). */
            perform monitor.recordEvent;
        }
        part historyServer {
            perform monitor.serveHistory;
        }
        part powerSupervisor {
            doc /* Risk control: monitoring stops unnoticed on battery (ISO 14971 §7.1). */
            perform monitor.supervisePower;
        }
        part watchdog {
            doc /* Risk control: software hangs (ISO 14971 §7.1; IEC 62304 §5.3.5). */
            perform monitor.superviseSoftware;
        }
        part selfTest;
        part timekeeper;

    }
}
