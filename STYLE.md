# Writing the FontEasy guide

The guide is one set of Markdown chapters per language. The same files build the website
(Astro Starlight, `guide/`) and the two PDFs (Pandoc → Typst, `guide/pdf/`). Follow these rules
exactly so both builds work.

## Readers and voice

- The reader has **never made a font**. They may not know what a glyph, a Bézier curve or kerning
  is. Explain every font term **the first time it appears in a chapter**, in plain words, and link
  it to the glossary. Use everyday comparisons (a font is like a set of rubber stamps, kerning is
  like nudging two cut-out letters closer).
- Friendly, calm, encouraging. Short sentences. Second person ("you" / "Anda").
- Be practical: numbered steps for every procedure ("1. Choose **Font › Font Info…**").
  After the steps, say what the reader should now see.
- Never invent features, menu items, shortcuts or settings. Check every one in the source code
  (see "Where the facts are"). If unsure, leave it out.
- English and Indonesian are both written **natively**, not word-for-word translations. Same
  sections, same pictures, same facts.
- Indonesian: use "Anda", standard Bahasa Indonesia (EYD). Keep established technical terms in
  English and italicise them the first time with a short Indonesian explanation, e.g. "*kerning*
  (pengaturan jarak antar pasangan huruf)". Glyph = "glyph" (not "glif").

## UI names

- English chapters use the exact English UI text from the code (`tl!("…")` strings, menus in
  `crates/fe-ui/src/catalog.rs`).
- Indonesian chapters use the exact **Indonesian UI text** shown by the app in Indonesian. The
  translations are in `crates/fe-ui/src/i18n/id.tsv` (`English<TAB>Indonesian`). Look up every
  menu, button, panel and dialog name there. Screenshots in the Indonesian guide show the
  Indonesian interface, so the names must match.
- Write UI names in bold. Menu paths with ›: **File › Export Font…** / **Berkas › …**.
- Keys: `<kbd>Ctrl</kbd>+<kbd>S</kbd>`. Shortcuts are in `crates/fe-ui/src/catalog.rs`
  (`Cmd` there means <kbd>Ctrl</kbd> on Windows). FontEasy is a Windows app; mention Ctrl, not ⌘.

## Files

- English: `guide/src/content/docs/<part>/<chapter>.md`
- Indonesian: `guide/src/content/docs/id/<part>/<chapter>.md`
- The chapter list and order is `guide/chapters.json`. Do not add or rename chapters.
- Frontmatter, exactly these two keys:

  ```yaml
  ---
  title: Kerning
  description: One sentence that says what this chapter teaches.
  ---
  ```

  The title is the chapter title (no "Chapter 12"; numbering is added by the PDF).
- Body starts with an introduction paragraph (no H1). Use `##` for sections, `###` for
  subsections, `####` rarely. Never skip levels.

## Markdown you may use

Plain CommonMark + GFM tables, plus:

- **Pictures**: an image alone in its own paragraph; the alt text is the caption shown under it
  (one full sentence that says what to look at).
  - Screenshot: `![The glyph editor with the Node tool: square points sit on the outline, round handles pull the curve.](screen:g-edit)`
  - Diagram: `![The baseline, x-height and cap height of three letters.](diagram:type-basics-vertical-metrics)`

  Write `screen:` / `diagram:` names exactly; the build picks the file in the page's language.
- **Asides** (boxes), exactly this form, nothing nested inside except paragraphs and lists:

  ```
  :::tip[Try it]
  Text.
  :::
  ```

  Kinds: `note`, `tip`, `caution`, `danger`. The `[Title]` is optional.
- **Links**: to a chapter `[kerning](/spacing/kerning/)`, to a section `/spacing/kerning/#kerning-groups`,
  to the glossary `[sidebearing](/reference/glossary/#sidebearing)`. Always start with `/`,
  never add `/id/` or `/fonteasy/` (the build adds them). Section anchors are the heading text
  lowercased with spaces → hyphens and punctuation removed (GitHub style); link only to headings
  that exist.
- Tables: GFM pipe tables, short cell text.
- Code: fenced blocks with a language (```` ```fea ````, ```` ```python ````). Inline `code` for
  file names, glyph names (`a.sc`), feature tags (`liga`), Unicode (`U+0041`).
- `<kbd>` is the only HTML allowed. No MDX, no components, no HTML comments, no raw HTML.

## Chapter shape

