---
title: Color Fonts
description: Give your letters several colours, gradients and transparency with colour layers and palettes, and export them as COLR/CPAL and OpenType-SVG colour fonts.
---

An ordinary font has no colour of its own. Each [glyph](/reference/glossary/#glyph) is one shape,
and the app that uses the font fills it with whatever colour the text has. A
[color font](/reference/glossary/#color-font) is different: its glyphs carry their own colours.
A letter can have a dark shadow, a bright body and a highlight, or a smooth gradient from orange to
red, and it looks that way wherever the font is used.

Colour fonts are popular for headlines, posters, logos, games and emoji. FontEasy lets you build
them out of **colour layers**: ordinary glyphs stacked on top of each other, each filled with a
colour from a **palette**. You draw the layers with the same tools you use for any glyph.

In this chapter you will learn:

- how colour fonts are stored (COLR and CPAL, and OpenType-SVG) and where they work;
- what palettes and colour layers are;
- how to turn a glyph into a colour glyph with the **Color** panel;
- how to use solid, linear and radial fills, opacity and gradient handles;
- how to manage palettes with **Font › Color Palettes…**;
- how to import coloured SVG drawings and existing colour fonts;
- how to check and export a colour font.

## How colour fonts work

### Layers stacked like stencils

A colour glyph is a stack of shapes, painted from the bottom up, like layers of a screen print or
stencils sprayed one after another. In FontEasy each layer is a separate glyph with a name made
from the base glyph: the layers of `A` are `A.color0`, `A.color1`, `A.color2` and so on, with
`A.color0` at the bottom.

![The colour A is made of three layers: A.color0 at the bottom is a dark shadow in palette colour 1, A.color1 is the letter in palette colour 2, A.color2 on top is a red band in palette colour 3; stacked together they give the coloured A.](diagram:color-layers)

Because layers are ordinary glyphs, you draw, edit and check them just like any other glyph. In a
[variable font](/advanced/variable/) they exist in every master and interpolate with the rest.

The base glyph `A` keeps its own outline too. Apps that cannot show colour fonts draw that plain
outline instead, in the text colour, so your font still works everywhere.

### Palettes: colours by number

A layer does not store a colour directly. It stores a **number** that points into a
[palette](/reference/glossary/#palette), a numbered list of colours. Layer `A.color1` might say
"use colour 2", and colour 2 of the palette is orange.

This has a nice benefit: a font can have **several palettes** with the same number of colours.
Switch to another palette and every layer picks up the colour with the same number from it. You
can offer a light and a dark version of the same colour font, or seasonal colour schemes, without
drawing anything again.

![The same three layers shown with Palette 1 (navy, orange, red) and Palette 2 (green, yellow, navy): only the colours change.](diagram:color-palettes)

There is also one special choice, **Text color**. A layer with the text colour takes whatever
colour the text has where the font is used, just like an ordinary glyph. This is handy for
outlines or details that should follow the surrounding text.

### The formats: COLR, CPAL and OpenType-SVG

A colour font is still an ordinary font file (TTF, OTF, WOFF or WOFF2) with some extra tables
inside. FontEasy writes these:

- **CPAL** holds the palettes.
- **COLR** holds the colour glyphs: which layers each glyph has and how they are filled. There are
  two versions, and FontEasy writes both into the same table:
  - **COLR version 0**: solid, fully opaque layers. Glyphs that only use these are written in the
    old form, so they also show in apps that only know version 0.
  - **COLR version 1**: everything else, such as gradients and transparency.
- **SVG** (the [OpenType-SVG](/reference/glossary/#opentype-svg) table, optional): a small SVG
  picture of each colour glyph, for apps that understand SVG colour fonts but not COLR.

The glossary entry [COLR and CPAL](/reference/glossary/#colr-and-cpal) sums this up in a few
lines.

### Where colour fonts work

Support for colour fonts differs from app to app, and it keeps improving. In general:

- **Web browsers and Windows** show COLR colour fonts; version 1 (gradients) is newer, so older
  software may show only the version 0 glyphs or the plain fallback outline.
- **Some apps that do not read COLR** can show the OpenType-SVG table instead. That is why
  FontEasy writes the SVG table as well, unless you turn it off.
- **Apps with no colour font support** show the base glyph's own outline in the text colour.

Before you publish, test the exported font in the apps your readers will use, for example with
**File › Test Font in Browser** (<kbd>F5</kbd>).

## The Color panel

Everything about colour glyphs happens in the **Color** panel (**Window › Panels › Color**). It is
available in both Simple and Pro mode; Pro mode adds fill kinds and opacity.

![A colour font in the Overview: A, B, H and O are drawn in colour, the A is selected, and the Color panel shows the palette and the layers A.color2 and A.color1 with their colours and opacity.](screen:colorfont)

From top to bottom, the panel shows:

- **The palette row**: the colours of the current palette as small swatches (hover one to see its
  number and hex code). If the font has more than one palette, a drop-down list chooses which one
  the overview and editor show. **Palettes…** opens the palette editor.
- **The glyph's state**: either "A has no colors yet." with a **Make Color Glyph** button, or
  "Color glyph A" with the number of layers.
- **The layer list**, top layer first. Each layer has a colour swatch, its name, buttons to move it
  up or down, and **×** to remove the layer (and its glyph). In Pro mode, each layer also has a
  fill kind (**Solid**, **Linear** or **Radial**) and, for solid fills, an **Opacity** slider.
- **Buttons to add layers**: **Empty Layer**, **Copy of Glyph** and **Selected Contours**.

The panel works on the glyph you are editing, or on the glyph selected in the Overview.

## Making your first colour glyph

1. Draw the glyph as usual, for example an `A`.
2. Open the **Color** panel and select or open the glyph.
3. Click **Make Color Glyph**. The glyph's outline becomes the first colour layer (`A.color0`).
   If the font has no palette yet, FontEasy adds a ready-made one.
4. Click **Copy of Glyph** to add a second layer with the same outline on top, or **Empty Layer**
   for a blank layer to draw in.
5. Click a layer's colour swatch and pick a colour from the palette that opens. The last button,
   **Text color**, uses the text's colour instead.
6. Click a layer's name to open that layer glyph in the editor and draw it. For example, move the
   shadow layer a little down and to the right, or draw a stripe in the top layer.

![Editing the colour glyph A: a navy triangle, a yellow triangle and a red dot are drawn as three layers; the Color panel lists A.color2 in red and A.color1 in yellow, both solid with opacity 1.00.](screen:coloredit)

In the editor, the other layers are shown behind the outline you are editing, and the layer you
are drawing is a little faded so you can see what is beneath it.

### Adding a layer from selected contours

If you already drew several shapes in one glyph and want each to have its own colour:

1. Open the glyph and select the contours that should become a separate layer.
2. In the Color panel, click **Selected Contours**.

The selected contours are copied into a new layer on top. The button is greyed out until you
select contours in the glyph window.

### Changing the order

Layers are painted from the bottom of the list upwards; the top of the list is the top of the
stack. Use the up and down arrows next to a layer to move it. A shadow belongs at the bottom, a
highlight at the top.

## Fills: solid, linear and radial

In Pro mode you can choose how each layer is filled.

![Three fills on the letter O: a solid fill with a second, 60% opaque copy on top; a linear gradient from orange to red with its Start and End handles; a radial gradient from yellow to navy with its Centre and Radius handles.](diagram:color-fills)

- **Solid** fills the layer with one palette colour. The **Opacity** slider (0 to 1) makes it
  transparent: at 0.5, half of what is beneath shows through.
- **Linear** blends from one colour to another along a straight line, from a **Start** point to an
  **End** point.
- **Radial** blends outwards in circles, from a **Centre** to a **Radius**. A third handle,
  **Focus (where the first color starts)**, can move the starting point of the blend off centre.

When you switch a layer to Linear or Radial, FontEasy fits the gradient to the layer's outline.
The layer row then shows:

- **Colors**: the colour of each stop of the gradient. Click a swatch to pick its palette colour.
- **Edit on Canvas**: shows the gradient handles in the glyph window.
- **Fit**: fits the gradient to the layer's outline again.

### Gradient handles on the canvas

1. Open the glyph (or click the layer's name).
2. Click **Edit on Canvas** in the layer's row.
3. Drag the handles in the glyph window: **Start** and **End** for a linear gradient; **Centre**,
   **Radius** and **Focus** for a radial one.

The colours follow live while you drag. When you let go, the change is saved as one undo step.

![Editing a gradient on B: the B.color0 layer has a linear fill from navy to red, and its handles are shown as a line with round handles across the glyph; the Color panel shows Linear, two colour stops and Edit on Canvas switched on.](screen:colorgradient)

:::tip
Gradients and transparency are written as COLR version 1, which some older apps cannot show. If
you need the widest support, use solid, fully opaque layers: they are written as version 0.
:::

## Palettes

Choose **Font › Color Palettes…** (or click **Palettes…** in the Color panel) to edit the font's
palettes.

![The Color Palettes dialog: Palette 1 with seven numbered colours, each with a swatch and a hex code; the Add Color button; and the ready-made palettes Sunset, Ocean, Candy, Forest and Mono.](screen:palettes)

- The buttons at the top (**Palette 1**, **Palette 2** …) choose which palette you edit.
  **Add Palette** adds another one; **Delete Palette** removes the current one (when there is more
  than one).
- Each colour is a numbered row: click the swatch for a colour picker, or type a hex code such as
  `#e63946`.
- **Add Color** adds a colour, and **×** removes one. Both act on **every** palette, so all
  palettes always keep the same number of colours.
- Under **Ready-made palettes**, click **Sunset**, **Ocean**, **Candy**, **Forest** or **Mono** to
  use those colours in the current palette.
- Click **OK** to keep your changes, or **Cancel** to leave everything as it was.

Remember that layers refer to colours by number. If you change colour 2 from red to blue, every
layer that uses colour 2 turns blue.

## Showing and hiding colours

Colour glyphs are shown in colour everywhere: in the Overview thumbnails, behind the outline in the
editor, in lines of text, and in the Preview panel. The Preview draws the colour table of the
font FontEasy builds in the background, so it shows exactly what apps will show.

To work on the plain outlines without the colours, turn off **View › Show Colors**. Choose it again
to bring the colours back.

## Importing colour

### Coloured SVG drawings

If you design letters in Illustrator, Inkscape or Figma, you can bring coloured drawings in with
**File › Import › Glyphs from SVG…** (the [chapter on importing](/drawing/import-trace/) explains the
artboards and file names).

- A drawing in **two or more colours** (white aside) comes in as colour layers: each run of shapes
  in one colour becomes one layer glyph, filled with that colour.
- Each colour is looked up in the font's palette, or added to it if it is not there yet.
- The glyph itself keeps a one-colour outline, the fallback for apps without colour.
- Importing the same SVG again, including through the automatic SVG folder sync, replaces the old
  layers.
- A drawing in **one colour** is imported as before: black shapes fill and white shapes cut holes.

### Existing colour fonts

When you open a TTF or OTF colour font with **File › Open…**, FontEasy reads its COLR and CPAL
tables and turns them into editable layers and palettes: version 0 layers, and version 1 layers
with solid, linear or radial fills. Other kinds of version 1 paint (sweep gradients, transforms,
composite modes, variations) are skipped, and FontEasy counts how many were skipped. This works
even for big fonts: Segoe UI Emoji comes in with thousands of colour glyphs.

## Checking a colour font

**Font › Check Font…** (<kbd>F7</kbd>) has a **Color** section with five checks (see
the [chapter on quality checks](/production/quality/) for how the results work):

| Check | What it finds | Automatic fix |
|---|---|---|
| Color outside the palette | a layer uses a colour number the palette does not have, so it shows black or not at all | no |
| Missing layer glyph | a colour layer names a glyph that does not exist | yes: the missing layer is dropped |
| Empty color layer | a layer has no outline yet, so it adds nothing | no |
| Palettes of different sizes | the palettes have different numbers of colours | yes: the palettes are made the same length |
| No fallback outline | the base glyph has no outline of its own for apps without colour | yes: an outline is made from all the layers together |

Layer glyphs are not reported as "unused" glyphs.

## Exporting a colour font

Export as usual with **File › Export › Export Font…**. Colour tables are added to TTF, OTF, WOFF
and WOFF2 files.

1. Choose **File › Export › Export Font…**.
2. Leave **Color font: also write an SVG table (for apps without COLR support)** ticked if you want
   the OpenType-SVG table too; untick it to keep only COLR and CPAL.
3. Choose your formats and export.

The same SVG option is available in **File › Export › Export Profiles…** (Pro mode).

:::note[What FontEasy does not make]
Bitmap emoji formats (`sbix`, `CBDT`), sweep (conic) gradients, transformed and composite paints,
and colours that change along a variable font's axes are not supported. Fonts that contain them can
still be opened; those parts are left out.
:::

:::caution[Common mistakes]
- **Forgetting the fallback.** If you delete the base glyph's outline, apps without colour support
  show nothing. Check Font's "No fallback outline" fix rebuilds it from the layers.
- **Removing a colour that layers still use.** Layers that pointed at it then point outside the
  palette. Check Font finds these.
- **Too many gradients for old apps.** If a colour font must work in older software, prefer solid
  layers.
:::

## Summary

- A colour glyph is a stack of **layers** (`A.color0`, `A.color1` …), each an ordinary glyph,
  painted bottom to top.
- Layers pick colours **by number** from a **palette**; several palettes give the same layers other
  colours. **Text color** follows the text.
- FontEasy writes **COLR** (v0 for solid layers, v1 for gradients and transparency), **CPAL** for
  palettes, and optionally an **OpenType-SVG** table.
- The **Color** panel makes colour glyphs, adds and orders layers, and sets fills (**Solid**,
  **Linear**, **Radial**), opacity and gradient handles.
- **Font › Color Palettes…** edits palettes, with ready-made ones to start from.
- Coloured SVGs and COLR fonts import as editable layers.
- **Check Font** has five colour checks; export adds the colour tables to every format.

## Try it yourself

1. Draw a simple `O`. Click **Make Color Glyph**, then **Copy of Glyph**. Give the bottom layer a
   dark colour and the top layer a bright one. Open the bottom layer and move it 30 units right
   and 30 units down: you have a letter with a shadow.
2. In Pro mode, switch the top layer to **Radial**, click **Edit on Canvas** and drag the centre
   towards the upper left. Then open **Font › Color Palettes…**, click **Add Palette** and fill it
   with **Ocean**. Switch between the palettes in the Color panel and watch the letter change.
