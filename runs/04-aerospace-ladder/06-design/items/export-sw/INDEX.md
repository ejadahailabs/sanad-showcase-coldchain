# export-sw — software item (rung: item, DAL D)

**In one line:** a software item: its HLR (DO-178C §5.1).

- **Parent:** system · **Children:** export-sw-design
- **Requirements:** `03-requirements/hlr/export-sw/` (3) · **Model:** the `.sysml` files in this folder; the satisfy lines name this node's requirements only.

## Pictures

None of its own: this item is drawn in the system pictures `system_items`, `system_hardware` / `system_software` (06-design/system/INDEX.md).

## Requirements

| Id | Title | DAL | |
|---|---|---|---|
| MRTM-HLR-035 | Read-only volume | D |  |
| MRTM-HLR-036 | Host writes refused | D |  |
| MRTM-HLR-037 | Read the log only through the accessor | D | derived (no parent) |
