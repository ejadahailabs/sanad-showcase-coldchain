// Read the design roots back with Sanad's own reader: strict parse per file
// (parseSysml, no recovery), the project load (loadSysmlProject: the four
// deterministic checks), and what reaches the graph (elements, satisfy links).
// Usage: node tools/sysml-readback.cjs <ext> <repo>
const { join, relative } = require("node:path"); const fs = require("node:fs");
const [ext, root] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { parseSysml, qualifiedNames } = d("sysml.js");
const { loadSysmlProject } = d("analysis/sysmlProject.js");
const YAML = require(join(ext, "node_modules", "yaml"));
(async () => {
  const roots = YAML.parse(fs.readFileSync(join(root, ".ejadah/rew/config.yaml"), "utf8")).design.roots;
  let total = 0;
  for (const r of roots) for (const f of fs.readdirSync(join(root, r), { recursive: true }).map(String).filter((f) => f.endsWith(".sysml")).sort()) {
    const path = join(r, f); const kind = f.startsWith("views/") ? "view" : "model";
    const m = parseSysml(fs.readFileSync(join(root, path), "utf8"), 0, kind);
    if (m.refused || !m.elements) { console.log(`REFUSED ${path}: ${m.refused ?? JSON.stringify(m).slice(0, 200)}`); continue; }
    const n = qualifiedNames(m).size; total += n; console.log(`read   ${path}: ${n} named elements`);
  }
  const p = await loadSysmlProject(root, roots);
  const rel = p.facts.relations, sat = rel.filter((x) => /^[A-Z]+-[A-Z]+-\d+$/.test(x.from));
  console.log(`strict parse: ${total} named elements`);
  console.log(`project: ${p.files.length} files; graph elements ${p.facts.elements.length} (${JSON.stringify(p.facts.elements.reduce((o, e) => (o[e.kind] = (o[e.kind] ?? 0) + 1, o), {}))})`);
  console.log(`satisfy links to requirement ids: ${sat.length}, distinct requirements ${new Set(sat.map((x) => x.from)).size}; part-to-part allocations ${rel.length - sat.length}`);
  console.log(`findings: ${JSON.stringify(p.findings.reduce((o, f) => (o[`${f.severity}/${f.rule}`] = (o[`${f.severity}/${f.rule}`] ?? 0) + 1, o), {}))}`);
  console.log(`stand-downs (read, not in graph): ${p.facts.standDowns.length} — ${[...new Set(p.facts.standDowns.map((s) => s.what))].join(", ")}`);
})().catch((e) => { console.error(e.stack); process.exit(1); });
