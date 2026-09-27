// MRTM software architecture — IEC 62304 §5.3 (Class C). Written with Sanad's
// software profile (V4b, .ejadah/rew/SoftwareProfile.sysml): #Component for the
// components, #Service for the IEC 62304 software items, #Thread for the
// FreeRTOS tasks, #Interface for the ports' contracts, #DataModel for records,
// #Deployment for the ESP32-S3 allocation. Thread / Service / DataModel are the
// organisation's own markers (F-63). Synthetic project.
// Decisions: ADR-0018 (RTOS), ADR-0019 (tasks), ADR-0020 (timing split),
// ADR-0021 (log retention), ADR-0022 (language per module).
private import ScalarValues::*;
private import SoftwareProfile::*;
private import ProjectRequirements::*;
private import MrtmInterfaces::*;
private import MrtmSwStates::*;
private import MrtmSwCodes::*;

package MrtmSoftware {

    doc /* The monitoring firmware as software items, components, tasks and records, and where each runs. */

    // ---- Classification (IEC 62304 §4.3, §5.3.3) ----------------------------
    // Written `enum A;` — the bare `A;` short form is legal SysML v2 but Sanad does not read it (F-65).
    enum def SafetyClass {
        enum A;
        enum B;
        enum C;
    }

    // ---- Data models (IEC 62304 §5.3.1: data the items exchange and keep) ----
    #DataModel attribute def EventRecord {
        doc /* One 32-byte record in the history ring (ADR-0021). Written twice (MRTM-SAF-018). */
        attribute seq : Natural;
        attribute utcSeconds : Natural;
        attribute kind : EventKind;
        attribute celsiusTenths : Integer;
        attribute peakTenths : Integer;
        attribute crc32 : Natural;
    }

    #DataModel attribute def MonitorConfig {
        doc /* Values a technician may set, kept in NVS with a CRC-32 (MRTM-SAF-017). Build-time constants live in 10-src/config/mrtm_config.h (ADR-0024). */
        attribute bandLowTenths : Integer;
        attribute bandHighTenths : Integer;
        attribute probeOffsetTenths : Integer;
        attribute calibrationUtc : Natural;
        attribute crc32 : Natural;
    }

    #DataModel attribute def HistoryRing {
        doc /* The event log: a ring of EventRecord in two mirrored flash sectors (ADR-0021, A-21 overwrite oldest). */
        attribute capacity : Natural;
        attribute warnAt : Natural;
        attribute head : Natural;
        attribute count : Natural;
    }

    // ---- Interfaces between components (contracts detailed in Phase 8) ------
    #Interface port def SampleOut { out item sample : TemperatureSample; }
    #Interface port def ExcursionOut { out item excursionState : ExcursionState; }
    #Interface port def AlarmOut { out item command : AlarmCommand; }
    #Interface port def LogIn { in item rec : LogRecord; }
    #Interface port def HeartbeatOut { out attribute beatCount : Natural; }

    // ---- Components (software units' homes; IEC 62304 §5.3.1, §5.4.1) -------
    #Component part def SensorSampler {
        doc /* Reads the DS18B20 every 10 s over 1-Wire, checks CRC and range, declares probe fault. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port samples : SampleOut;
    }
    #Component part def LimitEvaluator {
        doc /* Counts consecutive out-of-band / in-band samples (7 in 60 s) and tracks the peak. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port samples : ~SampleOut;
        port excursion : ExcursionOut;
    }
    #Component part def AlarmMgr {
        doc /* Runs the alarm state machine (MrtmSwStates::AlarmStates); drives buzzer and red LED; checks buzzer current. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port excursion : ~ExcursionOut;
        port alarm : AlarmOut;
        port log : ~LogIn;
        port heartbeat : HeartbeatOut;
        exhibit state alarmStates : AlarmStates;
    }
    #Component part def DisplayMgr {
        doc /* Draws the temperature, warnings and messages on the OLED; recovers the I2C bus. Language C++ (class design, ADR-0022). */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port alarm : ~AlarmOut;
    }
    #Component part def EventLog {
        doc /* Builds EventRecords, stamps them, writes them to both sectors within 1 s. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port records : LogIn;
    }
    #Component part def HistoryRingStore {
        doc /* The ring buffer over two flash sectors; CRC check on read; capacity warning. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        attribute ring : HistoryRing;
    }
    #Component part def RtcClock {
        doc /* Reads the battery-backed RTC, reports oscillator stop, gives UTC seconds. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
    }
    #Component part def ConfigMgr {
        doc /* Loads MonitorConfig from NVS, checks its CRC-32, supplies the band. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        attribute config : MonitorConfig;
    }
    #Component part def WdtKicker {
        doc /* Pulses the external watchdog only while the alarm heartbeat is fresh (<= 2 s). Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port heartbeat : ~HeartbeatOut;
    }
    #Component part def Diagnostics {
        doc /* Power-up self-tests (buzzer, backup alarm, band CRC, RTC), button stuck check, fault events. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port log : ~LogIn;
    }
    #Component part def PowerMon {
        doc /* Mains-sense interrupt and battery voltage; logs power loss / restore; low-battery alarm. Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        port log : ~LogIn;
    }
    #Component part def UsbExport {
        doc /* Presents the history as a read-only FAT volume over TinyUSB MSC (SOUP). Language C. */
        attribute safetyClass : SafetyClass = SafetyClass::B;  // RUN-03: class B per ADR-0034 / MRTM-SW-012, -013 (run 2 said C here: F-3-007)
    }

    // ---- FreeRTOS tasks (ADR-0018, ADR-0019). Priority: higher runs first (0..24). --
    #Thread part def RtosTask {
        attribute priority : Natural;
        attribute periodMs : Natural;
        attribute deadlineMs : Natural;
        attribute stackBytes : Natural;
        attribute core : Natural;
    }
    #Thread part def AlarmTask :> RtosTask {
        attribute :>> priority = 22; attribute :>> periodMs = 1000; attribute :>> deadlineMs = 100; attribute :>> stackBytes = 4096; attribute :>> core = 1;
    }
    #Thread part def SupervisorTask :> RtosTask {
        attribute :>> priority = 21; attribute :>> periodMs = 500; attribute :>> deadlineMs = 100; attribute :>> stackBytes = 4096; attribute :>> core = 1;
    }
    #Thread part def SensorTask :> RtosTask {
        attribute :>> priority = 18; attribute :>> periodMs = 2000; attribute :>> deadlineMs = 1000; attribute :>> stackBytes = 4096; attribute :>> core = 1;
    }
    #Thread part def LogTask :> RtosTask {
        doc /* Event-driven: blocks on the log queue; periodMs 0 = no period. */
        attribute :>> priority = 16; attribute :>> periodMs = 0; attribute :>> deadlineMs = 1000; attribute :>> stackBytes = 6144; attribute :>> core = 0;
    }
    #Thread part def DisplayTask :> RtosTask {
        attribute :>> priority = 12; attribute :>> periodMs = 500; attribute :>> deadlineMs = 500; attribute :>> stackBytes = 6144; attribute :>> core = 0;
    }
    #Thread part def UsbTask :> RtosTask {
        attribute :>> priority = 5; attribute :>> periodMs = 0; attribute :>> deadlineMs = 30000; attribute :>> stackBytes = 8192; attribute :>> core = 0;
    }

    // ---- Software items (IEC 62304 §5.3.1; the eight services of Phase 4) ----
    #Service part def SensorItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part sensorSampler : SensorSampler;
    }
    #Service part def ExcursionItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part limitEvaluator : LimitEvaluator;
    }
    #Service part def AlarmItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part alarmMgr : AlarmMgr;
    }
    #Service part def DisplayItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part displayMgr : DisplayMgr;
    }
    #Service part def LogItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part eventLog : EventLog;
        part historyRing : HistoryRingStore;
        part rtcClock : RtcClock;
    }
    #Service part def UsbItem {
        attribute safetyClass : SafetyClass = SafetyClass::B;  // RUN-03: class B per ADR-0034 / MRTM-SW-012, -013 (run 2 said C here: F-3-007)
        part usbExport : UsbExport;
    }
    #Service part def PowerItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part powerMon : PowerMon;
    }
    #Service part def SupervisorItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part wdtKicker : WdtKicker;
        part diagnostics : Diagnostics;
        part configMgr : ConfigMgr;
    }

    // ---- The software system: items, tasks, wiring, requirement links -------
    #Component part def MrtmFirmware {
        doc /* The whole firmware. Refines MrtmPartitions::MonitoringFirmware: one item here per service there. */
        attribute safetyClass : SafetyClass = SafetyClass::C;
        exhibit state modes : SystemModes;

        part sensorItem : SensorItem;
        part excursionItem : ExcursionItem;
        part alarmItem : AlarmItem;
        part displayItem : DisplayItem;
        part logItem : LogItem;
        part usbItem : UsbItem;
        part powerItem : PowerItem;
        part supervisorItem : SupervisorItem;

        part alarmTask : AlarmTask;
        part supervisorTask : SupervisorTask;
        part sensorTask : SensorTask;
        part logTask : LogTask;
        part displayTask : DisplayTask;
        part usbTask : UsbTask;

        // Queues between tasks (FreeRTOS xQueue); the item on each is the message.
        connect sensorItem.sensorSampler.samples to excursionItem.limitEvaluator.samples;
        connect excursionItem.limitEvaluator.excursion to alarmItem.alarmMgr.excursion;
        connect alarmItem.alarmMgr.alarm to displayItem.displayMgr.alarm;
        connect alarmItem.alarmMgr.log to logItem.eventLog.records;
        connect alarmItem.alarmMgr.heartbeat to supervisorItem.wdtKicker.heartbeat;
        connect supervisorItem.diagnostics.log to logItem.eventLog.records;
        connect powerItem.powerMon.log to logItem.eventLog.records;

        // Which task runs which component (ADR-0019).
        allocate alarmItem.alarmMgr to alarmTask;
        allocate supervisorItem.wdtKicker to supervisorTask;
        allocate supervisorItem.diagnostics to supervisorTask;
        allocate supervisorItem.configMgr to supervisorTask;
        allocate powerItem.powerMon to supervisorTask;
        allocate sensorItem.sensorSampler to sensorTask;
        allocate excursionItem.limitEvaluator to sensorTask;
        allocate logItem.eventLog to logTask;
        allocate logItem.historyRing to logTask;
        allocate logItem.rtcClock to logTask;
        allocate displayItem.displayMgr to displayTask;
        allocate usbItem.usbExport to usbTask;

        // Requirements: each software item's def carries its components' satisfy links,
        // so the link names the component itself (the component inventory joins on that name).
    }

    // ---- Deployment: every component runs on the ESP32-S3 of Phase 6 --------
    #Deployment part def MrtmSwDeployment {
        doc /* IEC 62304 §5.3.1 / §5.3.5: all items share one processor; segregation is by task priority and the external watchdog (ADR-0013, ADR-0019). */
        part firmware : MrtmFirmware;
        part board : MrtmHardware::MrtmBoard;
        allocate firmware to board.esp32;
        allocate firmware.sensorItem to board.esp32;
        allocate firmware.excursionItem to board.esp32;
        allocate firmware.alarmItem to board.esp32;
        allocate firmware.displayItem to board.esp32;
        allocate firmware.logItem to board.esp32;
        allocate firmware.usbItem to board.esp32;
        allocate firmware.powerItem to board.esp32;
        allocate firmware.supervisorItem to board.esp32;
    }
}
