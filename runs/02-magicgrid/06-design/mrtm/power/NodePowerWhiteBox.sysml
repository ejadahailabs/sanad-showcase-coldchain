// NodePowerWhiteBox — white box of node `power` in its context, as package-level parts the canvas can place (F-129). No satisfy here. MODEL-LEVELS.
private import MrtmInterfaces::*;
private import NodePorts::*;
private import NodeBattery::*;
private import NodePowerPath::*;
private import NodePowerItem::*;

package NodePowerWhiteBox {
    doc /* White box of Power in its context: its parts, their wires, and the neighbours its boundary ports meet. The composition itself is NodePower::PowerWhiteBox. */
    part powerPath : SupplyPath;
    part battery : MainBattery;
    part powerItem : PowerSwItem;
    part alarm { port powerEvents : ~PowerEventFlow; port supply : ~PowerPort; }  // outside power: one Alarm
    part logging { port records : ~RecordFlow; }  // outside power: one Logging
    part mainsSupply { port output : PowerPort; }  // outside power: one MainsSupply
    part supervision { port supply : ~PowerPort; }  // outside power: one Supervision
    connect mainsSupply.output to powerPath.mainsIn;
    interface batteryFeed : PowerFeed connect battery.terminal to powerPath.batteryIn;
    connect powerPath.output to supervision.supply;
    connect powerPath.output to alarm.supply;
    connect powerPath.mainsOk to powerItem.mainsSense;
    interface batterySense : PowerFeed connect battery.terminal to powerItem.batterySense;
    connect powerItem.events to alarm.powerEvents;
    connect powerItem.records to logging.records;
}
