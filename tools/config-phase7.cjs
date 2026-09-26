// Phase 7 config keys Sanad's config writer (applyConfigEdits) has no edit for — set with the
// same yaml Document API it uses, so comments and order survive. MANUAL (F-66).
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root] = process.argv.slice(2);
const YAML = require(join(ext, "node_modules", "yaml"));
const p = join(root, ".ejadah/rew/config.yaml");
if (!process.argv[4]) {
const doc = YAML.parseDocument(fs.readFileSync(p, "utf8"));
const inv = doc.getIn(["setup", "inventory"]);
for (const r of ["high-level-architecture", "software-design"]) if (!inv.items.some((i) => i.value === r)) inv.add(r);
doc.setIn(["setup", "paths", "high-level-architecture"], "06-design/software");
doc.setIn(["setup", "paths", "software-design"], "10-src/firmware");
// design.libraries is documented in sysmlProject.ts but nothing reads it (F-64) — not set.
const sup = doc.get("suppressions");
sup.add(doc.createNode({ rule: "sysml-unresolved-id", path: "06-design/software/MrtmSoftware.sysml",
  reason: "Part-to-part `allocate` (component -> FreeRTOS task, software item -> ESP32-S3) is read as a requirement allocation, so each end is looked up as a requirement id (F-35). IEC 62304 5.3 architecture; OMG Pilot reads it clean. Accepted DOGFOOD-4." }));
fs.writeFileSync(p, String(doc));
}
// Second pass (after the first gate): suppress sysml-not-read on the state and sequence files.
if (process.argv[4] === "--not-read") {
  const d2 = YAML.parseDocument(fs.readFileSync(p, "utf8")); const s2 = d2.get("suppressions");
  for (const path of ["06-design/software/MrtmSwStates.sysml", "06-design/software/MrtmSeq*.sysml"])
    s2.add(d2.createNode({ rule: "sysml-not-read", path, reason: "Transitions and successions are read and DRAWN by Sanad's state transition and sequence views (06-design/views/rendered/mrtmAlarmStates.svg, mrtmSeq*.svg), but the graph does not take them, so the gate calls them 'read but not drawn' (FINDINGS F-68). Accepted DOGFOOD-4." }));
  fs.writeFileSync(p, String(d2));
}
// Third pass (after the second gate, architecture + conformance now running): accepted findings.
if (process.argv[4] === "--arch") {
  const d3 = YAML.parseDocument(fs.readFileSync(p, "utf8")); const s3 = d3.get("suppressions");
  const add = (rule, path, reason) => s3.add(d3.createNode({ rule, path, reason }));
  for (const path of ["06-design/system/**", "06-design/hardware/**", "06-design/software/MrtmSoftware.sysml"])
    add("allocation-target-undeclared", path, "Only software components are declared in .ejadah/rew/architecture/; system functions, hardware parts, FreeRTOS tasks and the ESP32-S3 are allocation targets but not software components. The rule cannot tell them apart because the #Component marker is not read (FINDINGS F-70). Accepted DOGFOOD-4.");
  for (const id of process.argv.slice(5)) {
    const kind = { SYS: "system", SAF: "safety", PRF: "performance", IFC: "interface" }[id.split("-")[1]];
    add("duplicate-functionality", `03-requirements/${kind}/${id}.md`, "The requirement is compared with ITSELF: it is satisfied by a Phase 4 part and by the Phase 6 hardware part that redefines it under the same name, and the rule counts the two links as two requirements (FINDINGS F-69). Accepted DOGFOOD-4.");
  }
  add("unallocated-requirement", "03-requirements/safety/MRTM-SAF-020.md", "An instructions-for-use statement (probe position); no hardware or software element implements it; verified by inspection of the IFU (Phase 10). Accepted DOGFOOD-4.");
  fs.writeFileSync(p, String(d3));
}
