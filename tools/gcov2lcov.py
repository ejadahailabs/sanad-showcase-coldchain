#!/usr/bin/env python3
"""gcov (gcc --coverage) -> one LCOV .info file over the product sources, for Sanad's coverage producer
(producers.coverage, LCOV is the one format it reads). lcov/gcovr are not installed on this box, and a
few lines of stdlib do the conversion. Paths in SF: are repository-relative, like the symbol index.
Usage (repo root, after `make test`): python3 tools/gcov2lcov.py <out.info>"""
import glob, json, pathlib, subprocess, sys
ROOT = pathlib.Path(__file__).resolve().parent.parent
SRC = ROOT / "10-src"
out, lines_total, lines_hit, fn_total, fn_hit = [], 0, 0, 0, 0
for src in sorted(glob.glob(str(SRC / "firmware/components/*/src/*.c*"))):
    rel = pathlib.Path(src).relative_to(SRC)
    objdir = SRC / "build" / rel.parent
    if not list(objdir.glob(rel.stem + ".gcda")): continue
    j = subprocess.run(["gcov", "--json-format", "--stdout", "-o", str(objdir), str(rel)], cwd=SRC, capture_output=True, text=True).stdout
    for doc in filter(None, j.splitlines()):
        for f in json.loads(doc)["files"]:
            if f["file"] != str(rel): continue
            out.append(f"TN:host\nSF:10-src/{rel}")
            for fn in f["functions"]:
                out.append(f"FN:{fn['start_line']},{fn['demangled_name']}")
                out.append(f"FNDA:{fn['execution_count']},{fn['demangled_name']}")
            out.append(f"FNF:{len(f['functions'])}\nFNH:{sum(1 for fn in f['functions'] if fn['execution_count'])}")
            fn_total += len(f["functions"]); fn_hit += sum(1 for fn in f["functions"] if fn["execution_count"])
            da = sorted({l["line_number"]: l["count"] for l in f["lines"]}.items())
            out += [f"DA:{n},{c}" for n, c in da]
            out.append(f"LF:{len(da)}\nLH:{sum(1 for _, c in da if c)}\nend_of_record")
            lines_total += len(da); lines_hit += sum(1 for _, c in da if c)
pathlib.Path(sys.argv[1]).parent.mkdir(parents=True, exist_ok=True)
pathlib.Path(sys.argv[1]).write_text("\n".join(out) + "\n")
print(f"coverage: lines {lines_hit}/{lines_total} ({100 * lines_hit // max(lines_total, 1)} %), functions {fn_hit}/{fn_total}")
