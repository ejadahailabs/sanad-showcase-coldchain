// Author requirements through Sanad's own create path, headless.
// Id: Sanad's allocator rule (`planSerials` — next serial after the high-water
// mark, never reused), handed to `createRequirement` as the provided id because
// the repository says `ids: provided`. The allocator claims the file atomically.
// Then the author's text is filled into the created file (the typing a person
// would do in the form). Usage:
//   node tools/author-requirements.cjs <ext> <repo> <spec.json> <ids-out.json>
// spec rows: [key, type, parentKey|id|[ids]|null, title, statement, rationale, verification, hazards?, safety?, class?, folder?, derived?]
// RUN-04: `folder` is createRequirement's own folder option (the item a requirement belongs to);
// `derived` sets Sanad's `derived: true` (DO-178C §5.1.2 derived requirement: no parent).
const { join } = require("node:path");
const { readFileSync, writeFileSync, existsSync } = require("node:fs");
const [ext, root, specPath, idsPath] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { createRequirement } = d("actions.js");
const { planSerials } = d("ids.js");
const spec = JSON.parse(readFileSync(specPath, "utf8"));
const ids = existsSync(idsPath) ? JSON.parse(readFileSync(idsPath, "utf8")) : {};
(async () => {
  for (const [key, type, parentKey, title, text, why, verify, hazards, safety, cls, folder, derived] of spec) {
    const parents = [parentKey ?? []].flat().map((k) => ids[k] ?? k);
    if (ids[key]) continue; // already authored
    const model = await loadRepository(root);
    const [id] = planSerials(model, model.templates.get(type), 1);
    const { path } = await createRequirement({ model, type, name: title, id, ...(folder ? { folder } : {}) });
    let s = readFileSync(path, "utf8");
    const up = JSON.stringify(parents);
    s = s.replace(/^safetyClass: .*$/m, `safetyClass: "${cls ?? "C"}"`)
         .replace(/^uplinks: .*$/m, `uplinks: ${up}`)
         .replace(/^author: .*$/m, `author: "Masood (drafted by Claude, ${process.env.DOGFOOD_WORKER ?? "RUN-04"})"`)
         .replace(/^created: .*$/m, 'created: "2026-09-27"');
    if (derived) s = s.replace(/^derived: .*$/m, "derived: true");
    s = s.replace(/## Description\n\nTODO/, `## Description\n\n${text}`)
         .replace(/## Rationale\n\nTODO/, `## Rationale\n\n${why}`)
         .replace(/## Verification\n\nTODO/, `## Verification\n\n${verify}`);
    if (hazards) s = s.replace(/^hazard: .*$/m, `hazard: ${JSON.stringify(hazards)}`);
    if (safety) s = s.replace(/## Safety\n\nTODO/, `## Safety\n\n${safety}`);
    writeFileSync(path, s, "utf8");
    ids[key] = id;
    writeFileSync(idsPath, JSON.stringify(ids, null, 1) + "\n");
    console.log(`${key} -> ${id}`);
  }
})().catch((e) => { console.error(e.message); process.exit(1); });
