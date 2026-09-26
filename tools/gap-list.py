#!/usr/bin/env python3
"""Phase 12 (c): the gap list. Every FINDINGS.md row, grouped by board capability, with its fix class
(read from FINDINGS.md), why the gap exists, and a headroom title. Refuses to write if any finding is
missing or unknown here, so the list can never silently drop a row.
Usage (repo root): python3 tools/gap-list.py > 13-assessment/gap-list.md"""
import pathlib, re, sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
# F-id: (why the gap exists, proposed headroom title)
G = {
 "Setup and configuration (configuration/setup, rule-packs)": {
  "F-01": ("Setup is a webview form; its writers have no CLI entry", "Headless Setup from a plan file"),
  "F-02": ("Glossary lane was added after the Setup form was designed", "Setup step: glossary and data dictionary sources"),
  "F-04": ("`criticality:` and `ignore:` blocks predate Setup's field list", "Setup step: criticality scale and ignore list"),
  "F-34": ("Config writer re-serialises the whole YAML document", "Minimal-diff config writer"),
  "F-66": ("Software capability roles were never added to Setup", "Setup step: switch on software design lenses"),
  "F-71": ("Architecture engine keys on a template role Setup never offers", "Setup step: allocation role for SysML repos"),
  "F-100": ("Verification stage and producers have no Setup page", "Setup step: verification stage, cases, coverage"),
 },
 "Requirements and authoring (requirements/*)": {
  "F-17": ("Testability check knows physical units only", "Counts and percentages as measurable units"),
  "F-18": ("A requirement type is its own level; no sibling categories", "Declare type level (siblings under system)"),
  "F-20": ("New Requirement is a form command only", "CLI `erew new --type`"),
  "F-21": ("Requirements report has no document front matter", "SRS cover and introduction template"),
  "F-22": ("No requirement state tied to an open question", "TBD requirement linked to its blocking question"),
  "F-33": ("Same root as F-17: counts are not units", "Counts and percentages as measurable units"),
  "F-54": ("Any XXX-nnnn token is read as a requirement reference", "Declare external id prefixes (ADR, CR, HAZ)"),
  "F-114": ("Headless API resolves paths against cwd before the root check", "Clear error for a relative repository root"),
 },
 "Review (review/review-capability)": {
  "F-26": ("Review reads only a hosted GitHub/GitLab request", "Local review round without a platform"),
  "F-27": ("Comment text stays on the platform by design (ADR-0134)", "Local conversation store when no platform"),
  "F-28": ("Accepted-commit compare is a prefix match, not ancestry (bug)", "Fix: accepted status uses git ancestry"),
  "F-29": ("Review has replies, not action objects", "Review actions with owner, due and link"),
  "F-31": ("Only severity is a structured review field", "Declared finding categories in review"),
 },
 "Baselines and configuration management (review/baselines-and-drift)": {
  "F-23": ("Set Baseline is a command only", "CLI `erew baseline <label>`"),
  "F-25": ("A baseline stores commit + finding keys, not text", "Baseline freezes requirement text and tags git"),
  "F-30": ("Same root as F-25: no text in the baseline", "Reworded requirements in baseline drift"),
  "F-32": ("Config diff compares whole blocks by effect", "Per-item config diff (suppressions, review)"),
  "F-46": ("Trace diff is built from requirement files only", "SysML satisfy links in baseline drift"),
  "F-53": ("Field link and prose copy are both counted", "De-duplicate declared vs prose trace in drift"),
  "F-111": ("No change-request artifact kind exists", "Change request record: impact, approval, baseline"),
  "F-112": ("Confirms F-25/F-30/F-46 on a real change", "Text and model drift since a baseline"),
  "F-115": ("Baselines view actions have no CLI", "CLI `erew baseline` + `--compare`"),
 },
 "Reporting and project records (reporting/*)": {
  "F-10": ("Qualification reports were built for Sanad's own ledger", "Project-level approvals, problem reports, summary"),
  "F-24": ("Objective text is hard-wired to DO-178C", "Report objectives per declared assurance scheme"),
  "F-94": ("No defect record a customer repository feeds", "Problem-report register for the product repo"),
  "F-105": ("Records export reads Sanad's qual ledger only", "Unit/integration/system verification record export"),
  "F-116": ("No list of lifecycle artifacts per standard", "Class-C / DAL artifact checklist view"),
  "F-117": ("No release record producer", "Release notes from gate, results and defects"),
 },
 "System design in SysML (system-design/*)": {
  "F-14": ("Views folder is derived from the first design root", "Configurable views folder"),
  "F-15": ("Standard library is not shipped to the reader", "Ship SysML standard-library stubs"),
  "F-16": ("Canvas editing needs the webview", "Headless canvas check (render + diff)"),
  "F-35": ("Every `allocate` is read as a requirement allocation (bug)", "Part-to-part allocate in the reader"),
  "F-36": ("Action-flow view does not draw successions", "Draw successions in action-flow view"),
  "F-37": ("Reader grammar is looser than the OMG Pilot", "Reader conformance suite against the Pilot"),
  "F-38": ("Layout metadata is not re-checked after a rename", "Stale-layout check"),
  "F-40": ("Allocation matrix draws top-level usages only", "Nested allocation and requirement matrices"),
  "F-41": ("Graph keeps parts and interfaces only", "Actions, items and ports as trace nodes"),
  "F-42": ("Canvas check is a person looking", "Headless canvas check (render + diff)"),
  "F-43": ("Pilot runs from a command; result not kept", "CLI `erew --pilot` with evidence record"),
  "F-60": ("Canvas does not resolve redefined usages", "Draw redefinitions in interconnection view"),
  "F-65": ("Reader subset lacks the short enum form", "Reader: short enum and abstract markers"),
  "F-67": ("Sequence view joins lifelines by name model-wide", "Scope sequence messages to their package"),
  "F-68": ("`sysml-not-read` ignores what views draw", "Count drawn transitions as read"),
  "F-73": ("States, transitions, messages are not graph nodes", "Behaviour elements as trace nodes"),
  "F-75": ("Recommended profile drops two diagram markers", "Profile keeps existing diagram kinds"),
  "F-76": ("Canvas check is a person looking", "Headless canvas check (render + diff)"),
  "F-83": ("Canvas check is a person looking", "Headless canvas check (render + diff)"),
 },
 "Software design (software-design/*)": {
  "F-44": ("No architecture-description document producer", "Architecture description export (IEC 62304 §5.3)"),
  "F-63": ("Recommended profile lacks task, service, data model", "Profile: Thread, Service, DataModel with shapes"),
  "F-64": ("Pilot and reader are not handed the org profile", "Pilot and reader load the configured profile"),
  "F-69": ("Redefinition makes a requirement look duplicated", "Duplicate check ignores redefinition chains"),
  "F-70": ("Conformance counts non-software targets", "Conformance scoped to software components"),
  "F-72": ("Components come from Markdown files, not `#Component` parts", "Component inventory from the model"),
  "F-74": ("SDD export is a command and cites DO-178C", "CLI SDD export with IEC 62304 framing"),
  "F-77": ("No unit-contract template or record", "Unit interface contract template + check"),
  "F-78": ("Profile names clash with kernel library names", "Qualified profile marker names by default"),
  "F-79": ("Interface surface reads interface ends, not actions", "Interface surface lists operations"),
  "F-80": ("Two engines count the allocation role differently", "One allocation count across engines"),
  "F-81": ("No compare between dictionary enums and model enums", "Dictionary ↔ model enumeration check"),
  "F-82": ("Algorithms live in doc text; actions are not nodes", "Algorithm elements traced to requirements"),
  "F-88": ("Conformance counts assigned files only", "Report code with no design home"),
  "F-90": ("No compare between contracts and C headers", "Contract ↔ code signature check"),
  "F-92": ("No model-to-code generation", "Generate C enums from SysML with drift check"),
 },
 "Hardware (system-design, hardware scope)": {
  "F-57": ("Attribute values do not reach the graph", "Parametric roll-up: pins, power, BOM checks"),
  "F-58": ("No hardware document template or skill", "Hardware design description skill (IEC 60601-1)"),
  "F-59": ("Audit has no hardware filter; names repeat", "Hardware traceability matrix from the model"),
  "F-61": ("Nameless redefining usages are dropped", "Redefined parts enter the graph"),
  "F-62": ("Canvas check is a person looking", "Headless canvas check (render + diff)"),
 },
 "Safety (no board capability)": {
  "F-06": ("No safety capability exists", "Risk management plan and file (ISO 14971)"),
  "F-47": ("Hazard role exists but Setup and the starter template omit it", "Setup step: hazard role on safety template"),
  "F-48": ("A hazard is only an id some requirement names", "Hazard register as an artifact kind"),
  "F-49": ("SysML concerns and dependencies do not reach the graph", "SysML hazards and controls in the graph"),
  "F-50": ("Only a template with the hazard role can name a hazard", "Hazard link from any requirement type"),
  "F-51": ("No fault-tree view or cut-set check", "Fault tree view with minimal cut sets"),
  "F-52": ("No view draws dependencies or hazard concerns together", "Hazard ↔ control picture"),
  "F-56": ("Canvas check is a person looking", "Headless canvas check (render + diff)"),
  "F-97": ("Hazard links and case coverage are two separate views", "Hazard → control → test → verdict chain view"),
 },
 "Code trace and engineering facts (graph/engineering-facts)": {
  "F-84": ("Indexer walks every source file; prose claims count", "Index scope setting + strict claim grammar"),
  "F-85": ("Repository-scoped finding matches no path suppression", "Suppress by symbol or file"),
  "F-86": ("`not-implemented` needs an opt-in role; no count", "Setup step: implements role + reached count"),
  "F-87": ("Class is not part of a C++ symbol id", "Class-qualified C++ symbol ids"),
  "F-89": ("Claims above `#define` are dropped", "Trace C macros and constants"),
 },
 "Verification (verification/*, evidence)": {
  "F-91": ("No static-analysis results lane", "SARIF / analyser results lane"),
  "F-93": ("Case producer reads pytest markers only", "Unity / GoogleTest case lane from `@verifies`"),
  "F-95": ("No AI provider configured in this repo", "Guided `llm:` provider step for test drafting"),
  "F-96": ("A case must verify a requirement", "Cases that verify a design element"),
  "F-98": ("Dictionary declares no resolution for non-integer types", "Resolution for temperature, duration, count"),
  "F-99": ("Plan approval exists only in the panel", "CLI plan approval with record"),
  "F-101": ("Procedure is one matrix cell, steps live in Markdown", "Procedure document type with steps"),
  "F-102": ("Blocked and missing-result are two engines' words; no level rule", "One blocked verdict + evidence level rule"),
  "F-103": ("Unity prints text; lcov not installed", "Unity and gcov readers (no JUnit/LCOV step)"),
  "F-104": ("Coverage joins only traced symbols; demangled names differ", "Coverage joins every function incl. C++"),
  "F-113": ("Staleness lives in the review reading only", "Stale results after a requirement change"),
  "F-118": ("Producers read files, never ask git", "Warn on untracked evidence"),
 },
 "Traceability (traceability/*)": {
  "F-19": ("Adopted pack carries no rigour bands; one profile only", "Mandatory trace legs by class (several packs)"),
  "F-39": ("Decomposition check ignores satisfy links", "Satisfy counts as decomposition"),
  "F-45": ("Audit prints bare local names", "Qualified element names in trace reports"),
 },
 "Impact analysis (traceability/views-trace-and-impact, review/impact-assessment)": {
  "F-106": ("Impact walks downstream only; no conflict engine", "Conflict check for a new requirement"),
  "F-107": ("Walk skips satisfy, mitigates, values, documents", "Impact through model, hazards and documents"),
  "F-108": ("Impact export is a lens button only", "CLI `--report impact --subject`"),
  "F-109": ("Every dependent edge counts the same", "Parameter-level impact ranking"),
  "F-110": ("No budget constraint over dictionary values", "Timing / power budget check"),
 },
 "Knowledge management, lifecycle documents, AI (ai/*, documentation)": {
  "F-03": ("No project-document templates", "Charter, scope, stakeholder templates"),
  "F-05": ("No lifecycle-plan artifact kind", "Software development plan template (IEC 62304 §5.1)"),
  "F-07": ("SOUP is not an artifact role", "SOUP list as a traced artifact"),
  "F-08": ("No CM-plan artifact kind", "Configuration management plan template"),
  "F-09": ("ADRs are not a Sanad artifact", "ADR as an artifact with trace links"),
  "F-11": ("Registers are plain Markdown", "Assumptions, risks, questions registers"),
  "F-12": ("No ConOps templates", "ConOps templates"),
  "F-13": ("No capture command exists", "Capture: stakeholder statement with provenance"),
  "F-55": ("Context layer has a size ceiling", "AI context sees large safety files"),
 },
}
FIXC = {"Skill", "Knowledge graph", "Workflow", "Human review gate", "Verification engine", "Traceability engine",
        "External tool integration", "Existing feature that only needs configuration"}
