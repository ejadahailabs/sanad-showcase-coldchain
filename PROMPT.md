# Sanad dogfood run — Medical Refrigerator Temperature Monitor

**Date written:** 2026-09-26 · **Owner:** Masood · **Status:** DRAFT — needs Masood's review before the first run
**Build to use:** `builds/sanad-sysml-r4int3-d388e43e.vsix` (= Sanad main `745ef793`)

## What this run is for

Build one small product end to end **inside Sanad**, and after every step write down what Sanad did, what a person had to do by hand, and what Sanad is missing. The product is deliberately small so the process is the thing on show.

The product: a **Medical Refrigerator Temperature Monitor**. It watches the temperature where medicines and vaccines are stored. When the temperature leaves the allowed band it alerts the user, shows a warning, records the event and keeps a history of every excursion.

## The one rule that changes everything

**Use Sanad in VS Code for every step Sanad supports. Where a step has no Sanad feature, do it by hand and mark it `MANUAL`.** Never write a document that Sanad could have produced. Sanad is the workbench; the assistant fills only the gaps.

## Execution rules (kept from the original, sharpened)

1. Work one phase at a time. Never jump to implementation.
2. Every artifact carries four blocks: Assumptions · Risks · Open questions · Trace links.
3. Every decision is an ADR file in the folder Sanad's templates define.
4. Every requirement has a unique id from Sanad's id allocator (Phase 0 decides the scheme). No hand-typed ids.
5. Every design element and every verification activity traces back to a requirement — and Sanad's traceability view must show it, not a table the assistant typed.
6. Diagrams: **SysML v2 in Sanad's editor** for architecture, interfaces, states and sequences. **Mermaid only inside documents** (ConOps, reports). If a picture exists in SysML it is not redrawn in Mermaid.
7. Missing information → ask. If an assumption is unavoidable, record it in the Assumptions Register with the date.
8. **Every phase ends with the same three lines:**
   - `SANAD DID:` which feature / view / check did the work
   - `PROVED BY:` which Sanad check or view shows it is right
   - `MANUAL:` what was done outside Sanad and why (this is the gap list)
   - `UI-ONLY:` steps that exist in Sanad only as a click in VS Code; Claude prepares the files, Masood presses, Claude verifies the result on disk
9. The organisation configures, the tool recommends: rule packs, templates, thresholds are chosen in Phase 0 and written into `config.yaml`, never assumed by the assistant.
10. Nothing is "done" until its Sanad check is green and its row is on the traceability view.

---

## Phase 0 — Sanad setup (replaces "project initialization")

