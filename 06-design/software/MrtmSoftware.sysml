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
        attribute safetyClass : SafetyClass = SafetyClass::C;
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
        attribute :>> priority = 18; attribute :>> periodMs = 10000; attribute :>> deadlineMs = 1000; attribute :>> stackBytes = 4096; attribute :>> core = 1;
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
        satisfy 'MRTM-SYS-001' by sensorSampler;
        satisfy 'MRTM-SYS-012' by sensorSampler;
        satisfy 'MRTM-SAF-003' by sensorSampler;
        satisfy 'MRTM-IFC-001' by sensorSampler;
        satisfy 'MRTM-PRF-001' by sensorSampler;
    }
    #Service part def ExcursionItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part limitEvaluator : LimitEvaluator;
        satisfy 'MRTM-SYS-002' by limitEvaluator;
        satisfy 'MRTM-SYS-017' by limitEvaluator;
        satisfy 'MRTM-SYS-018' by limitEvaluator;
    }
    #Service part def AlarmItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part alarmMgr : AlarmMgr;
        satisfy 'MRTM-SAF-008' by alarmMgr;  // Phase 9: code-trace + conformance found this unit implements it (DEF-007)
        satisfy 'MRTM-SAF-010' by alarmMgr;  // Phase 9: code-trace + conformance found this unit implements it (DEF-007)
        satisfy 'MRTM-SAF-017' by alarmMgr;  // Phase 9: code-trace + conformance found this unit implements it (DEF-007)
        satisfy 'MRTM-SYS-003' by alarmMgr;
        satisfy 'MRTM-SYS-004' by alarmMgr;
        satisfy 'MRTM-SYS-006' by alarmMgr;
        satisfy 'MRTM-SYS-019' by alarmMgr;
        satisfy 'MRTM-PRF-002' by alarmMgr;
        satisfy 'MRTM-SAF-001' by alarmMgr;
        satisfy 'MRTM-SAF-002' by alarmMgr;
        satisfy 'MRTM-SAF-006' by alarmMgr;
        satisfy 'MRTM-SAF-011' by alarmMgr;
        satisfy 'MRTM-SAF-014' by alarmMgr;
        satisfy 'MRTM-SAF-015' by alarmMgr;
        satisfy 'MRTM-SAF-019' by alarmMgr;
        satisfy 'MRTM-IFC-002' by alarmMgr;
    }
    #Service part def DisplayItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part displayMgr : DisplayMgr;
        satisfy 'MRTM-MNT-002' by displayMgr;  // Phase 9: code-trace + conformance found this unit implements it (DEF-007)
        satisfy 'MRTM-MNT-003' by displayMgr;  // Phase 9: code-trace + conformance found this unit implements it (DEF-007)
        satisfy 'MRTM-SYS-005' by displayMgr;
        satisfy 'MRTM-SYS-007' by displayMgr;
        satisfy 'MRTM-SYS-011' by displayMgr;
        satisfy 'MRTM-SYS-013' by displayMgr;
        satisfy 'MRTM-SYS-022' by displayMgr;
        satisfy 'MRTM-PRF-004' by displayMgr;
        satisfy 'MRTM-IFC-004' by displayMgr;
        satisfy 'MRTM-SAF-012' by displayMgr;
        satisfy 'MRTM-SAF-016' by displayMgr;
        satisfy 'MRTM-SAF-021' by displayMgr;
    }
    #Service part def LogItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part eventLog : EventLog;
        part historyRing : HistoryRingStore;
        satisfy 'MRTM-SAF-018' by historyRing;  // Phase 9: code-trace + conformance found this unit implements it (DEF-007)
        part rtcClock : RtcClock;
        satisfy 'MRTM-SYS-008' by eventLog;
        satisfy 'MRTM-SYS-009' by eventLog;
        satisfy 'MRTM-SYS-010' by eventLog;
        satisfy 'MRTM-SYS-023' by eventLog;
        satisfy 'MRTM-SAF-018' by eventLog;
        satisfy 'MRTM-SYS-015' by historyRing;
        satisfy 'MRTM-SYS-021' by historyRing;
        satisfy 'MRTM-SYS-022' by historyRing;
        satisfy 'MRTM-SYS-020' by rtcClock;
        satisfy 'MRTM-SAF-022' by rtcClock;
    }
    #Service part def UsbItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part usbExport : UsbExport;
        satisfy 'MRTM-SYS-014' by usbExport;
        satisfy 'MRTM-IFC-003' by usbExport;
        satisfy 'MRTM-PRF-003' by usbExport;
    }
    #Service part def PowerItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part powerMon : PowerMon;
        satisfy 'MRTM-SAF-005' by powerMon;
        satisfy 'MRTM-SAF-008' by powerMon;
        satisfy 'MRTM-SYS-016' by powerMon;
    }
    #Service part def SupervisorItem {
        attribute safetyClass : SafetyClass = SafetyClass::C;
        part wdtKicker : WdtKicker;
        part diagnostics : Diagnostics;
        part configMgr : ConfigMgr;
        satisfy 'MRTM-SAF-017' by configMgr;
        satisfy 'MRTM-SAF-004' by wdtKicker;
        satisfy 'MRTM-SAF-009' by wdtKicker;
        satisfy 'MRTM-SAF-010' by wdtKicker;
        satisfy 'MRTM-SAF-007' by diagnostics;
        satisfy 'MRTM-SAF-023' by diagnostics;
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
