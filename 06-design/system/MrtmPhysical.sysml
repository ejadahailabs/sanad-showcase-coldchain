// MRTM physical architecture: the boards and parts, their ports, and the wires
// between them. ESP32, DS18B20, OLED, buzzer, LEDs (PROMPT Phase 6 assumption),
// plus an RTC chip and a battery path the reviewed requirements need.
// Values that need an electrical engineer are marked EE-REVIEW (Phase 6).
// IEC 62304 §5.3.3 (hardware the software needs); IEC 60601-1 frame; ADR-0008, ADR-0009.
private import ScalarValues::*;
private import ProjectRequirements::*;
private import MrtmInterfaces::*;

package MrtmPhysical {

    doc /* The physical monitor: one ESP32 module and the parts wired to it. */

    part def Esp32Module {
        doc /* Microcontroller module; runs the monitoring firmware; internal flash holds the event log (ADR-0011). */
        port oneWire : OneWirePort;
        port i2c : I2cPort;
        port buzzerPin : GpioOutPort;
        port redPin : GpioOutPort;
        port greenPin : GpioOutPort;
        port ackPin : GpioInPort;
        port wdtKickPin : GpioOutPort;
        port buzzerSensePin : GpioInPort;
        port usb : UsbPort;
        port supply : ~PowerPort;
        port batterySense : ~PowerPort;
    }
    part def Ds18b20Probe {
        doc /* Digital temperature probe on a lead, placed in the fridge air. */
        port dq : ~OneWirePort;
        port air : ~ThermalPort;
    }
    part def OledPanel {
        port i2c : ~I2cPort;
    }
    part def RtcChip {
        doc /* Temperature-compensated real-time clock with its own coin cell. EE-REVIEW. */
        port i2c : ~I2cPort;
    }
    part def Buzzer {
        doc /* Piezo buzzer with its driver; two drive inputs OR-ed, so either the firmware or the backup alarm can sound it (ADR-0013). */
        port drive : ~GpioOutPort;
        port backupDrive : ~GpioOutPort;
        port sense : ~GpioInPort;
    }
    part def BackupAlarm {
        doc /* Phase 5 (ISO 14971 risk control for HAZ-003, HAZ-005; ADR-0013; Q-12 assumed yes, A-18): an external
           watchdog timer the firmware must pulse; when the pulses stop it drives the buzzer on its own.
           Needs no processor and no bus. EE-REVIEW. */
        port kick : ~GpioOutPort;
        port alarmOut : GpioOutPort;
        port holdUp : ~PowerPort;
    }
    part def HoldUpCapacitor {
        doc /* Stored energy that keeps the backup alarm sounding 60 s after all power is lost (MRTM-SAF-013). EE-REVIEW. */
        port charge : ~PowerPort;
        port terminal : PowerPort;
    }
    part def Led {
        port drive : ~GpioOutPort;
    }
    part def AckButton {
        port contact : ~GpioInPort;
    }
    part def Battery {
        doc /* Single rechargeable cell; 4 h endurance assumed (A-11). EE-REVIEW. */
        port terminal : PowerPort;
    }
    part def PowerPath {
        doc /* Mains adapter input, charger and automatic change-over to the battery. EE-REVIEW. */
        port mainsIn : ~PowerPort;
        port batteryIn : ~PowerPort;
        port output : PowerPort;
    }

    part def MrtmUnit {
        port mains : ~PowerPort;
        port usb : UsbPort;

        part esp32 : Esp32Module;
        part probe : Ds18b20Probe;
        part oled : OledPanel;
        part rtc : RtcChip;
        part buzzer : Buzzer;
        part redLed : Led;
        part greenLed : Led;
        part ackButton : AckButton;
        part battery : Battery;
        part powerPath : PowerPath;
        part backupAlarm : BackupAlarm;
        part holdUpCap : HoldUpCapacitor;

        interface probeLink : ProbeBus connect esp32.oneWire to probe.dq;
        interface displayLink : I2cBus connect esp32.i2c to oled.i2c;
        interface clockLink : I2cBus connect esp32.i2c to rtc.i2c;
        interface buzzerLine : SignalLine connect esp32.buzzerPin to buzzer.drive;
        interface redLine : SignalLine connect esp32.redPin to redLed.drive;
        interface greenLine : SignalLine connect esp32.greenPin to greenLed.drive;
        interface ackLine : ButtonLine connect esp32.ackPin to ackButton.contact;
        interface batteryFeed : PowerFeed connect battery.terminal to powerPath.batteryIn;
        interface batterySenseLine : PowerFeed connect battery.terminal to esp32.batterySense;
        interface supplyFeed : PowerFeed connect powerPath.output to esp32.supply;
        interface wdtKickLine : SignalLine connect esp32.wdtKickPin to backupAlarm.kick;
        interface backupBuzzerLine : SignalLine connect backupAlarm.alarmOut to buzzer.backupDrive;
        interface buzzerSenseLine : SenseLine connect esp32.buzzerSensePin to buzzer.sense;
        interface holdUpCharge : PowerFeed connect powerPath.output to holdUpCap.charge;
        interface holdUpFeed : PowerFeed connect holdUpCap.terminal to backupAlarm.holdUp;
        connect mains to powerPath.mainsIn;
        connect usb to esp32.usb;

        flow of TemperatureSample from probe.dq to esp32.oneWire;
        flow of DisplayFrame from esp32.i2c to oled.i2c;
        flow of AlarmCommand from esp32.buzzerPin to buzzer.drive;

        satisfy 'MRTM-SYS-001' by esp32;
        satisfy 'MRTM-IFC-001' by probe;
        satisfy 'MRTM-PRF-001' by probe;
        satisfy 'MRTM-ENV-004' by probe;
        satisfy 'MRTM-MNT-001' by probe;
        satisfy 'MRTM-IFC-004' by oled;
        satisfy 'MRTM-SYS-011' by oled;
        satisfy 'MRTM-SYS-020' by rtc;
        satisfy 'MRTM-SAF-001' by buzzer;
        satisfy 'MRTM-SYS-003' by buzzer;
        satisfy 'MRTM-SYS-004' by redLed;
        satisfy 'MRTM-STK-004' by greenLed;
        satisfy 'MRTM-SYS-006' by ackButton;
        satisfy 'MRTM-ENV-001' by battery;
        satisfy 'MRTM-SYS-016' by powerPath;
        satisfy 'MRTM-IFC-001' by probeLink;
        satisfy 'MRTM-SYS-012' by probeLink;
        satisfy 'MRTM-IFC-004' by displayLink;
        satisfy 'MRTM-SYS-020' by clockLink;
        satisfy 'MRTM-SYS-003' by buzzerLine;
        satisfy 'MRTM-SYS-004' by redLine;
        satisfy 'MRTM-STK-004' by greenLine;
        satisfy 'MRTM-IFC-002' by ackLine;
        satisfy 'MRTM-ENV-001' by batteryFeed;
        satisfy 'MRTM-SAF-008' by batterySenseLine;
        satisfy 'MRTM-SYS-016' by supplyFeed;
        satisfy 'MRTM-SAF-005' by mains;
        satisfy 'MRTM-IFC-003' by usb;
    }
}
