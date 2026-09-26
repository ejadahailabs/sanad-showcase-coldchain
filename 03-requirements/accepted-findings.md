# Accepted findings and not-yet-derivable requirements — Phase 2

> Sanad holds the accepted findings as `suppressions:` in `.ejadah/rew/config.yaml` (rule, path, reason; one with an expiry). This page is the plain-words index. IEC 62304 cl. 5.2.6 (verify software requirements).

## What Sanad's analysis said (46 requirements, rule pack requirements-writing, rigour from IEC 62304 class C)
| Run | Errors | Warnings | Info |
|---|---|---|---|
| First draft | 0 | 33 | 30 |
| After rewording 11 requirements | 0 | 25 | 24 |
| After accepting 25 warnings with reasons | 0 | 0 | 24 |

## Accepted warnings (each is a `suppressions:` entry)
| Rule | Where | Why accepted |
|---|---|---|
| testability | 7 stakeholder reqs (STK-001, 003..007) | Stakeholder level is the need in plain words; the number lives in the system child |
| testability | ENV-003, MNT-002 | "%" not read as a unit — Sanad false positive (FINDINGS F-17) |
| testability | SYS-015 | "10000 events": a count is the measure (F-17) |
| testability | SYS-014, IFC-003 | Read-only: yes/no property, verified by a write-attempt test |
| testability | IFC-001 | Bus type: verified by inspection |
| testability | SYS-007 | Bounded by the excursion's timed start and end |
| duplicate-requirement | SYS-008 vs SYS-010 | Two different events; same shape on purpose |
| missing-decomposition | 7 system leaves | Satisfied by SysML design elements in Phase 4; expires 2026-10-31 so it is re-checked |
| parent-child-inconsistency | SYS-001, 003, 012, 016 | Five specialty kinds are siblings at one level; Sanad treats each type as a level (F-18) |

## Info findings left visible (not suppressed)
| Rule | Count | Why left |
|---|---|---|
| indefinite-article | 12 | Advisory (writing rule R5); rewording would not change meaning |
| under-decomposition | 8 | A single specialty child is a refinement, not a restatement |
| sysml-unresolved-import | 2 | Standard library not bundled (F-15) |
| impact | 2 | Informational |

## Requirements not derivable yet
| Placeholder | Kind | Blocking question |
|---|---|---|
| TBD-STK-remote | stakeholder | Q-03 — remote alert in version 1? |
| TBD-PRF-reaction | performance | Q-06 — staff reaction time the users accept |
| TBD-ENV-battery | environmental | Q-07 — real battery hours (ENV-001 assumes 4 h, A-11) |
| TBD-IFC-export | interface | Q-08 — history as CSV/PDF file or screen only |
| TBD-SYS-language | system | Q-09 — display languages |
| TBD-SAF-fmea | safety | Phase 5 FMEA / fault tree will add risk controls |
| TBD-SYS-clock | system | Q-10 — how is the UTC clock set and kept (SYS-008, 010)? |

Placeholders get real ids from the allocator only when their question is answered; no id is reserved in advance.
