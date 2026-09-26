// Sanad's "create the code index" action, headless: createBuiltinIndex (src/analysis/symbols.ts) —
// the same function the UI command rew.refreshCodeIndex calls — writes .ejadah/rew/symbols.json.
// Usage: node tools/code-index-headless.cjs <ext> <repo>
const { join } = require("node:path");
const [ext, root] = process.argv.slice(2);
const { createBuiltinIndex } = require(join(ext, "dist", "analysis", "symbols.js"));
createBuiltinIndex(root).then((ix) => {
  const ids = new Set(ix.symbols.flatMap((s) => s.implements));
  console.log(`index: ${ix.files.length} files, ${ix.symbols.length} traced symbols, ${ids.size} requirement ids claimed`);
});
