# Requirements review checklist — the organisation's own (Sanad ships none)

IEC 62304 §5.2.6 (verify software requirements) · ISO 14971 §7 link (risk controls appear as requirements).
Think of it as the list a pilot reads before take-off: short, and every line is a yes/no.

| # | Question | Finding kind if "no" |
|---|---|---|
| 1 | Does every sentence say one thing, with one "shall"? | ambiguous |
| 2 | Is every word that could mean two things defined (glossary / data dictionary)? | ambiguous |
| 3 | Is every number there, with its unit? | missing |
| 4 | Does any pair of requirements disagree (ranges, times, states)? | conflicting |
| 5 | Is there a requirement for what happens when things go wrong (fault, power, full memory, clock)? | missing |
| 6 | Can a tester say pass or fail, and under which conditions? | verification concern |
| 7 | Does every alarm follow the alarm basics (who hears it, how loud, how it comes back after silence)? — IEC 60601-1-8 as the frame | missing |

## Four blocks
- **Assumptions:** the checklist is the owner's to change (org configures, tool recommends).
- **Risks:** R-06 (a suppression hides a real problem) is what item 4–5 look for.
- **Open questions:** none.
- **Trace links:** `.ejadah/rew/config.yaml` `review.checklists`; round 1 in `05-reviews/round-1/`.
