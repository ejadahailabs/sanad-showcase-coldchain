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

        satisfy 'MRTM-SYS-001' by sampler;
        satisfy 'MRTM-PRF-001' by sampler;
        satisfy 'MRTM-SYS-012' by probeSupervisor;
        satisfy 'MRTM-SAF-003' by probeSupervisor;
        satisfy 'MRTM-STK-007' by probeSupervisor;
        satisfy 'MRTM-SYS-002' by excursionDetector;
        satisfy 'MRTM-SYS-017' by excursionDetector;
        satisfy 'MRTM-SYS-018' by excursionDetector;
        satisfy 'MRTM-STK-002' by excursionDetector;
        satisfy 'MRTM-STK-001' by alarmManager;
        satisfy 'MRTM-STK-003' by alarmManager;
        satisfy 'MRTM-SYS-003' by alarmManager;
        satisfy 'MRTM-SYS-004' by alarmManager;
        satisfy 'MRTM-SYS-006' by alarmManager;
        satisfy 'MRTM-SYS-019' by alarmManager;
        satisfy 'MRTM-SAF-002' by alarmManager;
        satisfy 'MRTM-PRF-002' by alarmManager;
        satisfy 'MRTM-STK-004' by statusDisplay;
        satisfy 'MRTM-SYS-005' by statusDisplay;
        satisfy 'MRTM-SYS-007' by statusDisplay;
        satisfy 'MRTM-SYS-011' by statusDisplay;
        satisfy 'MRTM-SYS-013' by statusDisplay;
        satisfy 'MRTM-SYS-022' by statusDisplay;
        satisfy 'MRTM-PRF-004' by statusDisplay;
        satisfy 'MRTM-MNT-002' by statusDisplay;
        satisfy 'MRTM-STK-005' by eventLogger;
        satisfy 'MRTM-SYS-008' by eventLogger;
        satisfy 'MRTM-SYS-009' by eventLogger;
        satisfy 'MRTM-SYS-010' by eventLogger;
        satisfy 'MRTM-SYS-015' by eventLogger;
        satisfy 'MRTM-SYS-021' by eventLogger;
        satisfy 'MRTM-SYS-023' by eventLogger;
        satisfy 'MRTM-SAF-005' by eventLogger;
        satisfy 'MRTM-STK-006' by historyServer;
        satisfy 'MRTM-SYS-014' by historyServer;
        satisfy 'MRTM-PRF-003' by historyServer;
        satisfy 'MRTM-STK-008' by powerSupervisor;
        satisfy 'MRTM-SYS-016' by powerSupervisor;
        satisfy 'MRTM-SAF-008' by powerSupervisor;
        satisfy 'MRTM-SAF-004' by watchdog;
        satisfy 'MRTM-SAF-006' by watchdog;
        satisfy 'MRTM-SAF-007' by selfTest;
        satisfy 'MRTM-MNT-003' by selfTest;
        satisfy 'MRTM-SYS-020' by timekeeper;
    }
}
