#!/usr/bin/env bash
# Run every check the Sanad CLI offers and keep the output as files.
# Usage: tools/sanad-checks.sh <out-dir>   (repo-relative, e.g. 13-assessment/sanad-runs/phase-0)
# Reports refuse a dirty tree, so they read a throwaway snapshot commit of the
# working tree (HEAD is not moved; the snapshot is unreferenced).
set -u
ROOT=$(cd "$(dirname "$0")/.." && pwd)
EXT=${SANAD_EXT:-$HOME/.cache/tmp-dogfood1/vsix/extension}
OUT="$ROOT/$1"; mkdir -p "$OUT"
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
erew() { cap node "$EXT/dist/cli-entry.js" "$ROOT" "$@"; }
IDX=$(mktemp -p "$HOME/.cache/tmp-run4"); cp "$(git -C "$ROOT" rev-parse --absolute-git-dir)/index" "$IDX"
SNAP=$(cd "$ROOT" && GIT_INDEX_FILE=$IDX git add -A && T=$(GIT_INDEX_FILE=$IDX git write-tree) \
  && git -c user.name=Masood -c user.email=mohd.masood26@gmail.com commit-tree "$T" -p HEAD -m snapshot)
rm -f "$IDX"
echo "snapshot $SNAP" > "$OUT/SUMMARY.txt"
run() { local name=$1; shift; erew "$@" > "$OUT/$name" 2> "$OUT/$name.stderr"; rc=$?; echo "$name rc=$rc" >> "$OUT/SUMMARY.txt"; [ "$rc" != 0 ] || [ "$name" = gate.txt ] || rm -f "$OUT/$name.stderr"; }
run gate.txt --gate warning
run check-config.txt --check-config
run ledger.json --ledger-json
run evidence.json --json --quiet
for r in $(erew --list-reports 2>/dev/null); do run "report-$r.md" --report "$r" --at "$SNAP"; done
run report-requirements-trace.md --report requirements --trace --layout document --at "$SNAP"
run report-traceability-audit.csv --report traceability-audit --csv --at "$SNAP"
run report-test-coverage.csv --report test-coverage --csv --at "$SNAP"
run report-traceability-audit-since-REQ-BL-1.md --report traceability-audit --baseline REQ-BL-1 --at "$SNAP"
run diff-config-since-REQ-BL-1.txt --diff-config REQ-BL-1
cat "$OUT/SUMMARY.txt"
