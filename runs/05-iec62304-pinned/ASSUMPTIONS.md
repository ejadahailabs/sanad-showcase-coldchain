# Assumptions — run 05

**In one line:** what we took as true without asking, so the run never waited. Each one is Masood's to confirm or change. Run 2's A-01…A-48 still apply to the reused content.

| Id | Assumption | Why | Who confirms |
|---|---|---|---|
| A-5-01 | The device-level requirements are run 2's system-level set (SYS, SAF, PRF, ENV, MNT, IFC — 62), unchanged; with STK they are level 1 | in IEC 60601-1 terms run 2's "system" is the PEMS, i.e. the device | Masood |
| A-5-02 | The hardware side is ONE hardware item under the device, not decomposed further | the job says so; 62304 does not decompose hardware | Masood |
| A-5-03 | Ruling A-48 carries over: usb-item is class B with segregation (ADR-0034) | run 2 owner ruling; still "to confirm" | CONFIRMED by owner 2026-09-27: a lower class/DAL may sit under a higher parent on a segregation/partitioning argument; Sanad records and checks it (SAN-SYSML-259/260, PR #1342) |
| A-5-04 | The library defs `UsbItem` / `UsbExport` were set to class B in this run's copy | the class must live in the model, not only in text | — |
| A-5-05 | Test results in 11-verification/results are run 2's; only comments changed, and the host tests were run again here (85 / 0) | no bench, no new build of the target | — |
| A-5-06 | Editions of IEC 62304, 60601-1, 60601-1-8, ISO 14971 as assumed in run 2 (A-39) | standards were not opened | Masood |
| A-5-07 | LGI-003 (log item time stamp) is new in this run; run 2 held the time stamp on the logging subsystem | the SRS time stamp needs an item owner | — |
