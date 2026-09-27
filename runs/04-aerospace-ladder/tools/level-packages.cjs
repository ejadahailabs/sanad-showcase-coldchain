// RUN-04: the requirement package per RUNG of the ladder, with Sanad's own generator (requirementsPackage —
// the code behind "generate requirements package"), fed one rung's requirements at a time. Sanad writes one
// package for the whole corpus (run 2 F-130). Usage: node tools/level-packages.cjs <ext> <repo> <out-dir>
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, out] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { requirementsPackage } = d("sysmlRequirements.js");
const RUNGS = { ReqAircraft: ["MRTM-STK", "MRTM-FUN", "MRTM-SOB"], ReqSystem: ["MRTM-SYS", "MRTM-SAF", "MRTM-PRF", "MRTM-ENV", "MRTM-MNT", "MRTM-IFC"],
                ReqItems: ["MRTM-HWR", "MRTM-HLR"], ReqSoftwareDesign: ["MRTM-LLR"] };
(async () => {
  const model = await loadRepository(root);
  fs.mkdirSync(join(root, out), { recursive: true });
  for (const [name, pre] of Object.entries(RUNGS)) {
    const reqs = new Map([...model.requirements].filter(([id]) => pre.includes(id.replace(/-\d+$/, ""))));
    const pkg = requirementsPackage({ ...model, requirements: reqs, config: { ...model.config, generatedPackage: name } }, ["x"]);
    fs.writeFileSync(join(root, out, `${name}.sysml`), pkg.text);
    console.log(`${name}: ${reqs.size}`);
  }
})().catch((e) => { console.error(e.message); process.exit(1); });
