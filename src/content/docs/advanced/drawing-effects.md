---
title: Drawing Effects
description: Draw letters as centre lines with a round pen or a calligraphy nib, round and cut corners, add ink traps, build stretchable smart parts, draw Hobby curves and sketch ideas on the Sketchboard.
---

Most of the time you draw a letter by drawing its **outline**: the edge all the way around the
ink. But that is not how people write. A pen follows one line, the middle of the stroke, and the
pen's shape decides how thick the ink is. A broad calligraphy nib makes thick and thin strokes
on its own, just by being held at an angle.

FontEasy's **drawing effects** let you work that way. You draw the centre line and choose a pen;
FontEasy draws the outline for you. In the same spirit, you can mark a corner as "round" or "cut"
instead of drawing the curve yourself, build a part that stretches like a rubber band, and click a
few points to get a smooth curve through them.

These effects are **live**: the glyph remembers what you drew and which effect you chose, and
FontEasy applies the effect every time it shows or exports the glyph. You can change the pen width
or the corner size at any moment, and every glyph that uses it updates. When you are happy, you can
make the result permanent.

In this chapter you will learn:

- how strokes along a path work, with a round pen or a flat calligraphy nib;
- how to make monoline and single-line fonts;
- how to round, cut, trap or decorate corners;
- how smart components with their own axes work;
- how to draw Hobby curves;
- how to bake effects into plain outlines with **Apply All Effects**;
- how to try ideas on the **Sketchboard**.

## The Drawing panel

All the effects live in the **Drawing** panel (**Window › Panels › Drawing**). It works on the
glyph that is open in the glyph editor; if no glyph is open, it says "Open a glyph to give it a
stroke, corner effects or smart parts."

The panel has four sections:

| Section | What it does | Mode |
|---|---|---|
| **Stroke** | Draws the paths with a pen | Simple and Pro |
| **Corners** | Round, chamfer, ink trap or corner glyph on selected nodes | Pro |
| **Smart Components** | Axes and sliders for stretchable parts | Pro |
| **Curves** | Hobby curves and **Apply All Effects** | Simple and Pro |

Stroke, corner and Apply All Effects changes are made in every master at once, so a
[variable font](/advanced/variable/) stays consistent.

## Strokes: drawing with a pen

### Centre lines instead of outlines

