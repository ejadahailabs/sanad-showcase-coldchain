// OA — Operational capabilities (Arcadia OCB). Hand-written (RUN-03-ARCADIA).
package OaCapabilities {

    doc /* Operational capabilities (Arcadia OCB): what the clinic must be able to do, and who takes part. */

    private import OaModel::*;

    use case def KnowTheFridgeIsSafe {
        objective { doc /* Know, at any moment, that the vaccines are in band, and be told when they are not — but not for a door opening. */ }
        subject clinic : Clinic;
        actor nurse : Nurse;
    }
    use case def RespondToAnExcursion {
        objective { doc /* Act on a warm fridge and quiet the call while acting. */ }
        subject clinic : Clinic;
        actor nurse : Nurse;
    }
    use case def ProveTheStorageHistory {
        objective { doc /* Show an auditor every excursion, in a record the user cannot change. */ }
        subject clinic : Clinic;
        actor manager : ClinicManager;
    }
    use case def TrustTheWatching {
        objective { doc /* Watching never stops without someone knowing: probe failure and power cuts are covered. */ }
        subject clinic : Clinic;
        actor technician : Technician;
    }

}
