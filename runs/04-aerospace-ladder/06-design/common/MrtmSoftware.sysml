// RUN-04: the software levels are DO-178C §2.3 levels from the PSSA (08-safety/02-pssa.md); the software
// items are the five items of the aerospace ladder (.ejadah/rew/framework.yaml). Everything else is run 2's.
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

    // ---- Classification: DO-178C §2.3 software level, assigned by the PSSA (RUN-04) ----
    // Written `enum A;` — the bare `A;` short form is legal SysML v2 but Sanad does not read it (F-65).
    enum def SoftwareLevel {
        enum A;
        enum B;
        enum C;
        enum D;
        enum E;
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
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        port samples : SampleOut;
    }
    #Component part def LimitEvaluator {
        doc /* Counts consecutive out-of-band / in-band samples (7 in 60 s) and tracks the peak. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        port samples : ~SampleOut;
        port excursion : ExcursionOut;
    }
    #Component part def AlarmMgr {
        doc /* Runs the alarm state machine (MrtmSwStates::AlarmStates); drives buzzer and red LED; checks buzzer current. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        port excursion : ~ExcursionOut;
        port alarm : AlarmOut;
        port log : ~LogIn;
        port heartbeat : HeartbeatOut;
        exhibit state alarmStates : AlarmStates;
    }
    #Component part def DisplayMgr {
        doc /* Draws the temperature, warnings and messages on the OLED; recovers the I2C bus. Language C++ (class design, ADR-0022). */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::B;
        port alarm : ~AlarmOut;
    }
    #Component part def EventLog {
        doc /* Builds EventRecords, stamps them, writes them to both sectors within 1 s. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::C;
        port records : LogIn;
    }
    #Component part def HistoryRingStore {
        doc /* The ring buffer over two flash sectors; CRC check on read; capacity warning. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::C;
        attribute ring : HistoryRing;
    }
    #Component part def RtcClock {
        doc /* Reads the battery-backed RTC, reports oscillator stop, gives UTC seconds. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::C;
    }
    #Component part def ConfigMgr {
        doc /* Loads MonitorConfig from NVS, checks its CRC-32, supplies the band. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        attribute config : MonitorConfig;
    }
    #Component part def WdtKicker {
        doc /* Pulses the external watchdog only while the alarm heartbeat is fresh (<= 2 s). Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        port heartbeat : ~HeartbeatOut;
    }
    #Component part def Diagnostics {
        doc /* Power-up self-tests (buzzer, backup alarm, band CRC, RTC), button stuck check, fault events. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        port log : ~LogIn;
    }
    #Component part def PowerMon {
        doc /* Mains-sense interrupt and battery voltage; logs power loss / restore; low-battery alarm. Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        port log : ~LogIn;
    }
    #Component part def UsbExport {
        doc /* Presents the history as a read-only FAT volume over TinyUSB MSC (SOUP). Language C. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::D;
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

    // ---- Software items: the five items of the aerospace ladder (RUN-04, ARP4754A §5.3, DO-178C) ----
    #Service part def AlarmSwItem {
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        part sensorSampler : SensorSampler;
        part limitEvaluator : LimitEvaluator;
        part alarmMgr : AlarmMgr;
    }
    #Service part def PlatformSwItem {
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        part wdtKicker : WdtKicker;
        part diagnostics : Diagnostics;
        part configMgr : ConfigMgr;
        part powerMon : PowerMon;
    }
    #Service part def DisplaySwItem {
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::B;
        part displayMgr : DisplayMgr;
    }
    #Service part def RecordSwItem {
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::C;
        part eventLog : EventLog;
        part historyRing : HistoryRingStore;
        part rtcClock : RtcClock;
    }
    #Service part def ExportSwItem {
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::D;
        part usbExport : UsbExport;
    }

    // ---- The software system: items, tasks, wiring, requirement links -------
    #Component part def MrtmFirmware {
        doc /* The whole firmware. Refines MrtmPartitions::MonitoringFirmware: one item here per service there. */
        attribute softwareLevel : SoftwareLevel = SoftwareLevel::A;
        exhibit state modes : SystemModes;

        part alarmSwItem : AlarmSwItem;
        part platformSwItem : PlatformSwItem;
        part displaySwItem : DisplaySwItem;
        part recordSwItem : RecordSwItem;
        part exportSwItem : ExportSwItem;

        part alarmTask : AlarmTask;
        part supervisorTask : SupervisorTask;
        part sensorTask : SensorTask;
        part logTask : LogTask;
        part displayTask : DisplayTask;
        part usbTask : UsbTask;

        // Queues between tasks (FreeRTOS xQueue); the item on each is the message.
        connect alarmSwItem.sensorSampler.samples to alarmSwItem.limitEvaluator.samples;
        connect alarmSwItem.limitEvaluator.excursion to alarmSwItem.alarmMgr.excursion;
        connect alarmSwItem.alarmMgr.alarm to displaySwItem.displayMgr.alarm;
        connect alarmSwItem.alarmMgr.log to recordSwItem.eventLog.records;
        connect alarmSwItem.alarmMgr.heartbeat to platformSwItem.wdtKicker.heartbeat;
        connect platformSwItem.diagnostics.log to recordSwItem.eventLog.records;
        connect platformSwItem.powerMon.log to recordSwItem.eventLog.records;

        // Which task runs which component (ADR-0019).
        allocate alarmSwItem.alarmMgr to alarmTask;
        allocate platformSwItem.wdtKicker to supervisorTask;
        allocate platformSwItem.diagnostics to supervisorTask;
        allocate platformSwItem.configMgr to supervisorTask;
        allocate platformSwItem.powerMon to supervisorTask;
        allocate alarmSwItem.sensorSampler to sensorTask;
        allocate alarmSwItem.limitEvaluator to sensorTask;
        allocate recordSwItem.eventLog to logTask;
        allocate recordSwItem.historyRing to logTask;
        allocate recordSwItem.rtcClock to logTask;
        allocate displaySwItem.displayMgr to displayTask;
        allocate exportSwItem.usbExport to usbTask;

        // Requirements: each software item's def carries its components' satisfy links,
        // so the link names the component itself (the component inventory joins on that name).
    }

    // ---- Deployment: every component runs on the ESP32-S3 of Phase 6 --------
    #Deployment part def MrtmSwDeployment {
        doc /* All five items share one processor with NO robust partitioning (DO-178C §2.4.1): the PSSA's derived requirements MRTM-HLR-024 / MRTM-HLR-037 and assumption A-4-06 carry the argument (ADR-0013, ADR-0019). */
        part firmware : MrtmFirmware;
        part board : MrtmHardware::MrtmBoard;
        allocate firmware to board.esp32;
        allocate firmware.alarmSwItem to board.esp32;
        allocate firmware.platformSwItem to board.esp32;
        allocate firmware.displaySwItem to board.esp32;
        allocate firmware.recordSwItem to board.esp32;
        allocate firmware.exportSwItem to board.esp32;
    }
}
