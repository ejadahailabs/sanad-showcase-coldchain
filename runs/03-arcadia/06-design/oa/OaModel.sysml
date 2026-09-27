// OA — Operational Analysis (Arcadia layer 1 of 5). The clinic with NO monitor in it yet.
// Hand-written (RUN-03-ARCADIA); Sanad has no Arcadia layer kind (F-3-001). Synthetic project.
private import ScalarValues::*;

package OaModel {

    doc /* Who is in the clinic, what they must be able to do (operational capabilities) and what they do
       (operational activities). No device is named here: Arcadia starts from the need, not the solution. */

    // ---- Operational actors (people) and entities (things) ----
    part def Nurse { doc /* Stores and gives vaccines; checks the fridge during the shift. */ }
    part def ClinicManager { doc /* Answers for the vaccine stock; audits the storage record. */ }
    part def Technician { doc /* Keeps the measuring equipment working and calibrated. */ }
    part def VaccineFridge { doc /* Keeps the air at 2 °C to 8 °C (assumed source: CDC / WHO PQS E006). */ }
    part def VaccineStock { doc /* The vaccines; they lose potency when stored out of band. */ }
    part def Clinic { doc /* The operational context: the clinic that stores vaccines. Subject of every capability. */ }
    part def MainsGrid { doc /* The clinic's power; it can fail for hours. */ }

    // ---- Operational activities (what happens in the clinic) ----
    action def StoreVaccinesCold { doc /* The fridge holds the stock in band. */ }
    action def WatchFridgeTemperature { doc /* Someone knows the air temperature, all day and night. */ }
    action def RespondToWarmFridge { doc /* When the fridge warms, a person is told, acts, and can quiet the call while acting. */ }
    action def AuditStorageHistory { doc /* The manager reads a record of every excursion that nobody could have changed. */ }
    action def ServiceMeasuringEquipment { doc /* The technician learns when the measuring equipment fails and repairs it. */ }
    action def RideThroughPowerCut { doc /* Watching goes on while the mains is off, up to 4 h. */ }

    action storeVaccinesCold : StoreVaccinesCold;
    action watchFridgeTemperature : WatchFridgeTemperature;
    action respondToWarmFridge : RespondToWarmFridge;
    action auditStorageHistory : AuditStorageHistory;
    action serviceMeasuringEquipment : ServiceMeasuringEquipment;
    action rideThroughPowerCut : RideThroughPowerCut;

}
