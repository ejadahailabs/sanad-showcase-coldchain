# platform-sw — software item (rung: item, DAL A)

**In one line:** a software item: its HLR (DO-178C §5.1).

- **Parent:** system · **Children:** platform-sw-design
- **Requirements:** `03-requirements/hlr/platform-sw/` (9) · **Model:** the `.sysml` files in this folder; the `satisfy` lines name this node's requirements only.

## Pictures

None of its own: this item is drawn in the system pictures `system_items`, `system_hardware` / `system_software` (06-design/system/INDEX.md).

## Requirements

| Id | Title | DAL | |
|---|---|---|---|
| MRTM-HLR-016 | Watchdog tied to the heartbeat | A |  |
| MRTM-HLR-017 | Task watchdog restart | A |  |
| MRTM-HLR-018 | Power-up tests | A |  |
| MRTM-HLR-019 | Band integrity | A |  |
| MRTM-HLR-020 | Mains events | A |  |
| MRTM-HLR-021 | Battery low | A |  |
| MRTM-HLR-022 | Maintenance flags | A |  |
| MRTM-HLR-023 | Power-up order | A |  |
| MRTM-HLR-024 | Task priorities keep the alarm first | A | derived (no parent) |
