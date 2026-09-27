# PSSA — preliminary system safety assessment: a DAL for every item

> **Shape:** ARP4754A §5.2 (development assurance level assignment) and ARP4761 PSSA. **Input:** `01-fha.md`, the system architecture (`06-design/system/`). **MANUAL** — Sanad has no DAL-allocation step; the result is typed into each requirement's `safetyClass` (F-4-008). **Independence is NOT required in this run** (owner scope, A-4-03): one engineer, no independent verifier, so every DO-178C objective marked "with independence" is at best *partly* met (13-assessment/do178c-objectives-index.md). DRAFT — needs Masood's review.

**In one line:** the worse a part's failure could be, the higher its letter and the more proof it needs — like a building where the fire exits get the strictest inspection.

## 1 · The system DAL
The monitoring function (FUN-002) has a catastrophic failure condition (FC-1), so the **system is DAL A**. Its requirements take the letter of the function they come from: 52 system-level requirements are A, 3 are B, 15 are C (the history function FUN-004 is C).

## 2 · DAL per item

| Item | Kind | DAL | Why this letter (plain words) |
|---|---|---|---|
| sensor-hw | hardware | **A** | The only eye on the air. A wrong reading can hide an excursion (FC-1). |
| alarm-hw | hardware | **A** | Buzzer, lights, button and the backup alarm: the signals staff actually meet (FC-1). |
| controller-hw | hardware | **A** | Runs the alarm software; its watchdog reset starts recovery (FC-1). |
| power-hw | hardware | **B** | Losing power is annunciated by the backup alarm's own hold-up store (HWR-009), which does not depend on power-hw. So a power-hw failure alone is at worst *hazardous*, not catastrophic. |
| display-hw | hardware | **B** | Not credited for the excursion warning (the buzzer and light are), but it carries the **only** "calibration due" signal of FC-3 (hazardous). |
| alarm-sw | software | **A** | Decides early / confirmed / ended excursions and drives the signals: the alarm path (FC-1, FC-2). |
| platform-sw | software | **A** | Holds the band check (FC-2), the watchdog gate and the power-up tests (FC-1). |
| display-sw | software | **B** | Same argument as display-hw: FC-3's only signal. |
| record-sw | software | **C** | Loss of history is major (FC-5); two copies and a corrupt-record event limit it. |
| export-sw | software | **D** | Only a COPY of the history can be garbled (FC-6); the log itself is read-only to it. |

**Aerospace analogue of run 2's class B/C decision:** run 2 needed an owner ruling to keep the USB item at class B under a class C parent (F-133). Here the same question returns in three places — display (B), record (C) and export (D) all sit under a DAL A system. ARP4754A allows a lower item DAL only when the architecture shows the lower item cannot cause the worse failure condition. That argument is §4.

## 3 · Two system requirements whose DAL the PSSA lowers
- **MRTM-SAF-016** (show the band at power-up) → **B**, not A: the band check that is credited for FC-2 is MRTM-SAF-017 (A). The screen is an extra clue.
- **MRTM-SAF-021** (display bus recovery) → **B**: the screen is not credited for FC-1.

## 4 · Partitioning — why lower-DAL software may share the processor

All five software items run on ONE processor under FreeRTOS with **no memory protection** between tasks (the same weakness run 2 wrote as A-43). DO-178C §2.4.1 asks for partitioning protection when items of different levels share resources. What this run can say, honestly:

1. **Time:** the DAL A tasks (alarm, supervisor, sensor) run at higher priority on core 1; the lower-DAL tasks run on core 0 or below them. This is the **derived requirement MRTM-HLR-024** (platform-sw): it has no parent requirement; it exists because of this decision.
2. **Data:** the DAL D export item reads the DAL C record data only through the record item's read accessor and never writes it. This is the **derived requirement MRTM-HLR-037** (export-sw).
3. **Last line:** a hung or starved alarm task stops the heartbeat, the watchdog pulses stop, and the DAL A backup alarm hardware sounds within 10 s (MRTM-HWR-007, MRTM-HWR-008) — independent of all software.
4. **Weakness, said plainly:** (1) and (2) rest on design review and static analysis, not on a hardware memory-protection unit. Until that evidence exists, a certification authority would treat every software item as DAL A (**A-4-06**, finding F-4-009).

## 5 · Derived requirements fed back to the safety assessment (DO-178C §5.1.2 / §5.2.2)

| Id | Item | Statement (short) | Why it has no parent | Safety effect checked here |
|---|---|---|---|---|
| MRTM-HLR-024 | platform-sw | alarm, supervisor, sensor tasks above every lower-DAL task | comes from §4 (partitioning), not from a system requirement | keeps FC-1 at the DAL A items only |
| MRTM-HLR-037 | export-sw | export reads the log only through the read accessor | comes from §4 (partitioning) | keeps FC-6 from reaching FC-5 |

No low-level requirement is derived in this run: every LLR traces to an HLR.

## 6 · Safety objectives → where they are met

| Objective | Met by (system level) | Items |
|---|---|---|
| MRTM-SOB-001 no silent loss of warning | SAF-001/002/004/006/007/009/010/013/014/015/019/023 | alarm-sw, platform-sw, alarm-hw, controller-hw, sensor-hw |
| MRTM-SOB-002 no silent wrong band | SAF-016, SAF-017 | platform-sw (A), display-sw (B, extra clue) |
| MRTM-SOB-003 drift bounded and shown | SAF-003, SAF-012 | alarm-sw, platform-sw, display-sw |
| MRTM-SOB-004 nuisance limited | SAF-011 | alarm-sw |
| MRTM-SOB-005 no silent loss of history | SAF-005, SAF-018, SAF-021, SAF-022 | record-sw, display-sw |
