import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from p8data import ERRORS, EVENTS, MODULES
R = str(__import__("pathlib").Path(__file__).resolve().parent.parent)
pas = lambda s: s[0].upper() + s[1:]
# 1. codes package
L = ["// MRTM error codes and event kinds — IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces).",
     "// Each enumeration value names its C constant; the same terms are in 01-data-dictionary/data-dictionary.md",
     "// (Error Code, Event Kind). Generated from one table with the contracts (tools/detail-design.py).",
     "private import ScalarValues::*;", "", "package MrtmSwCodes {", "",
     "    doc /* What can go wrong (ErrorCode) and what the history records (EventKind). */", "",
     "    enum def ErrorCode {", "        doc /* C type mrtm_err_t (int32_t). */"]
for s, c, v, m in ERRORS: L.append(f"        enum {s}; // {c} = {v}: {m}")
L += ["    }", "", "    enum def EventKind {", "        doc /* C type mrtm_event_kind_t (uint8_t), stored in EventRecord.kind. */"]
for s, c, v, m, r in EVENTS: L.append(f"        enum {s}; // {c} = {v}: {m} ({r})")
L += ["    }", "}", ""]
open(f"{R}/06-design/software/MrtmSwCodes.sysml", "w").write("\n".join(L))
# 2. contracts package
L = ["// MRTM detailed design — IEC 62304 §5.4.1 (units), §5.4.2 (detailed design), §5.4.3 (interface design).",
     "// One #Interface def per unit: its C (or C-callable C++) functions as actions with typed parameters;",
     "// the exact C signature, pre/post conditions and algorithm are in each action's doc and in",
     "// 10-src/firmware/components/<unit>/contracts.md. Display classes (C++, ADR-0022) as #Class defs.",
     "// Generated with the contracts from one table (tools/detail-design.py).",
     "private import ScalarValues::*;", "private import SoftwareProfile::*;", "private import ProjectRequirements::*;",
     "private import MrtmInterfaces::*;", "private import MrtmSoftware::*;", "private import MrtmSwCodes::*;", "",
     "package MrtmSwDetail {", "", "    doc /* The unit contracts of the monitoring firmware, and the display's classes. */", "",
     "    // The two ends every unit contract has: the unit that provides the functions and the unit that calls them.",
     "    port def UnitPort;", ""]
for cid, folder, lang, purpose, reqs, types, funcs in MODULES:
    L.append(f"    #Interface interface def {pas(cid)}Api {{")
    L.append(f"        doc /* {purpose} Unit {folder} ({lang}); contract 10-src/firmware/components/{folder}/contracts.md. */")
    L.append("        end provider : UnitPort;")
    L.append("        end caller : ~UnitPort;")
    for name, sig, params, pre, post, errs, algo in funcs:
        L.append(f"        action '{name}' {{")
        d = f"C: {sig} Pre: {pre} Post: {post} Errors: {errs}." + (f" Algorithm: {algo}" if algo else "")
        L.append(f"            doc /* {d.replace('*/', '* /')} */")
        for dr, pn, t in params: L.append(f"            {dr} {pn} : {t};")
        L.append("        }")
    L.append("    }"); L.append("")
