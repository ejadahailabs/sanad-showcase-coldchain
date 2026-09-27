// PA — Physical Architecture (Arcadia layer 4 of 5): node components (hardware) and the physical links between them.
// Hand-written (RUN-03-ARCADIA). The chosen parts are the shared library's (MrtmHardware, Phase 6 of run 2).
// Package-level parts so Sanad's canvas can place them (run 2 F-129).
private import ScalarValues::*;
private import MrtmInterfaces::*;
private import MrtmHardware::*;

package PaNodes {

    doc /* Two node components the library does not have as one box: the indicator panel and the backup alarm board. */

    part def IndicatorPanel {
        doc /* Red LED, green LED and the acknowledge button on one small panel (library parts IndicatorLed, TactileButton). */
        port red : ~GpioOutPort;
        port green : ~GpioOutPort;
        port ack : ~GpioInPort;
    }
    part def BackupDriver {
        doc /* Transistor stage: turns the backup timer's timeout into buzzer drive current. */
        port input : ~GpioOutPort;
        port output : GpioOutPort;
        port supply : ~PowerPort;
    }
    part def BackupAlarmBoard {
        doc /* The independent alarm path (ADR-0013): no processor, no bus. Its inside is PaBackupAlarm. */
        port kick : ~GpioOutPort;
        port alarmOut : GpioOutPort;
        port charge : ~PowerPort;
    }
    part def PhysicalMonitor {
        doc /* What is inside the box: nine node components. */
        part mcu : Esp32S3Module;
        part probe : Ds18b20;
        part oled : Oled128x64;
        part rtc : TcxoRtc;
        part buzzer : PiezoBuzzerStage;
        part indicators : IndicatorPanel;
        part battery : LiIonCell;
        part powerPath : ChargerPowerPath;
        part backupAlarm : BackupAlarmBoard;
    }
}

package PaInterconnection {

    doc /* Physical links (Arcadia): which node component is wired to which, and by what kind of line. Pins: library MrtmBoard. */

    private import PaNodes::*;

    part mcu : Esp32S3Module;
    part probe : Ds18b20;
    part oled : Oled128x64;
    part rtc : TcxoRtc;
    part buzzer : PiezoBuzzerStage;
    part indicators : IndicatorPanel;
    part battery : LiIonCell;
    part powerPath : ChargerPowerPath;
    part backupAlarm : BackupAlarmBoard;

    interface probeLink : ProbeBus connect mcu.oneWire to probe.dq;
    interface displayLink : I2cBus connect mcu.i2c to oled.i2c;
    interface clockLink : I2cBus connect mcu.i2c to rtc.i2c;
    interface buzzerLine : SignalLine connect mcu.buzzerPin to buzzer.drive;
    interface buzzerSenseLine : SenseLine connect mcu.buzzerSensePin to buzzer.sense;
    interface redLine : SignalLine connect mcu.redPin to indicators.red;
    interface greenLine : SignalLine connect mcu.greenPin to indicators.green;
    interface ackLine : ButtonLine connect mcu.ackPin to indicators.ack;
    interface batterySenseLine : PowerFeed connect battery.terminal to mcu.batterySense;
    interface wdtKickLine : SignalLine connect mcu.wdtKickPin to backupAlarm.kick;
    interface backupBuzzerLine : SignalLine connect backupAlarm.alarmOut to buzzer.backupDrive;
    interface batteryFeed : PowerFeed connect battery.terminal to powerPath.batteryIn;
    interface supplyFeed : PowerFeed connect powerPath.output to mcu.supply;
    interface holdUpCharge : PowerFeed connect powerPath.output to backupAlarm.charge;
    interface mainsSenseLine : SenseLine connect mcu.mainsSensePin to powerPath.mainsOk;
}

package PaBackupAlarm {

    doc /* Inside the backup alarm board: timer → driver → buzzer, all fed by the hold-up store for 60 s after all power is gone. */

    private import PaNodes::*;

    part timer : WatchdogAlarmTimer;
    part driver : BackupDriver;
    part holdUp : Supercap;
    part mcu { port wdtKickPin : GpioOutPort; }           // outside the board: the microcontroller sends the service pulses
    part buzzer { port backupDrive : ~GpioOutPort; }      // outside the board: the one buzzer
    part powerPath { port output : PowerPort; }           // outside the board: the power path charges the hold-up store

    interface kickLine : SignalLine connect mcu.wdtKickPin to timer.kick;
    interface timeoutLine : SignalLine connect timer.alarmOut to driver.input;
    interface driveLine : SignalLine connect driver.output to buzzer.backupDrive;
    interface chargeFeed : PowerFeed connect powerPath.output to holdUp.charge;
    interface timerFeed : PowerFeed connect holdUp.terminal to timer.holdUp;
    interface driverFeed : PowerFeed connect holdUp.terminal to driver.supply;
}
