// MRTM interfaces: the items that travel, the ports they travel through, and
// the interface definitions that pair two ports. Synthetic project.
// IEC 62304 §5.3.2 (interfaces of software items), §5.3.1; ADR-0009 (sensor interface).
private import ScalarValues::*;

package MrtmInterfaces {

    doc /* What crosses a boundary in the monitor, and the shape of each boundary. */

    // Items: what flows.
    item def AirHeat;
    item def TemperatureSample {
        attribute celsius : Real;
        attribute crcOk : Boolean;
    }
    item def ExcursionState {
        attribute confirmed : Boolean;
        attribute acknowledged : Boolean;
    }
    item def ButtonPress;
    item def AlarmCommand {
        attribute sounding : Boolean;
    }
    item def DisplayFrame;
    item def LogRecord {
        attribute utcSeconds : Integer;
        attribute kind : String;
        attribute peakCelsius : Real;
        attribute crc32 : Integer;
    }
    item def LogFile;
    item def PowerEvent;

    // Ports: where it flows.
    port def ThermalPort {
        out attribute airCelsius : Real;
    }
    port def OneWirePort {
        out attribute dq : Integer;
    }
    port def I2cPort {
        out attribute bytes : Integer;
    }
    port def GpioOutPort {
        out attribute level : Boolean;
    }
    port def GpioInPort {
        in attribute level : Boolean;
    }
    port def UsbPort {
        out attribute block : Integer;
    }
    port def PowerPort {
        out attribute volts : Real;
    }

    // Interfaces: which two ports belong together.
    interface def ThermalContact {
        end air : ThermalPort;
        end probe : ~ThermalPort;
    }
    interface def ProbeBus {
        doc /* Dallas 1-Wire, one sensor, CRC-8 on every scratchpad read (ADR-0009). */
        end host : OneWirePort;
        end sensor : ~OneWirePort;
    }
    interface def I2cBus {
        end host : I2cPort;
        end device : ~I2cPort;
    }
    interface def SignalLine {
        end driver : GpioOutPort;
        end load : ~GpioOutPort;
    }
    interface def ButtonLine {
        end reader : GpioInPort;
        end button : ~GpioInPort;
    }
    interface def SenseLine {
        doc /* A level read back from a load, e.g. the buzzer drive current comparator (MRTM-SAF-014). */
        end reader : GpioInPort;
        end source : ~GpioInPort;
    }
    interface def UsbLink {
        end device : UsbPort;
        end host : ~UsbPort;
    }
    interface def PowerFeed {
        end source : PowerPort;
        end load : ~PowerPort;
    }
}
