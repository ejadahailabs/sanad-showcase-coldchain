// Generate the SysML requirement package with Sanad's own generator (the
// Design panel's "generate requirements package" — writeRequirementsPackage),
// and declare the OMG Pilot home through Sanad's config writer. Headless.
// Usage: node tools/requirements-package.cjs <ext> <repo>
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { writeRequirementsPackage } = d("sysmlRequirements.js");
const { applyConfigEdits } = d("configviz.js");
(async () => {
  const p = join(root, ".ejadah/rew/config.yaml");
  const before = fs.readFileSync(p, "utf8");
  const after = applyConfigEdits(before, { pilotHome: "env:SYSML_PILOT_HOME" });
  if (after !== before) { fs.writeFileSync(p, after); console.log("declared sysml.validator.pilot_home: env:SYSML_PILOT_HOME"); }
  const model = await loadRepository(root);
  console.log(JSON.stringify(await writeRequirementsPackage(root, model, model.config.design?.roots ?? [])));
})().catch((e) => { console.error(e.message); process.exit(1); });
