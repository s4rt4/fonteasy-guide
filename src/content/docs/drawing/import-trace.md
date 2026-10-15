---
title: Bringing Artwork In
description: Open existing fonts, import glyphs drawn in Illustrator or Inkscape as SVG files, keep a folder of SVGs in sync, and trace pictures of letters into outlines.
---

You do not have to draw every letter inside FontEasy. Many designers sketch on paper, draw in
Adobe Illustrator, Inkscape or Figma, or start from a font that already exists. FontEasy can bring
all of that in and turn it into glyphs you can edit.

This chapter covers four roads into your font. You can **open a font file** that already exists.
You can **import SVG files**, one per letter, straight from your drawing app, and even keep a
folder of SVGs **in sync** so that saving in Illustrator updates the glyph in FontEasy. You can
**copy and paste** shapes between apps. And you can **trace a picture**: a scan, a photo or a brush
drawing becomes clean outlines.

Whatever road you take, the result is the same: ordinary [outlines](/reference/glossary/#outline)
made of [nodes](/reference/glossary/#node) and curves, which you can then refine with the tools from
[Drawing tools](/drawing/drawing-tools/).

In this chapter you will learn:

- which font files FontEasy can open, and what comes in with them;
- how to prepare artboards in a drawing app so letters land in the right place;
- how file names decide which glyph each SVG becomes;
- how to keep a folder of SVG files in sync with your font;
- how to paste shapes from other apps;
- how to place a picture in a glyph and trace it with **Autotrace Image**;
- how to clean up traced outlines.

## Opening existing fonts

The quickest start is often a font you already have: your own earlier work, an open-source font
you are allowed to change, or a file from a colleague.

1. Choose **File › Open…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>), or click **Open…** on the Home screen.
2. Pick the file and click **Open**.

You can also drag a font file from Windows Explorer onto the FontEasy window.

FontEasy opens these formats:

| File | What it is | How it opens |
|---|---|---|
| `.ufo` | A [UFO](/reference/glossary/#ufo) font source (a folder) | Opened directly; saving writes back to it |
| `.designspace` | A [designspace](/reference/glossary/#designspace) with several UFO masters | Opened directly, with all masters |
| `.glyphs`, `.glyphspackage` | A Glyphs app file (Glyphs 2 or 3) | Imported as a new, unsaved designspace |
| `.ttf`, `.otf` | A finished [TTF](/reference/glossary/#ttf) or [OTF](/reference/glossary/#otf) font | Imported as a new, unsaved font |

A UFO is really a folder full of small files. To open one, choose **File › Open UFO Folder…**
(<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd>) and pick the folder, or pick any file inside it
(such as `fontinfo.plist`) with **File › Open…**. Glyphs files can also be opened with
**File › Import › Glyphs App File (.glyphs)…** in Pro Mode.

![The Mutator Sans designspace open in the Overview: 49 glyphs, a master menu at the top right, and the Validation panel listing problems in some glyphs.](screen:open)

:::caution[Web fonts]
FontEasy cannot open WOFF or WOFF2 web fonts. If you only have a web font, ask for the original
TTF or OTF, or the source files. FontEasy can *export* WOFF and WOFF2 (see
[Exporting your font](/production/export/)).
:::

### What comes in with a TTF or OTF

A TTF or OTF file is a finished, compiled font, a bit like a printed book compared with the
manuscript. FontEasy reads back as much as it can:

- the glyph outlines (TrueType curves are turned the right way round, and the extra points that
  TrueType adds between curves are removed again, so you get clean, editable outlines);
- the character map (which glyph belongs to which [Unicode](/reference/glossary/#unicode) value),
  advance widths, font names and vertical metrics;
- the [kerning](/reference/glossary/#kerning) from the font's positioning table;
- glyph substitutions ([GSUB](/reference/glossary/#gsub)) as editable
  [feature code](/reference/glossary/#feature-code): small caps, ligatures, alternates and figure
  styles come back as single, multiple, alternate and ligature lookups. Contextual lookups cannot
  be turned back into code automatically; they are listed in a comment at the top of the
  features, so you can rewrite them by hand in the Features editor;
- colour glyphs (see [Color fonts](/advanced/color/)).

A variable font is imported at its default style.

![Source Code Pro opened from an OTF file: 1568 glyphs in the Overview, with Adieresis selected, while the Validation panel is still checking.](screen:import)

Two things to know:

- **Composites become outlines.** Accented letters arrive as plain contours, not as linked
  components. See [Components and composites](/drawing/components/) for how to rebuild them.
- **It is a copy.** An imported TTF, OTF or Glyphs file is never changed. The first time you
  press <kbd>Ctrl</kbd>+<kbd>S</kbd>, FontEasy asks where to save; it saves a UFO (or a designspace
  with one UFO per master). Your working files from then on are those.

:::danger[Respect font licences]
Being able to open a font does not mean you may change or publish it. Many commercial fonts
forbid modification. Open-source fonts under the SIL Open Font License may be changed, but a
changed version must not use the original's reserved name. Read more in
[Testing and publishing](/production/testing-publishing/) and the glossary entry
[Font license](/reference/glossary/#font-license).
:::

## Importing SVG files from a drawing app

Many people prefer to draw letters in Illustrator, Inkscape or Figma, where they already know the
tools. FontEasy understands SVG, the vector format all these apps can save.

The idea is simple: **one SVG file per glyph**. In Illustrator, that means one artboard per
character, saved with **Export As… › SVG** and "Use Artboards" so every artboard becomes its own
file.

### Setting up the artboard

When FontEasy imports an SVG, it treats the whole artboard as the glyph's
[em](/reference/glossary/#em) box:

- the **top** edge of the artboard is the font's [ascender](/reference/glossary/#ascender);
- the **bottom** edge is the [descender](/reference/glossary/#descender);
- the [baseline](/reference/glossary/#baseline) lies *ascender* units below the top edge;
- the artboard's **width** becomes the glyph's [advance width](/reference/glossary/#advance-width)
  (you can switch this off).

For a new FontEasy font with 1000 units per em, an ascender of 750 and a descender of −250, that
means an artboard 1000 units tall with the baseline 750 units below its top. The dialog shows the
exact numbers for your font. The artboard can be any size: FontEasy scales it by its height, so an
artboard 500 × 1000 px and one 50 × 100 mm both work.

![An artboard 500 wide spans the ascender to the descender with the baseline 750 below the top; the letter g lands in the same place in FontEasy, and the artboard width becomes the advance width 500.](diagram:import-trace-artboard)

:::tip[Let FontEasy make the artboards]
Choose **File › Export › Glyphs as SVG…** and pick a folder. FontEasy writes one SVG per selected
glyph (or the glyph you are editing) with exactly the right artboard and the metric lines drawn on
a separate layer. An empty glyph gives you a ready-to-draw template. Open the files in your
drawing app, draw on them, save, and import them back. The metric lines are skipped on import.
:::

### How shapes are read

- **Black shapes and strokes fill.** A stroke (a line with a thickness) is turned into an outline,
  with its caps, joins and dashes.
- **White shapes cut holes.** This is how most people draw a counter in a drawing app: a white
  oval on top of a black one. FontEasy turns it into one outline with a hole.
- **Compound paths** and the even-odd fill rule from Illustrator are understood.
- Groups, transforms and CSS styles are handled; text and embedded images are left out and listed
  in a notice ("Some SVG files were not imported fully").
- A drawing in **two or more colours** (white aside) also comes in as colour layers, ready for a
  [colour font](/advanced/color/). The glyph itself keeps a one-colour outline.

Afterwards, overlapping shapes are merged, [contour directions](/reference/glossary/#contour-direction)
are put right, points are rounded to whole units and extreme points are added, so the glyph is
clean straight away.

![On the left a black disc with a white disc on top and a thick stroked curve in a drawing app; on the right the same as one outline with a hole and as an editable outline in FontEasy.](diagram:import-trace-holes)

### File names choose the glyph

FontEasy guesses which glyph each file is for from its name. All these work:

| File name | Becomes glyph | Why |
|---|---|---|
| `A.svg` or `A_.svg` | **A** | an underscore after a capital is the UFO way of writing capitals |
| `a.svg` | **a** | the glyph name |
| `eacute.svg` | **é** | the glyph name |
| `é.svg` | **é** | the character itself |
| `U+00E9.svg` | **é** | the Unicode value |
| `a.sc.svg` | **a.sc** (new) | a suffixed name of a known glyph |
| `MyFont_A.svg` | **A** | a prefix before `_`, `-` or a space is ignored |
| `Artboard 1.svg` | nothing | a bare number after a prefix is not taken as the digit 1 |

Why `A_.svg`? Windows does not tell `A.svg` and `a.svg` apart: they would be the same file. Naming
capitals `A_.svg`, `B_.svg` lets lowercase and uppercase live in one folder. Illustrator puts the
document name in front of each artboard name when exporting (`MyFont_A.svg`); that prefix is fine.

![File names and the glyphs they become: A_.svg gives A, a.svg gives a, eacute.svg gives eacute, MyFont_g.svg gives g, and Artboard 1.svg is skipped until you name the glyph.](diagram:import-trace-filenames)

:::tip
Name your artboards after the glyphs (`a`, `A_`, `eacute`, `zero`, `period`) before you export.
Glyph names for every character are in the [glossary](/reference/glossary/#glyph-name) and in the
**Glyph Info** panel of each glyph.
:::

### Importing the files

1. Choose **File › Import › Glyphs from SVG…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>).
   The **Import Glyphs from SVG** dialog opens.
2. Click **Choose Folder…** to take every SVG in a folder, or **Choose Files…** to pick some.
3. Check the list. Each file shows the glyph FontEasy guessed, and what will happen:
   **replaces the outline** (the glyph exists), **new glyph** (it will be created), or
   **skipped: name the glyph** (FontEasy could not guess). Type a glyph name to fix a guess or to
   name a skipped file.
4. Choose how to place the drawings:
   - **Place by the artboard (recommended)**: uses the artboard as described above. Leave
     **Artboard width is the advance width** on if your artboards have the right widths.
   - **Scale each drawing to the cap height (artboards not set up)**: for SVGs drawn without a
     prepared artboard. Each drawing is scaled so it is as tall as the cap height, and stands on
     the baseline with even space on both sides.
5. Leave **Merge overlapping shapes** and **Add extreme points** on, unless you have a reason.
6. Click **Import**.

![The Import Glyphs from SVG dialog with a chosen folder: A_.svg, MyFont_g.svg, a.svg and eacute.svg replace outlines, a.sc.svg makes a new glyph, Artboard 1.svg is skipped, and Keep in sync is ticked.](screen:svgimport)

The status bar says, for example, "6 glyphs imported from SVG". The whole import is one step in
the undo history, so <kbd>Ctrl</kbd>+<kbd>Z</kbd> takes it all back.

:::caution[Importing replaces outlines]
When a glyph already exists, its outline is replaced by the SVG drawing. Edits you made to that
glyph in FontEasy are gone (you can undo). If you want to keep refining in FontEasy, stop
importing that glyph, or keep its SVG up to date.
:::

## Keeping a folder in sync

If you keep drawing in Illustrator, re-importing by hand after every change gets tiring.
**SVG sync** does it for you: FontEasy watches the folder, and whenever you save an SVG there, the
matching glyph updates.

1. In **Import Glyphs from SVG**, choose your files with **Choose Folder…** (sync needs a folder).
2. Tick **Keep in sync: update glyphs whenever these SVG files are saved**.
3. Click **Import**.

A notice confirms "SVG sync is on". The status bar shows the folder you are syncing with. Now:

- Save an artboard in your drawing app. Within a second or two the glyph changes in FontEasy, and
  the status bar says "Synced from SVG: …" with the glyph names.
- A file is read only after it has stopped changing, so a half-written file is never imported.
- Each sync is one undo step, named "Sync from SVG".
- New SVG files saved into the folder are imported too.
- The sync setting is saved with the font. When you open the font again, sync starts again, and
  SVGs changed while the font was closed are brought in.

To stop, choose **File › Import › Stop SVG Sync**.

:::caution[Sync runs one way]
Sync goes from the SVG files to the font, never back. If you edit a synced glyph in FontEasy and
then save its SVG again in Illustrator, the SVG wins and your FontEasy edit is replaced. Decide
where each glyph lives: in the drawing app (and sync it), or in FontEasy (and stop syncing it).
You can always undo a sync.
:::

### A complete Illustrator workflow

1. In FontEasy, create your font and choose **File › Export › Glyphs as SVG…** with the glyphs you
   want selected. Pick a new, empty folder.
2. In Illustrator, open the exported files (or build one document with one artboard per glyph,
   using the same artboard height and baseline).
3. Name each artboard after its glyph: `A_`, `B_`, `a`, `b`, `eacute`, …
4. Draw each letter in black. Draw counters as white shapes on top, or as compound paths.
5. Choose **File › Export › Export As…**, format **SVG**, tick **Use Artboards**, and export to
   the folder.
6. In FontEasy, choose **File › Import › Glyphs from SVG…**, **Choose Folder…**, tick
   **Keep in sync…** and click **Import**.
7. Keep working in Illustrator. Each time you export again, FontEasy updates the glyphs.
8. Check the result in the **Preview** panel, then go on with [spacing](/spacing/metrics/).

## Copying and pasting shapes

For a single shape, the clipboard is quicker than files.

**From a drawing app into FontEasy:**

1. In Illustrator, Inkscape or Figma, select the shapes and copy them (in Figma, use
   **Copy as SVG**).
2. Open the glyph in the FontEasy glyph editor.
3. Choose **Edit › Paste** (<kbd>Ctrl</kbd>+<kbd>V</kbd>).

The shapes arrive at the size they had in the drawing app, with their lower-left corner at the
origin, and they are selected, so you can move and scale them right away (see
[Drawing tools](/drawing/drawing-tools/)). If the clipboard holds no vector shapes, FontEasy says
"The clipboard has no outlines (copy shapes as SVG)."

**From FontEasy into a drawing app:** select contours in the glyph editor and press
<kbd>Ctrl</kbd>+<kbd>C</kbd>. FontEasy puts them on the clipboard as SVG, which you can paste into
Illustrator or Inkscape.

:::note
In the **Overview**, <kbd>Ctrl</kbd>+<kbd>C</kbd> copies the selected glyph *names* (as
`/A/B/C`), not their outlines.
:::

## Tracing a picture: Autotrace

Sometimes your letter exists only as a picture: an ink drawing, a brush lettering, a photo of a
shop sign you made, a scan from a sketchbook. **Autotrace** turns such a picture into outlines.

### How tracing works

A picture is made of tiny squares called pixels, each a shade of grey. To trace it, FontEasy:

1. decides for every pixel whether it is **ink** or **paper**, using a *threshold*: pixels darker
   than the threshold are ink. By default the threshold is chosen automatically, halfway between
   the average ink and the average paper;
2. follows the edge of the ink very precisely, between the pixels;
3. finds the corners, and fits straight lines and smooth curves to the rest;
4. drops specks of dust, then cleans the result like any drawn glyph: contour directions, extreme
   points, no extra points, whole-unit coordinates.

![A letter a as grey pixels from a scan, as black-and-white pixels after the threshold, and as an outline of curves and points.](diagram:import-trace-pipeline)

The FontEasy tracer was written for letters: it keeps the soft edges of a scan in mind, so strokes
come out the right thickness and with few points.

### Tracing an image file

1. Select the glyph in the **Overview**, or open it in the editor.
2. Choose **Tools › Autotrace Image…**. The **Autotrace Image** dialog opens.
3. Click **Choose Image…** and pick a PNG or JPG file.
4. Under **Size**, choose how big the letter should be:
   - **Capital height**: the ink is scaled to the cap height (for capitals and figures);
   - **Small-letter height**: the ink is scaled to the x-height (for **a c e m n o** and
     similar);
   - **The image is the em (descender to ascender)**: the picture's height is the whole em, as
     with a prepared artboard; the ink keeps its place in the picture.
5. Look at the preview: the traced outline is drawn in colour over the picture. Adjust if needed:
   - **Automatic threshold**: untick it to set **Threshold** by hand. Lower values make less of
     the picture count as ink (thinner strokes); higher values make more of it ink (thicker
     strokes, specks may appear).
   - **Smoothness**: higher values give smoother curves with fewer points; lower values follow the
     picture more closely.
6. Click **Trace**.

![The Autotrace Image dialog for the glyph O: a picture of a brush-drawn O, Size set to Capital height, Automatic threshold at 131, Smoothness 0.500, and the traced outline in colour over the picture.](screen:autotrace)

The glyph's outline is replaced by the traced one (one undo step, "Trace Image"), and the status
bar says, for example, "Traced: 2 contours". With **Capital height** or **Small-letter height**,
the letter is placed with small [sidebearings](/reference/glossary/#sidebearing) of 5 % of the em
on each side.

### Placing an image in a glyph first

You can also put the picture into the glyph, so you see it behind your work while you draw, and
trace it there.

1. Open the glyph in the editor.
2. Choose **Glyph › Place Image…** and pick a PNG or JPG file.

The picture is scaled so its height spans the descender to the ascender, and it sits behind the
outline. You can draw over it with the Pen, like tracing paper. To trace it automatically:

1. Choose **Tools › Autotrace Image…**.
2. Pick **The placed image** (it is chosen already when the glyph has one).
3. Set **Threshold** and **Smoothness** and click **Trace**.

The traced outline lands exactly where the picture is. When you are done with the picture, choose
**Glyph › Remove Image**.

![Simple Mode with an empty glyph R open: the hint on the canvas says to draw with the Pen or Pencil, paste shapes from Illustrator or Inkscape, or use Tools › Autotrace Image.](screen:emptyglyph)

:::tip[Pictures that trace well]
- Dark ink on light, plain paper. Avoid lined or squared paper.
- Fill most of the picture with the letter; crop away the rest.
- Scan at 300 dpi or more, or photograph in daylight from straight above, with no shadows.
- One letter per picture. For a whole alphabet, use the
  [Handwriting wizard](/drawing/handwriting/) instead: it reads a full page at once.
:::

## Cleaning up traced outlines

A tracer copies everything, including the wobble of a shaky hand or a bump in the paper. A few
minutes of cleaning makes a traced letter look professional.

1. **Look at the points.** Choose the **Node** tool. A good outline has points mainly at corners
   and at the [extreme points](/reference/glossary/#extreme-point) of curves (the top, bottom,
   left and right of each bowl).
2. **Remove extra points.** Select a point on the contour that has too many points (or select
   nothing to work on the whole glyph) and choose **Glyph › Contours › Simplify**: it removes
   points while keeping corners and extremes. In Pro
   Mode, **Glyph › Contours › Clean Up Points** removes duplicate points and points that sit in the
   middle of a straight line.
3. **Fix the problems.** Open the **Validation** panel and use **Fix** or **Fix All**, or press
   <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd> (**Glyph › Fix Problems**). See
   [Fixing outline problems](/drawing/problems/).
4. **Straighten what should be straight.** Stems of **l**, **i** and **H** are often slightly
   tilted after tracing. Select the two points of a stem and line them up, or redraw the stem with
   the **Rectangle** tool.
5. **Make related letters agree.** Compare **n**, **h**, **m** and **u**: their stems should be
   the same thickness and height. Copy a good stem from one letter to the others.
6. **Retrace if needed.** If a letter came out too thick or broken, undo
   (<kbd>Ctrl</kbd>+<kbd>Z</kbd>) and trace again with another **Threshold**.

:::caution[Tracing is a start, not the end]
Even a perfect trace copies the picture, not your intentions. If several letters should share
the same stem width or the same curve, it is often quicker to clean one carefully and build the
others from it than to fix every trace on its own.
:::

## When something goes wrong

- **"not a UFO, designspace, TTF or OTF font."** The file type is not one FontEasy opens. For
  web fonts, use the original TTF or OTF.
- **An SVG is skipped.** Its name could not be matched to a glyph. Type the glyph name in the
  import list, or rename the file.
- **The letter is huge, tiny or sits too high.** The artboard is not set up as the em. Use
  **File › Export › Glyphs as SVG…** to get correct artboards, or import with
  **Scale each drawing to the cap height (artboards not set up)**.
- **A counter is filled in.** In the drawing app, the inner shape is not white, or not on top.
  Make it white, or make a compound path.
- **"Some SVG files were not imported fully".** The file contained text or an embedded picture.
  Convert text to outlines (Illustrator: **Type › Create Outlines**) before exporting.
- **Autotrace says no ink was found.** The picture is too light. Untick **Automatic threshold**
  and raise **Threshold**, or scan with more contrast.
- **"Select or open the glyph to trace into first."** Autotrace needs a target glyph: select one
  in the Overview or open it in the editor.

## Summary

- **File › Open…** opens UFO, designspace, .glyphs, TTF and OTF; TTF, OTF and Glyphs files are
  imported as new, unsaved copies. WOFF cannot be opened.
- TTF and OTF bring outlines, character map, widths, names, metrics, kerning, GSUB substitutions
  as feature code and colour glyphs; composites arrive as plain outlines.
- **File › Import › Glyphs from SVG…** imports one SVG per glyph. The artboard spans descender to
  ascender; black fills, white cuts holes; file names such as `A_.svg`, `eacute.svg` or
  `MyFont_g.svg` choose the glyph.
- **Keep in sync** watches a folder and updates glyphs when you save; **File › Import › Stop SVG
  Sync** turns it off. Sync runs one way, SVG to font.
- **Edit › Paste** brings in SVG shapes copied from a drawing app.
- **Tools › Autotrace Image…** traces a picture or a placed image (**Glyph › Place Image…**) into
  outlines; tune **Threshold** and **Smoothness**.
- Clean traces with **Simplify**, the Validation panel and a careful eye.

## Try it yourself

1. Select **a** and **b** in the Overview and choose **File › Export › Glyphs as SVG…**. Open the
   files in Inkscape or Illustrator, draw the letters, save, and import them back with
   **Keep in sync** ticked. Change one drawing, save, and watch FontEasy update.
2. Write a large letter **O** with a marker on white paper and photograph it from above. Select
   **O**, choose **Tools › Autotrace Image…**, pick the photo, choose **Capital height**, and try
   three different **Smoothness** values before clicking **Trace**.
