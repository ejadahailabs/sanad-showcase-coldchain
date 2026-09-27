// Write a SysML v2 view file through Sanad's own view writer (the code behind
// "Sanad: New View"), headless. Usage:
//   node tools/new-view-headless.cjs <ext> <repo> <viewName> "<kind>" <expose>[,<expose>...]
const { join } = require("node:path");
const { readFileSync } = require("node:fs");
const [ext, root, name, kind, expose] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { newViewFile, writeViewFile, ensureRenderingsPackage } = d("sysmlViews.js");
const { loadSysmlProject } = d("analysis/sysmlProject.js");
const YAML = require(join(ext, "node_modules", "yaml"));
(async () => {
  const roots = YAML.parse(readFileSync(join(root, ".ejadah/rew/config.yaml"), "utf8")).design.roots;
  const project = await loadSysmlProject(root, roots);
  const c = newViewFile(name, kind, expose.split(","), roots, project.views);
  if (c.refused) { console.log(c.refused); process.exit(2); }
  const r = await ensureRenderingsPackage(root, roots);
  if (r) console.log(r.wrote ? `wrote ${r.wrote}` : JSON.stringify(r));
  const v = await writeViewFile(root, c);
  console.log(v.wrote ? `wrote ${v.wrote} (view ${v.view})` : JSON.stringify(v));
  if (!v.wrote) process.exit(2);
})();
