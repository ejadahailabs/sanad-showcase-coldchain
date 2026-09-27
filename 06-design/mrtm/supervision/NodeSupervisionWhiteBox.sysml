// NodeSupervisionWhiteBox — white box of node `supervision` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeMcu::*;
private import NodeSupervisorItem::*;

package NodeSupervisionWhiteBox {
    doc /* White box of Supervision in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodeSupervision::SupervisionWhiteBox. */
    part mcu : Mcu;
    part supervisorItem : SupervisorSwItem;
    part alarm { port heartbeat : HeartbeatFlow; port kick : ~GpioOutPort; }  // outside supervision: one Alarm
    part power { port supply : PowerPort; }  // outside supervision: one Power
    connect alarm.heartbeat to supervisorItem.heartbeat;
    connect supervisorItem.pulses to mcu.kickCommand;
    connect mcu.wdtKickPin to alarm.kick;
    connect power.supply to mcu.supply;
}
