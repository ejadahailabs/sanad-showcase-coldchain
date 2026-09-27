// Run the OMG SysML v2 Pilot over the design roots through Sanad's own runner
// (validateWithPilot — the code behind "Sanad: Validate SysML with the OMG Pilot"), headless.
// Usage: SYSML_PILOT_HOME=... node tools/pilot-headless.cjs <ext> <repo> [--with-profile]
// --with-profile also hands the Pilot .ejadah/rew/SoftwareProfile.sysml; Sanad's own command
// does not (it passes the design roots only), so any #marker is unresolved there (FINDINGS F-64).
const { join, relative } = require("node:path"); const fs = require("node:fs");
const [ext, root] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { validateWithPilot, sayIssue } = d("sysmlPilot.js");
const YAML = require(join(ext, "node_modules", "yaml"));
(async () => {
  const cfg = YAML.parse(fs.readFileSync(join(root, ".ejadah/rew/config.yaml"), "utf8"));
  const files = cfg.design.roots.flatMap((r) => fs.readdirSync(join(root, r), { recursive: true })
    .filter((f) => String(f).endsWith(".sysml")).map((f) => join(root, r, String(f))))
    .sort().map((p) => ({ path: relative(root, p), text: fs.readFileSync(p, "utf8") }));
  if (process.argv[4] === "--with-profile") files.unshift({ path: ".ejadah/rew/SoftwareProfile.sysml", text: fs.readFileSync(join(root, ".ejadah/rew/SoftwareProfile.sysml"), "utf8") });
  const res = await validateWithPilot({ declared: cfg.sysml?.validator?.pilot_home, version: cfg.sysml?.validator?.pilot_version,
    root, files, driver: join(ext, "dist", "Check.java") });
  console.log(`result: ${res.kind}${res.version ? ` (Pilot ${res.version})` : ""}; files ${files.length}`);
  if (res.kind !== "ran") { console.log(res.message ?? "", JSON.stringify(res.looked ?? "")); process.exit(2); }
  const by = {}; for (const i of res.issues) by[i.severity] = (by[i.severity] ?? 0) + 1;
  console.log(`issues: ${res.issues.length} ${JSON.stringify(by)}`);
  for (const i of res.issues) console.log(sayIssue(i));
})().catch((e) => { console.error(e.stack); process.exit(1); });
