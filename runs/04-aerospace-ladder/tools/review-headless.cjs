// Review round, headless: Sanad's Review read side (status.ts reviewExplorer,
// record.ts evidenceRecord + commitEvidenceRecord) fed a ReviewSnapshot built
// from the local replica 05-reviews/round-N/round.json — the platform half has
// no remote here (FINDINGS F-26). Usage:
//   node tools/review-headless.cjs <ext> <repo> <round.json> open
//   node tools/review-headless.cjs <ext> <repo> <round.json> close <fix-commit>
const { join } = require("node:path");
const fs = require("node:fs");
const { execFileSync } = require("node:child_process");
const { createHash } = require("node:crypto");
const [ext, root, roundPath, mode, fix] = process.argv.slice(2);
const d = (m) => require(join(ext, "dist", m));
const { reviewExplorer } = d("review/status.js");
const { evidenceRecord, commitEvidenceRecord, recordOccasion } = d("review/record.js");
const { reviewDeclaration } = d("review/platform.js");
const { configHash, authorsInRange } = d("gitSource.js");
const YAML = require(join(ext, "node_modules", "yaml"));
const git = (...a) => execFileSync("git", a, { cwd: root, encoding: "utf8" }).trim();
const round = JSON.parse(fs.readFileSync(roundPath, "utf8"));
const R = round.request, who = round.reviewer;
const at = (min) => new Date(Date.parse(R.opened) + min * 60000).toISOString().replace(".000", "");
const decl = reviewDeclaration(YAML.parse(fs.readFileSync(join(root, ".ejadah/rew/config.yaml"), "utf8")));
const ckFolder = decl.checklists, ckFiles = fs.readdirSync(join(root, ckFolder)).sort();
const head = mode === "close" ? git("rev-parse", fix) : R.headCommit;
const files = git("diff", "--name-status", R.baseCommit, head, "--", "03-requirements")
  .split("\n").filter((l) => /MRTM-.*\.md$/.test(l))
  .map((l) => { const [s, p] = l.split("\t"); return { path: p, change: s === "A" ? "added" : "modified" }; });
const threads = round.threads.map(([id, path, sev, kind, body, action, end], i) => {
  const comments = [{ id: `${id}-c1`, author: who, body: `**${sev}** — [${kind}] ${body}`, at: at(i + 1) }];
  if (mode === "close") comments.push(end === "noted"
    ? { id: `${id}-c2`, author: who, body: `Noted — ${action.replace(/^Noted — /, "")}`, at: at(90 + i) }
    : { id: `${id}-c2`, author: R.author, body: `Fixed in ${head.slice(0, 7)} — ${action}`, at: at(60 + i) });
  return { id, path, line: 1, anchorCommit: R.headCommit, resolved: mode === "close", comments };
});
// The reviewer's scope, and at close one acceptance line per requirement file (ADR-0146/0147 shapes).
threads.push({ id: "S1", resolved: false, resolvable: false,
  comments: [{ id: "S1-c1", author: who, body: "sanad-review-scope: full", at: at(0) }] });
if (mode === "close") threads.push({ id: "A1", resolved: false, resolvable: false,
  comments: [{ id: "A1-c1", author: who, at: at(120),
    body: files.map((f) => `sanad-review-accept: ${f.path} @ ${head.slice(0, 7)}`).join("\n") }] });
const commits = git("rev-list", "--reverse", `${R.baseCommit}..${head}`).split("\n");
const events = [{ kind: "review-requested", actor: R.author, at: R.opened }, { kind: "commented", actor: who, at: at(20) }];
if (mode === "close") events.push({ kind: "approved", actor: who, at: at(121), commit: head });
const snapshot = { request: { platform: R.platform, id: R.id, title: R.title, url: R.url, branch: R.branch,
  baseCommit: R.baseCommit, headCommit: head, commits, author: R.author,
  state: mode === "close" ? "merged" : "open", decision: mode === "close" ? "approved" : "review-required" },
  viewerLogin: who, reviewers: [who], files,
  threads, events, readAt: mode === "close" ? at(122) : at(30) };
const checklists = { folder: ckFolder, files: ckFiles };
(async () => {
const history = await authorsInRange(root, R.baseCommit, head);
const ex = reviewExplorer(snapshot, undefined, history, checklists, decl);
const rows = []; const walk = (f) => { rows.push(...f.files); f.folders.forEach(walk); }; walk(ex.root);
const count = {}; for (const r of rows) count[r.status.status] = (count[r.status.status] ?? 0) + 1;
console.log(`# Review explorer (${mode}) — request ${R.platform}-${R.id} @ ${head.slice(0, 7)}`);
console.log(`files: ${rows.length}  status counts: ${JSON.stringify(count)}`);
for (const r of rows) if (threads.some((t) => t.path === r.file.path)) console.log(`${r.status.status.padEnd(22)} ${r.file.path}`);
if (ex.findings.length) console.log("findings:\n- " + ex.findings.join("\n- "));
if (mode !== "close") return;
  const stamp = { toolVersion: require(join(ext, "package.json")).version, configHash: await configHash(root),
    inputHash: createHash("sha256").update(JSON.stringify(snapshot)).digest("hex"),
    checklistShas: new Map(ckFiles.map((n) => [`${ckFolder}/${n}`, git("hash-object", join(ckFolder, n))])),
    checklists, declaration: decl };
  const env = { ...process.env, GIT_AUTHOR_NAME: "Masood", GIT_AUTHOR_EMAIL: "ejadahailabs@gmail.com",
    GIT_COMMITTER_NAME: "Masood", GIT_COMMITTER_EMAIL: "ejadahailabs@gmail.com" };
  const store = { write: async (p, t) => { fs.mkdirSync(join(root, p, ".."), { recursive: true }); fs.writeFileSync(join(root, p), t); },
    git: async (args) => execFileSync("git", args, { cwd: root, env, encoding: "utf8" }) };
  fs.writeFileSync(join(root, "05-reviews/round-1/snapshot-close.json"), JSON.stringify(snapshot, null, 1) + "\n");
  for (const occasion of ["approval", "merge"]) {
    const rec = evidenceRecord(snapshot, occasion, at(125), stamp, history);
    const p = await commitEvidenceRecord(store, rec, decl.records);
    console.log(`${occasion} record: ${p ?? "(already on the branch)"} — anomalies ${rec.anomalies.length}, open ${JSON.stringify(rec.open_anomalies)}, verdict ${rec.verdict}`);
  }
  console.log(`recordOccasion(snapshot) = ${recordOccasion(snapshot)}`);
})().catch((e) => { console.error(e.stack); process.exit(1); });
