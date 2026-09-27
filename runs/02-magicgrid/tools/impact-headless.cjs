// Sanad's impact assessment, headless: the "Impact of a Requirement" lens (impactView + impactReport,
// src/analysis/impactView.ts) per subject, and the review's impact reading (impactReading,
// src/review/impact.ts: "Reaches" downstream + "Rests on" upstream) over the change as one set.
// The graph is built from the same facts the CLI feeds it: symbol index, SysML, components,
// dictionary, declared verification cases. Usage:
//   node tools/impact-headless.cjs <ext> <repo> <outDir> <REQ-ID> [REQ-ID ...]
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, out, ...subjects] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { buildGraph } = d("graph.js");
const { impactOf, DEPENDENT_KINDS } = d("questions.js");
const { impactView, impactReport, impactSummary } = d("analysis/impactView.js");
const { impactReading } = d("review/impact.js");
const { loadComponents } = d("analysis/components.js");
const { loadDataDictionary } = d("analysis/dataDictionary.js");
const { loadSysmlProject } = d("analysis/sysmlProject.js");
const { sysmlLibraryDirs } = d("analysis/sysmlLibrary.js");
const { loadSymbolIndex } = d("analysis/symbols.js");
const { loadVerificationCases, verificationSources, resolveFileNameVerifies } = d("analysis/verificationCases.js");
(async () => {
  const model = await loadRepository(root);
  const reqs = new Set(model.requirements.keys());
  const arch = await loadComponents(root);
  const dict = await loadDataDictionary(root, model.config.producers?.dataDictionary);
  const sp = await loadSysmlProject(root, model.config.design?.roots ?? [], undefined, sysmlLibraryDirs(undefined, model.config, root));
  const ix = await loadSymbolIndex(root);
  const ver = await loadVerificationCases(root, verificationSources(model, []), { requirements: reqs, prefixes: [...model.templates.values()].map((t) => t.idPrefix), unread: [] });
  const named = resolveFileNameVerifies(ver.cases, { requirements: reqs, claimed: new Set() });
  const graph = buildGraph(model, {
    components: arch.components, parameters: dict.parameters ?? [],
    sysml: { elements: sp.facts.elements, relations: sp.facts.relations, standDowns: sp.facts.standDowns, unreadable: [] },
    ...(ix.index ? { symbols: ix.index.symbols } : {}), ...(named.cases.length ? { cases: named.cases } : {}),
  });
  fs.mkdirSync(join(root, out), { recursive: true });
  const kinds = new Map();
  for (const id of subjects) {
    const v = impactView(model, graph, id);
    for (const r of v.rows) kinds.set(r.kind, (kinds.get(r.kind) ?? 0) + 1);
    fs.writeFileSync(join(root, out, `impact-of-${id}.md`), impactReport(v));
    console.log(impactSummary(v));
  }
  // The review reading: the change as one set of changed artefacts.
  const changed = subjects.map((id) => ({ path: model.requirements.get(id)?.path?.replace(root + "/", "") ?? id, ids: [id] }));
  const r = impactReading(changed, graph, impactOf(graph, subjects).value, DEPENDENT_KINDS);
  const line = (x) => `| \`${x.origin}\` | \`${x.id}\` | ${x.hops} | ${x.relations.join(" → ")} | ${x.candidate ? "candidate" : "declared"} |`;
  const md = ["# Impact reading of change CR-001 (Sanad review impact, headless)", "", r.note, "", r.trace, ""];
  for (const g of r.groups) {
    md.push(`## \`${g.path}\``, "", `Reaches: ${g.rows.length} · Rests on: ${g.restsOn.length}`, "",
      "| Origin | Artifact | Hops | Relations | Basis |", "|---|---|---:|---|---|", ...g.rows.map(line), "",
      "Rests on:", "", "| Origin | Artifact | Hops | Relations | Basis |", "|---|---|---:|---|---|", ...g.restsOn.map(line), "");
  }
  md.push(...r.notRead, "");
  fs.writeFileSync(join(root, out, "impact-reading.md"), md.join("\n"));
  console.log(`graph ${graph.nodes.size} nodes; cases ${named.cases.length}; symbols ${ix.index?.symbols.length ?? 0}; reached by kind ${JSON.stringify(Object.fromEntries(kinds))}`);
  console.log(r.note);
})().catch((e) => { console.error(e); process.exit(1); });
