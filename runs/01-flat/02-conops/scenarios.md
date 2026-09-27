# Operational scenarios — MRTM

> **MANUAL** (F-12). Mermaid is allowed here only for scenario sequences (PROMPT rule 6). The formal sequences are SysML in Phase 7.

## SC-1 — Fridge warms up at night
```mermaid
sequenceDiagram
    participant F as Fridge
    participant M as Monitor
    participant N as Nurse
    F->>M: air 8.6 °C (sample every 10 s)
    M->>M: 60 s outside band → excursion confirmed
    M->>N: buzzer + red light + screen warning
    M->>M: log "excursion start"
    N->>M: press Acknowledge
    M->>M: buzzer off, log "acknowledged"
    F->>M: air 7.4 °C
    M->>M: excursion ends, log "excursion end" with peak 9.1 °C
```

## SC-2 — Door opened for 30 seconds
```mermaid
sequenceDiagram
    participant F as Fridge
    participant M as Monitor
    F->>M: air 8.3 °C for 30 s
    M->>M: first sample out → early alarm: red light 1 Hz, no sound (≤ 5 s, CR-001)
    M->>M: under 60 s → no excursion, no buzzer
    F->>M: air 6.0 °C
    M->>M: back in band → early alarm clears by itself
```

## SC-3 — Probe unplugged
```mermaid
sequenceDiagram
    participant P as Probe
    participant M as Monitor
    participant T as Technician
    P--xM: no reading
    M->>T: fault light + screen "PROBE FAULT"
    M->>M: log "probe fault"
```

## SC-4 — Audit readout
```mermaid
sequenceDiagram
    participant C as Clinic manager
    participant M as Monitor
    C->>M: connect USB, request history
    M->>C: excursion history (read-only file)
```
