---
title: Variable Fonts
description: Turn one font into a whole family of weights, widths or italics by drawing a few masters and letting FontEasy calculate every style between them.
---

Most typefaces come as a [family](/reference/glossary/#family): Light, Regular, Bold, Black, often
with italics and narrow versions too. In the past, each of those [styles](/reference/glossary/#style)
was a separate font file that someone drew, glyph by glyph. That is a lot of drawing.

A [variable font](/reference/glossary/#variable-font) works differently. You draw only the
extremes, for example a very thin version and a very heavy version of every letter, and the font
itself calculates every weight in between. One file holds the whole range. In an app that
supports variable fonts, the reader can move a slider and watch the letters grow bolder smoothly,
like turning up a dimmer switch instead of flicking between three light bulbs.

FontEasy can turn an ordinary font into a variable one in a single step, show you any style
between your drawings while you work, and export both a variable font and a set of ordinary
(static) fonts for apps that do not support variable fonts yet.

In this chapter you will learn:

- what masters, axes, instances and interpolation are, in plain words;
- why every master must have the same points in the same order;
- how to make a font variable with **Font › Make Variable…**;
- how to manage masters, axes and instances in the **Masters & Axes** dialog;
- how to see any in-between style with the **Variations** panel and the **Preview** slider;
- what intermediate (brace) and alternate (bracket) layers are for;
- how to export a variable font and static instances.

## How a variable font works

### Masters: the drawings you make

A [master](/reference/glossary/#master) is one complete drawing of your font at one point of the
style range. A simple variable font has two masters: for example a Light master and a Bold master.
Each master has its own outlines for every [glyph](/reference/glossary/#glyph), its own spacing
and its own kerning, but they share everything structural: the same glyph names, the same
characters, the same OpenType features.

Think of masters like the two photographs at the start and end of a time-lapse: you take those
pictures yourself, and the computer fills in the frames between them.

### Interpolation: the styles in between

[Interpolation](/reference/glossary/#interpolation) is the calculation that produces the
in-between styles. For each point of a glyph, FontEasy looks at where that point sits in the Light
master and where it sits in the Bold master, and places it partway between the two. Halfway along
the range, every point is halfway between its two positions. A quarter of the way, a quarter.

![Light and Black masters of "Ho" from Source Serif 4, and the style halfway between them calculated by interpolation; the slider shows where on the weight axis each one sits.](diagram:variable-interpolation)

Because the in-between styles are calculated, they cost you nothing to draw. Two masters can give
you Light, Regular, Medium, SemiBold and Bold, and every weight between those too.

### Axes: the directions a font can vary

An [axis](/reference/glossary/#axis) is one direction in which the design changes, like the
slider for weight. Each axis has a short four-letter **tag** and three numbers: a **minimum**, a
**default** and a **maximum**. FontEasy knows the five standard ("registered") axes and suggests
their usual ranges:

| Axis | Tag | Usual range (min, default, max) | What changes |
|---|---|---|---|
| Weight | `wght` | 100, 400, 900 | How heavy the strokes are, Thin to Black |
| Width | `wdth` | 50, 100, 200 | How narrow or wide the letters are, in percent |
| Optical size | `opsz` | 6, 12, 72 | Details tuned for small text or large headlines, in points |
| Slant | `slnt` | −15, 0, 0 | How far the letters lean, in degrees |
| Italic | `ital` | 0, 0, 1 | Upright (0) or italic (1) |

You can also add a **custom axis** with your own tag of four capital letters, such as `GRAD`
(grade). A font can have more than one axis at once; for example weight and width together.

### The design space

When a font has two axes, you can picture all its possible styles as a flat map. Weight goes up,
width goes across, and every place on the map is a style. This map is called the **design
space**, and the file that describes it is a [designspace](/reference/glossary/#designspace)
file (`.designspace`).

![A design space with a weight axis and a width axis: masters sit at the four corners, instances such as Regular, SemiBold and Condensed sit at named places inside.](diagram:variable-designspace)

Masters sit at certain places in the design space (often the corners). Everything else is
calculated from them.

### Instances: named styles

An [instance](/reference/glossary/#instance) is a named place in the design space, such as
"Regular" at weight 400 or "SemiBold" at weight 600. Instances are what people see in font menus.
They are not drawn: FontEasy calculates them from the masters. When you export static fonts, each
instance becomes its own ordinary font file.

### Axis maps and style labels

Two more ideas are useful once you are comfortable with the basics:

- An **axis map** (stored in the `avar` table of the font) changes how the slider's values reach
  the drawings. Without a map, moving the weight slider halfway gives you a style halfway between
  the masters. With a map you can make part of the range move faster or slower; for example so
  that the light weights change gently and the heavy weights change quickly.
- **Style labels** (stored in the `STAT` table) are the names apps show for places on each axis:
  "Light" at 300, "Bold" at 700, and so on. One label can be marked **elidable**, which means it
  is left out of combined names: an app shows "Bold" rather than "Bold Normal".

## Compatibility: same points, same order

Interpolation only works if every master has the **same structure** for a glyph: the same number
of [contours](/reference/glossary/#contour), the same number of [points](/reference/glossary/#point)
in each contour, in the same order, with lines and curves in the same places, plus the same
[components](/reference/glossary/#component) and [anchors](/reference/glossary/#anchor). Glyphs
that follow this rule are called **compatible**.

The reason is simple: FontEasy moves point 1 of the Light "o" towards point 1 of the Bold "o",
point 2 towards point 2, and so on. If the Bold "o" has an extra point, there is nothing to pair
it with, and the calculation cannot work.

![Top: the Light and Black "o" have the same points in the same order, so they interpolate. Bottom: a shape with four points cannot be paired with one that has five.](diagram:variable-compatibility)

Even when the number of points matches, the result can twist if the order is different: if the
contours are listed in another order, run in the other direction, or start at a different point.
FontEasy calls this an **order** problem, and it can fix it for you automatically (see
[Fixing incompatible glyphs](#fixing-incompatible-glyphs)).

:::tip[The golden rule]
When you draw the second master, **move points, do not add or delete them**. Drag the existing
points outwards to make a stem thicker. As long as you only move points, every glyph stays
compatible.
:::

## Making a font variable in one step

The quickest way to start is **Font › Make Variable…**. It is available in both Simple and Pro
mode. It adds one axis, creates a second master as a copy of your font, adds the usual instances
and style labels, and even draws the new master for you as a starting point.

![The Make Variable dialog: Weight is chosen, the second master's weight is 700 and named Bold, and "Draw the new master for me" is ticked.](screen:makevariable)

1. Open your font. It should be an ordinary (static) font; if it is variable already, add masters
   in the **Masters & Axes** dialog instead.
2. Choose **Font › Make Variable…**.
3. Pick the kind of variation at the top: **Weight**, **Width** or **Italic**.
4. Set the second master:
   - for **Weight**, drag **Second master's weight** (100 to 900, in steps of 100). The name
     follows the usual weight names: 700 is "Bold", 300 is "Light", and so on;
   - for **Width**, drag **Second master's width (%)** (50 to 200; 75 is a typical condensed);
   - for **Italic**, there is nothing to set: the second master is the italic.
5. Change the **Name** if you like.
6. Leave **Draw the new master for me (thicker, narrower or slanted)** ticked to get a head start.
   FontEasy then makes the stems of the new master thicker (or the letters narrower, or slants them
   by 10° for an italic) while keeping exactly the same points. Untick it if you want the new master
   to start as a plain copy that you redraw yourself.
7. Click **Make Variable**.

FontEasy shows a message, "Your font is variable", and switches you to the new master so you can
work on it straight away. The **Preview** panel opens with a slider for the new axis.

![Source Serif 4 made variable: the H is being edited in the Regular master, the Variations panel shows the weight slider at 560 with the calculated H, and both masters are listed.](screen:variablebold)

:::note
The drawing FontEasy makes for you is a starting point, not a finished design. A real bold is
more than a thicker regular: counters get smaller, curves change shape, and some letters need
more width. Use the automatic master to see the whole range working at once, then refine the
letters by hand. The chapter [Design Automation](/advanced/automation/) explains what the
automatic changes can and cannot do.
:::

When you save, FontEasy writes a `.designspace` file next to your UFO. Your original UFO stays
where it was and becomes the **default master**; the new master is saved as its own UFO beside
it. (A [UFO](/reference/glossary/#ufo) is the folder format FontEasy uses for fonts you are
drawing.)

## Working with masters

### Switching between masters

In a variable font you always edit **one master at a time**: the glyphs, spacing and kerning you
change go to the active master. There are several ways to choose it:

- the **master switcher** at the right end of the font tab strip, a drop-down list with a layers
  icon;
- <kbd>Ctrl</kbd>+<kbd>1</kbd> to <kbd>Ctrl</kbd>+<kbd>9</kbd> for the first nine masters;
- **Font › Next Master** (<kbd>Ctrl</kbd>+<kbd>]</kbd>) and **Font › Previous Master**
  (<kbd>Ctrl</kbd>+<kbd>[</kbd>).

Switching masters is not an undo step, and it does not mark the font as changed.

While you edit a glyph, the other masters are drawn faintly behind it, so you can see how far
each point travels. Turn this off and on with **View › Show Other Masters**.

### What belongs to one master and what belongs to all

Some changes apply to every master at once, because the structure must stay the same everywhere:
adding, deleting or renaming glyphs, Unicode values, mark colours, glyph order, components,
anchors, kerning groups, feature code and the family information (family name, version, licence).
Other things belong to each master: the outlines, the spacing, the kerning values, the style name
and the vertical metrics.

When you add a new glyph in one master (for example by importing an SVG or tracing an image), it
is copied to the other masters automatically. The copies are compatible from the start; you only
need to redraw them in each master's weight.

## The Masters & Axes dialog

In Pro mode, **Font › Masters & Axes…** opens a dialog with three tabs: **Axes**, **Masters** and
**Instances**. **Font › Instances…** opens the same dialog on the Instances tab. Every change in
this dialog applies at once, and **Edit › Undo** takes it back, as the note at the bottom of the
dialog reminds you.

### The Axes tab

![The Axes tab of Masters & Axes for Mutator Sans: two axes, width and weight, with their tags and ranges; below, the weight axis map is a line with a point dragged down in the middle, and the style names section starts.](screen:axes)

Each axis is one row with its **Name**, **Tag**, **Minimum**, **Default** and **Maximum**. Click a
field, type a new value and press <kbd>Enter</kbd> to change it. The **×** at the end of a row
removes the axis.

To add an axis, use the buttons after **Add axis:**. FontEasy offers the registered axes the font
does not have yet (Weight, Width, Optical size, Slant, Italic), each with its usual range. For a
custom axis, type four capital letters in the small box (for example `GRAD`) and click
**Custom**; a custom axis starts with the range 0 to 100.

If your font is static, the tab says "A static font: add an axis to make it variable." Adding the
first axis turns the font into a designspace, and your font becomes its default master.

#### Axis map

Click **Map & labels** on an axis row to edit its map and labels below the table. The map is a
small graph: the slider's values run across, the values that reach the drawings run up. A
straight diagonal line means no map.

- Drag a point up or down to make that part of the range move faster or slower.
- **Add Point** adds a point halfway along the longest stretch.
- **Straight Line** removes the map again.

When you change the map, masters and instances keep their places on the slider.

#### Style names (STAT)

Under the map you find the style names for the axis. Each label has a name and a value; tick
**Elidable** for the one that should be left out of combined names (usually "Regular" or
"Normal"). **Add Label** adds a row, **Usual Names** fills in the common names (Thin … Black for
weight, Condensed … Expanded for width), and **Apply Labels** saves your changes.

### The Masters tab

![The Masters tab for Mutator Sans: a design-space picture with the four masters as filled dots and the instances as circles; below, a table of the masters with their width and weight, Edit buttons, the New master row and "Every glyph interpolates."](screen:masters)

At the top, a picture of the design space shows the masters as filled dots and the instances as
circles. Below it is a table of masters:

- **Name** and one column per axis with the master's location. Type a new value and press
  <kbd>Enter</kbd> to move a master. The default master's location cannot be typed: it always sits
  at the default of every axis.
- **default** marks the default master; **editing** marks the one you are working on.
- **Edit** makes that master the active one.
- **×** removes a master (never the default one).

Under **New master**, type a name (for example "Bold"), a value for each axis, choose which master
it is a **copy of**, and click **Add Master**. The new master starts as a copy: change its outlines
so it differs, keeping the same contours and points. FontEasy switches you to the new master
straight away. Two masters cannot share the same place in the design space.

At the bottom, a compatibility summary says either "Every glyph interpolates." or how many glyphs
do not interpolate and how many can be fixed automatically, with a **Make Compatible** button and
a list of the problem glyphs.

### The Instances tab

![The Instances tab: a list of named styles with their width and weight values, each with a remove button.](screen:instances)

Each row is one named style: a **Style name** and a value for each axis. You can edit the names
and values directly in the table.

- **Add Instance** adds a row at the default location.
- **Usual Instances** fills the list with the common names that fit inside your axes' ranges:
  Thin … Black for weight, plus Italic, Condensed and so on for other axes.
- **Apply Instances** saves your edits. It appears as soon as you change something.
- **Export Static Instances…** opens the export dialog described in
  [Exporting](#exporting-a-variable-font-and-static-fonts). It appears when there are no unsaved
  edits in the list.

## Seeing every style while you draw

### The Variations panel

The **Variations** panel (Pro mode, **Window › Panels › Variations**) is your window into the
design space while you edit.

![Editing the R of Mutator Sans in the BoldWide master: the Variations panel shows sliders for width (600) and weight (350), the R calculated at that place, and "Compatible in every master."](screen:variations)

- One slider per axis chooses a place in the design space.
- Below the sliders, the glyph you are editing (or the one selected in the overview) is drawn as
  it looks at that place, with its width.
- A status line tells you whether the glyph is compatible: "Compatible in every master." or a
  list of the problems in each master.
- **Masters:** lists every master by name. Click one to jump the sliders to that master's place.

If the font is still static, the panel says so and offers a **Make Variable…** button.

### The Preview slider

The **Preview** panel shows a slider for each axis above the sample text, in both Simple and Pro
mode. FontEasy builds the real variable font in the background and shapes the text at the place
you choose, so what you see is exactly what the exported font will do.

### Problems in the Overview and the Validation panel

FontEasy checks compatibility quietly in the background as you draw. A glyph that does not
interpolate gets a small diamond marker in the Overview, and it is listed in the
**Interpolation** section of the **Validation** panel. When everything is fine, that section says
"Compatible in every master."

## Fixing incompatible glyphs

The Variations panel and the Masters tab describe each problem in plain words, for example:

| Message | What it means | Can FontEasy fix it? |
|---|---|---|
| missing | the glyph is not in that master | no: add or draw it |
| 3 contours, the default master has 2 | a contour too many or too few | no: redraw |
| contour 1: 14 points, the default master has 12 | points were added or deleted | no: redraw |
| contour 1: lines and curves in other places | a line became a curve or the other way round | no: redraw |
| different components / different anchors | the parts or anchors do not match | no: make them match |
| contour order, direction or start point differ (can be fixed) | same structure, listed differently | **yes** |

For the last kind, click **Make Compatible** (in the Variations panel for the current glyph, or in
the Masters tab for the whole font; in Pro mode also **Font › Make Compatible**). FontEasy puts the
contours in the same order, direction and start point as the default master, and the status bar
says so.

For the other kinds, redraw the glyph in that master with the same contours and points as the
default master. The faint outlines of the other masters in the editor help you see which point
should go where.

:::caution[Common mistakes]
- **Remove Overlap in one master only.** Removing overlaps changes the points of a glyph. Do it in
  every master or in none; in a variable font, overlapping contours are normal and fine.
- **Adding an extreme point in one master.** Add it in all masters, at the matching place.
- **Redrawing a letter from scratch in the second master.** It is quicker to drag the existing
  points than to fix the order of new ones.
:::

## Intermediate and alternate layers

Sometimes two masters are not enough for one particular glyph. FontEasy has two tools for this,
both in the **Layers** panel in Pro mode (**Window › Panels › Layers**), below the usual
foreground and background layers.

![A weight axis from Light to Bold: an intermediate layer of one glyph at 550, and an alternate dollar that replaces the normal one from 700 to the end of the axis.](diagram:variable-layers)

### Intermediate (brace) layers

An **intermediate layer**, also called a [brace layer](/reference/glossary/#brace-layer), is an
extra master for **one glyph only**, at one place in the design space. Use it when a glyph looks
wrong halfway between the masters; for example when the middle of an "e" gets too dark at
weight 550 even though Light and Bold look fine.

1. Open the glyph.
2. In the **Variations** panel, move the sliders to the place where the glyph needs help.
3. In the **Layers** panel, under **Intermediate Layers**, click **Add Layer at …** (the button
   shows the place, for example "Add Layer at Weight 550").
4. FontEasy creates the layer and opens it. It starts as the masters interpolate there, so it is
   already compatible: adjust the points to fix the shape.

![The Layers panel with an intermediate layer {550} of "A" open for editing; the Intermediate Layers section lists "{550} Weight 550".](screen:bracelayers)

The layer is named after its place in curly braces (here `{550}`). Click it in the list to edit
it again, or click **×** to remove it. The button is greyed out when a master or another layer is
already at that place; move the sliders first. Other glyphs that get a layer at the same place
share it.

### Alternate (bracket) layers

An **alternate layer**, also called a [bracket layer](/reference/glossary/#bracket-layer), swaps in
a **different drawing** of a glyph for part of the design space. The classic example is a dollar
sign that loses its vertical bar in the heaviest weights, where the bar would clog the letter.

1. Open the glyph, for example `dollar`.
2. In the **Layers** panel, under **Alternate Layers**, choose the axis in the drop-down list and
   type the value from which the alternate should take over (after **≥**).
3. Click **Add Alternate**.
4. FontEasy creates a new glyph such as `dollar.BRACKET.700` in every master and tells you
   "Alternate dollar.BRACKET.700 added: draw it in every master." Open it and draw the
   alternative shape in each master.

When you open the original glyph, the panel lists its alternates with their conditions (for
example "Weight ≥ 700"); click the name to edit the alternate, or **×** to stop using it and
delete it. When you open the alternate itself, the panel tells you which glyph it replaces.

:::note
An alternate only replaces the glyph that is typed. Composite glyphs that use it as a component
do not switch to the alternate.
:::

Both kinds of layer are saved in the standard designspace format, so other tools that read
designspace files understand them. They are also brought in when you import a Glyphs file.

## Opening existing variable sources

FontEasy opens designspace files with **File › Open…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>), together
with their UFO masters. In Pro mode you can also bring in a Glyphs app file with
**File › Import › Glyphs App File (.glyphs)…**, or simply open the `.glyphs` file. Masters, axes,
axis maps, instances, kerning, features and brace and bracket layers come along. The first save
writes a designspace file and one UFO per master.

## Exporting a variable font and static fonts

### A variable font

Export works as described in the [chapter on exporting](/production/export/): choose
**File › Export › Export Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>). For a designspace, the dialog
says "This designspace exports as one variable font." Keep these points in mind:

- Variable fonts export as [TrueType](/reference/glossary/#truetype) (`.ttf`, and the web formats
  [WOFF](/reference/glossary/#woff) and WOFF2). A variable `.otf` (CFF2) is not supported yet.
- Overlapping contours are kept, because variable fonts need them, and they are flagged so that
  apps draw them correctly.
- The instances and style labels you set become the named styles in font menus.

### Static instances

Many apps, printers and older systems cannot use variable fonts yet. For them, export each
instance as its own ordinary font with **File › Export › Static Instances…** (Pro mode). The same
dialog opens from the link in the Export dialog and from the Instances tab.

![The Export Static Instances dialog: every instance of Mutator Sans is ticked, TrueType is chosen as the format, Remove overlaps is on, and a folder is set.](screen:exportinstances)

1. Tick the **Instances** you want.
2. Under **Formats**, tick one or more formats: TrueType, OpenType CFF, WOFF, WOFF2.
3. Leave **Remove overlaps (your source keeps them)** on for clean static fonts.
4. Tick **Hint TrueType outlines (ttfautohint)** if you want [hinting](/reference/glossary/#hinting)
   for TrueType files. If FontEasy cannot find the ttfautohint program, the dialog offers **Locate…** next to it.
5. Choose a **Folder** (by default a folder named `instances` next to your font) or click
   **Browse…**.
6. Click **Export**.

Each instance is interpolated from the masters and built as its own static font. If a glyph does
not interpolate, FontEasy uses the default master's outline for it in the static fonts and reports
it, rather than stopping the export.

## Tips

- **Start with weight.** A weight axis with two masters is the easiest variable font to get right.
  Add width or italic later.
- **Draw the extremes.** Put masters at the ends of each axis. Interpolation is good at filling in
  the middle and poor at guessing beyond the drawings.
- **Check the middle often.** Drag the Preview slider through the whole range while you work. A
  glyph that looks fine at both ends can still bulge or twist halfway.
- **Keep the default master sensible.** The default master is what apps show when they do not
  change the axis, so it is usually your Regular.

:::caution[When the preview looks twisted]
If a glyph turns inside out or crosses itself halfway between the masters, its contours are in a
different order, direction or start point. Look in the Variations panel: if it says the order
differs, click **Make Compatible**. If it reports a different number of points, open each master
and make the points match.
:::

## Summary

- A variable font holds a whole range of styles in one file. You draw **masters**; FontEasy
  calculates everything between them by **interpolation**.
- An **axis** is one direction of change (weight, width, optical size, slant, italic or a custom
  one), with a minimum, default and maximum. Several axes form a **design space**.
- **Instances** are named places in the design space, such as Regular or Bold.
- Every master must have the **same contours, points, order, components and anchors** for each
  glyph. Move points instead of adding them.
- **Font › Make Variable…** makes a font variable in one step and can draw the new master for you.
- **Font › Masters & Axes…** manages axes (with maps and style labels), masters and instances.
- The **Variations** panel and the **Preview** slider show any place in the design space.
- **Intermediate layers** add an extra master for one glyph; **alternate layers** swap in another
  drawing for part of the range.
- Export a variable TTF with **Export Font…** and static fonts with **Static Instances…**.

## Try it yourself

1. Open a font with at least a few drawn letters (for example the "Hamburgefonstiv" letters).
   Choose **Font › Make Variable…**, pick **Weight**, set 700, keep **Draw the new master for me**
   ticked and click **Make Variable**. Drag the slider in the Preview from one end to the other.
   Then switch back to the first master with <kbd>Ctrl</kbd>+<kbd>1</kbd> and compare.
2. In the Bold master, open the "o" and make its counter a little smaller by dragging the inner
   points, without adding any. Watch the Variations panel: it should still say "Compatible in every
   master." Now add one point with the Add Point tool and see what the panel reports; then undo.