In VS Code with the Sanad build installed:
- Run Sanad's Setup on the empty folder. Answer the setup questions. Record every answer.
- `config.yaml`: choose the requirement templates (stakeholder, system, safety, performance, environmental, maintainability, interface), the rule packs (pick the recommended set, note what you turn off and why), the id scheme (`ids: provided` from Sanad's allocator), the design roots for SysML files, the verification layout.
- Data dictionary: create it with the first ten terms (excursion, allowed band, alert, warning, event, history, …). This is the Glossary.
- Then the documents the original asks for, as Sanad documents where a template exists, otherwise Markdown marked `MANUAL`: Project Charter · Scope · Stakeholder list · Assumptions Register · Risk Register.
- End with the three lines. Expected `MANUAL`: charter, stakeholder list, risk register (no Sanad template today — write that down, it is a finding).

## Phase 1 — ConOps

Problem statement · Operational concept · User stories · Use cases · Context diagram · Operational scenarios · Product vision.
- Use cases and the context picture: draw them as a **SysML v2 use-case view in Sanad's canvas** (round-4 V2). Mermaid only for the scenario sequences inside the ConOps document.
- Capture: every stakeholder statement goes through Sanad's capture flow so it is a source with provenance, not prose.
- List the stakeholder information still missing as Open questions.
- Three lines.

## Phase 2 — Requirements engineering

Write stakeholder, system, safety, performance, environmental, maintainability and interface requirements **with Sanad's authoring**: template per kind, allocator ids, one claim per sentence, testable, measurable.
- Run every analysis engine Sanad offers (atomic, ambiguous words, missing units, duplicates, uplink). Fix until the findings are only the ones you accept, and say why for each accepted one.
- Requirement hierarchy and rationale: as Sanad stores them (uplinks, rationale field), then open the traceability view and the structure view — they are the deliverables, do not retype them.
- Requirements you cannot derive yet: list them by id placeholder with the question that blocks them.
- Three lines.

## Phase 2b — Baseline (new)

Freeze the requirement set with Sanad's baseline feature before design starts. Note the baseline id. Phase 11 measures drift against it.

## Phase 3 — Requirements review

Use Sanad's **Review capability**: open a round, add comments per requirement (ambiguous, missing, conflicting, verification concern), create actions, close the round with states recorded. No review comments in a separate document.
- Three lines. Expected finding: what the review window cannot yet express.

## Phase 4 — System architecture

Logical architecture · Physical architecture · Functional decomposition · Hardware architecture · Software architecture · External interfaces — all as **SysML v2 packages in Sanad's model editor** (parts, ports, interfaces, connections; views for block, interface and data-flow pictures; the requirement package generated by Sanad, not typed).
- Run the OMG Pilot validator (Sanad's validator command) and record the result.
- Every architecture decision is an ADR.
- Three lines. Expected finding: pictures the canvas cannot draw yet → headroom for system-design.

## Phase 5 — Safety analysis (expected `MANUAL`)

Hazard analysis · FMEA · Fault tree · Failure-mode assessment; hazards → causes → effects → mitigations.
- Sanad has no safety feature today. Do it by hand in Markdown, but: every mitigation becomes a Sanad safety requirement (Phase 2 template) and every hazard links to a verification case in Phase 10 through Sanad's `verifies:` links — that part is not manual.
- Three lines. This phase's `MANUAL` block is a first-class product finding: describe exactly what a Sanad safety capability would need (tables, links, checks).

## Phase 6 — Hardware design (expected mostly `MANUAL`)

Assume ESP32 · DS18B20 · OLED · buzzer · LED indicators.
Hardware design description · component selection · interface definitions · pin mapping · power budget · BOM · hardware traceability matrix.
- Interfaces and pin allocations: model them in SysML v2 (round-4 hardware scope) so the traceability matrix comes from Sanad, not a spreadsheet.
- Mark every value needing an electrical engineer's review with `EE-REVIEW`.
- Three lines.

## Phase 7 — Software architecture

Components · threads · tasks · services · state machines · data models · error handling · diagnostics · configuration strategy.
- Components and their interfaces: SysML v2 parts with Sanad's software profile (V4b); state machines and sequences: Sanad's state and sequence views (round-4 V1/V3); component inventory lens from software-design.
- Mermaid only where a Sanad view does not exist, marked `MANUAL`.
- Software ADRs.
- Three lines.

## Phase 8 — Detailed design

Module designs · interface contracts · class diagrams · data structures · algorithms · configuration files · error codes · event definitions — enough that implementation can start.
- Class diagrams in SysML v2; contracts as requirement-linked design elements; error codes and events as data-dictionary terms.
- Three lines.

## Phase 9 — Implementation

Repository structure · source tree · firmware · build instructions · configuration · representative code · unit-test skeletons.
- Every source file that satisfies a requirement carries Sanad's `@implements <id>` marker; open the engineering-facts view and the code-trace view — they must show every requirement reaching code or say which do not.
- Mark code needing human review with `REVIEW`.
- Three lines.

## Phase 10 — Verification engineering

Verification strategy · verification matrix · coverage matrix · test cases · procedures · environment · pass/fail criteria.
- Test cases through Sanad's **test drafting** (AI proposals and manual editing side by side); coverage through the **test-coverage model**; the verification plan window is the deliverable.
- Trace requirement → design → code → test in Sanad's traceability view; coverage gaps = what that view reports, plus what it cannot see.
- Three lines.

## Phase 10b — Evidence and results (new)

Run at least the unit-test skeletons and one procedure. Record results as Sanad evidence rows (stage-5 style rows, tester, date, build). A test case without a result row is not verification.

## Phase 11 — Change impact analysis

New requirement: **"The system shall raise an alarm within 5 seconds of a temperature excursion."**
- Add it through Sanad, then run Sanad's **impact assessment**. Its report is the impact report. By hand, list only what it missed: affected requirements, architecture, hardware, software, tests, documents.
- Then run drift against the Phase 2b baseline and record what changed.
- Three lines.

## Phase 12 — Sanad assessment

One table, every artifact of every phase:

| Artifact | Sanad feature used | Board maturity step of that feature | AI generated | Human review needed | Missing knowledge | Missing tool support | Future Sanad capability |

Then the ten judgement rows (Requirements, Architecture, Safety, Hardware, Software, Verification, Traceability, Impact analysis, Configuration management, Knowledge management), each with the `MANUAL` findings gathered from the three-line blocks.

For every gap: why it exists, and which one of these should close it — Skill · Knowledge graph · Workflow · Human review gate · Verification engine · Traceability engine · External tool integration · **Existing Sanad feature that only needs configuration** (added: many "gaps" are settings nobody turned on).

Output of the run: a folder that looks like a real engineering project executed through Sanad, and a gap list that maps straight onto the board's maturity and headroom section.

---

## How the run is staffed

- **Owner / one engineer** clicks in VS Code (workers never launch VS Code).
- **Workers** prepare files headless, run Sanad's CLI checks and the gate, and draft the `MANUAL` documents.
- **Coordinator** turns every `MANUAL` block into a headroom candidate on the board after the run.
- Folder: `Office_Projects/dogfood-fridge/` (new, its own git repo, private). Build installed from `builds/`.

## Assumptions (this document)

- The round-4 build is the one to dogfood; anything found on it is filed against main.
- Safety and hardware phases are expected to be mostly manual; that is the finding, not a failure of the run.
- No real medical data, no real device: synthetic values only.
