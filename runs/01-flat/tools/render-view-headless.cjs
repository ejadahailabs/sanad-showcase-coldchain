// Draw a declared SysML v2 view to SVG with Sanad's own canvas code (what the
// Design panel shows), headless. Usage:
//   node tools/render-view-headless.cjs <ext> <repo> <viewName> <out.svg>
const { join } = require("node:path");
const { readFileSync, writeFileSync } = require("node:fs");
const [ext, root, view, out] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { canvasFor } = d("design/canvas.js");
const { loadSysmlProject } = d("analysis/sysmlProject.js");
const { loadRepository } = d("repo.js");
const YAML = require(join(ext, "node_modules", "yaml"));
(async () => {
  const roots = YAML.parse(readFileSync(join(root, ".ejadah/rew/config.yaml"), "utf8")).design.roots;
  const project = await loadSysmlProject(root, roots);
  const c = await canvasFor(root, project, view, await loadRepository(root));
  if (!c || !c.svg) { console.log(`no picture for ${view}: ${JSON.stringify(c && (c.refused ?? c.note ?? Object.keys(c)))}`); process.exit(2); }
  writeFileSync(join(root, out), c.svg, "utf8");
  console.log(`wrote ${out} (${c.svg.length} bytes)`);
})();
