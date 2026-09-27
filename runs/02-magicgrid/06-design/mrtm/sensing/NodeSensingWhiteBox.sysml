// NodeSensingWhiteBox — white box of node `sensing` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeProbe::*;
private import NodeSensorItem::*;

package NodeSensingWhiteBox {
    doc /* White box of Sensing in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeSensing::SensingWhiteBox. */
    part probe : Probe;
    part sensorItem : SensorSwItem;
    part alarm { port samples : ~SampleFlow; }  // outside sensing: one Alarm
    part display { port samples : ~SampleFlow; }  // outside sensing: one Display
    part fridge { port air : ThermalPort; }  // outside sensing: one Fridge
    connect fridge.air to probe.air;
    interface probeLink : ProbeBus connect sensorItem.bus to probe.dq;
    connect sensorItem.samples to alarm.samples;
    connect sensorItem.samples to display.samples;
}