find = {}
for line in (ROOT / "FINDINGS.md").read_text().splitlines():
    m = re.match(r"\| (F-\d+) \| (\S+) \| (\S+) \|(?:[^|]*\|){2} ([^|]*) \|", line)
    if m: find[m.group(1)] = (m.group(2), m.group(3), m.group(4).strip())
seen = [f for g in G.values() for f in g]
missing, extra, dup = set(find) - set(seen), set(seen) - set(find), len(seen) - len(set(seen))
if missing or extra or dup:
    sys.exit(f"gap list out of step with FINDINGS.md: missing {sorted(missing)}, unknown {sorted(extra)}, duplicates {dup}")
for f, (_, _, fx) in find.items():
    assert any(c in fx for c in FIXC), f"{f}: fix class '{fx}' is not one of the eight"
out = ["# Gap list — every finding, by capability, ready for the board's headroom", "",
       "> Phase 12 (c). DRAFT — needs Masood's review. Generated by `tools/gap-list.py` from FINDINGS.md; it refuses to write if a finding is missing.",
       "> **Fix class** is one of: Skill · Knowledge graph · Workflow · Human review gate · Verification engine · Traceability engine · External tool integration · Existing feature that only needs configuration.", "",
       "| Capability | Findings | MANUAL | UI-ONLY | Needs configuration only |", "|---|---:|---:|---:|---:|"]
for g, fs in G.items():
    k = [find[f] for f in fs]
    out.append(f"| {g} | {len(fs)} | {sum(x[1] == 'MANUAL' for x in k)} | {sum(x[1] == 'UI-ONLY' for x in k)} | {sum('only needs configuration' in x[2] for x in k)} |")
out.append(f"| **Total** | **{len(find)}** | **{sum(x[1] == 'MANUAL' for x in find.values())}** | **{sum(x[1] == 'UI-ONLY' for x in find.values())}** | **{sum('only needs configuration' in x[2] for x in find.values())}** |")
for g, fs in G.items():
    out += ["", f"## {g}", "", "| # | Phase | Kind | Fix class | Why the gap exists | Headroom candidate |", "|---|---|---|---|---|---|"]
    for f, (why, title) in sorted(fs.items(), key=lambda x: int(x[0][2:])):
        ph, kind, fx = find[f]
        out.append(f"| {f} | {ph} | {kind} | {fx} | {why} | **{title}** |")
print("\n".join(out))
