// MRTM software state machines — IEC 62304 §5.3.1 (behaviour of software items),
// §5.4.2 (detailed design of each unit). Drawn with Sanad's state transition view.
// AlarmStates is exhibited by MrtmSoftware::AlarmMgr; SystemModes by MrtmSoftware::MrtmFirmware.
// Synthetic project. Timing: ADR-0014 (system budget), ADR-0020 (software split).
private import ScalarValues::*;
private import ProjectRequirements::*;

package MrtmSwStates {

    doc /* The alarm state machine and the system modes of the monitoring firmware. */

    // Signals the machines accept (each is one message on a FreeRTOS queue or a task notification).
    item def ExcursionEarly;       // CR-001, ADR-0030: first valid out-of-band sample
    item def EarlyCleared;         // back in band before confirmation
    item def ExcursionConfirmed;
    item def ExcursionEnded;
    item def AckPressed;
    item def ProbeFaultDeclared;
    item def ProbeRecovered;
    item def BuzzerFaultDeclared;
    item def SelfTestPassed;
    item def SelfTestFailed;
    item def MainsLost;
    item def MainsRestored;
    item def BatteryLow;

    state def AlarmStates {
        doc /* One per alarm manager. Every 1 s cycle the alarm task runs one step of this machine and beats the heartbeat (MRTM-SAF-010). */
        attribute silencedSeconds : Natural;
        attribute realarmSeconds : Natural;

        entry;
        then quiet;

        state quiet {
            entry action buzzerOffLedGreen;
        }
        state early {
            doc /* Low-priority tier (ADR-0030): red LED 1 Hz, no buzzer, within 5 s of the first out-of-band sample (MRTM-SYS-024). */
            entry action flashRedSlow;
        }
        state sounding {
            doc /* Buzzer continuous, red LED 2 Hz, warning on screen (MRTM-SYS-003/004/005), within 5 s of confirmation. */
            entry action startAlarm;
            do action checkBuzzerCurrent;
        }
        state silenced {
            doc /* Buzzer off within 1 s of the button (MRTM-SYS-006); red LED and warning stay (MRTM-SYS-007); re-sounds after 15 min (MRTM-SYS-019). */
            entry action stopBuzzerLogAck;
        }
        state probeFault {
            doc /* Pattern 1 s on / 1 s off (MRTM-SAF-011), probe fault message (MRTM-SYS-013), within 5 s (MRTM-SAF-002). */
            entry action startProbeFaultPattern;
        }
        state buzzerFault {
            doc /* Red LED 4 Hz within 5 s (MRTM-SAF-015); the backup alarm stays armed. */
            entry action flashRedFast;
        }

        transition earlyFromQuiet first quiet accept ExcursionEarly then early;
        transition earlyCleared first early accept EarlyCleared then quiet;
        transition confirmFromEarly first early accept ExcursionConfirmed then sounding;
        transition probeFromEarly first early accept ProbeFaultDeclared then probeFault;
        transition confirm first quiet accept ExcursionConfirmed then sounding;
        transition ack first sounding accept AckPressed then silenced;
        transition realarm first silenced if silencedSeconds >= realarmSeconds then sounding;
        transition endSounding first sounding accept ExcursionEnded then quiet;
        transition endSilenced first silenced accept ExcursionEnded then quiet;
        transition probeFromQuiet first quiet accept ProbeFaultDeclared then probeFault;
        transition probeFromSounding first sounding accept ProbeFaultDeclared then probeFault;
        transition probeFromSilenced first silenced accept ProbeFaultDeclared then probeFault;
        transition probeRecovered first probeFault accept ProbeRecovered then quiet;
        transition buzzerFailed first sounding accept BuzzerFaultDeclared then buzzerFault;
    }

    state def SystemModes {
        doc /* The firmware's modes from power-up to shutdown. */
        entry;
        then selfTest;

        state selfTest {
            doc /* Within 15 s of power-up: buzzer (MRTM-SAF-007), backup alarm (MRTM-SAF-023), band CRC (MRTM-SAF-017), RTC oscillator (MRTM-SAF-022); band shown 3 s (MRTM-SAF-016). */
            entry action runSelfTests;
        }
        state monitoring {
            doc /* Normal operation on mains. Restores an unacknowledged alarm within 2 s of a restart (MRTM-SAF-006). */
            entry action restoreAlarmState;
        }
        state onBattery {
            doc /* Mains lost: power loss logged within 1 s (MRTM-SAF-005); monitoring continues. */
            entry action logPowerLoss;
        }
        state failSafe {
            doc /* A self-test failed or the band CRC is wrong: buzzer on (MRTM-SAF-017), no monitoring claims made. */
            entry action soundAndStop;
        }

        transition testsPass first selfTest accept SelfTestPassed then monitoring;
        transition testsFail first selfTest accept SelfTestFailed then failSafe;
        transition mainsLost first monitoring accept MainsLost then onBattery;
        transition mainsBack first onBattery accept MainsRestored then monitoring;
        transition batteryLow first onBattery accept BatteryLow then failSafe;
    }
}
