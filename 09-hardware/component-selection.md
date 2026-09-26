# Component selection

> **Standard:** IEC 60601-1:2005+A2 cl. 4.8 (components and their ratings), cl. 4.7 (single fault); IEC 62304 cl. 5.3.3 (hardware the software relies on) and cl. 8.1.2 (SOUP — the module's ROM and SDK). The choices live in the model (`06-design/hardware/MrtmHardware.sysml`, one `part def` per component); this page says **why**.
> **MANUAL** — Sanad has no component-selection or trade-study record (F-58). Vendors and part numbers are SYNTHETIC. Every figure is EE-REVIEW. DRAFT — needs Masood's review.

**In one line:** for each part, what it must do, what we could have used, what we picked, and why.

| Part (model) | Must do (requirement) | Options looked at | Chosen (model type) | Why | EE-REVIEW |
|---|---|---|---|---|---|
| `esp32` | Run the firmware; USB read-only volume (IFC-003); 10 000 events in flash (SYS-015) | ESP32 (classic), ESP32-S3, ESP32-C3 | **ESP32-S3 class module, 8 MB flash** (`Esp32S3Module`) | Only the S3 has a native USB device for a mass-storage volume; classic ESP32 needs a USB-serial bridge, which cannot be a volume. Radio stays off (A-05) | Current 25 mA at 80 MHz with light sleep; flash endurance (A-17) |
| `probe` | ±0.5 °C over 0–15 °C (PRF-001); −30 to 50 °C (ENV-004); swap without recalibration (MNT-001) | Thermistor + ADC, PT100 + front-end, DS18B20 | **DS18B20 in a sealed sleeve, 2 m lead** (`Ds18b20`) | Factory-calibrated ±0.5 °C (−10 to +85 °C), digital with CRC-8 so a bad wire shows up as errors, not as a wrong number (ADR-0015) | Accuracy at the band edge (review T16); self-heating; lead length |
| `oled` | Digits ≥ 5 mm high (IFC-004); warning text (SYS-005) | Character LCD, e-paper, 0.96″ OLED, 1.3″ OLED | **0.96″ 128 × 64 OLED, I²C** (`Oled128x64`) | Readable in a dim room, no backlight to fail; I²C shares two pins with the clock (ADR-0016) | 5 mm digits need the 2× font on a 0.96″ panel — check; burn-in over 5 years |
| `rtc` | ≤ 2 s/day drift (SYS-020); report a stop (SAF-022) | ESP32 internal RTC, crystal RTC, TCXO RTC | **TCXO RTC ±2 ppm, coin cell** (`TcxoRtc`) | ±2 ppm ≈ 0.2 s/day, ten times inside the limit; has an oscillator-stop flag | Coin-cell life |
| `buzzer` | ≥ 65 dB(A) at 1 m (SAF-001); two drive inputs (ADR-0013); current sense (SAF-014) | Magnetic buzzer, piezo transducer | **5 V piezo, 85 dB(A) at 10 cm, MOSFET stage, diode-OR, shunt + comparator** (`PiezoBuzzerStage`) | Piezo draws ~30 mA and is loud; OR-ed inputs let the backup timer sound it (ADR-0017) | 85 dB(A) at 10 cm ≈ 65 dB(A) at 1 m only in free field — measure; 5 mA sense threshold |
| `redLed`, `greenLed` | 2 Hz / 4 Hz red flash (SYS-004, SAF-015); "all good" light (STK-004) | — | **3 mm LEDs, 5 mA** (`IndicatorLed`) | Diverse from the buzzer and the display (no bus) | Visibility at 4 m |
| `ackButton` | Debounced 50 ms (IFC-002); stuck detection (SAF-019) | Membrane, tactile | **6 mm tactile, pull-up** (`TactileButton`) | Simple, cleanable behind a membrane | Ingress (cleaning fluids) |
| `battery` | 4 h without mains (ENV-001); low-battery alarm at 3.4 V (SAF-008) | 3 × AA NiMH, 1 × Li-ion 18650 | **1 × protected Li-ion 18650, 2600 mAh** (`LiIonCell`) | 49 h normal / 26 h alarm on paper (power-budget.md) — margin for ageing | Capacity, charging temperature limits in a warm room |
| `powerPath` | Change-over ≤ 100 ms (SYS-016); mains-present signal (SAF-005) | Diode-OR, load-sharing charger | **Load-sharing charger + LDO 3.3 V + mains-present line** (`ChargerPowerPath`) | No gap on change-over; the mains line gives SAF-005 its 1 s | LDO dropout at a 3.4 V cell is marginal — may need a buck-boost; external adapter must be a medical-grade 5 V supply (IEC 60601-1 cl. 8, 2 × MOPP) |
| `backupAlarm` | Sound the buzzer 10 s after the last pulse (SAF-009); tested at power-up (SAF-023) | Second MCU, 555 timer, watchdog IC | **Stand-alone watchdog timer IC, 10 s** (`WatchdogAlarmTimer`) | No software, one resistor sets the time, µA supply (ADR-0017) | Timeout tolerance; output drive; supply from the hold-up rail |
| `holdUpCap` | Keep the backup alarm sounding ≥ 60 s after all power is lost (SAF-013) | Coin cell, supercapacitor | **4 F 5.5 V supercapacitor** (`Supercap`) | 133 s with 2× life derating (power-budget.md); no battery to replace | Leakage, charge current limit, life at 35 °C |

## SOUP this hardware brings (IEC 62304 cl. 8.1.2)
- ESP32-S3 ROM bootloader and the ESP-IDF SDK (already in `00-project/soup-list.md`); the USB mass-storage class stack (TinyUSB in ESP-IDF) — add to the SOUP list in Phase 7.

## Four blocks
- **Assumptions:** A-05, A-11, A-17, A-18, A-25. **Risks:** R-13. **Open questions:** Q-14.
- **Trace links:** 06-design/hardware/MrtmHardware.sysml; hardware-trace-matrix.md; ADR-0015, ADR-0016, ADR-0017; 08-safety/fmea.md.
