"""The framework as this run's tools read it: .ejadah/rew/framework.yaml (what Sanad reads) with
tools/levels.yaml (run-local documentation Sanad has no place for, moved out 2026-09-29) laid over it.
Maps merge key by key, lists position by position. Self-check: python3 tools/fwload.py"""
import pathlib, yaml
ROOT = pathlib.Path(__file__).resolve().parent.parent


def _over(a, b):
    if isinstance(a, dict) and isinstance(b, dict):
        return {**a, **{k: _over(a[k], v) if k in a else v for k, v in b.items()}}
    if isinstance(a, list) and isinstance(b, list) and len(a) == len(b):
        return [_over(x, y) for x, y in zip(a, b)]
    return b


def load():
    fw = yaml.safe_load((ROOT / ".ejadah/rew/framework.yaml").read_text())
    side = yaml.safe_load((ROOT / "tools/levels.yaml").read_text())
    for a, b in zip(fw.get("nodes", []), side.get("nodes", [])):
        assert a["name"] == b["name"], ("tools/levels.yaml nodes out of order with framework.yaml", a["name"], b["name"])
    return _over(fw, side)


if __name__ == "__main__":
    assert _over({"a": 1, "l": [{"x": 1}], "m": {"p": 1}}, {"b": 2, "l": [{"y": 2}], "m": {"q": 2}}) == \
        {"a": 1, "b": 2, "l": [{"x": 1, "y": 2}], "m": {"p": 1, "q": 2}}
    fw = load(); print(f"fwload ok: {len(fw.get('nodes', fw.get('layers', [])))} nodes")
