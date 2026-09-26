// Sanad's five software design lenses and the Software Design Description export, headless:
// the same builders the Design Lenses panel calls (src/ui/designLenses.ts designDescriptionData),
// fed from the same loaders the workspace uses. Plus the architecture engine's empty-component rule.
// Usage: node tools/design-lenses-headless.cjs <ext> <repo> <outDir>
const { join } = require("node:path"); const fs = require("node:fs");
const [ext, root, out] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { loadRepository } = d("repo.js");
const { buildGraph } = d("graph.js");
const { loadComponents, componentAllocations } = d("analysis/components.js");
const { componentInventory, componentInventoryReport, componentPage } = d("analysis/componentView.js");
const { loadDataDictionary, dataItems, dataItemPage } = d("analysis/dataDictionary.js");
const { interfaceSurface, interfacePage } = d("analysis/icd.js");
const { lowLevelRequirements, lowLevelPage, designToCode, designToCodePage } = d("analysis/softwareView.js");
const { designDescriptionFolder } = d("analysis/designDescription.js");
const { loadSysmlProject } = d("analysis/sysmlProject.js");
const { sysmlLibraryDirs } = d("analysis/sysmlLibrary.js");
const { architectureEngine } = d("analysis/engines/architecture.js");
(async () => {
  const model = await loadRepository(root);
  const arch = await loadComponents(root);
  const dict = await loadDataDictionary(root, model.config.producers?.dataDictionary);
  const sp = await loadSysmlProject(root, model.config.design?.roots ?? [], undefined, sysmlLibraryDirs(undefined, model.config, root));
  const sysml = { elements: sp.facts.elements, relations: sp.facts.relations, standDowns: sp.facts.standDowns, unreadable: [] };
  // Phase 9: the code index (.ejadah/rew/symbols.json), read as the CLI reads it, so design-to-code fills.
  const ixPath = join(root, ".ejadah/rew/symbols.json");
  const ix = fs.existsSync(ixPath) ? d("analysis/symbols.js").parseSymbolIndex(fs.readFileSync(ixPath, "utf8"), ".ejadah/rew/symbols.json").index : undefined;
  const graph = buildGraph(model, { components: arch.components, parameters: dict.parameters ?? [], sysml, ...(ix ? { symbols: ix.symbols } : {}) });
  const allocations = componentAllocations(sp.facts.relations, arch.components);
  const low = lowLevelRequirements(model, graph);
  const components = componentInventory(graph, { components: arch.components, allocations: allocations.allocations, root, lowLevel: low });
  const input = { model, components, interfaces: interfaceSurface(graph), low, mapping: designToCode(model, graph),
    data: dataItems(graph, { parameters: dict.parameters, resources: arch.resources }), allocations };
  const pages = { components: componentPage(input.components), interfaces: interfacePage(input.interfaces),
    low: lowLevelPage(input.low), mapping: designToCodePage(input.mapping), data: dataItemPage(input.data) };
  fs.mkdirSync(join(root, out), { recursive: true });
  fs.writeFileSync(join(root, out, "component-inventory.md"), componentInventoryReport(components));
  const sdd = join(root, out, "software-design-description"); fs.mkdirSync(sdd, { recursive: true });
  for (const f of designDescriptionFolder(input, pages, { exportedAt: process.env.EXPORTED_AT })) fs.writeFileSync(join(sdd, f.path), f.text);
  // The architecture engine over the same graph (empty-component, allocation coverage).
  // Stub policy: every rule at its default "warning"; the real severities come from the gate run.
  const policy = { effective: () => ({ rule: () => ({ severity: "warning" }) }) };
  const ctx = { policy, token: { isCancellationRequested: false }, graph, components: arch.components, requirements: () => [...model.requirements.values()], model, config: model.config };
  let res; try { res = await architectureEngine.run(ctx); } catch (e) { res = { error: String(e.message).slice(0, 200) }; }
  const by = {}; for (const f of res.findings ?? []) by[f.rule] = (by[f.rule] ?? 0) + 1;
  console.log(`components ${components.rows.length} (empty ${components.rows.filter((r) => r.empty).length}); undeclared model allocations ${allocations.undeclared.length}; errors ${arch.errors.length}`);
  for (const r of components.rows) console.log(`  ${r.id}: allocated ${r.allocated.length}, from model ${(r.modelAllocations ?? []).length}`);
  console.log(`architecture engine: ${res.error ?? JSON.stringify(by)} ${JSON.stringify(res.metrics ?? {}).slice(0, 300)}`);
  for (const f of (res.findings ?? []).filter((f) => f.rule === "empty-component")) console.log(`  ${f.rule} ${f.id ?? ""} ${f.message.slice(0, 120)}`);
})().catch((e) => { console.error(e.stack); process.exit(1); });
