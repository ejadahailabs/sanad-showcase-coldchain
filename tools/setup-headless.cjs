// Phase 0 headless setup: drives the SAME writers Sanad's Setup wizard calls
// (src/ui/setup.ts runSetup, new-config branch), minus the VS Code webview.
// Usage: node tools/setup-headless.cjs <sanad extension dir> <repo root> [--force]
const { mkdirSync, writeFileSync, existsSync } = require("node:fs");
const { join, dirname } = require("node:path");
const [ext, root, flag] = process.argv.slice(2);
const force = flag === "--force"; // re-run over our own earlier output
const d = (m) => require(join(ext, "dist", m));
const { starterConfig, starterTemplate, templateSpec } = d("scaffold.js");
const { applyConfigEdits } = d("configviz.js");
const { REQUIREMENTS_WRITING_GUIDE, requirementsWritingGuideFile } = d("rulepack-guide.js");
const { PRODUCT_FILE, productFileText, productSlug } = d("product.js");
const { CONFIG_PATH, TEMPLATES_DIR } = d("ejadah.js");

// The seven requirement kinds (ASSUMPTIONS A-02/A-03). type, label, tag.
const KINDS = [
  ["stakeholder", "Stakeholder Requirement", "STK"],
  ["system", "System Requirement", "SYS"],
  ["safety", "Safety Requirement", "SAF"],
  ["performance", "Performance Requirement", "PRF"],
  ["environmental", "Environmental Requirement", "ENV"],
  ["maintainability", "Maintainability Requirement", "MNT"],
  ["interface", "Interface Requirement", "IFC"],
];
const uplinkOrder = { system: "stakeholder" };
for (const [t] of KINDS.slice(2)) uplinkOrder[t] = "system";

const write = (rel, text) => {
  const p = join(root, rel);
  if (existsSync(p) && !force) return console.log(`kept   ${rel} (already there)`);
  mkdirSync(dirname(p), { recursive: true });
  writeFileSync(p, text, "utf8");
  console.log(`wrote  ${rel}`);
};

for (const [type, label, tag] of KINDS)
  write(`${TEMPLATES_DIR}/${type}.md`, starterTemplate(templateSpec({ type, label, idPrefix: `MRTM-${tag}`, folder: `03-requirements/${type}`, criticalityField: "safetyClass" })));

write(requirementsWritingGuideFile(), REQUIREMENTS_WRITING_GUIDE);

const name = "Medical Refrigerator Temperature Monitor";
write(PRODUCT_FILE, productFileText({ name, domain: "medical-device", capabilities: { requirements: true, verification: true, software: true } }));

const inventory = ["systems-requirements", "systems-design", "hazard", "systems-tests", "systems-verification-results", "data-dictionary"];
let text = starterConfig({
  uplinkOrder,
  topology: "monorepo",
  inventory,
  relationships: [],
  artefactPaths: {
    "systems-requirements": "03-requirements",
    "systems-design": "06-design/system",
    hazard: "08-safety",
    "systems-tests": "11-verification/cases",
    "systems-verification-results": "11-verification/results",
    "data-dictionary": "01-data-dictionary",
  },
  artefactTemplates: {},
  artefactRecognition: {},
  dataDictionaryPaths: ["01-data-dictionary/data-dictionary.md"],
  designRoots: ["06-design/system", "06-design/hardware", "06-design/software", "06-design/views"],
  pilotHome: "",
  review: { platform: "", project: "", host: "", pollSeconds: 0, checklists: "", records: "", rules: {}, minReviewers: 0 },
  dataDictionaryFields: {},
  dataDictionaryTerms: {},
  resultsSources: [{ level: "systems-verification-results", path: "11-verification/results" }],
  // Owner order 2026-09-27 00:05: IEC 62304 Software Safety Class C (ASSUMPTIONS A-07).
  assurance: { domain: "medical-device", scheme: "IEC 62304 software safety class", level: "C", map: { A: 0, B: 2, C: 4 } },
  profile: "requirements-writing",
  idSource: "provided",
  llm: { provider: "", model: "", baseUrl: "" },
});
const slug = productSlug(name);
text = applyConfigEdits(text, { repository: { id: `${slug}-software`, product: slug, member: "software", topology: "monorepo" } });
// MANUAL additions — Setup has no step for these (FINDINGS F-02, F-04); keys per CONFIGURATION.md sections 4-5.
text = text.replace('ids: "provided"\n', 'ids: "provided"\n# ADR-0001: every folder carries a README that says what lives there; it is not a requirement.\nignore:\n  - "README.md"\n# MANUAL (F-04): per-requirement IEC 62304 class, carried by the safetyClass field (dal role).\ncriticality:\n  role: "dal"\n  scale: "iec62304"\n  default: "C"\n  inherit: "down"\n  map:\n    A: 0\n    B: 2\n    C: 4\n');
text = text.replace("producers:\n", 'producers:\n  # MANUAL (F-02): Setup has no glossary step.\n  glossary:\n    - path: "01-data-dictionary/glossary.md"\n');
write(CONFIG_PATH, text);
