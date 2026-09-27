# record-sw — software item (rung: item, DAL C)

**In one line:** a software item: its HLR (DO-178C §5.1).

- **Parent:** system · **Children:** record-sw-design
- **Requirements:** `03-requirements/hlr/record-sw/` (5) · **Model:** the `.sysml` files in this folder; the satisfy lines name this node's requirements only.

## Pictures

None of its own: this item is drawn in the system pictures `system_items`, `system_hardware` / `system_software` (06-design/system/INDEX.md).

## Requirements

| Id | Title | DAL | |
|---|---|---|---|
| MRTM-HLR-030 | Two copies within 1 s | C |  |
| MRTM-HLR-031 | Newest 10000 kept | C |  |
| MRTM-HLR-032 | Time stamps | C |  |
| MRTM-HLR-033 | Corrupt record | C |  |
| MRTM-HLR-034 | Capacity warning record | C |  |
