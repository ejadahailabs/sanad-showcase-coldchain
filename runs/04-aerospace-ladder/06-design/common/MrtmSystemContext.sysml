// MRTM external interfaces: the monitor in its clinic, joined to the fridge
// air, the USB host and the mains supply. The people (nurse, manager,
// technician) meet the monitor through its display, buzzer and button — the
// use-case model (MrtmUseCases) holds them.
// IEC 62304 §5.3.2 (external interfaces); ADR-0009.
private import ProjectRequirements::*;
private import MrtmInterfaces::*;
private import MrtmPartitions::*;

package MrtmSystemContext {

    doc /* The system of interest and the three things outside it that it is wired to. */

    part def Fridge {
        port air : ThermalPort;
    }
    part def UsbHost {
        port usb : ~UsbPort;
    }
    part def MainsSupply {
        port output : PowerPort;
    }

    part def ClinicSetting {
        part fridge : Fridge;
        part monitor : MrtmSystem;
        part usbHost : UsbHost;
        part mains : MainsSupply;

        interface airContact : ThermalContact connect fridge.air to monitor.hardware.probe.air;
        interface historyLink : UsbLink connect monitor.hardware.usb to usbHost.usb;
        interface mainsFeed : PowerFeed connect mains.output to monitor.hardware.mains;

        flow of AirHeat from fridge.air to monitor.hardware.probe.air;
        flow of LogFile from monitor.hardware.usb to usbHost.usb;

    }
}
