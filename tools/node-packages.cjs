// The requirement package per node, with Sanad's own generator (requirementsPackage — the code behind
// "generate requirements package"), fed ONE node's requirements at a time and the node's package name.
// Sanad writes one package for the whole corpus (F-130); this is that generator, called per node.
// Usage: node tools/node-packages.cjs <ext> <repo> <out-dir>
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, out] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { requirementsPackage } = d("sysmlRequirements.js");
const YAML = require(join(ext, "node_modules", "yaml"));
(async () => {
  const fw = YAML.parse(fs.readFileSync(join(root, ".ejadah/rew/framework.yaml"), "utf8"));
  const model = await loadRepository(root);
  fs.mkdirSync(join(root, out), { recursive: true });
  for (const n of fw.nodes) {
    const pre = [n.prefix].flat();
    const reqs = new Map([...model.requirements].filter(([id]) => pre.includes(id.replace(/-\d+$/, ""))));
    const name = "Req" + n.name.split("-").map((w) => w[0].toUpperCase() + w.slice(1)).join("");
    const pkg = requirementsPackage({ ...model, requirements: reqs, config: { ...model.config, generatedPackage: name } }, ["x"]);
    fs.writeFileSync(join(root, out, `${name}.sysml`), pkg.text);
    console.log(`${name}: ${reqs.size}`);
  }
})().catch((e) => { console.error(e.message); process.exit(1); });