With a stroke, a [path](/reference/glossary/#path) is no longer the edge of the ink: it is the
**centre line** of a [stroke](/reference/glossary/#stroke), like the line a pen tip travels along.
FontEasy draws the outline around it, as wide as the pen.

An [open contour](/reference/glossary/#open-contour) (a path with two loose ends, such as the
line of an "l" or the arch of an "n") is always drawn with the pen. A closed path, such as the
ring of an "o", is drawn with the pen only when you ask for it with **Closed paths too**; otherwise
it stays a normal filled shape. While a glyph has a stroke, the Validation panel no longer warns
about its open paths, because they are meant to be open.

### Round pen and flat nib

You can choose between two kinds of pen:

- **Round pen**: a circle, like a felt-tip or a ballpoint. The line has the same thickness in every
  direction. This gives [monoline](/reference/glossary/#monoline) letters.
- **Flat nib**: a broad, flat calligraphy [nib](/reference/glossary/#nib), like a chisel-tip
  marker. It makes a thick line when it moves across its broad side and a thin line when it moves
  along its edge. The result has [contrast](/reference/glossary/#contrast) between thick and thin
  strokes, just like handwriting with a broad pen.

![One circular path drawn four ways: the path itself with four nodes; a round pen giving an even ring; a flat nib at 30° giving thick strokes on a diagonal; a flat nib at 0° giving thick sides and thin top and bottom. The small shapes underneath show each pen.](diagram:drawing-effects-nib)

For a flat nib, two settings shape the result:

- **Nib angle**: how the nib is held, in degrees, from −90° to 90°. At 0° the nib lies flat, so
  upright strokes are thick and horizontal strokes are thin. Around 30° to 45° gives the classic
  diagonal stress of broad-pen writing.
- **Thin stroke**: how thick the nib's narrow edge is, as a percentage of its width (2% to 100%).
  A small value gives strong contrast; 100% makes the nib square.

For a round pen, two other settings shape the ends and bends:

- **Ends**: **Rounded**, **Flat** or **Square** ends on open paths.
- **Corners**: **Rounded**, **Sharp** or **Cut** where the path makes a corner.

### Giving a glyph a stroke

1. Draw the centre line of the letter with the Pen or Pencil, as an open path. For an "n", draw the
   left stem upwards, then the arch and the right stem down.
2. Open the **Drawing** panel.
3. Tick **Draw the paths with a pen**. The path immediately gets an outline.
4. Set the **Width** (in font units; it starts at 60).
5. Choose **Round pen** or **Flat nib**, then set the ends and corners, or the nib angle and thin
   stroke.
6. Tick **Closed paths too** if closed paths should be stroked as well.

![The n of a new font drawn as one open path with a flat nib: the Drawing panel shows Width 90, Flat nib, Nib angle 30° and Thin stroke 18%; the canvas shows the thin path and the stroked shape around it.](screen:stroke)

You keep editing the centre line with the usual tools; the stroke follows every change. While you
drag a value in the panel, the change is merged into a single undo step.

### Monoline and single-line fonts

A **monoline** font has strokes of even thickness everywhere, like letters written with a felt-tip.
A **single-line** font is a font whose glyphs are just centre lines, used for engraving, plotting
and CNC machines, where a tool follows one line.

With strokes you can make the whole font this way:

1. Give one glyph the stroke you want.
2. Click **Use for Selected Glyphs** to give the same stroke to the glyphs selected in the
   Overview, or **Use for All Glyphs** to give it to every glyph that has paths.

Now changing the width in one place is a quick way to try a lighter or heavier version of the
whole alphabet.

:::caution[Strokes in variable fonts]
A stroke is turned into an outline separately in each master, and the result can have a different
number of points from one master to another. With **Sharp** corners on a round pen this is
especially likely, so in a font with several masters the Drawing panel warns: "Mitred corners may
differ between masters: use round joins in variable fonts." If interpolation complains, expand the
strokes and use **Make Compatible** where it can help.
:::

### Expanding a stroke

When the stroke is final, click **Expand** to turn it into ordinary outlines for good. The glyph
then contains the outline only, and you can edit it point by point. Expanding works in every master.

## Corner effects

Corners are where letters get their character: a soft rounded corner feels friendly, a sharp cut
feels technical, and an [ink trap](/reference/glossary/#ink-trap) keeps small text crisp. Drawing
these by hand on every corner is slow and hard to keep consistent. With corner effects you simply
**mark** a node and FontEasy cuts the corner for you.

![Five versions of an L-shaped corner: plain; the outer corner rounded; the outer corner cut straight (chamfer) with the size marked; an ink trap cut into the inner corner; and a small triangular corner glyph placed on the top corner.](diagram:drawing-effects-corners)

The four effects are:

- **Round**: replaces the corner with a smooth arc that touches both sides.
- **Chamfer**: cuts the corner off with a straight line.
- **Ink Trap**: cuts a notch into the ink at the corner. In very small sizes and on poor paper, ink
  spreads into tight corners and fills them; the notch leaves room for it, so the corner looks
  sharp when printed.
- **Corner Glyph**: places another glyph on the node, for example a small serif or a decorative
  spur, turned so that it follows the path.

**Size** sets how far back along each side the corner is cut (for Round, Chamfer and Ink Trap).
**Depth** sets how deep an ink trap cuts into the ink. Effects work on corners between straight
lines and on corners between curves.

### Adding a corner effect

Corner effects are in Pro mode.

1. Open the glyph and choose the Node tool.
2. Select one or more **corner** nodes. Smooth points and handles are ignored.
3. In the **Drawing** panel, under **Corners**, set the **Size** (and **Depth** for an ink trap).
4. Click **Round**, **Chamfer** or **Ink Trap**.

![The E of a new font with corner effects: its outer corners are marked R (round) and C (chamfer), the four inner corners T (ink trap); the Drawing panel shows "Now: trap 25 45", Size 30, Depth 60 and the corner buttons.](screen:corners)

Each node with an effect gets a small ring on the canvas and a letter: **R** for round, **C** for
chamfer, **T** for ink trap, **G** for a corner glyph. When you select a node that already has an
effect, the panel shows it after **Now:**, and a **Remove** button takes it away.

The node stays where it is in your drawing; the effect is applied when the glyph is shown and
exported. To move the corner, move the node; to make the curve bigger, change the size.

### Corner glyphs

A corner glyph is a little drawing that FontEasy places on a node, like a stamp.

1. Create a new glyph whose name starts with `_corner.`, for example `_corner.serif`.
2. Draw the shape so that its **origin** (the point 0,0) is where it should touch the node, and so
   that it points along the **x axis** (to the right). FontEasy turns the shape to follow the path
   leaving the node.
3. Open the glyph that should get the corner, select the node, and choose the glyph from the
   **Corner Glyph** menu in the Drawing panel.

The shape is merged into the outline. Corner glyphs are working glyphs: they are not exported as
glyphs of their own. If no corner glyph exists yet, the menu explains: "Draw a glyph named
_corner.something first: its origin goes on the node, its x axis along the path."

## Smart components

A [component](/reference/glossary/#component) normally reuses another glyph exactly as it is. A
[smart component](/reference/glossary/#smart-component) can **change shape** each time you use it.
It has its own axes, like a tiny variable font: a bar can have a **Length** axis, a bowl a
**Width** axis. Each place that uses the part sets its own value.

![A smart bar: the glyph _bar is the drawing at the axis minimum (100 units long), _bar.smart.Length is the drawing at the maximum (600), and a component set to Length 300 is calculated in between.](diagram:drawing-effects-smart)

How it works:

- The smart glyph itself (for example `_bar`) is the drawing at the **minimum** of each axis.
- For each axis there is a **pole** glyph named `_bar.smart.Length`: the same drawing at the
  **maximum**.
- A component of `_bar` stores a value for each axis. FontEasy calculates the shape between the
  two drawings, just like interpolation between masters. So the pole must have the same points as
  the smart glyph.
- On export, smart components are turned into plain outlines, and pole glyphs are not exported.

### Making a smart part

Smart components are in Pro mode.

1. Create and draw the part, for example a horizontal bar named `_bar`, at its shortest.
2. Open it, and in the **Drawing** panel under **Smart Components**, click **Add Axis**. FontEasy
   suggests a name (Width, Height, Length, Size); type your own if you like, and set **min** and
   **max** (they start at 0 and 100). FontEasy creates the pole glyph as a copy.
3. Click **draw max** to open the pole glyph, and drag its points to the shape at the maximum:
   for a Length axis, drag the right end of the bar out. Move points; do not add any.

### Using a smart part

1. Open the glyph that should use the part, for example `T`, and add `_bar` as a component, the
   same way as any component (see the [chapter on components](/drawing/components/)).
2. In the **Drawing** panel, under **Smart Components**, each smart component shows its base name
   and a slider for each axis.
3. Drag the slider to stretch the part. Each component keeps its own value.

![A T built with smart bars: the Drawing panel lists two _bar components, with Length sliders at 520 and 600.](screen:smart)

## Hobby curves

Drawing smooth curves with handles takes practice: you have to pull each [handle](/reference/glossary/#handle)
to the right length and angle. A [Hobby curve](/reference/glossary/#hobby-curve) does that work for
you. You only place the points the curve should pass through, and FontEasy works out smooth handles
using John Hobby's method (the one used by the MetaPost drawing language). Four points placed
like the corners of a diamond give an almost perfect circle.

![Left: four points clicked in a diamond shape. Right: the smooth Hobby curve through them, a circle, with its handles worked out.](diagram:drawing-effects-hobby)

There are three ways to use Hobby curves:

- **While drawing**: choose the Pen tool and tick **Hobby curves** in the options bar. Click only
  the points the curve passes through; the handles are worked out as you go.
- **On contours you already drew**: in the **Drawing** panel, under **Curves**, click **Hobby
  Curves** to rework every contour of the glyph, or select some points first and click **Hobby
  Curves (Selected)** to rework only those contours.
- **From the menu**: **Glyph › Contours › Hobby Curves** (Pro mode).

Corners stay corners: a sharp point between two straight lines keeps its straight lines.

:::tip
Hobby curves are great for quick, even shapes such as rounded letters and loops. For fine control
over a specific curve, adjust the handles by hand afterwards; the result is an ordinary curve.
:::

## Baking effects: Apply All Effects

Live effects are flexible, but sometimes you need plain outlines: to fine-tune points by hand,
to share the source with someone using another font editor, or to make masters compatible.

In the **Drawing** panel under **Curves**, **Apply All Effects** bakes the stroke, the corners and
the smart parts of the open glyph into plain outlines, in every master. The button appears only
when the glyph has effects. (For a stroke alone, **Expand** in the Stroke section does the same.)

You do not have to bake effects before exporting. FontEasy applies them to a copy whenever it
builds the font, so the exported font always contains plain outlines while your source keeps the
effects editable.

:::caution
Baking cannot be switched off again later, except with **Edit › Undo**. Keep a copy of the font,
or bake only when the design is settled.
:::

## The Sketchboard

Before drawing a glyph properly, it helps to scribble: try a few shapes, see a word together,
compare an idea with what the font already has. The **Sketchboard** is a scrap-paper tab for that.
Open it with **Tools › Sketchboard**; it appears as a tab next to **Overview**.

![The Sketchboard tab of Mutator Sans: an e and an a drawn with the pencil (the a is selected), the word SKETCH set in the font below, and the toolbar with Pencil, Text, Select, the glyph name a.sketch and Make Glyph.](screen:sketch)

The toolbar has three tools:

- **Pencil**: draw freehand strokes. **Width** sets the pencil's thickness (2 to 400 units).
- **Text**: type a word in the **Text** box, then click the board to place it. The text is set in
  the current font, so you can see your sketches next to real letters.
- **Select**: click an item to select it, <kbd>Shift</kbd>+click to add or remove items, drag to
  move them, and press <kbd>Delete</kbd> or click **Delete** to remove them.

Scroll to zoom and drag with the right mouse button to pan. Faint lines show the baseline,
x-height and cap height, so your sketches have the right size. **Clear Board** removes everything.
The board is saved with the font.

### Turning a sketch into a glyph

1. With **Select**, click the pencil strokes that make up the letter (<kbd>Shift</kbd>+click for
   more than one).
2. Type a name in **Glyph name**, for example `a.sketch` or `a`.
3. Click **Make Glyph**.

FontEasy creates a new glyph from the selected strokes: each stroke becomes an open path with
smooth curves fitted to it, drawn with a round pen as wide as your pencil. The new glyph opens in
the editor, and the status bar says "Glyph a.sketch made from the sketch." Now you can refine the
paths, change the pen in the Drawing panel, or expand the stroke into outlines.

## Tips

- **Combine effects.** A stroke with round corners and a Hobby-curved centre line can give a whole
  rounded alphabet from a handful of points.
- **Keep effect glyphs tidy.** Name corner glyphs `_corner.…` and smart parts with a leading
  underscore, such as `_bar`, so they are easy to tell apart from real letters.
- **Use the Preview.** Effects show everywhere, including the Preview panel and the Overview, so
  you can judge them at text size.

:::caution[When something looks wrong]
- **A stroked glyph is empty.** Check that **Draw the paths with a pen** is ticked and the width is
  not tiny. Closed paths are only stroked with **Closed paths too**.
- **An ink trap points the wrong way.** Ink traps cut into the ink, which FontEasy finds from the
  contour direction. Use **Glyph › Contours › Correct Direction** and look again.
- **A smart part does not stretch.** The pole glyph must have the same points as the base glyph;
  otherwise it is skipped.
:::

## Summary

- Drawing effects are **live**: the glyph keeps your drawing and the effect is applied whenever it
  is shown or exported.
- A **stroke** turns paths into centre lines drawn with a **round pen** (even width) or a **flat
  nib** (thick and thin, set by **Nib angle** and **Thin stroke**). Use it for monoline and
  single-line fonts.
- **Corner effects** (**Round**, **Chamfer**, **Ink Trap**, **Corner Glyph**) are set on selected
  corner nodes and marked R, C, T, G on the canvas.
- **Smart components** have their own axes; pole glyphs (`name.smart.Axis`) hold the drawing at the
  maximum, and each component sets its own values.
- **Hobby curves** give smooth curves through the points you click.
- **Expand** and **Apply All Effects** bake effects into plain outlines.
- The **Sketchboard** is a scratch tab for pencil strokes and words, and **Make Glyph** turns
  strokes into a glyph.

## Try it yourself

1. Draw an "l" as a single vertical open path and an "o" as a closed circle. Give the "l" a stroke
   with a round pen, width 80. Then tick **Closed paths too** and watch the "o" become a ring.
   Switch to **Flat nib** and try nib angles of 0°, 30° and 60°.
2. In Pro mode, draw a rectangle, select its four corners and click **Round** with size 40. Then
   select one corner and click **Ink Trap**. Finally click **Apply All Effects** and look at the
   points FontEasy made.
