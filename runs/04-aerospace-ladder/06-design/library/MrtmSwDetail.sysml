// MRTM detailed design — IEC 62304 §5.4.1 (units), §5.4.2 (detailed design), §5.4.3 (interface design).
// One #Interface def per unit: its C (or C-callable C++) functions as actions with typed parameters;
// the exact C signature, pre/post conditions and algorithm are in each action's doc and in
// 10-src/firmware/components/<unit>/contracts.md. Display classes (C++, ADR-0022) as #Class defs.
// Generated with the contracts from one table (tools/detail-design.py).
private import ScalarValues::*;
private import SoftwareProfile::*;
private import ProjectRequirements::*;
private import MrtmInterfaces::*;
private import MrtmSoftware::*;
private import MrtmSwCodes::*;

package MrtmSwDetail {

    doc /* The unit contracts of the monitoring firmware, and the display's classes. */

    // The two ends every unit contract has: the unit that provides the functions and the unit that calls them.
    port def UnitPort;

    #Interface interface def SensorSamplerApi {
        doc /* Read the probe, check it, and say when it has failed. Unit sensor_sampler (C); contract 10-src/firmware/components/sensor_sampler/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'sensor_sampler_init' {
            doc /* C: mrtm_err_t sensor_sampler_init(const mrtm_config_t *cfg); Pre: cfg != NULL, config CRC already checked. Post: Bus reset done, first conversion started. Errors: MRTM_ERR_ARG, MRTM_ERR_BUS. */
            in cfg : MonitorConfig;
            out ret : ErrorCode;
        }
        action 'sensor_sampler_read' {
            doc /* C: mrtm_err_t sensor_sampler_read(uint32_t now_s, mrtm_sample_t *out); Pre: Called by sensorTask every MRTM_SAMPLE_PERIOD_MS (2 s, ADR-0031). Post: out->valid is false on CRC or range failure; tenths = raw/1.6 + probe offset, rounded to 0.1 degC. Errors: MRTM_ERR_BUS, MRTM_ERR_CRC, MRTM_ERR_RANGE. Algorithm: Read 9-byte scratchpad; CRC-8 (Dallas/Maxim, poly 0x31) over bytes 0..7 must equal byte 8; raw 12-bit two's complement / 16 = degC; outside -30..50 degC -> RANGE (MRTM-SAF-003, declares probe fault at once); start the next 750 ms conversion. */
            in nowS : Natural;
            out sample : TemperatureSample;
            out ret : ErrorCode;
        }
        action 'sensor_sampler_probe_fault' {
            doc /* C: bool sensor_sampler_probe_fault(uint32_t now_s); Pre: none Post: true when the last valid sample is 30 s old or older (MRTM_PROBE_FAULT_S), or the last reading was out of range. Errors: none. Algorithm: fault = (now_s - last_valid_s >= 30) OR last_out_of_range. Clears on the next valid sample (event PROBE_RECOVERED). */
            in nowS : Natural;
            out fault : Boolean;
        }
    }

    #Interface interface def LimitEvaluatorApi {
        doc /* Decide when an excursion starts and ends. Unit limit_evaluator (C); contract 10-src/firmware/components/limit_evaluator/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'limit_evaluator_init' {
            doc /* C: void limit_evaluator_init(limit_eval_t *st, int16_t low_tenths, int16_t high_tenths); Pre: st != NULL, low < high. Post: No excursion, both runs 0. Errors: none (asserts). */
            in lowTenths : Integer;
            in highTenths : Integer;
        }
        action 'limit_evaluator_step' {
            doc /* C: limit_event_t limit_evaluator_step(limit_eval_t *st, const mrtm_sample_t *s); Pre: Called once per sample, straight after sensor_sampler_read. Post: Returns LIMIT_CONFIRMED on the 7th consecutive out-of-band sample, LIMIT_ENDED on the 7th consecutive in-band sample during an excursion. Errors: none. Algorithm: Invalid samples are skipped: they neither count nor reset (A-29). out = t < low - hyst OR t > high + hyst while no excursion; in = low + hyst <= t <= high - hyst while in excursion; hyst = MRTM_HYSTERESIS_TENTHS = 0 (A-26). out_run counts consecutive out samples, in_run consecutive in samples; each resets the other. Early alarm (ADR-0030): returns LIMIT_EARLY on the first valid out sample, LIMIT_EARLY_CLEARED when an in sample breaks a run before confirmation. Confirm at out_run == MRTM_CONFIRM_SAMPLES (60 s / 2 s + 1 = 31 -> spans 60 s); end at in_run == 31. Peak = max |distance outside band| sample, kept from the first out sample. */
            in sample : TemperatureSample;
            out limitEvent : Natural;
        }
        action 'limit_evaluator_peak' {
            doc /* C: int16_t limit_evaluator_peak(const limit_eval_t *st); Pre: st != NULL. Post: The most extreme temperature of the current or last excursion, 0.1 degC. Errors: none. */
            out peakTenths : Integer;
        }
    }

    #Interface interface def AlarmMgrApi {
        doc /* Run the alarm state machine and drive the buzzer and red light. Unit alarm_mgr (C); contract 10-src/firmware/components/alarm_mgr/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'alarm_mgr_init' {
            doc /* C: mrtm_err_t alarm_mgr_init(void); Pre: GPIO 11 (buzzer), 12 (red LED, LEDC), 16 (buzzer sense), button GPIO configured by board init. Post: State restored from NVS key 'alarm' (MRTM-SAF-006): an unacknowledged alarm is sounding again within 2 s of the restart. Errors: MRTM_ERR_NVS (treated as QUIET + logged). */
            out ret : ErrorCode;
        }
        action 'alarm_mgr_post' {
            doc /* C: mrtm_err_t alarm_mgr_post(alarm_signal_t sig); Pre: Any task. alarm_mgr_post_from_isr() is the ISR form. Post: Signal queued; alarmTask woken at once (task notification), not at its next 1 s tick. Errors: MRTM_ERR_FULL (queue depth 8; the sender logs it). */
            in signal : Natural;
            out ret : ErrorCode;
        }
        action 'alarm_mgr_step' {
            doc /* C: void alarm_mgr_step(uint32_t now_ms); Pre: alarmTask only, at least every 1000 ms and on every notification. Post: One transition of MrtmSwStates::AlarmStates taken per signal; outputs driven; heartbeat incremented. Errors: none. Algorithm: Drain the signal queue through the transition table of AlarmStates. Outputs: SOUNDING = buzzer on continuous, red LED LEDC 2 Hz 50 %; PROBE_FAULT = buzzer toggles every 1 s step (1 s on/1 s off, MRTM-SAF-011); BUZZER_FAULT = red LED 4 Hz; SILENCED = buzzer off, LED 2 Hz, re-sound when now - ack_ms >= MRTM_REALARM_MS (15 min). Buzzer current: while driven, sense GPIO low for >= 5 consecutive steps -> SIG buzzer fault (MRTM-SAF-014). Heartbeat += 1 at the end of every step (read by wdt_kicker). */
            in nowMs : Natural;
        }
        action 'alarm_mgr_button_isr' {
            doc /* C: void alarm_mgr_button_isr(void *arg); Pre: GPIO interrupt on the button line, both edges. Post: A press stable for 50 ms posts SIG_ACK_PRESSED (MRTM-IFC-002); held 60 s posts nothing more and logs BUTTON_FAULT (MRTM-SAF-019). Errors: none. Algorithm: Debounce: on an edge, (re)arm a 50 ms esp_timer one-shot; when it fires, read the pin; if still pressed and last stable state was released -> press accepted. While pressed, a 60 s one-shot is armed; if it fires the button is declared stuck and further presses are ignored until release. */
            in arg : Natural;
        }
        action 'alarm_mgr_heartbeat' {
            doc /* C: uint32_t alarm_mgr_heartbeat(void); Pre: none Post: Current heartbeat count (atomic read). Errors: none. */
            out beat : Natural;
        }
    }

    #Interface interface def DisplayMgrApi {
        doc /* Draw the screen. C interface outside, classes inside. Unit display_mgr (C++); contract 10-src/firmware/components/display_mgr/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'display_mgr_init' {
            doc /* C: extern "C" mrtm_err_t display_mgr_init(void); Pre: I2C master on the display bus ready. Post: SSD1306 initialised, screen cleared, band shown for 3 s (MRTM-SAF-016). Errors: MRTM_ERR_BUS. */
            out ret : ErrorCode;
        }
        action 'display_mgr_update' {
            doc /* C: extern "C" void display_mgr_update(const display_model_t *m); Pre: Any task; copies the model under a mutex. Post: Next tick draws the new model. Errors: none. */
            in model : DisplayFrame;
        }
        action 'display_mgr_tick' {
            doc /* C: extern "C" void display_mgr_tick(void); Pre: displayTask every 500 ms. Post: Dirty widgets redrawn and the frame sent; a stuck bus is reset within 1 s (MRTM-SAF-021). Errors: none (bus errors are logged as I2C_BUS_RESET). Algorithm: Screen::render(): for each widget, if dirty, draw into the 1024-byte frame buffer; send the changed pages over I2C with a 100 ms transaction timeout; on timeout: clock 9 pulses on SCL, re-init the SSD1306, log I2C_BUS_RESET, total <= 1 s. Temperature refreshed every 10 s (MRTM-PRF-004) from the model; digits 32 px tall = 5.1 mm on the 0.96 in panel (MRTM-IFC-004). */
        }
    }

    #Interface interface def EventLogApi {
        doc /* Turn events into stamped records and store each twice. Unit event_log (C); contract 10-src/firmware/components/event_log/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'event_log_post' {
            doc /* C: mrtm_err_t event_log_post(mrtm_event_kind_t kind, int16_t tenths, int16_t peak_tenths); Pre: Any task; event_log_post_from_isr() is the ISR form. Post: Record queued with the UTC second of the call (time-stamping at the event, not at the write). Errors: MRTM_ERR_FULL (queue depth 32). Algorithm: utc_s = rtc_clock_now() taken at post time (1 s resolution, MRTM-SYS-008/010/023). */
            in kind : EventKind;
            in tenths : Integer;
            in peakTenths : Integer;
            out ret : ErrorCode;
        }
        action 'event_log_step' {
            doc /* C: void event_log_step(uint32_t timeout_ms); Pre: logTask only. Post: Every queued record has seq, CRC-32 and is written to copy A then copy B within 1 s of its event (MRTM-SAF-018). Errors: MRTM_ERR_FLASH (retried once, then logged as SELF_TEST_FAIL value 'flash'). Algorithm: Take one record; seq = ++last_seq; crc32 = CRC-32/ISO-HDLC over bytes 0..27; history_ring_append(). */
            in timeoutMs : Natural;
        }
    }

    #Interface interface def HistoryRingApi {
        doc /* Keep 10000 records in a ring over two mirrored flash areas. Unit history_ring (C); contract 10-src/firmware/components/history_ring/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'history_ring_init' {
            doc /* C: mrtm_err_t history_ring_init(history_ring_t *r); Pre: Partitions 'logA' and 'logB' present. Post: head_seq = highest seq with a valid CRC in either copy; count = min(head_seq, capacity). Errors: MRTM_ERR_FLASH. Algorithm: Scan both partitions slot by slot (10 112 slots each: 79 sectors x 128 slots); keep the max valid seq. Slot index = seq mod slots. */
            out ring : HistoryRing;
            out ret : ErrorCode;
        }
        action 'history_ring_append' {
            doc /* C: mrtm_err_t history_ring_append(history_ring_t *r, const event_record_t *rec); Pre: logTask only. Post: Record in copy A and copy B; when count reaches 9000 the capacity-warning event is posted once (MRTM-SYS-022). Errors: MRTM_ERR_FLASH. Algorithm: If the slot is the first of a sector, erase that sector in A, write A, erase in B, write B (erase-ahead keeps 10 000 readable, A-21 overwrite oldest). */
            in rec : EventRecord;
            out ret : ErrorCode;
        }
        action 'history_ring_read' {
            doc /* C: mrtm_err_t history_ring_read(const history_ring_t *r, uint32_t age, event_record_t *out); Pre: age < count (0 = newest). Post: out holds a record whose CRC-32 matches, from copy A or else copy B. Errors: MRTM_ERR_CRC when both copies fail — posts LOG_RECORD_CORRUPT within 1 s (MRTM-SYS-021). */
            in age : Natural;
            out rec : EventRecord;
            out ret : ErrorCode;
        }
        action 'history_ring_count' {
            doc /* C: uint32_t history_ring_count(const history_ring_t *r); Pre: none Post: Records held, 0..10000. Errors: none. */
            out n : Natural;
        }
    }

    #Interface interface def RtcClockApi {
        doc /* Give UTC seconds and report a stopped oscillator. Unit rtc_clock (C); contract 10-src/firmware/components/rtc_clock/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'rtc_clock_init' {
            doc /* C: mrtm_err_t rtc_clock_init(bool *osc_stopped); Pre: I2C bus ready. Post: *osc_stopped = the RTC's oscillator-stop flag; flag cleared after it is read; CLOCK_FAULT logged within 2 s of power-up when set (MRTM-SAF-022). Errors: MRTM_ERR_BUS. */
            out oscStopped : Boolean;
            out ret : ErrorCode;
        }
        action 'rtc_clock_now' {
            doc /* C: uint32_t rtc_clock_now(void); Pre: Any task. Post: UTC seconds, from a copy refreshed once per second by an esp_timer from the RTC (no I2C in the caller's path). Errors: none. */
            out utcS : Natural;
        }
        action 'rtc_clock_set' {
            doc /* C: mrtm_err_t rtc_clock_set(uint32_t utc_s); Pre: Technician command over USB (A-23). Post: RTC set; CONFIG_CHANGED logged. Errors: MRTM_ERR_BUS, MRTM_ERR_ARG. */
            in utcS : Natural;
            out ret : ErrorCode;
        }
    }

    #Interface interface def ConfigMgrApi {
        doc /* Load and check the technician values. Unit config_mgr (C); contract 10-src/firmware/components/config_mgr/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'config_mgr_load' {
            doc /* C: mrtm_err_t config_mgr_load(mrtm_config_t *out); Pre: NVS initialised. Post: out valid only when MRTM_OK. There is NO default band in firmware: a missing or bad record means failSafe with the buzzer on within 5 s (MRTM-SAF-017). Errors: MRTM_ERR_NVS, MRTM_ERR_CRC. Algorithm: Read NVS blob 'cfg'; CRC-32 over all bytes before crc32 must match; band must satisfy MRTM_BAND_MIN_TENTHS <= low < high <= MRTM_BAND_MAX_TENTHS. */
            out config : MonitorConfig;
            out ret : ErrorCode;
        }
        action 'config_mgr_store' {
            doc /* C: mrtm_err_t config_mgr_store(const mrtm_config_t *in); Pre: Technician command over USB (Q-15). Post: Stored with a fresh CRC; CONFIG_CHANGED logged; takes effect at the next restart. Errors: MRTM_ERR_ARG, MRTM_ERR_NVS. */
            in config : MonitorConfig;
            out ret : ErrorCode;
        }
    }

    #Interface interface def WdtKickerApi {
        doc /* Pulse the outside watchdog only while the alarm task is alive. Unit wdt_kicker (C); contract 10-src/firmware/components/wdt_kicker/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'wdt_kicker_init' {
            doc /* C: void wdt_kicker_init(void); Pre: GPIO 15 output. Post: ESP-IDF task watchdog armed at MRTM_TASK_WDT_S (5 s) for alarmTask and supervisorTask, panic-restart on timeout (restart < 2 s, MRTM-SAF-004). Errors: none. */
        }
        action 'wdt_kicker_step' {
            doc /* C: void wdt_kicker_step(uint32_t now_ms, uint32_t alarm_beat); Pre: supervisorTask every 500 ms. Post: A pulse on GPIO 15 only if alarm_beat changed within the last MRTM_HEARTBEAT_MAX_MS (2000 ms); otherwise no pulse, so the backup alarm sounds within 10 s (MRTM-SAF-009/010). Errors: none. Algorithm: if (alarm_beat != last_beat) { last_beat = alarm_beat; last_change = now_ms; } if (now_ms - last_change <= 2000) pulse 1 ms high on GPIO 15. */
            in nowMs : Natural;
            in alarmBeat : Natural;
        }
    }

    #Interface interface def DiagnosticsApi {
        doc /* Run the power-up tests and the running checks. Unit diagnostics (C); contract 10-src/firmware/components/diagnostics/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'diagnostics_power_up' {
            doc /* C: mrtm_err_t diagnostics_power_up(diag_result_t *out); Pre: Before monitoring starts (SystemModes::selfTest). Post: Within 5 s: buzzer driven 200 ms and current seen (MRTM-SAF-007); within 15 s: pulses held back 12 s and the backup alarm's sense seen, then pulses resumed (MRTM-SAF-023); result logged as SELF_TEST_PASS or SELF_TEST_FAIL. Errors: MRTM_ERR_HW. */
            out ret : ErrorCode;
        }
        action 'diagnostics_step' {
            doc /* C: void diagnostics_step(uint32_t now_ms); Pre: supervisorTask every 500 ms. Post: Hourly: task stack high-water marks logged (Phase 10 evidence). Errors: none. */
            in nowMs : Natural;
        }
    }

    #Interface interface def PowerMonApi {
        doc /* Watch mains and battery; log and alarm. Unit power_mon (C); contract 10-src/firmware/components/power_mon/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'power_mon_init' {
            doc /* C: mrtm_err_t power_mon_init(void); Pre: Mains-sense GPIO input, battery ADC channel configured. Post: Interrupt on both edges of mains-sense. Errors: none. */
            out ret : ErrorCode;
        }
        action 'power_mon_isr' {
            doc /* C: void power_mon_isr(void *arg); Pre: Mains-sense edge. Post: POWER_LOSS or POWER_RESTORE posted from the ISR (logged within 1 s, MRTM-SAF-005). Errors: none. */
            in arg : Natural;
        }
        action 'power_mon_step' {
            doc /* C: void power_mon_step(uint32_t now_ms); Pre: supervisorTask every 500 ms. Post: Battery below MRTM_BATTERY_LOW_MV (3400 mV) on 2 consecutive reads -> SIG_BATTERY_LOW + LOW_BATTERY event (buzzer <= 5 s, MRTM-SAF-008). Errors: none. Algorithm: Average 8 ADC samples, calibrated with esp_adc_cal; the divider ratio is EE-REVIEW. */
            in nowMs : Natural;
        }
    }

    #Interface interface def UsbExportApi {
        doc /* Show the history as a read-only USB drive. Unit usb_export (C); contract 10-src/firmware/components/usb_export/contracts.md. */
        end provider : UnitPort;
        end caller : ~UnitPort;
        action 'usb_export_init' {
            doc /* C: mrtm_err_t usb_export_init(void); Pre: TinyUSB (SOUP-5) installed. Post: MSC device with one FAT12 volume, one file HISTORY.CSV, write-protect bit set (MRTM-SYS-014). Errors: MRTM_ERR_HW. */
            out ret : ErrorCode;
        }
        action 'usb_export_read10' {
            doc /* C: int32_t usb_export_read10(uint32_t lba, uint32_t offset, void *buf, uint32_t size); Pre: TinyUSB callback. Post: Boot sector, FAT and directory are fixed tables; data sectors are CSV lines rendered on demand from history_ring_read (newest last). 10 000 records x 48 bytes = 480 kB, well inside 30 s at full speed (MRTM-PRF-003). Errors: returns -1 on a record read error (the line is written as 'CORRUPT' instead). */
            in lba : Natural;
            out bytes : Integer;
        }
        action 'usb_export_write10' {
            doc /* C: int32_t usb_export_write10(uint32_t lba, uint32_t offset, const void *buf, uint32_t size); Pre: TinyUSB callback. Post: Always refuses (returns -1): the volume is read-only (MRTM-IFC-003). Errors: none. */
            in lba : Natural;
            out bytes : Integer;
        }
    }

    // ---- Display classes (C++17, no exceptions, no RTTI, no heap after start-up) ----
    #SoftwareProfile::Class part def FrameBuffer {
        doc /* 128 x 64 monochrome, 1024 bytes, page-ordered as the SSD1306 expects; tracks dirty pages. */
        attribute widthPx : Natural = 128;
        attribute heightPx : Natural = 64;
        attribute dirtyPages : Natural;
        action clear;
        action setPixel { in x : Natural; in y : Natural; in on : Boolean; }
    }
    #SoftwareProfile::Class part def Widget {
        doc /* One thing on the screen; abstract in C++ (pure virtual draw). Not marked `abstract` here: Sanad cannot read `abstract #Marker part def` (F-78). Screen calls draw() only when dirty. */
        attribute x : Natural;
        attribute y : Natural;
        attribute dirty : Boolean;
        abstract action draw { in fb : FrameBuffer; }
    }
    #SoftwareProfile::Class part def TextWidget :> Widget {
        doc /* Temperature digits: 32 px glyphs = 5.1 mm on the 0.96 in panel (MRTM-IFC-004); 0.1 degC (MRTM-SYS-011). */
        attribute glyphHeightPx : Natural = 32;
        action setTenths { in tenths : Integer; in valid : Boolean; }
        action :>> draw;
    }
    #SoftwareProfile::Class part def BannerWidget :> Widget {
        doc /* One line of text: excursion warning, probe fault, calibration due, log capacity, band at power-up. */
        action setMessage { in messageId : Natural; }
        action :>> draw;
    }
    #SoftwareProfile::Class part def IconWidget :> Widget {
        doc /* Bell (alarm silenced), battery (on battery). */
        action setIcon { in iconId : Natural; }
        action :>> draw;
    }
    #SoftwareProfile::Class part def Ssd1306Driver {
        doc /* Sends changed pages over I2C (100 ms timeout); recovers the bus with 9 SCL pulses and a re-init (MRTM-SAF-021). */
        attribute timeoutMs : Natural = 100;
        action sendPages { in fb : FrameBuffer; out ret : ErrorCode; }
        action recoverBus { out ret : ErrorCode; }
    }
    #SoftwareProfile::Class part def Screen {
        doc /* Owns the widgets and the frame buffer; maps display_model_t to widgets (display_mgr_update) and renders (display_mgr_tick). `Class` is written qualified: a bare #Class resolves to the kernel library's Class (F-78). */
        part fb : FrameBuffer;
        part temperature : TextWidget;
        part banner : BannerWidget;
        part icon : IconWidget;
        part driver : Ssd1306Driver;
        action renderFrame;
    }

    // ---- The unit contracts as design elements, each satisfying the requirements its unit carries ----
    #Component part def MrtmUnitContracts {
        doc /* IEC 62304 §5.4.2: every unit's interface is a design element traced to the requirements it serves. */

        part sensorSamplerApi : SensorSamplerApi;
        part limitEvaluatorApi : LimitEvaluatorApi;
        part alarmMgrApi : AlarmMgrApi;
        part displayMgrApi : DisplayMgrApi;
        part eventLogApi : EventLogApi;
        part historyRingApi : HistoryRingApi;
        part rtcClockApi : RtcClockApi;
        part configMgrApi : ConfigMgrApi;
        part wdtKickerApi : WdtKickerApi;
        part diagnosticsApi : DiagnosticsApi;
        part powerMonApi : PowerMonApi;
        part usbExportApi : UsbExportApi;
        part screen : Screen;
    }
}
