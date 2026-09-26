// Phase 9/10 config keys, set with the same yaml Document API Sanad's config writer uses (comments and
// order survive). MANUAL (F-66 pattern): applyConfigEdits has no edit for suppressions or producers.verification.
// Usage: node tools/config-phase9.cjs <ext> <repo> --p9 | --p10
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, pass] = process.argv.slice(2);
const YAML = require(join(ext, "node_modules", "yaml"));
const p = join(root, ".ejadah/rew/config.yaml");
const doc = YAML.parseDocument(fs.readFileSync(p, "utf8"));
const has = (rule, path) => doc.get("suppressions").items.some((i) => i.get("rule") === rule && i.get("path") === path);
const sup = (rule, path, reason) => { if (!has(rule, path)) doc.get("suppressions").add(doc.createNode({ rule, path, reason })); };
// A suppression cannot silence implementation/dead-requirement: the finding is repository-scoped, so no
// `path:` matches it (F-85); the false claim was reworded in config-phase7.cjs instead.
if (pass === "--p9") {
  const why = {
    "environmental/MRTM-ENV-001": "battery capacity and power path (hardware, 09-hardware/power-budget.md)",
    "environmental/MRTM-ENV-002": "ambient operating range of the parts (hardware qualification)",
    "environmental/MRTM-ENV-003": "humidity range of the parts and enclosure (hardware qualification)",
    "environmental/MRTM-ENV-004": "the DS18B20 probe's own range; firmware only checks the reading (MRTM-SAF-003)",
    "maintainability/MRTM-MNT-001": "probe interchangeability is the DS18B20's factory accuracy (hardware)",
    "safety/MRTM-SAF-001": "sound pressure is the buzzer part and enclosure (hardware); firmware only drives it",
    "safety/MRTM-SAF-013": "the backup alarm's own supply (hardware, ADR-0013)",
    "safety/MRTM-SAF-020": "instructions for use (labelling)",
    "system/MRTM-SYS-016": "the power path switches in hardware; firmware only observes mains (power_mon)",
  };
  for (const [f, r] of Object.entries(why))
    sup("not-implemented", `03-requirements/${f}.md`, `No software does this by design: ${r}. Verified by hardware test or inspection (11-verification). Sanad's not-implemented list IS the Phase 9 'not reached by code' list. Accepted DOGFOOD-5.`);
  for (const f of ["stakeholder/MRTM-STK-008", "system/MRTM-SYS-001", "system/MRTM-SYS-003", "system/MRTM-SYS-012", "system/MRTM-SYS-016"])
    sup("partially-implemented", `03-requirements/${f}.md`, "Its children without code are hardware or labelling requirements accepted as not-implemented by design (suppressions above). Accepted DOGFOOD-5.");
}
if (pass === "--p10") {
  // The verification matrix (Sanad's declared-columns lane; there is no Unity/C lane — F-93).
  doc.setIn(["producers", "verification"], doc.createNode([{ path: "11-verification/cases/verification-cases.csv",
    fields: { case: "Case", verifies: "Verifies", procedure: "Procedure", expected: "Expected", level: "Level",
      category: "Category", author: "Author", state: "At commit", description: "Title", setup: "Setup", criterion: "Pass criterion" } }]));
  // Structural coverage of the host build (gcov -> LCOV by tools/gcov2lcov.py).
  doc.setIn(["producers", "coverage"], doc.createNode([{ path: "11-verification/evidence/coverage/host-unit-integration.info" }]));
  // The verification stage — Sanad's RECOMMENDED values, confirmed by the agent under A-35 (owner to confirm or change).
  if (!doc.has("verification")) doc.set("verification", doc.createNode({ confirmed: true, boundary: { "*": "three-value" },
    realValued: "refuse", compositeIsConjunction: true, logicDepth: { "*": "each-outcome" } }));
}
fs.writeFileSync(p, String(doc));
console.log(`config: ${pass} applied`);
