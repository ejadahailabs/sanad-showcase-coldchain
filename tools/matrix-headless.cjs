// Draw a table-kind SysML view (allocation matrix) with Sanad's canvas code,
// headless, as a Markdown table (the canvas returns cells, not SVG, for tables).
// Usage: node tools/matrix-headless.cjs <ext> <repo> <viewName> <out.md>
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, view, out] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { canvasFor } = d("design/canvas.js"); const { loadSysmlProject } = d("analysis/sysmlProject.js"); const { loadRepository } = d("repo.js");
const YAML = require(join(ext, "node_modules", "yaml"));
(async () => {
  const roots = YAML.parse(fs.readFileSync(join(root, ".ejadah/rew/config.yaml"), "utf8")).design.roots;
  const c = await canvasFor(root, await loadSysmlProject(root, roots), view, await loadRepository(root));
  const m = c.matrix; if (!m) { console.log(`no matrix for ${view}: ${c.empty}`); process.exit(2); }
  const rows = [`# View \`${view}\` — ${c.kind} (drawn by Sanad's canvasFor, headless)`, "", m.note ? `> ${m.note}` : "", "",
    `| | ${m.columns.map((x) => x.label).join(" | ")} |`, `|---|${m.columns.map(() => "---").join("|")}|`,
    ...m.rows.map((r, i) => `| ${r.label} | ${m.marks[i].map((b) => (b ? "●" : "")).join(" | ")} |`)];
  fs.writeFileSync(join(root, out), rows.join("\n") + "\n");
  console.log(`wrote ${out} (${m.rows.length}×${m.columns.length}, ${m.marks.flat().filter(Boolean).length} marks)`);
})();
