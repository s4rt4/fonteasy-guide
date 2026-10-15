"""Letter shapes for the guide's diagrams, as SVG path data from Source Serif 4 (OFL).

Run it with the Python bundled in the release folder (it has fontTools):

    target/dist/FontEasy-1.5.0-windows-x64/python/python.exe guide/tools/glyphsvg.py "AV" --size 300 [--x 40 --y 320] [--kern 0] [--points]

Prints JSON: the path `d` (y pointing down, baseline at --y), each glyph's advance and left
x, the font's metrics scaled to --size (unitsPerEm = --size), and with --points the on/off-curve
points of each contour (for drawing nodes and handles).
"""

import argparse
import json
from pathlib import Path

from fontTools.pens.recordingPen import RecordingPen
from fontTools.pens.svgPathPen import SVGPathPen
from fontTools.pens.transformPen import TransformPen
from fontTools.ttLib import TTFont

ROOT = Path(__file__).resolve().parents[2]
FONT = ROOT / "target/guide-cache/serif/source-serif-4.005_Desktop/TTF/SourceSerif4-Regular.ttf"


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("text")
    ap.add_argument("--size", type=float, default=300.0, help="em size in SVG units")
    ap.add_argument("--x", type=float, default=0.0)
    ap.add_argument("--y", type=float, default=None, help="baseline y (default: ascender)")
    ap.add_argument("--kern", type=float, default=0.0, help="extra space between letters, in font units")
    ap.add_argument("--points", action="store_true")
    ap.add_argument("--font", default=str(FONT))
    a = ap.parse_args()

    font = TTFont(a.font)
    upm = font["head"].unitsPerEm
    s = a.size / upm
    os2, hhea = font["OS/2"], font["hhea"]
    base_y = a.y if a.y is not None else hhea.ascent * s
    cmap = font.getBestCmap()
    gs = font.getGlyphSet()
    pen = SVGPathPen(gs, ntos=lambda v: f"{v:.1f}".rstrip("0").rstrip("."))
    x = a.x
    glyphs = []
    for ch in a.text:
        name = cmap.get(ord(ch))
        if name is None:
            continue
        g = gs[name]
        tp = TransformPen(pen, (s, 0, 0, -s, x, base_y))
        g.draw(tp)
        info = {"char": ch, "glyph": name, "x": round(x, 2), "advance": round(g.width * s, 2)}
        if a.points:
            rec = RecordingPen()
            g.draw(rec)
            contours, cur = [], []
            for op, args in rec.value:
                if op in ("moveTo", "lineTo", "qCurveTo", "curveTo"):
                    pts = list(args)
                    for i, p in enumerate(pts):
                        if p is None:
                            continue
                        on = op in ("moveTo", "lineTo") or i == len(pts) - 1
                        cur.append({"x": round(x + p[0] * s, 2), "y": round(base_y - p[1] * s, 2), "on": on})
                elif op in ("closePath", "endPath"):
                    contours.append(cur)
                    cur = []
            info["contours"] = contours
        glyphs.append(info)
        x += (g.width + a.kern) * s
    m = lambda v: round(base_y - v * s, 2)
    print(
        json.dumps(
            {
                "d": pen.getCommands(),
                "glyphs": glyphs,
                "end_x": round(x, 2),
                "lines_y": {
                    "baseline": m(0),
                    "x_height": m(os2.sxHeight),
                    "cap_height": m(os2.sCapHeight),
                    "ascender": m(hhea.ascent),
                    "descender": m(hhea.descent),
                },
            },
            indent=1,
        )
    )


if __name__ == "__main__":
    main()
