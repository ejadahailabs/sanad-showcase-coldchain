// Declare the three results folders through Sanad's own config writer (configviz applyConfigEdits resultsSources). SANAD DID (headless).
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root] = process.argv.slice(2);
const { applyConfigEdits } = require(join(ext, "dist", "configviz.js"));
const p = join(root, ".ejadah/rew/config.yaml");
fs.writeFileSync(p, applyConfigEdits(fs.readFileSync(p, "utf8"), { resultsSources: [
  { level: "verification-ll", path: "11-verification/results/unit", naming: "*.xml" },
  { level: "verification-component", path: "11-verification/results/integration", naming: "*.xml" },
  { level: "systems-verification-results", path: "11-verification/results/system", naming: "*.xml" } ] }));