1. Introduction: what this chapter is about and why it matters (2–4 short paragraphs), then a
   short list "In this chapter you will learn…" / "Dalam bab ini Anda akan mempelajari…".
2. Concept sections: explain ideas first (with diagrams), then the FontEasy way (with screenshots).
3. Step-by-step procedures.
4. Tips, common mistakes (`:::caution`), and what to do when something goes wrong.
5. `## Summary` / `## Ringkasan`: a bulleted recap.
6. `## Try it yourself` / `## Coba sendiri`: one or two small exercises.

Aim for the word count you were given per chapter (it may run longer; the PDF must reach at least
200 pages per language). Plenty of pictures: a screenshot or diagram every few paragraphs.

## Diagrams

Draw concept pictures as SVG files, one per language with the same drawing and translated labels:
`guide/src/assets/diagrams/en/<name>.svg` and `guide/src/assets/diagrams/id/<name>.svg`.
Name them `<chapter>-<what>` (e.g. `kerning-av-pair`) so names never collide.

- `viewBox="0 0 800 H"` (H as needed, 300–600), `width="800"`, no fixed background (the site puts
  diagrams on white). Draw for a white background.
- Colours: ink `#1f2330`, navy `#0f0e3d`, accent `#5b5bf0`, accent light `#c9c9ff`, red `#e63946`,
  green `#2a9d8f`, orange `#f4a261`, grey lines `#9aa0b4`, light fill `#eef0f7`.
- Text: `font-family="'Source Sans 3', 'Segoe UI', Arial, sans-serif"` (quoted: an unquoted name with a digit is invalid CSS), at least `font-size="18"` for
  labels; use `text-anchor` for alignment. Keep labels short.
- Letterforms must be real outlines, not `<text>`: get SVG path data from Source Serif 4 with

  ```
  target/dist/FontEasy-1.5.0-windows-x64/python/python.exe guide/tools/glyphsvg.py "AV" --size 300 --x 40 --y 330 [--kern -60] [--points]
  ```

  It prints JSON: `d` (path data), each glyph's `x`/`advance`, `lines_y` (baseline, x_height,
  cap_height, ascender, descender) and with `--points` every on-curve (`on: true`) and off-curve
  point, for drawing nodes (squares/circles) and handles (thin lines from the off-curve point to
  its on-curve neighbour). Fill letters with `#1f2330` or `#c9c9ff` with a `#5b5bf0` outline.
- Valid, self-contained SVG: no external images, fonts, CSS or scripts; no `<foreignObject>`.

## Screenshots

Rendered from the app by `guide/tools/screens.py` into `guide/src/assets/screens/<lang>/<name>.png`
(1440×900, dark theme unless noted). Look at a picture with the Read tool before you use it, and
describe what is really in it. Available names:

