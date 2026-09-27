#!/usr/bin/env bash
# Render a Sanad view SVG to PNG outside VS Code (headless Chrome), with Sanad's own picture CSS
# and light-theme defaults for the VS Code variables. Usage: tools/render-view.sh <view.svg> <out.png>
set -euo pipefail
svg="$1"; out="$2"; here="$(cd "$(dirname "$0")" && pwd)"
tmp="$(mktemp -d "${TMPDIR:-$HOME/.cache}/render-XXXX")"
{ echo '<!doctype html><html data-theme="light"><head><meta charset=utf-8><style>'; cat "$here/picture.css"; echo '</style></head><body>'; cat "$svg";
  echo '<script>const s=document.getElementById("pic");const b=s.getBBox();const p=20;s.setAttribute("viewBox",`${b.x-p} ${b.y-p} ${b.width+2*p} ${b.height+2*p}`);s.setAttribute("width",Math.ceil(b.width+2*p));s.setAttribute("height",Math.ceil(b.height+2*p));</script></body></html>'; } > "$tmp/v.html"
google-chrome --headless=new --disable-gpu --no-sandbox --hide-scrollbars --virtual-time-budget=1500 --window-size=3200,2400 --screenshot="$out" "file://$tmp/v.html" >/dev/null 2>&1
rm -rf "$tmp"; echo "$out"
