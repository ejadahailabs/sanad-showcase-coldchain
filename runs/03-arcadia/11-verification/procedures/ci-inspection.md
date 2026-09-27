# Configuration item inspection (INS-CI-001…006) — RUN-03-ARCADIA

**In one line:** read each shipped part's label and check it matches the list we keep — like checking a parcel's label against the order.

DRAFT — needs Masood's review. Needs a built unit, so it cannot run in this headless run (blocked, same as the bench procedures).

| Case | Item | Check | Pass |
|---|---|---|---|
| INS-CI-001 | Firmware image | Version on the power-up screen = version in the release record; recomputed checksum = recorded checksum | both equal |
| INS-CI-002 | Main board | Label part number + revision = BOM entry | equal |
| INS-CI-003 | Probe | Cable label part number + revision = BOM entry | equal |
| INS-CI-004 | Display module | Label part number + revision = BOM entry | equal |
| INS-CI-005 | Backup alarm board | Label part number + revision = BOM entry | equal |
| INS-CI-006 | Battery pack | Label part number, revision, date code = BOM entry | equal |