| name | what it shows |
|---|---|
| `splash` | The splash screen while FontEasy starts |
| `home` | The Home screen: no font open, new/open actions, recent files |
| `workspace` | Pro mode with a new empty font "Nusantara Sans": Overview grid, panels |
| `simple` | The same in Simple mode |
| `light` | The light appearance |
| `prefs` | The Preferences window |
| `shortcuts` | The keyboard shortcuts editor |
| `newfont` | The New Font dialog |
| `palette` | The command palette, searching "mode" |
| `about` | The About window |
| `dock-left` | Panels moved to the left side |
| `preview` | Preview panel showing "HAVANA LIVES" in Mutator Sans |
| `export` | The Export Font dialog |
| `edit` | Glyph editor: "R" of Mutator Sans, a few points selected |
| `editnew` | Glyph editor: an "O" drawn from two ellipses, Node tool |
| `sets` | Overview filtered by a glyph set |
| `addglyphs` | The Add Glyphs dialog |
| `rename` | The Rename Glyph dialog |
| `multi` | Several glyphs selected and marked green, rename dialog |
| `problems` | Editor: an "H" with overlapping contours, Validation panel listing problems |
| `badges` | Overview with problem badges on glyphs, Validation panel |
| `composites` | The Generate Composites dialog |
| `parts` | Editor: "adieresis" built from "a" and "dieresiscomb" with anchors |
| `svgimport` | Import SVG dialog with a synced folder of artboard SVGs |
| `open` | Mutator Sans designspace opened: Overview |
| `fontinfo` | The Font Info dialog (Mutator Sans) |
| `import` | Source Code Pro OTF opened (imported binary font) |
| `spacing` | The Metrics (spacing) window |
| `kerning` | The Kerning window, text "HAVANA" |
| `autospace` | The Auto Spacing dialog |
| `kerngroups` | The kerning groups (classes) dialog |
| `features` | Feature code editor (Code view) with an error found |
| `features-simple` | Features in Simple mode |
| `features-preview` | Preview with feature toggles (c2sc on), "OFFICE SAFARI" |
| `journey` | Simple mode: the Font Journey checklist |
| `tour` | The first-run guided tour |
| `newfont-wizard` | New Font Wizard (step 3) |
| `autotrace` | Autotrace dialog with a brush-drawn "O" image |
| `handwriting` | Handwriting wizard: a scanned template page read into letters |
| `emptyglyph` | Simple mode: editing an empty glyph "R" |
| `masters` | The Masters dialog (Mutator Sans) |
| `axes` | The Masters dialog, Axes tab with an axis map |
| `instances` | The Masters dialog, instances |
| `variations` | Editing "R" with the Variations panel slider and preview |
| `exportinstances` | The Export Instances dialog |
| `makevariable` | The Make Variable dialog |
| `transform` | The Transform Glyphs dialog (Bolder/Lighter) on Source Serif |
| `smallcaps` | The Make Small Caps dialog |
| `autokern` | The Auto-Kerning dialog |
| `variablebold` | A font made variable: weight slider, bold master drawn |
| `fontcheck` | Font Check results panel |
| `fontcheck-simple` | "Check My Font" in Simple mode |
| `kerningaudit` | Kerning Audit results |
| `exportprofiles` | The Export Profiles dialog |
| `colorfont` | A colour font in the Overview, Color panel |
| `coloredit` | Editing colour glyph "A", Color panel with layers |
| `colorgradient` | Editing a gradient on "B" with handles on the canvas |
| `palettes` | The Color Palettes dialog |
| `scripting` | The Scripting panel after running an example script |
| `plugins` | The Plugins window |
| `bracelayers` | An intermediate (brace) layer of "A", Layers panel |
| `stroke` | A stroke effect on "n" with a flat nib, Drawing panel |
| `corners` | Corner effects (round, chamfer, ink trap) on "E" |
| `smart` | Smart components: a "T" made of a stretchable bar |
| `lookups` | Features › Lookups view: visual lookup editor |
| `inspector` | Features › Inspector view: shaping inspector steps |
| `sketch` | The Sketchboard tab with pencil strokes |
| `g-overview` | Source Serif 4 open: Overview grid with real letters |
| `g-edit` | Editing "a" of Source Serif with the Node tool: points, handles, metrics lines |
| `g-components` | Editing "aacute", a composite glyph |
| `g-waterfall` | Preview panel in waterfall mode |
| `g-kerning` | Kerning window with "AVATAR" |
| `g-spacing` | Metrics window for "n" |
| `g-features` | Feature code of an imported font, no problems, feature toggles in the preview |
| `g-fontinfo` | Font Info of Source Serif 4 |
| `g-menu-file`, `g-menu-edit`, `g-menu-glyph`, `g-menu-font`, `g-menu-metrics`, `g-menu-kerning`, `g-menu-features`, `g-menu-tools`, `g-menu-view`, `g-menu-window`, `g-menu-help` | That top menu open |
| `g-tool-select`, `g-tool-node`, `g-tool-pen`, `g-tool-addpoint`, `g-tool-deletepoint`, `g-tool-pencil`, `g-tool-rectangle`, `g-tool-ellipse`, `g-tool-polygon`, `g-tool-knife`, `g-tool-scissors`, `g-tool-rotate`, `g-tool-scale`, `g-tool-measure`, `g-tool-anchor`, `g-tool-metrics`, `g-tool-kerning`, `g-tool-text`, `g-tool-hand`, `g-tool-zoom` | Editing "O" with that tool chosen: its options bar and hint at the top, the toolbox on the left |

If a picture you need does not exist, describe it in words or draw a diagram; list missing
screenshots you would have liked in your final report.

## Glossary terms

The glossary (`/reference/glossary/`) has one `###` heading per term below, in both languages
(the heading is the English term in both; Indonesian explanation in the body). Link only to these
anchors:

