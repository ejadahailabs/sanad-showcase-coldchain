// MRTM use cases and operational context (Phase 1, ConOps).
// Hand-written: the use-case canvas is click-only (CLICK-LIST C-02). Shape copied
// from Sanad's fixtures/sysml-project-usecases. Synthetic project.
private import ScalarValues::*;

package MrtmUseCases {

    doc /* The Medical Refrigerator Temperature Monitor, the people who use it, and what they do with it. */

    part def Monitor;
    part def Fridge;
    part def Nurse;
    part def ClinicManager;
    part def QualityOfficer;
    part def Technician;

    // Included by MonitorTemperature: a sample outside the band for the confirmation time.
    use case def DetectExcursion {
        subject monitor : Monitor;
        actor fridge : Fridge;
    }

    use case def MonitorTemperature {
        objective {
            doc /* Read the fridge air temperature every sampling period and show it. (US-4, US-8) */
        }
        subject monitor : Monitor;
        actor fridge : Fridge;
        actor nurse : Nurse;
        include detectExcursion;
    }

    use case def RaiseAlert {
        objective {
            doc /* Sound the buzzer, flash the red light and show the warning when an excursion is confirmed. (US-1) */
        }
        subject monitor : Monitor;
        actor nurse : Nurse;
    }

    use case def AcknowledgeAlert {
        objective {
            doc /* Let a person silence the buzzer without ending the excursion. (US-3) */
        }
        subject monitor : Monitor;
        actor nurse : Nurse;
    }

    use case def ReviewHistory {
        objective {
            doc /* Read out the excursion history, which no user can edit. (US-5, US-6) */
        }
        subject monitor : Monitor;
        actor manager : ClinicManager;
        actor quality : QualityOfficer;
    }

    use case def ServiceMonitor {
        objective {
            doc /* Show a probe fault and let the technician replace the probe. (US-7) */
        }
        subject monitor : Monitor;
        actor technician : Technician;
    }

    use case detectExcursion : DetectExcursion;

    // The operational context: what the monitor touches.
    port def AirTemperature {
        attribute celsius : Real;
    }

    part def MrtmContext {
        part fridge : Fridge {
            port air : AirTemperature;
        }
        part monitor : Monitor {
            port probe : ~AirTemperature;
        }
        part nurse : Nurse;
        part technician : Technician;

        connect fridge.air to monitor.probe;
    }
}
