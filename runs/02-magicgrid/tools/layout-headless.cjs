// Write a view's arrangement with Sanad's own layout writer (layoutPackageText — what a drag on the
// canvas saves), headless. Replaces the view file's Layout_Sanad package. Usage:
//   node tools/layout-headless.cjs <ext> <repo> <viewFile> <viewName> '<json {"Pkg::el":[x,y], ...}>' [--plain: every box without compartments]; HIDE=a::b,c::d hides boxes
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, file, view, json] = process.argv.slice(2);
const { layoutPackageText } = require(join(ext, "dist", "sysmlLayout.js"));
const boxes = Object.entries(JSON.parse(json)).map(([element, [x, y, w, h]]) =>
  ({ view, element, x, y, ...(w === undefined ? {} : { size: { w, h } }) }));
const plain = process.argv[7] === "--plain" ? [{ view }] : [];
const hidden = (process.env.HIDE ?? "").split(",").filter(Boolean).map((element) => ({ view, element }));
const text = layoutPackageText({ boxes, edges: [], hidden, plain, grid: [], geometry: [] });
const p = join(root, file); let s = fs.readFileSync(p, "utf8");
const at = s.indexOf("package 'Layout_Sanad'"); if (at >= 0) s = s.slice(0, at).trimEnd() + "\n";
fs.writeFileSync(p, `${s}\n${text}`); console.log(`layout: ${boxes.length} boxes -> ${file}`);
