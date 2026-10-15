"""Build the guide's PDFs: one book per language from the same Markdown as the website.

    python guide/pdf/build.py [en] [id]

Needs Pandoc 3, Typst (target/guide-cache/typst/…/typst.exe) and the OFL fonts in
target/guide-cache/fonts (Source Serif 4, Source Sans 3, Source Code Pro); see guide/README.md.
Writes target/guide/FontEasy-Guide-EN.pdf and FontEasy-Panduan-ID.pdf.
"""

import json
import re
import subprocess
import sys
from pathlib import Path

GUIDE = Path(__file__).resolve().parents[1]
ROOT = GUIDE.parent
CACHE = ROOT / "target/guide-cache"
TYPST = next((CACHE / "typst").glob("*/typst.exe"), None) or "typst"
FONTS = CACHE / "fonts"
BUNDLED_PY = next((ROOT / "target/dist").glob("FontEasy-*-windows-x64/python/python.exe"), None)
BUILD = GUIDE / "pdf/build"
OUT = ROOT / "target/guide"
NAMES = {"en": "FontEasy-Guide-EN.pdf", "id": "FontEasy-Panduan-ID.pdf"}
ROMAN = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"]

ASIDE = re.compile(r"^:::(note|tip|caution|danger)(?:\[(.*)\])?\s*$")


def attr(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"')


def frontmatter(text: str) -> tuple[dict, str]:
    meta = {}
    m = re.match(r"^---\r?\n(.*?)\r?\n---\r?\n", text, re.S)
    if not m:
        return meta, text
    for line in m.group(1).splitlines():
        k, _, v = line.partition(":")
        v = v.strip()
        if len(v) >= 2 and v[0] == v[-1] and v[0] in "'\"":
            v = v[1:-1].replace("''", "'") if v[0] == "'" else v[1:-1].replace('\\"', '"')
        meta[k.strip()] = v
    return meta, text[m.end() :]


def chapter_md(path: Path, slug: str) -> str:
    meta, body = frontmatter(path.read_text(encoding="utf-8"))
    lines = []
    for line in body.splitlines():
        m = ASIDE.match(line)
        if m:
            title = f' title="{attr(m.group(2))}"' if m.group(2) else ""
            line = f'::: {{.aside kind="{m.group(1)}"{title}}}'
        lines.append(line)
    title = meta.get("title", slug)
    desc = meta.get("description", "")
    return f'::::::::: {{.chapter slug="{slug}" title="{attr(title)}" description="{attr(desc)}"}}\n\n' + "\n".join(lines) + "\n\n:::::::::\n\n"


def cover_art(path: Path) -> None:
    """Big letters with their points and handles, as on a glyph editor's canvas."""
    if path.exists():
        return
    if BUNDLED_PY is None:
        sys.exit("cover art needs the release's bundled Python (cargo xtask dist)")
    data = json.loads(
        subprocess.run(
            [str(BUNDLED_PY), str(GUIDE / "tools/glyphsvg.py"), "Ag", "--size", "760", "--x", "40", "--y", "640", "--points"],
            capture_output=True, text=True, check=True,
        ).stdout
    )
    parts = [
        '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000" width="1000" height="1000">',
        f'<g stroke="#9aa0b4" stroke-opacity="0.25" stroke-width="1.5">'
        + "".join(f'<line x1="0" x2="1000" y1="{y}" y2="{y}"/>' for y in data["lines_y"].values())
        + "</g>",
        f'<path d="{data["d"]}" fill="#5b5bf0" fill-opacity="0.16" stroke="#8b8cff" stroke-width="3"/>',
    ]
    for g in data["glyphs"]:
        for c in g.get("contours", []):
            n = len(c)
            for i, p in enumerate(c):
                if not p["on"]:
                    # A handle: a line to the neighbouring on-curve point.
                    for q in (c[(i - 1) % n], c[(i + 1) % n]):
                        if q["on"]:
                            parts.append(f'<line x1="{p["x"]}" y1="{p["y"]}" x2="{q["x"]}" y2="{q["y"]}" stroke="#c9c9ff" stroke-opacity="0.55" stroke-width="1.5"/>')
            for p in c:
                if p["on"]:
                    parts.append(f'<rect x="{p["x"] - 5}" y="{p["y"] - 5}" width="10" height="10" fill="#0f0e3d" stroke="#ffffff" stroke-width="2"/>')
                else:
                    parts.append(f'<circle cx="{p["x"]}" cy="{p["y"]}" r="4.5" fill="#c9c9ff"/>')
    parts.append("</svg>")
    path.write_text("\n".join(parts), encoding="utf-8")


def build(lang: str) -> Path:
    chapters = json.loads((GUIDE / "chapters.json").read_text(encoding="utf-8"))
    docs = GUIDE / "src/content/docs" / ("id" if lang == "id" else "")
    md = []
    for i, part in enumerate(chapters["parts"]):
        title = part[lang].split(" · ", 1)
        number, name = (title[0], title[1]) if len(title) == 2 else ("", title[0])
        md.append(f'::: {{.part number="{attr(number)}" title="{attr(name)}"}}\n:::\n\n')
        for ch in part["chapters"]:
            md.append(chapter_md(docs / part["dir"] / f"{ch}.md", f"{part['dir']}/{ch}"))
    out = BUILD / lang
    out.mkdir(parents=True, exist_ok=True)
    (out / "guide.md").write_text("".join(md), encoding="utf-8")
    subprocess.run(
        [
            "pandoc", str(out / "guide.md"),
            "-f", "commonmark_x-gfm_auto_identifiers",
            "-t", "typst",
            "--lua-filter", str(GUIDE / "pdf/guide.lua"),
            "-M", f"lang={lang}",
            "-M", "assets=/guide/src/assets",
            "--wrap=none",
            "-o", str(out / "body.typ"),
        ],
        check=True,
    )
    body = out / "body.typ"
    # An included file has its own scope: it imports the template's functions itself.
    body.write_text('#import "/guide/pdf/template.typ": *\n' + body.read_text(encoding="utf-8"), encoding="utf-8")
    art = BUILD / "cover-art.svg"
    cover_art(art)
    (out / "main.typ").write_text(
        '#import "/guide/pdf/template.typ": *\n'
        f'#show: guide.with(lang: "{lang}", art: "/guide/pdf/build/cover-art.svg", logo: "/assets/brand/logo.svg")\n'
        '#include "body.typ"\n',
        encoding="utf-8",
    )
    OUT.mkdir(parents=True, exist_ok=True)
    pdf = OUT / NAMES[lang]
    subprocess.run(
        [str(TYPST), "compile", "--root", str(ROOT), "--font-path", str(FONTS), "--ignore-system-fonts", str(out / "main.typ"), str(pdf)],
        check=True,
    )
    return pdf


def main() -> None:
    for lang in sys.argv[1:] or ["en", "id"]:
        print(build(lang))


if __name__ == "__main__":
    main()
