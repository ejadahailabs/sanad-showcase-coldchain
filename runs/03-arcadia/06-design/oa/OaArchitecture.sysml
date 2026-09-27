// OA — Operational Architecture (Arcadia OAB): the entities, who does which activity, who meets whom.
// Hand-written (RUN-03-ARCADIA). Package-level parts so Sanad's canvas can place them (run 2 F-129).
private import OaModel::*;

package OaArchitecture {

    doc /* The clinic as it works today, with no monitor: six entities, each performing its operational activities. */

    part fridge : VaccineFridge { perform OaModel::storeVaccinesCold; }
    part stock : VaccineStock;
    part nurse : Nurse { perform OaModel::watchFridgeTemperature; perform OaModel::respondToWarmFridge; }
    part manager : ClinicManager { perform OaModel::auditStorageHistory; }
    part technician : Technician { perform OaModel::serviceMeasuringEquipment; }
    part mains : MainsGrid { perform OaModel::rideThroughPowerCut; }

    connection keepsCold connect fridge to stock;
    connection watchesAndResponds connect nurse to fridge;
    connection asksForTheRecord connect manager to nurse;
    connection servicesTheWatching connect technician to fridge;
    connection powers connect mains to fridge;
}
