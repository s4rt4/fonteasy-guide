---
title: The Glyph Editor
description: A tour of the glyph editor, where you draw and edit one glyph at a time among its neighbours.
---

The glyph editor is where you spend most of your time in FontEasy. It shows one glyph large, with
the lines that every letter of the font shares, and gives you the tools to draw and reshape its
outline. Think of it as a drawing desk with a ruler and a set of guidelines already printed on the
paper.

A letter never lives alone, though. An "n" only looks right when you see it next to other letters,
so the editor can show a whole line of text around the glyph you are working on. You draw in
context, the way the letter will really be read.

This chapter walks through every part of the editor: how to open a glyph, what the lines on the
canvas mean, how to move around, how to select things, and which panels help you. The tools
themselves get their own chapter, [Drawing tools](/drawing/drawing-tools/).

In this chapter you will learn:

- how to open a glyph and move to the next or previous one;
- what the metric lines and sidebearing lines on the canvas mean;
- how to zoom, pan and use the rulers;
- how to edit a glyph in a line of text;
- how to select points, contours and components;
- what the options bar, the status bar and the Glyph Info, Transform, Layers and History panels
  show;
- how to use guides, the background layer and a reference image;
- how snapping and undo work.

## Opening a glyph

Everything starts in the **Overview**, the grid of all the glyphs in your font. To open a glyph in
the editor:

1. Find the glyph in the Overview (the [glyph set](/drawing/glyph-set/) chapter explains searching
   and filtering).
2. Double-click it. Or click it once and press <kbd>Enter</kbd> (**Glyph › Edit Glyph**).

![The Overview of Source Serif 4: the "a" is selected, and the Glyph Info panel on the right shows its name, Unicode and size.](screen:g-overview)

The glyph opens in a new tab under the font's tab. The tab strip now reads **Overview**, followed by
one tab per open glyph. Click **Overview** to go back to the grid; click a glyph tab to return to
that glyph. Close a glyph tab with the small × on it, or with a middle click.

