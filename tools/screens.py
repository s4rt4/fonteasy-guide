"""Render the guide's screenshots with the app's headless snapshot harness.

    python guide/tools/screens.py [lang ...] [--only name,name]

Needs `cargo build -p fe-ui --example snapshot`, the test corpus (`cargo xtask corpus`) and
Source Serif 4 (OFL) as the sample font in target/guide-cache (see guide/README.md).
Writes guide/src/assets/screens/<lang>/<scenario>.png.
"""

import os
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
EXE = ROOT / "target/debug/examples/snapshot.exe"
SAMPLE = ROOT / "target/guide-cache/serif/source-serif-4.005_Desktop/TTF/SourceSerif4-Regular.ttf"
OUT = ROOT / "guide/src/assets/screens"

SCENARIOS = """
splash home workspace simple light prefs shortcuts newfont palette about dock-left preview export
edit editnew sets addglyphs rename multi problems badges composites parts svgimport open fontinfo
import spacing kerning autospace kerngroups features features-simple features-preview journey tour
newfont-wizard autotrace handwriting emptyglyph masters axes instances variations exportinstances
makevariable transform smallcaps autokern variablebold fontcheck fontcheck-simple kerningaudit
exportprofiles colorfont coloredit colorgradient palettes scripting plugins bracelayers stroke
corners smart lookups inspector sketch
g-overview g-edit g-components g-waterfall g-kerning g-spacing g-features g-fontinfo
""".split()
SCENARIOS += [f"g-menu-{m}" for m in "File Edit Glyph Font Metrics Kerning Features Tools View Window Help".split()]
SCENARIOS += [
    f"g-tool-{t}"
    for t in "select node pen addpoint deletepoint pencil rectangle ellipse polygon knife scissors rotate scale measure anchor metrics kerning text hand zoom".split()
]


def shot(lang: str, name: str) -> str:
    out = OUT / lang / f"{name.lower()}.png"
    env = dict(os.environ, FE_LANG=lang, FE_SAMPLE_FONT=str(SAMPLE))
    flags = 0x00004000 if os.name == "nt" else 0  # BELOW_NORMAL_PRIORITY_CLASS
    r = subprocess.run([str(EXE), name, str(out)], env=env, cwd=ROOT, capture_output=True, text=True, creationflags=flags)
    if r.returncode == 0:
        # 256 colours: a quarter of the size, no visible difference for UI pictures (ImageMagick).
        subprocess.run(["magick", str(out), "-strip", "-colors", "256", f"PNG8:{out}"], check=True, creationflags=flags)
    return f"{'ok ' if r.returncode == 0 else 'ERR'} {lang}/{name}" + ("" if r.returncode == 0 else "\n" + r.stderr[-600:])


def main() -> None:
    args = sys.argv[1:]
    only = None
    if "--only" in args:
        i = args.index("--only")
        only = set(args[i + 1].split(","))
        del args[i : i + 2]
    langs = args or ["en", "id"]
    jobs = [(l, s) for l in langs for s in SCENARIOS if only is None or s in only]
    for l in langs:
        (OUT / l).mkdir(parents=True, exist_ok=True)
    with ThreadPoolExecutor(3) as pool:
        for line in pool.map(lambda j: shot(*j), jobs):
            print(line, flush=True)


if __name__ == "__main__":
    main()
