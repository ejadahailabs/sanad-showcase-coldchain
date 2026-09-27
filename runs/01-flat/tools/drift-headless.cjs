// Finding drift against a baseline — what the Baselines view's "Compare" shows (src/ui/baselines.ts
// → baselineDiff), headless, fed the findings of an `erew --json` run. Usage:
//   node tools/drift-headless.cjs <ext> <repo> <label> <evidence.json>
const { join } = require("node:path"); const { readFileSync } = require("node:fs");
const [ext, root, label, evidence] = process.argv.slice(2);
const { loadBaselines, baselineDiff } = require(join(ext, "dist", "analysis/baseline.js"));
(async () => {
  const b = (await loadBaselines(root)).baselines.find((x) => x.label === label);
  if (!b) { console.error(`no baseline ${label}`); process.exit(2); }
  const findings = JSON.parse(readFileSync(evidence, "utf8")).findings;
  const d = baselineDiff(b, findings);
  const rule = (f) => `${f.engine ?? "?"}/${f.rule ?? f.ruleId ?? "?"}`;
  const byRule = {}; for (const f of d.added) byRule[rule(f)] = (byRule[rule(f)] ?? 0) + 1;
  const gone = {}; for (const k of d.removedKeys) { const r = k.split("|").slice(0, 2).join("/"); gone[r] = (gone[r] ?? 0) + 1; }
  console.log(`baseline ${b.label} at ${b.commit}: ${b.keys.length} finding keys then; ${findings.length} findings now`);
  console.log(`new since baseline: ${d.added.length} ${JSON.stringify(byRule)}`);
  console.log(`gone since baseline: ${d.removedKeys.length} ${JSON.stringify(gone)}`);
  for (const f of d.added.filter((f) => /SYS-024/.test(JSON.stringify(f)))) console.log(`  new on MRTM-SYS-024: ${rule(f)} — ${String(f.message).slice(0, 120)}`);
})().catch((e) => { console.error(e); process.exit(1); });
