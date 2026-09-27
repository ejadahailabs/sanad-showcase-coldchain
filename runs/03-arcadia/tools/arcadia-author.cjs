// RUN-03-ARCADIA: author the SA, LA, PA and EPBS requirements through Sanad's own create path, headless.
// Id: Sanad's allocator (`planSerials`, next serial after the high-water mark), handed to `createRequirement`
// (the repository says `ids: provided`). Then the text from tools/arcadia-spec.json is typed into the created
// file (what a person does in the form). Parents are spec keys, mapped to the ids the allocator gave.
// Usage: node tools/arcadia-author.cjs <ext> <repo> <spec.json> <ids-out.json>
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
  for (const r of spec) {
    if (ids[r.key]) continue; // already authored
    const parents = r.parents.map((k) => { if (!ids[k] && !k.startsWith("MRTM-STK")) throw new Error(`${r.key}: parent ${k} not authored yet`); return ids[k] ?? k; });
    const model = await loadRepository(root);
    const [id] = planSerials(model, model.templates.get(r.type), 1);
    const title = r.body.match(/^# (.*)$/m)[1];
    const { path } = await createRequirement({ model, type: r.type, name: title, id });
    let fm = readFileSync(path, "utf8").split("\n---\n")[0];
    fm = fm.replace(/^safetyClass: .*$/m, `safetyClass: "${r.safetyClass}"`)
           .replace(/^uplinks: .*$/m, `uplinks: ${JSON.stringify(parents)}`)
           .replace(/^author: .*$/m, 'author: "Masood (drafted by Claude, RUN-03-ARCADIA)"')
           .replace(/^created: .*$/m, 'created: "2026-09-27"');
    if (r.hazard) fm = fm.replace(/^hazard: .*$/m, `hazard: ${JSON.stringify(r.hazard)}`);
    writeFileSync(path, `${fm}\n---\n\n${r.body}`, "utf8");
    ids[r.key] = id;
    writeFileSync(idsPath, JSON.stringify(ids, null, 1) + "\n");
    console.log(`${r.key} -> ${id}`);
  }
})().catch((e) => { console.error(e.message); process.exit(1); });
