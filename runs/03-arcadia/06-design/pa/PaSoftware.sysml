// PA — behaviour components (software), with Sanad's software profile, and their deployment on the node component.
// Hand-written (RUN-03-ARCADIA). Item definitions (#Service, with their #Component units) are the shared library's
// MrtmSoftware (run 2 Phase 7). IEC 62304 §5.3: software items; §5.3.5 segregation (usb item, class B, ADR-0034).
private import MrtmSoftware::*;

package PaSoftware {

    doc /* Eight software items on the one microcontroller. Each software requirement is satisfied by one of them (PaSatisfy). */

    part sensorItem : SensorItem;
    part excursionItem : ExcursionItem;
    part alarmItem : AlarmItem;
    part displayItem : DisplayItem;
    part logItem : LogItem;
    part usbItem : UsbItem;
    part powerItem : PowerItem;
    part supervisorItem : SupervisorItem;

    // Deployment (Arcadia: behaviour component → node component).
    allocate sensorItem to PaInterconnection::mcu;
    allocate excursionItem to PaInterconnection::mcu;
    allocate alarmItem to PaInterconnection::mcu;
    allocate displayItem to PaInterconnection::mcu;
    allocate logItem to PaInterconnection::mcu;
    allocate usbItem to PaInterconnection::mcu;
    allocate powerItem to PaInterconnection::mcu;
    allocate supervisorItem to PaInterconnection::mcu;
}
