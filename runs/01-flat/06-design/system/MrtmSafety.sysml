// MRTM safety model: the ISO 14971 hazards as SysML v2 concerns, the risk-control
// requirements that mitigate each one, and the parts that implement each control.
// The risk management file that argues it is 08-safety/ (hazard analysis, FMEA,
// fault tree, failure-mode assessment). Synthetic project.
// ISO 14971:2019 cl. 5.4 (hazards), 5.5 (risk estimation), 7.1 (risk control),
// 7.2 (implementation); IEC 62304 cl. 7.1, 7.2; ADR-0012 (risk matrix),
// ADR-0013 (backup alarm), ADR-0014 (alarm timing budget).
private import ScalarValues::*;
private import ProjectRequirements::*;
private import MrtmPartitions::*;

package MrtmSafety {

    doc /* What can hurt someone, how bad and how likely it is, and which requirement and which part stand in the way. */

    concern def Hazard {
        doc /* A hazard with its hazardous situation and harm (ISO 14971 cl. 3.4, 3.5, 5.4).
           severity 1 minor, 2 serious, 3 critical; probability 1 remote, 2 occasional, 3 probable;
           risk = severity x probability; 1-2 acceptable, 3-4 review (reduce as far as possible), 6-9 unacceptable (ADR-0012). */
        attribute hazardId : String;
        attribute severity : Integer;
        attribute probability : Integer;
        attribute residualProbability : Integer;
    }
    concern 'HAZ-001' : Hazard {
        doc /* Excursion not detected: the probe reads in-band while the air is out of band (probe damaged, loose, badly placed, bus errors). Harm: patients receive vaccine with lost potency. */
        attribute :>> hazardId = "HAZ-001";
        attribute :>> severity = 3;
        attribute :>> probability = 2;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesExcursionNotDetected from 'MRTM-SAF-002', 'MRTM-SAF-003', 'MRTM-SAF-020' to 'HAZ-001';
    concern 'HAZ-002' : Hazard {
        doc /* Alarm fatigue: nuisance or confusing alarms teach staff to ignore or silence the buzzer, so a real excursion is not acted on. Harm: delayed action, spoiled stock used or lost. */
        attribute :>> hazardId = "HAZ-002";
        attribute :>> severity = 2;
        attribute :>> probability = 3;
        attribute :>> residualProbability = 2;
    }
    dependency mitigatesAlarmFatigue from 'MRTM-SAF-011' to 'HAZ-002';
    concern 'HAZ-003' : Hazard {
        doc /* Silent failure: the firmware hangs or the processor dies, so no alarm can sound and the screen may freeze on a good value. Harm: an excursion goes unalarmed; vaccine with lost potency is used. */
        attribute :>> hazardId = "HAZ-003";
        attribute :>> severity = 3;
        attribute :>> probability = 2;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesSilentFailure from 'MRTM-SAF-004', 'MRTM-SAF-006', 'MRTM-SAF-009', 'MRTM-SAF-010', 'MRTM-SAF-013', 'MRTM-SAF-023' to 'HAZ-003';
    concern 'HAZ-004' : Hazard {
        doc /* Sensor drift: the probe slowly reads wrong inside its plausible range, so the band edge moves without anyone seeing it. Harm: an excursion near the band edge is missed. */
        attribute :>> hazardId = "HAZ-004";
        attribute :>> severity = 3;
        attribute :>> probability = 2;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesSensorDrift from 'MRTM-SAF-003', 'MRTM-SAF-012' to 'HAZ-004';
    concern 'HAZ-005' : Hazard {
        doc /* Power loss: mains fails and the battery runs flat, so the monitor stops while the fridge also warms. Harm: an unmonitored excursion; vaccine with lost potency is used. */
        attribute :>> hazardId = "HAZ-005";
        attribute :>> severity = 3;
        attribute :>> probability = 3;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesPowerLoss from 'MRTM-SAF-005', 'MRTM-SAF-006', 'MRTM-SAF-008', 'MRTM-SAF-013' to 'HAZ-005';
    concern 'HAZ-006' : Hazard {
        doc /* Annunciator failure: the buzzer, the red light or the display is broken or not perceived, so a detected excursion is not noticed. Harm: an excursion goes unnoticed. */
        attribute :>> hazardId = "HAZ-006";
        attribute :>> severity = 3;
        attribute :>> probability = 2;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesAnnunciatorFailure from 'MRTM-SAF-001', 'MRTM-SAF-007', 'MRTM-SAF-014', 'MRTM-SAF-015', 'MRTM-SAF-019', 'MRTM-SAF-021' to 'HAZ-006';
    concern 'HAZ-007' : Hazard {
        doc /* Wrong limits: the stored allowed band is wrong or corrupted, so the monitor watches the wrong range. Harm: a real excursion is judged in-band. */
        attribute :>> hazardId = "HAZ-007";
        attribute :>> severity = 3;
        attribute :>> probability = 2;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesWrongLimits from 'MRTM-SAF-016', 'MRTM-SAF-017' to 'HAZ-007';
    concern 'HAZ-008' : Hazard {
        doc /* History loss: excursion records are lost or corrupted, so the audit cannot show that stock was exposed. Harm: exposed stock is used, or good stock is discarded. */
        attribute :>> hazardId = "HAZ-008";
        attribute :>> severity = 2;
        attribute :>> probability = 2;
        attribute :>> residualProbability = 1;
    }
    dependency mitigatesHistoryLoss from 'MRTM-SAF-005', 'MRTM-SAF-018', 'MRTM-SAF-021', 'MRTM-SAF-022' to 'HAZ-008';
    part def MrtmRiskControls :> MrtmSystem {
        doc /* The system with each new risk control allocated to the part that implements it (ISO 14971 cl. 7.2).
           MRTM-SAF-020 is information for safety (instructions for use), not a part. Controls MRTM-SAF-001, -004, -008 are allocated in MrtmPhysical and MrtmPartitions (Phase 4). */
        satisfy 'MRTM-SAF-009' by hardware.backupAlarm;
        satisfy 'MRTM-SAF-009' by hardware.wdtKickLine;
        satisfy 'MRTM-SAF-009' by hardware.backupBuzzerLine;
        satisfy 'MRTM-SAF-010' by firmware.alarmService;
        satisfy 'MRTM-SAF-010' by firmware.supervisor;
        satisfy 'MRTM-SAF-011' by firmware.alarmService;
        satisfy 'MRTM-SAF-012' by firmware.displayService;
        satisfy 'MRTM-SAF-013' by hardware.holdUpCap;
        satisfy 'MRTM-SAF-013' by hardware.backupAlarm;
        satisfy 'MRTM-SAF-014' by hardware.buzzerSenseLine;
        satisfy 'MRTM-SAF-014' by firmware.alarmService;
        satisfy 'MRTM-SAF-015' by firmware.alarmService;
        satisfy 'MRTM-SAF-015' by hardware.redLine;
        satisfy 'MRTM-SAF-016' by firmware.displayService;
        satisfy 'MRTM-SAF-017' by firmware.supervisor;
        satisfy 'MRTM-SAF-018' by firmware.logService;
        satisfy 'MRTM-SAF-002' by firmware.alarmService;
        satisfy 'MRTM-SAF-003' by firmware.sensorService;
        satisfy 'MRTM-SAF-005' by firmware.logService;
        satisfy 'MRTM-SAF-006' by firmware.alarmService;
        satisfy 'MRTM-SAF-007' by firmware.supervisor;
        satisfy 'MRTM-SAF-019' by firmware.alarmService;
        satisfy 'MRTM-SAF-021' by firmware.displayService;
        satisfy 'MRTM-SAF-022' by firmware.logService;
        satisfy 'MRTM-SAF-022' by hardware.rtc;
        satisfy 'MRTM-SAF-023' by firmware.supervisor;
        satisfy 'MRTM-SAF-023' by hardware.backupAlarm;
        satisfy 'MRTM-SAF-023' by hardware.buzzerSenseLine;
    }
}
