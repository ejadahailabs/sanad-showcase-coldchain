# Assumptions — run 4 (A-4-nn). DRAFT — needs Masood's review.

**In one line:** each row is a guess we made so the run did not wait; each can be overturned later.

| Id | Assumption | Why | Owner to confirm |
|---|---|---|---|
| A-4-01 | ARP4754A / ARP4761 / DO-178C / DO-254 are used as a SHAPE on a medical product; no certification claim, editions not pinned. | The job is to compare frameworks, not to certify. | no |
| A-4-02 | The monitor plays the "aircraft": its five functions are the top rung. | The ladder needs an aircraft level; one device is the natural stand-in. | no |
| A-4-03 | Independence of verification is **not** required (owner scope for this run). | One engineer. Every "with independence" objective is at best partly met. | CONFIRMED by owner 2026-09-27: a lower class/DAL may sit under a higher parent on a segregation/partitioning argument; Sanad records and checks it (SAN-SYSML-259/260, PR #1342) |
| A-4-04 | Severity words mapped: patient harm unannounced = catastrophic; near-edge miss = hazardous; alarm fatigue / audit loss = major; lost export copy = minor. | FHA needs the aerospace scale. | **yes** |
| A-4-05 | The backup alarm sits inside the alarm hardware item (depth pinned); run 2 opened it one step deeper. | The ladder has no sub-item rung. | no |
| A-4-06 | No memory protection between tasks, so lower-DAL software shares the processor on a design argument only; a certification authority would treat all software as DAL A until partitioning evidence exists. | ESP32-class FreeRTOS, as run 2 (A-43). | **yes** |
| A-4-07 | The 11 `rigour-inconsistency` suppressions (lower DAL below higher) stand on the PSSA. | Aerospace analogue of run 2's F-133 / A-48 ruling. | CONFIRMED by owner 2026-09-27: a lower class/DAL may sit under a higher parent on a segregation/partitioning argument; Sanad records and checks it (SAN-SYSML-259/260, PR #1342) |
| A-4-08 | A system requirement takes the DAL of the function it derives from (FUN-004 history = C, the rest A); PSSA lowers SAF-016 and SAF-021 to B. | ARP4754A FDAL per function. | no |
| A-4-09 | Run 2's eight hazards are the FHA input, unchanged. | Same product, same truth (`shared/`). | no |
| A-4-10 | Bench results stay blocked as in run 2 (A-30, A-36): 70 `missing-result` warnings are the true state. | No board in this run. | no |