If you select several glyphs in the Overview and press <kbd>Enter</kbd>, FontEasy opens them
together as a line of text, editing the glyph you clicked last. More on that in
[Editing in a line of text](#editing-in-a-line-of-text).

:::tip
Double-clicking a [component](/reference/glossary/#component) in the editor opens the glyph it
comes from. In "é", double-click the accent to edit the accent itself. See
[Components and accents](/drawing/components/).
:::

### Moving to the next glyph

You do not need to go back to the Overview to edit the next letter:

- **Glyph › Next Glyph** (<kbd>PageDown</kbd>) shows the next glyph in font order.
- **Glyph › Previous Glyph** (<kbd>PageUp</kbd>) shows the previous one.

At the end of the font, Next Glyph wraps round to the first glyph. The Overview selection follows
along, so when you go back to the grid, the glyph you edited last is selected.

## A tour of the editor

Here is the editor with the "a" of Source Serif open and the Node tool chosen:

![The glyph editor: the toolbox on the left, the options bar at the top, the Text bar and rulers above the canvas, the "a" with its points in the middle, and panels on the right and bottom.](screen:g-edit)

From top to bottom and left to right:

- The **title bar** with the menus.
- The **options bar**: the active tool, its settings, and a one-line hint on how to use it.
- The **toolbox** down the left edge. Each tool has its own section in
  [Drawing tools](/drawing/drawing-tools/).
- The **tab strip**: **Overview** and the open glyphs.
- The **Text** bar: the line of text around the glyph you edit.
- The **rulers** along the top and left edges of the canvas.
- The **canvas** itself, with the glyph, its points and the metric lines.
- The **panels** on the right and at the bottom: Glyph Info, Layers, Transform, Validation,
  History, Preview and others. Show or hide any of them from **Window › Panels**, and hide or show
  all panels at once with <kbd>Tab</kbd>.
- The **status bar** at the very bottom.

An empty glyph shows a short reminder in the middle of the canvas of how to fill it: draw with the
Pen (<kbd>P</kbd>) or Pencil (<kbd>N</kbd>), paste shapes from Illustrator or Inkscape, or use
**Tools › Autotrace Image…**.

![Simple Mode, editing the empty glyph "R": the canvas shows a hint on how to start, and the Font Journey panel lists the next steps.](screen:emptyglyph)

## The metric lines

Across the canvas run thin horizontal lines, each labelled with its name and its height in font
units ("x-height 475"). They are the [metrics](/reference/glossary/#metrics) of your font: the
shared heights that make all the letters look like they belong together.

![The five metric lines on "Hdxp": the ascender at the top of the "d", the cap height at the top of the "H", the x-height at the top of the "x", the baseline the letters sit on, and the descender at the bottom of the "p".](diagram:glyph-editor-vertical-metrics)

| Line | What it marks |
|---|---|
| [Ascender](/reference/glossary/#ascender) | How high the tall lowercase letters reach: the tops of b, d, h, k, l. |
| [Cap height](/reference/glossary/#cap-height) | The top of flat capital letters such as H, E, T. |
| [x-height](/reference/glossary/#x-height) | The top of flat lowercase letters such as x, v, z; the height of the "body" of a, n, o. |
| [Baseline](/reference/glossary/#baseline) | The line the letters sit on. It is height 0. |
| [Descender](/reference/glossary/#descender) | How low the tails reach: the bottoms of g, j, p, q, y. Below 0, so its value is negative. |

When two lines are at the same height, they share one label, for example "ascender / cap height
800". The baseline is drawn a little stronger than the others. You set these values in
**Font › Font Info…**; the [Font Info](/production/font-info/) chapter explains how to choose them.

:::note[Overshoot]
Round letters such as "o" and "c" poke a little above the x-height and below the baseline. This is
called [overshoot](/reference/glossary/#overshoot), and it is on purpose: a circle that only
touches the lines looks smaller than a square of the same height.
:::

## Sidebearings and the advance width

Two vertical lines stand on the canvas as well. The left one is at x = 0, the glyph's origin. The
right one is the glyph's [advance width](/reference/glossary/#advance-width): how far the
typing position moves on after this glyph. The area between them is lightly shaded, and the width
is written in small numbers at the bottom right of the right-hand line.

The space between the outline and these lines is called the
[sidebearing](/reference/glossary/#sidebearing): the left sidebearing (LSB) and the right
sidebearing (RSB). Sidebearings decide how much air sits between letters, so they are a big part
of [spacing](/reference/glossary/#spacing).

![The "n" of Source Serif between its two vertical lines: the left sidebearing (LSB) and the right sidebearing (RSB) are the gaps between the outline and the lines, and the advance width is the distance between the lines.](diagram:glyph-editor-sidebearings)

You can change the width right on the canvas: with the Select or Node tool, drag the right-hand
vertical line. The [Metrics](/drawing/drawing-tools/#metrics) tool lets you drag either
sidebearing. And with nothing selected, the options bar shows the numbers to type in, as you will
see below. Spacing has a whole chapter of its own: [Spacing and metrics](/spacing/metrics/).

## Moving around the canvas

### Zooming

- **Ctrl + mouse wheel** (or a pinch on a touchpad) zooms in and out around the pointer.
- **View › Zoom In** (<kbd>Ctrl</kbd>+<kbd>=</kbd>) and **View › Zoom Out**
  (<kbd>Ctrl</kbd>+<kbd>-</kbd>) zoom in steps.
- **View › Fit in Window** (<kbd>Ctrl</kbd>+<kbd>0</kbd>) fits the glyph, from descender to
  ascender, back into the window.
- The **Zoom** tool (<kbd>Z</kbd>): click to zoom in, <kbd>Alt</kbd>+click to zoom out, or drag a
  rectangle around the part you want to fill the window.

### Panning

- The **mouse wheel** scrolls the view up and down (and sideways on a touchpad).
- Hold <kbd>Space</kbd> and drag, with any tool, to move the view. Let go of
  <kbd>Space</kbd> and you are back in your tool.
- Drag with the **middle mouse button**.
- The **Hand** tool (<kbd>H</kbd>) pans with a normal drag.

### Rulers

Rulers run along the top and the left edge of the canvas. Their numbers are font units, the same
units as the metric lines, and their ticks get finer as you zoom in. Rulers are also where guides
come from; see [Guides](#guides).

## Editing in a line of text

Above the canvas is the **Text** bar. Whatever you type there is shown on the canvas around the
glyph you edit, set with the real advance widths and [kerning](/reference/glossary/#kerning) of
your font. The glyph you edit stays editable, with its points; the others are drawn solid in a
quieter colour, so you can judge shapes and spacing in context.

![The text "nnonn": the "o" in the middle is the glyph being edited, with its points; the "n" glyphs on both sides are its neighbours.](diagram:glyph-editor-text-line)

You can type:

- **characters**, such as `nnonn` or `Hamburgefonstiv`;
- **glyph names** after a slash, for glyphs that have no character of their own: `/a.sc`, or
  `/A/V` for two glyphs. A name ends at a space or the next slash.

The **Spacing text** list at the right end of the Text bar fills in a ready-made line with the glyph
you are editing in the middle: `nn◦nn`, `oo◦oo`, `HH◦HH`, `OO◦OO`, `Hamburgefonstiv`, or the glyph
alone. The ◦ stands for your glyph. These classic lines are what type designers use to test
spacing.

To edit **another glyph of the line**, double-click it with the Select or Node tool, or click it
with the Text, Metrics or Kerning tool. The line stays where it is on the screen; only the glyph
being edited changes.

:::tip
Choose **Metrics › Metrics Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) to switch to the
Metrics tool with a spacing line already set: `HH◦HH` for capitals and figures, `nn◦nn` for
everything else.
:::

## Selecting

Before you can move, delete or transform something, you select it. With the **Select** tool
(<kbd>V</kbd>) or the **Node** tool (<kbd>A</kbd>):

| To select | Do this |
|---|---|
| One point | Click it. |
| More points | <kbd>Shift</kbd>+click each one. <kbd>Shift</kbd>+click a selected point to deselect it. |
| Points in an area | Drag a rectangle around them in an empty part of the canvas. Hold <kbd>Shift</kbd> to add to the selection. |
| A whole contour | Click its outline with the Select tool. |
| One segment | Click the outline with the Node tool: the two nodes at its ends are selected. |
| A component or an anchor | Click it. |
| Everything | **Edit › Select All** (<kbd>Ctrl</kbd>+<kbd>A</kbd>). |
| Nothing | **Edit › Deselect** (<kbd>Ctrl</kbd>+<kbd>D</kbd>), <kbd>Esc</kbd>, or click an empty spot. |

Selected points turn the accent colour. Then:

- **Drag** them to move them. Moving a node takes its handles along.
- **Nudge** them with the arrow keys: one unit per press, ten with <kbd>Shift</kbd>.
- **Delete** them with <kbd>Delete</kbd> (or <kbd>Backspace</kbd>). Deleting a node joins its
  neighbours, keeping a curve where handles remain.
- **Cut, copy and paste** with <kbd>Ctrl</kbd>+<kbd>X</kbd>, <kbd>Ctrl</kbd>+<kbd>C</kbd> and
  <kbd>Ctrl</kbd>+<kbd>V</kbd>. FontEasy copies the selected contours as SVG, so you can paste them
  into Illustrator, Inkscape or Figma, and paste shapes copied there into a glyph.

Dragging a single handle on its own moves just that handle (and, at a smooth point, turns the
opposite handle to stay in line). Double-clicking a node switches it between corner and smooth;
double-clicking the outline between nodes adds a new node there.

## The options bar

The options bar under the menus always names the active tool and gives a one-line hint. While a
glyph is open, it also shows fields you can type into. What they are depends on the tool and the
selection.

**With the Select, Node, Rotate or Scale tool and something selected**, you see the bounding box of
the selection: **X** and **Y** (its bottom-left corner), **W** (width) and **H** (height), followed
by **Flip Horizontal** and **Flip Vertical** buttons. Type a new number and press
<kbd>Enter</kbd>: X and Y move the selection, W and H scale it.

![Editing "R" of Mutator Sans with a few points selected: the options bar shows X 800, Y 0, W 431 and H 210 for the selection.](screen:edit)

**With nothing selected**, the same tools show the glyph's **Width**, **LSB** and **RSB**. Type a
number to change them. These fields also accept a
[metrics key](/reference/glossary/#metrics-key), such as `=n` (the same as the "n") or `=|H+10`;
a field that follows a key shows it in the accent colour. The [Spacing and metrics](/spacing/metrics/)
chapter explains keys.

![The Select tool with nothing selected: the options bar shows Width 707, LSB 47 and RSB 47 for the "O".](screen:g-tool-select)

Other tools have their own options: the Pen has **Hobby curves**, the Polygon tool has **Sides**.
The [Drawing tools](/drawing/drawing-tools/) chapter covers them. The options bar can be hidden with
**View › Options Bar**.

## The status bar

The status bar at the bottom shows, from the right: the FontEasy version, the mode (Simple or
Pro), the number of glyphs in the font and its [units per em](/reference/glossary/#units-per-em),
the pointer position in font units (`x 250  y -10`) while it is over the canvas, and the name and
Unicode of the current glyph (`a · U+0061`). On the left it shows messages, such as "3 points
added" after a command. Hide it with **View › Status Bar**.

## The panels

### Glyph Info

The **Glyph Info** panel describes the glyph: its **Name**, **Unicode**, **Character**, the
Unicode name of the character, its **Script**, **Advance width**, and how many **Contours** and
**Points** it has. A **Font** section underneath shows the family, style, units per em and glyph
count.

While a glyph is open in the editor, Glyph Info also lists its **Components** and **Anchors**, with
x and y fields you can drag to place them exactly. **Add Usual Anchors** adds "top", "bottom" and
the like, placed from the outline. Anchors and components are explained in
[Components and accents](/drawing/components/).

### Transform

The **Transform** panel moves, scales, rotates, skews and flips the selection, or the whole glyph
when nothing is selected, around its centre:

1. Type the values: **Move X** and **Move Y** in units, **Scale X** and **Scale Y** in percent,
   **Rotate** and **Skew** in degrees.
2. Click **Apply**.

**Reset** puts the fields back to 0 and 100%. The two flip buttons mirror the selection at once.
The same operations are in the **Glyph › Transform** menu as **Scale…**, **Rotate…** and **Skew…**
(small dialogs) and **Flip Horizontal** and **Flip Vertical**.

### Layers

A [layer](/reference/glossary/#layer) is another drawing of the same glyph, kept behind or
beside it. The **Layers** panel lists the glyph's layers. Click one to edit it:

- **Foreground** is the real glyph, the one that ends up in the font.
- **Background** is a tracing layer. Whatever you put there shows faintly behind the foreground
  and is never exported. The eye button next to it shows or hides it behind the foreground (the
  same as **View › Show Background Layer**).
- Other layers of the font, if it has any, are listed too. Layers that have no drawing for this
  glyph yet are shown in grey.

**Copy Foreground to Background** (also **Glyph › Copy to Background**) copies the current outline
to the background. That is handy before a big change: you keep the old shape visible behind the
new one, to compare. In Pro Mode, for variable fonts, the panel also manages intermediate and
alternate layers; see [Variable fonts](/advanced/variable/).

### History

The **History** panel lists your changes, newest at the bottom: "Move", "Pen", "Delete", "Add
Point" and so on. Each drag is one step, however long it lasts. Click an earlier step to go back
to it; the steps after it turn grey, and you can click them again to go forward. Making a new
change from there drops the grey steps.

The same history is behind **Edit › Undo** (<kbd>Ctrl</kbd>+<kbd>Z</kbd>) and **Edit › Redo**
(<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd>). The history belongs to the font, so it also holds
changes made in the Overview and in dialogs.

### Validation

The **Validation** panel lists problems in the open glyph, such as an open contour or a wrong
direction, with a **Fix** button for each; they are also marked on the canvas. When all is well it
says "No problems in this glyph." See [outline problems](/drawing/problems/).

## Guides

A [guide](/reference/glossary/#guide) is a line on the canvas that helps you place things: the
thickness of a stem, the height of a crossbar, the centre of a round letter. Guides are never part
of the font's outlines.

To work with guides:

1. **Add** a guide: drag from the top ruler down for a horizontal guide, or from the left ruler to
   the right for a vertical one. Let go where you want it.
2. **Move** a guide: drag it with the Select or Node tool.
3. **Delete** a guide: drag it back onto a ruler.

Guides you add this way belong to the glyph. Guides that belong to the whole font, if the font has
any, are drawn in a lighter shade on every glyph. Points snap to guides as you drag, which makes
them a quick way to keep stems the same width.

## Background and reference images

Besides the background layer, you can put a picture behind a glyph, for example a scan of a
letter you drew on paper:

1. Choose **Glyph › Place Image…** and pick an image file.
2. The image appears behind the glyph, faded, scaled so that its height fills the space from the
   descender to the ascender.
3. Draw over it with the Pen or Pencil.
4. When you are done, choose **Glyph › Remove Image**.

The image is kept with the font, so it is still there the next time you open it. To turn a picture
into outlines automatically instead of drawing over it, see
[Importing and tracing](/drawing/import-trace/).

## Snapping

FontEasy snaps while you drag points, draw shapes or use the Pen:

- every point lands on **whole font units**, never between them;
- within a few screen pixels, it snaps to the **metric lines** (baseline, x-height, cap height,
  ascender, descender), to the glyph's **origin** and **advance width**, and to **guides**.

Snapping is always on; there is nothing to switch. If a point jumps to a line you did not want,
zoom in: the snapping distance is measured in screen pixels, so at a higher zoom you can place the
point closer to a line without it snapping.

## View options

The **View** menu has a few switches for the editor:

| Command | What it does |
|---|---|
| **Show Fill** | Fills the outline lightly, or shows the outline only. |
| **Show Background Layer** | Shows or hides the background layer behind the foreground. |
| **Show Other Masters** | In a variable font, shows the glyph's other masters as faint outlines. |
| **Show Problems** | Marks validation problems on the canvas and in the Overview. |

## Common mistakes

:::caution[My single-key shortcuts type letters instead of switching tools]
The cursor is in the Text bar (or another text field). Click on the canvas first; single-key tool
shortcuts only work when no text field has the focus.
:::

:::caution[I cannot find my glyph on the canvas]
You may have zoomed or scrolled away. Press <kbd>Ctrl</kbd>+<kbd>0</kbd> (**View › Fit in Window**).
:::

:::caution[A point keeps jumping to a line]
That is snapping. Zoom in and drag again, or nudge the point with the arrow keys.
:::

## Summary

- Open a glyph with a double-click in the Overview, or select it and press <kbd>Enter</kbd>.
  <kbd>PageDown</kbd> and <kbd>PageUp</kbd> move to the next and previous glyph.
- The metric lines show the ascender, cap height, x-height, baseline and descender; the two
  vertical lines show the origin and the advance width, with the sidebearings in between.
- Zoom with <kbd>Ctrl</kbd>+wheel, pan with the wheel or <kbd>Space</kbd>+drag;
  <kbd>Ctrl</kbd>+<kbd>0</kbd> fits the glyph.
- The Text bar shows the glyph among other letters; type characters or `/name`, or pick a spacing
  text.
- Select with click, <kbd>Shift</kbd>+click and a marquee; nudge with the arrow keys.
- The options bar shows X, Y, W, H for a selection, or Width, LSB and RSB for the glyph.
- Glyph Info, Transform, Layers, History and Validation are the editor's panels.
- Drag guides from the rulers; points snap to whole units, metric lines and guides.
- Every change can be undone with <kbd>Ctrl</kbd>+<kbd>Z</kbd> or from the History panel.

## Try it yourself

1. Open the "n" of any font. Type `nnonn` in the Text bar, then double-click the "o" to edit it.
   Press <kbd>PageDown</kbd> three times and watch which glyphs appear. Press
   <kbd>Ctrl</kbd>+<kbd>0</kbd>.
2. In an empty glyph, drag a horizontal guide from the top ruler to the x-height. Draw a rectangle
   with the Rectangle tool (<kbd>M</kbd>) and see its top snap to the guide. Select it, type a new
   **W** in the options bar and press <kbd>Enter</kbd>. Then open the History panel and click the
   first step to go back.
