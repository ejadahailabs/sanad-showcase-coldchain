// Accept Sanad's recommended software profile headless (the code behind the Design panel's "Add the profile" offer).
const { join } = require("node:path");
const [ext, root] = process.argv.slice(2);
const [, , , , ...add] = process.argv;
const { writeSoftwareProfile, loadSoftwareProfile, supportedKinds, addDiagramMarker } = require(join(ext, "dist", "softwareProfile.js"));
(async () => { console.log(JSON.stringify(await writeSoftwareProfile(root)));
  for (const m of add) console.log(m, JSON.stringify(await addDiagramMarker(root, m)));
  const m = await loadSoftwareProfile(root); console.log("markers:", m.join(" ")); console.log("kinds:", supportedKinds(m).join(", ")); })();
// Optional: node tools/profile-write-headless.cjs <ext> <repo> <Marker> … adds diagram-kind markers
// through Sanad's own "Add it to the profile" action (addDiagramMarker).