L += """    // ---- Display classes (C++17, no exceptions, no RTTI, no heap after start-up) ----
    #SoftwareProfile::Class part def FrameBuffer {
        doc /* 128 x 64 monochrome, 1024 bytes, page-ordered as the SSD1306 expects; tracks dirty pages. */
        attribute widthPx : Natural = 128;
        attribute heightPx : Natural = 64;
        attribute dirtyPages : Natural;
        action clear;
        action setPixel { in x : Natural; in y : Natural; in on : Boolean; }
    }
    #SoftwareProfile::Class part def Widget {
        doc /* One thing on the screen; abstract in C++ (pure virtual draw). Not marked `abstract` here: Sanad cannot read `abstract #Marker part def` (F-78). Screen calls draw() only when dirty. */
        attribute x : Natural;
        attribute y : Natural;
        attribute dirty : Boolean;
        abstract action draw { in fb : FrameBuffer; }
    }
    #SoftwareProfile::Class part def TextWidget :> Widget {
        doc /* Temperature digits: 32 px glyphs = 5.1 mm on the 0.96 in panel (MRTM-IFC-004); 0.1 degC (MRTM-SYS-011). */
        attribute glyphHeightPx : Natural = 32;
        action setTenths { in tenths : Integer; in valid : Boolean; }
        action :>> draw;
    }
    #SoftwareProfile::Class part def BannerWidget :> Widget {
        doc /* One line of text: excursion warning, probe fault, calibration due, log capacity, band at power-up. */
        action setMessage { in messageId : Natural; }
        action :>> draw;
    }
    #SoftwareProfile::Class part def IconWidget :> Widget {
        doc /* Bell (alarm silenced), battery (on battery). */
        action setIcon { in iconId : Natural; }
        action :>> draw;
    }
    #SoftwareProfile::Class part def Ssd1306Driver {
        doc /* Sends changed pages over I2C (100 ms timeout); recovers the bus with 9 SCL pulses and a re-init (MRTM-SAF-021). */
        attribute timeoutMs : Natural = 100;
        action sendPages { in fb : FrameBuffer; out ret : ErrorCode; }
        action recoverBus { out ret : ErrorCode; }
    }
    #SoftwareProfile::Class part def Screen {
        doc /* Owns the widgets and the frame buffer; maps display_model_t to widgets (display_mgr_update) and renders (display_mgr_tick). `Class` is written qualified: a bare #Class resolves to the kernel library's Class (F-78). */
        part fb : FrameBuffer;
        part temperature : TextWidget;
        part banner : BannerWidget;
        part icon : IconWidget;
        part driver : Ssd1306Driver;
        action renderFrame;
    }

    // ---- The unit contracts as design elements, each satisfying the requirements its unit carries ----
    #Component part def MrtmUnitContracts {
        doc /* IEC 62304 §5.4.2: every unit's interface is a design element traced to the requirements it serves. */
""".split("\n")
for cid, folder, lang, purpose, reqs, types, funcs in MODULES:
    L.append(f"        part {cid}Api : {pas(cid)}Api;")
L.append("        part screen : Screen;")
for cid, folder, lang, purpose, reqs, types, funcs in MODULES:
    for r in reqs: L.append(f"        satisfy '{r}' by {cid}Api;")
for r in ["MRTM-IFC-004", "MRTM-SYS-011", "MRTM-SAF-021"]: L.append(f"        satisfy '{r}' by screen;")
L += ["    }", "}", ""]
open(f"{R}/06-design/software/MrtmSwDetail.sysml", "w").write("\n".join(L))
# 3. contracts.md per unit
for cid, folder, lang, purpose, reqs, types, funcs in MODULES:
    d = f"{R}/10-src/firmware/components/{folder}"; os.makedirs(d, exist_ok=True)
    o = [f"# Contract — `{folder}` ({lang})", "",
         f"> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::{pas(cid)}Api` from one table (tools/detail-design.py).",
         f"> **Component:** `{cid}` (.ejadah/rew/architecture/{cid}.md) · **Satisfies:** {', '.join(reqs)}", "",
         f"**What it does:** {purpose}", "",
         "**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).", ""]
    if types:
        o += ["## Types", "", "```c"] + types + ["```", ""]
    o += ["## Functions", "", "| Function (C) | Pre-condition | Post-condition | Errors |", "|---|---|---|---|"]
    for name, sig, params, pre, post, errs, algo in funcs:
        o.append(f"| `{sig}` | {pre} | {post} | {errs} |")
    al = [(n, a) for n, _, _, _, _, _, a in funcs if a]
    if al:
        o += ["", "## Algorithms", ""] + [f"- **`{n}`** — {a}" for n, a in al]
    o += ["", "## Unit tests to write in Phase 9 (Unity, ADR-0023)", "",
          f"One test file `test/test_{folder}.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.", ""]
    open(f"{d}/contracts.md", "w").write("\n".join(o))
print("ok", len(MODULES), sum(len(m[6]) for m in MODULES), "functions", sum(len(m[4]) for m in MODULES) + 3, "satisfy")
