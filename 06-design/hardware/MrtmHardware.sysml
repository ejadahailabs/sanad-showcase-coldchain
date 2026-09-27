// MRTM hardware design: the chosen components, the pins every wire uses, the
// bus settings, and the supply current of every part in the normal and the
// alarm state. The pin map, power budget, BOM and hardware traceability matrix
// in 09-hardware/ are GENERATED from this file (tools/hw-tables.cjs).
// Every current, voltage, capacitance and pin is EE-REVIEW: it needs an
// electrical engineer and the real datasheets before anything is built.
// Vendors and part numbers are SYNTHETIC.
// IEC 60601-1 frame (cl. 4.7 single fault, cl. 8 electrical safety, cl. 11 temperature);
// IEC 62304 cl. 5.3.3 (hardware the software needs); ADR-0015 (sensor bus),
// ADR-0016 (display bus), ADR-0017 (alarm hardware).
private import ScalarValues::*;
private import ProjectRequirements::*;
private import MrtmInterfaces::*;
private import MrtmPhysical::*;

package MrtmHardware {

    doc /* Phase 6: the physical architecture of MrtmPhysical made concrete - one component per part, one pin per wire. */

    // ---- What every chosen component carries -------------------------------
    part def Component {
        doc /* Supply currents in mA on its own rail, normal state and alarm state. EE-REVIEW. */
        attribute partNumber : String;
        attribute vendor : String;
        attribute normalMa : Real;
        attribute alarmMa : Real;
    }

    // ---- Wiring definitions: an interface definition plus its pins ----------
    interface def OneWireWiring :> ProbeBus {
        attribute dqGpio : Integer;
        attribute pullUpOhms : Real;
    }
    interface def I2cWiring :> I2cBus {
        attribute sdaGpio : Integer;
        attribute sclGpio : Integer;
        attribute clockHz : Integer;
        attribute address : Integer;
        attribute pullUpOhms : Real;
    }
    interface def GpioWiring :> SignalLine {
        attribute gpio : Integer;
        attribute activeHigh : Boolean;
    }
    interface def ButtonWiring :> ButtonLine {
        attribute gpio : Integer;
        attribute pullUp : Boolean;
    }
    interface def SenseWiring :> SenseLine {
        attribute gpio : Integer;
    }
    interface def AnalogSenseWiring :> PowerFeed {
        attribute gpio : Integer;
        attribute dividerRatio : Real;
    }

    // ---- Chosen components ---------------------------------------------------
    part def Esp32S3Module :> Esp32Module, Component {
        doc /* ESP32-S3 class module, radio off, 80 MHz, light sleep between samples. Chosen over the classic ESP32
           because MRTM-IFC-003 needs a native USB device for the read-only mass-storage volume. */
        port mainsSensePin : GpioInPort;
        attribute usbDMinusGpio : Integer = 19;
        attribute usbDPlusGpio : Integer = 20;
        attribute flashMb : Integer = 8;
        attribute :>> partNumber = "VA-S3M-8";
        attribute :>> vendor = "Vendor A";
        attribute :>> normalMa = 25.0;
        attribute :>> alarmMa = 25.0;
    }
    part def Ds18b20 :> Ds18b20Probe, Component {
        doc /* DS18B20 digital probe in a stainless sleeve on a 2 m lead; +/-0.5 C from -10 C to +85 C; 12-bit, 750 ms conversion.
           Average current = 1.5 mA x 0.75 s / 2 s (CR-001, ADR-0031; EE-REVIEW: self-heating at 37 % conversion duty). */
        attribute conversionMs : Integer = 750;
        attribute :>> partNumber = "VB-DS18B20-SL2";
        attribute :>> vendor = "Vendor B";
        attribute :>> normalMa = 0.56;
        attribute :>> alarmMa = 0.56;
    }
    part def Oled128x64 :> OledPanel, Component {
        doc /* 0.96 in 128 x 64 monochrome OLED, SSD1306-class controller on I2C; digits 5 mm high need the 2x font (MRTM-IFC-004). */
        attribute :>> partNumber = "VC-OLED96-I2C";
        attribute :>> vendor = "Vendor C";
        attribute :>> normalMa = 12.0;
        attribute :>> alarmMa = 20.0;
    }
    part def TcxoRtc :> RtcChip, Component {
        doc /* Temperature-compensated RTC, +/-2 ppm (about 0.2 s/day, inside MRTM-SYS-020), oscillator-stop flag (MRTM-SAF-022), coin cell. */
        attribute :>> partNumber = "VD-RTC-TCXO";
        attribute :>> vendor = "Vendor D";
        attribute :>> normalMa = 0.2;
        attribute :>> alarmMa = 0.2;
    }
    part def PiezoBuzzerStage :> Buzzer, Component {
        doc /* 5 V piezo transducer, 85 dB(A) at 10 cm, low-side MOSFET, two drive inputs diode-OR-ed,
           shunt + comparator for the drive-current sense (MRTM-SAF-014). */
        attribute senseThresholdMa : Real = 5.0;
        attribute :>> partNumber = "VE-PZ85-5V";
        attribute :>> vendor = "Vendor E";
        attribute :>> normalMa = 0.05;
        attribute :>> alarmMa = 30.05;
    }
    part def IndicatorLed :> Led, Component {
        attribute colour : String;
        attribute :>> vendor = "Vendor F";
    }
    part def TactileButton :> AckButton, Component {
        attribute :>> partNumber = "VG-TACT-6";
        attribute :>> vendor = "Vendor G";
        attribute :>> normalMa = 0.0;
        attribute :>> alarmMa = 0.0;
    }
    part def LiIonCell :> Battery, Component {
        doc /* One 18650-size Li-ion cell, protected. Capacity is SYNTHETIC. */
        attribute capacityMah : Real = 2600.0;
        attribute usableFraction : Real = 0.8;
        attribute :>> partNumber = "VH-18650-P";
        attribute :>> vendor = "Vendor H";
        attribute :>> normalMa = 0.0;
        attribute :>> alarmMa = 0.0;
    }
    part def ChargerPowerPath :> PowerPath, Component {
        doc /* 5 V adapter input, load-sharing Li-ion charger, automatic change-over, 3.3 V low-dropout regulator,
           mains-present signal. Dropout at a 3.4 V cell is marginal: a buck-boost may be needed. EE-REVIEW. */
        port mainsOk : ~GpioInPort;
        attribute :>> partNumber = "VI-PWR-LS1";
        attribute :>> vendor = "Vendor I";
        attribute :>> normalMa = 0.1;
        attribute :>> alarmMa = 0.1;
    }
    part def WatchdogAlarmTimer :> BackupAlarm, Component {
        doc /* Stand-alone watchdog timer IC with a 10 s timeout set by one resistor; its output drives the buzzer's backup input.
           Supplied from the hold-up capacitor rail, so it keeps working when everything else is off (ADR-0017). */
        attribute timeoutS : Real = 10.0;
        attribute :>> partNumber = "VJ-WDT-10S";
        attribute :>> vendor = "Vendor J";
        attribute :>> normalMa = 0.01;
        attribute :>> alarmMa = 0.01;
    }
    part def Supercap :> HoldUpCapacitor, Component {
        doc /* 5.5 V supercapacitor charged to 5.0 V through a current limiter; the backup buzzer works down to 3.0 V. */
        attribute capacitanceF : Real = 4.0;
        attribute voltsFull : Real = 5.0;
        attribute voltsMin : Real = 3.0;
        attribute lifeDerating : Real = 0.5;
        attribute :>> partNumber = "VK-SC4F-5V5";
        attribute :>> vendor = "Vendor K";
        attribute :>> normalMa = 0.01;
        attribute :>> alarmMa = 0.01;
    }

    // ---- The board: MrtmUnit with every part chosen and every wire pinned ----
    part def MrtmBoard :> MrtmUnit {
        doc /* The monitor's one printed circuit board. Strapping pins (GPIO0, 3, 45, 46), flash/PSRAM pins (26-37)
           and USB pins (19, 20) are kept free of other signals. */

        part :>> esp32 : Esp32S3Module;
        part :>> probe : Ds18b20;
        part :>> oled : Oled128x64;
        part :>> rtc : TcxoRtc;
        part :>> buzzer : PiezoBuzzerStage;
        part :>> redLed : IndicatorLed {
            attribute :>> colour = "red";
            attribute :>> partNumber = "VF-LED-R3";
            attribute :>> normalMa = 0.0;
            attribute :>> alarmMa = 5.0;
        }
        part :>> greenLed : IndicatorLed {
            attribute :>> colour = "green";
            attribute :>> partNumber = "VF-LED-G3";
            attribute :>> normalMa = 5.0;
            attribute :>> alarmMa = 0.0;
        }
        part :>> ackButton : TactileButton;
        part :>> battery : LiIonCell;
        part :>> powerPath : ChargerPowerPath;
        part :>> backupAlarm : WatchdogAlarmTimer;
        part :>> holdUpCap : Supercap;

        interface :>> probeLink : OneWireWiring {
            attribute :>> dqGpio = 4;
            attribute :>> pullUpOhms = 4700.0;
        }
        interface :>> displayLink : I2cWiring {
            attribute :>> sdaGpio = 8;
            attribute :>> sclGpio = 9;
            attribute :>> clockHz = 100000;
            attribute :>> address = 60;
            attribute :>> pullUpOhms = 4700.0;
        }
        interface :>> clockLink : I2cWiring {
            attribute :>> sdaGpio = 8;
            attribute :>> sclGpio = 9;
            attribute :>> clockHz = 100000;
            attribute :>> address = 104;
            attribute :>> pullUpOhms = 4700.0;
        }
        interface :>> buzzerLine : GpioWiring {
            attribute :>> gpio = 11;
            attribute :>> activeHigh = true;
        }
        interface :>> redLine : GpioWiring {
            attribute :>> gpio = 12;
            attribute :>> activeHigh = true;
        }
        interface :>> greenLine : GpioWiring {
            attribute :>> gpio = 13;
            attribute :>> activeHigh = true;
        }
        interface :>> ackLine : ButtonWiring {
            attribute :>> gpio = 14;
            attribute :>> pullUp = true;
        }
        interface :>> wdtKickLine : GpioWiring {
            attribute :>> gpio = 15;
            attribute :>> activeHigh = true;
        }
        interface :>> buzzerSenseLine : SenseWiring {
            attribute :>> gpio = 16;
        }
        interface :>> batterySenseLine : AnalogSenseWiring {
            attribute :>> gpio = 1;
            attribute :>> dividerRatio = 0.5;
        }
        interface mainsSenseLine : SenseWiring connect esp32.mainsSensePin to powerPath.mainsOk {
            attribute :>> gpio = 2;
        }

    }
}
