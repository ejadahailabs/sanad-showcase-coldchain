# Decomposition story — run 05, the medical stack pinned by IEC 62304

**In one line:** four fixed floors, each named by the standard — device → software system → software items → software units — like a building whose floors are set by the building code. Read top to bottom. DRAFT — needs Masood's review.

```
L1 device (IEC 60601-1 PEMS, class C)  ── STK 8 + device 62 requirements · risk file 08-safety/
 ├─ L2 hardware item (one item, class C risk controls)   ── HWI 13
 └─ L2 software system (IEC 62304 §5.2/§5.3, class C)    ── SRS 19
     ├─ L3 sensor-item C ── L4 sensor-sampler
     ├─ L3 excursion-item C ── L4 limit-evaluator
     ├─ L3 alarm-item C ── L4 alarm-mgr
     ├─ L3 display-item C ── L4 display-mgr
     ├─ L3 log-item C ── L4 event-log · history-ring · rtc-clock
     ├─ L3 usb-item **B (segregated, A-48)** ── L4 usb-export B
     ├─ L3 power-item C ── L4 power-mon
     └─ L3 supervisor-item C ── L4 wdt-kicker · diagnostics · config-mgr
```

| Level | Folder | Pictures (read in this order) | Requirements |
|---|---|---|---|
| L1 device | `L1-device/INDEX.md` | device context · device block · use cases | 70 (STK 8, SYS 24, SAF 23, PRF 4, ENV 4, MNT 3, IFC 4) |
| L2 hardware item | `L2-hardware-item/INDEX.md` | hardware item parts | 13 |
| L2 software system | `L2-software-system/INDEX.md` | architecture (items, class per item) · software-to-hardware · modes · excursion scenario | 19 |
| L3 software items | `L3-software-items/INDEX.md` | one structure picture per item + alarm states | 21 |
| L4 software units | `L4-software-units/INDEX.md` | unit contracts (2) · display classes | 23 |

**Rules** (`.ejadah/rew/framework.yaml`, checked by `tools/level-check.py`): a node satisfies its own requirements only; every requirement derives from its parent one level up; every chain reaches a STK; depth is pinned to four; a unit has its item's class; an item below C names its segregation; at most 12 boxes per picture.
**Risk file:** `08-safety/` (ISO 14971 order 01…06) belongs to L1 — the device owns its hazards; SRS risk controls cite §5.2.3.
**The alarm path end to end:** `13-assessment/alarm-path-trace.md`.
