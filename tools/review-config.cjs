// Declare the Review capability through Sanad's own config writer (configviz applyConfigEdits).
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root] = process.argv.slice(2);
const { applyConfigEdits } = require(join(ext, "dist", "configviz.js"));
const p = join(root, ".ejadah/rew/config.yaml");
fs.writeFileSync(p, applyConfigEdits(fs.readFileSync(p, "utf8"), { review: {
  platform: "github", project: "local/dogfood-fridge", pollSeconds: 0,
  checklists: "05-reviews/checklists", records: "05-reviews/records" } }));
