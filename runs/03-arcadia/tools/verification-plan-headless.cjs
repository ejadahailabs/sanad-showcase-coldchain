// Sanad's verification plan (the "verification plan window", src/ui/planPanel.ts) headless: planPageFor —
// the headless function the panel calls — per requirement, and verificationPlanHtml for the page itself.
// Approval of a plan is a click (UI-ONLY); this only derives and renders.
// Usage: node tools/verification-plan-headless.cjs <ext> <repo> <outDir> [REQ-ID ...to render as HTML]
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, out, ...html] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { buildGraph } = d("graph.js");
const { loadDataDictionary } = d("analysis/dataDictionary.js");
const { resolveCriticality } = d("analysis/criticality.js");
const { planPageFor, verificationPlanHtml } = d("planviz.js");
(async () => {
  const model = await loadRepository(root);
  const dict = await loadDataDictionary(root, model.config.producers?.dataDictionary);
  const graph = buildGraph(model, { parameters: dict.parameters ?? [] });
  const criticality = resolveCriticality(model);
  fs.mkdirSync(join(root, out), { recursive: true });
  const rows = [["Requirement", "Items", "Arithmetic", "Structure", "Not assessable", "First reason / note"]];
  for (const id of [...model.requirements.keys()].sort()) {
    const page = planPageFor({ model, graph, declared: dict.parameters ?? [], criticality, requirementId: id, band: {} });
    if (!page) continue;
    const items = page.plan?.items ?? page.items ?? [];
    const by = (l) => items.filter((i) => i.lane === l).length;
    const note = (items.find((i) => i.reason)?.reason ?? (page.plan?.standDowns ?? page.standDowns ?? [])[0] ?? "").toString().replace(/\|/g, "/").slice(0, 140);
    rows.push([id, items.length, by("arithmetic"), by("structure"), by("not assessable"), note]);
    if (html.includes(id)) fs.writeFileSync(join(root, out, `plan-${id}.html`), verificationPlanHtml({ ...page, approved: false }, "dogfood"));
  }
  const md = rows.map((r, i) => `| ${r.join(" | ")} |` + (i === 0 ? `\n|${"---|".repeat(r.length)}` : "")).join("\n");
  fs.writeFileSync(join(root, out, "verification-plan-items.md"), `# Verification plan — coverage items per requirement (Sanad planPageFor, headless)\n\n${md}\n`);
  const tot = rows.slice(1).reduce((a, r) => [a[0] + r[1], a[1] + r[2], a[2] + r[3], a[3] + r[4]], [0, 0, 0, 0]);
  console.log(`plan: ${rows.length - 1} requirements, ${tot[0]} items (arithmetic ${tot[1]}, structure ${tot[2]}, not assessable ${tot[3]})`);
})().catch((e) => { console.error(e); process.exit(1); });
