# FontEasy user guide

The guide in English and Indonesian, published at <https://s4rt4.github.io/fonteasy-guide/> and as
two PDF books (attached to each GitHub release). One set of Markdown files makes both.

- `src/content/docs/<part>/<chapter>.md`: English; `src/content/docs/id/…`: Indonesian.
- `chapters.json`: the parts and chapters in order (the website's sidebar and the PDF).
- `STYLE.md`: how to write a chapter (Markdown conventions, pictures, glossary anchors).
- `src/assets/screens/<lang>/`: screenshots rendered from the app; `src/assets/diagrams/<lang>/`:
  SVG diagrams.

## Website

```
cd guide
npm ci
npm run dev      # http://localhost:4321/fonteasy/
npm run build    # into guide/dist
```

## Publishing

FontEasy's sources are private; the guide lives in the public repository
[s4rt4/fonteasy-guide](https://github.com/s4rt4/fonteasy-guide), which is this `guide/` folder
split out of the FontEasy repository. From the FontEasy repository:

```
git subtree split --prefix guide -b guide-public
git push https://github.com/s4rt4/fonteasy-guide.git guide-public:main
```

A push there publishes the site (`.github/workflows/pages.yml`). Releases of
s4rt4/fonteasy-guide carry the PDFs and the FontEasy installer and zip, so readers can download
them.

## Screenshots

They come from the app itself (`crates/fe-ui/examples/snapshot.rs`, with `FE_LANG` for the
interface language and `FE_SAMPLE_FONT` for the font shown):

```
cargo xtask corpus                                  # test fonts used by some scenarios
cargo build -p fe-ui --example snapshot
python guide/tools/screens.py [en] [id] [--only name,name]
```

The sample font is Source Serif 4 (OFL), unpacked to
`target/guide-cache/serif/source-serif-4.005_Desktop/` from
<https://github.com/adobe-fonts/source-serif/releases> (4.005R, Desktop zip). ImageMagick
(`magick`) reduces each picture to 256 colours.

## PDF

```
python guide/pdf/build.py [en] [id]   # → target/guide/FontEasy-Guide-EN.pdf, FontEasy-Panduan-ID.pdf
```

Needs Pandoc 3 and Typst 0.15 (`target/guide-cache/typst/typst-x86_64-pc-windows-msvc/typst.exe`,
from <https://github.com/typst/typst/releases>), and these OFL fonts in
`target/guide-cache/fonts`: Source Serif 4 and Source Sans 3 (TTF, Adobe's GitHub releases) and
Source Code Pro (from the corpus). The cover art is drawn from Source Serif 4 with
`tools/glyphsvg.py`, which needs fontTools: the release build's bundled Python has it
(`cargo xtask dist`).

`pdf/guide.lua` turns the guide's conventions into Typst (pictures in the right language, asides,
keys, links between chapters); `pdf/template.typ` is the book design.