`advance-width`, `alternate`, `anchor`, `aperture`, `ascender`, `autosave`, `auto-kerning`,
`axis`, `baseline`, `bezier-curve`, `bitmap-font`, `bold`, `bowl`, `brace-layer`, `bracket-layer`,
`cap-height`, `cff`, `character`, `character-set`, `code-point`, `color-font`, `colr-and-cpal`,
`component`, `composite-glyph`, `contour`, `contour-direction`, `contrast`, `corner-point`,
`counter`, `cubic-curve`, `descender`, `designspace`, `diacritic`, `display-font`, `em`,
`export`, `extreme-point`, `family`, `feature-code`, `font`, `font-file`, `font-format`,
`font-license`, `glyph`, `glyph-name`, `glyph-set`, `gpos`, `gsub`, `guide`, `handle`,
`hinting`, `hobby-curve`, `ink-trap`, `instance`, `interpolation`, `italic`, `kerning`,
`kerning-group`, `kerning-pair`, `language-system`, `layer`, `leading`, `ligature`, `line-gap`,
`lookup`, `mark`, `master`, `metrics`, `metrics-key`, `monoline`, `monospaced`, `nib`, `node`,
`oblique`, `off-curve-point`, `on-curve-point`, `open-contour`, `opentype`, `opentype-feature`,
`opentype-svg`, `otf`, `outline`, `overlap`, `overshoot`, `palette`, `path`, `point`,
`postscript-name`, `quadratic-curve`, `remove-overlap`, `sans-serif`, `script`, `serif`,
`shaping`, `sidebearing`, `small-caps`, `smart-component`, `smooth-point`, `spacing`, `stem`,
`stroke`, `style`, `stylistic-set`, `subsetting`, `tabular-figures`, `terminal`, `tracking`,
`truetype`, `ttf`, `typeface`, `ufo`, `unicode`, `units-per-em`, `variable-font`,
`vertical-metrics`, `waterfall`, `weight`, `width`, `woff`, `x-height`.

Their headings, in order: Advance width, Alternate, Anchor, Aperture, Ascender, Autosave,
Auto-kerning, Axis, Baseline, Bezier curve, Bitmap font, Bold, Bowl, Brace layer, Bracket layer,
Cap height, CFF, Character, Character set, Code point, Color font, COLR and CPAL, Component,
Composite glyph, Contour, Contour direction, Contrast, Corner point, Counter, Cubic curve,
Descender, Designspace, Diacritic, Display font, Em, Export, Extreme point, Family, Feature code,
Font, Font file, Font format, Font license, Glyph, Glyph name, Glyph set, GPOS, GSUB, Guide,
Handle, Hinting, Hobby curve, Ink trap, Instance, Interpolation, Italic, Kerning, Kerning group,
Kerning pair, Language system, Layer, Leading, Ligature, Line gap, Lookup, Mark, Master, Metrics,
Metrics key, Monoline, Monospaced, Nib, Node, Oblique, Off-curve point, On-curve point, Open
contour, OpenType, OpenType feature, OpenType-SVG, OTF, Outline, Overlap, Overshoot, Palette,
Path, Point, PostScript name, Quadratic curve, Remove overlap, Sans serif, Script, Serif, Shaping,
Sidebearing, Small caps, Smart component, Smooth point, Spacing, Stem, Stroke, Style, Stylistic
set, Subsetting, Tabular figures, Terminal, Tracking, TrueType, TTF, Typeface, UFO, Unicode, Units
per em, Variable font, Vertical metrics, Waterfall, Weight, Width, WOFF, x-height.

## Where the facts are

- `README.md`, `docs/ROADMAP.md`, `docs/milestones/M0.md` … `M15.md` (what each feature does).
- Menus and shortcuts: `crates/fe-ui/src/catalog.rs`; commands: `crates/fe-engine/src/commands.rs`
  and `crates/fe-ui/src/commands.rs`.
- UI: `crates/fe-ui/src/*.rs` (dialogs.rs, wizards.rs, journey.rs, tools.rs, panels.rs,
  preview.rs, kerning_panel.rs, features_ui.rs, lookups_ui.rs, color_ui.rs, drawing_ui.rs,
  masters_ui.rs, fontcheck.rs, profiles_ui.rs, scripting.rs, prefs_ui.rs, sketch_ui.rs, …),
  `crates/fe-ui/src/editor/`.
- Checks: `crates/fe-engine/src/qa*.rs` or search for the check names.
- Indonesian UI text: `crates/fe-ui/src/i18n/id.tsv`.
- Packaging: `packaging/installer.nsi`, `xtask/src/main.rs` (`dist`).
