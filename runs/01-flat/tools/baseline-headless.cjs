// "Sanad: Set Baseline" (rew.setBaseline), headless: the same makeBaseline /
// serializeBaselines / takenAt the command uses, fed the findings of a CLI
// `erew --json` run over the same working tree. Usage:
//   node tools/baseline-headless.cjs <ext> <repo> <label> <evidence.json>
const { join } = require("node:path");
const { readFileSync, writeFileSync } = require("node:fs");
const [ext, root, label, evidence] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadBaselines, makeBaseline, serializeBaselines, hasBaseline, BASELINES_PATH } = d("analysis/baseline.js");
const { headCommit, isWorkingTreeDirty } = d("gitSource.js");
(async () => {
  const load = await loadBaselines(root);
  if (hasBaseline(load.baselines, label)) { console.log(`baseline "${label}" already exists — nothing written`); process.exit(2); }
  const at = { commit: await headCommit(root), dirty: await isWorkingTreeDirty(root) };
  const findings = JSON.parse(readFileSync(evidence, "utf8")).findings;
  const b = makeBaseline(label, new Date().toISOString(), findings, at);
  writeFileSync(join(root, BASELINES_PATH), serializeBaselines([...load.baselines, b]), "utf8");
  console.log(`baseline "${b.label}" at ${b.commit}${b.dirty ? " (DIRTY)" : ""}: ${b.keys.length} finding identities → ${BASELINES_PATH}`);
})().catch((e) => { console.error(e.message); process.exit(1); });
