---
title: Outlines, Points and Curves
description: How letters are drawn as outlines made of points and Bézier curves, and the habits that keep those outlines clean.
---

Every letter in a digital font is a drawing. Not a photo made of tiny squares, but a precise
description of its edge: "start here, go straight up to there, then curve round to here". That
edge is called the **outline**, and the computer fills it in with ink when you type. Because the
outline is a description and not a picture, the same letter looks crisp at 8 points on a phone and
at 800 points on a poster.

In FontEasy you draw these outlines yourself, point by point. That can feel strange at first,
especially the curves, which are controlled by little "handles" that stick out of the outline. The
good news: there are only a handful of ideas to learn, and once they click, every letter is built
from the same few pieces.

This chapter explains those ideas before you start drawing in earnest. It is the theory behind the
next chapters, so take your time with the pictures.

In this chapter you will learn:

- what an outline, a point, a path and a contour are;
- the difference between closed and open contours, and what a counter is;
- how Bézier curves work, and the difference between cubic and quadratic curves;
- what FontEasy keeps when you draw, import and export;
- corner points and smooth points;
- why points belong at the extremes of curves;
- what contour direction is and why it decides where the holes are;
- what overlapping contours are and when to remove them;
- a short list of good habits for clean outlines.

## A letter is an outline

A [glyph](/reference/glossary/#glyph) is one drawing in a font: the shape for "a", for "é", for
"7" or for "&". Each glyph is made of one or more [outlines](/reference/glossary/#outline).
Think of a cookie cutter: the metal edge is the outline, and the dough inside is the ink. A font
file stores only the cutter. The computer presses it into the dough every time the letter is
shown.

The picture below is the letter "o" of Source Serif as FontEasy sees it. You can see two closed
loops: the outside edge and the edge of the hole. Along those loops sit the points that define the
shape.

![The "o" of Source Serif: square and round nodes sit on the outline, small circles off the outline are handles, and the hole in the middle is the counter.](diagram:outlines-anatomy)

The words in this picture are the vocabulary of this whole guide:

- A [point](/reference/glossary/#point) is a position on the drawing, with an x (left–right) and a
  y (up–down) value, measured in font units.
- An [on-curve point](/reference/glossary/#on-curve-point), also called a
  [node](/reference/glossary/#node), lies on the outline itself. The outline passes through it.
- An [off-curve point](/reference/glossary/#off-curve-point), usually called a
  [handle](/reference/glossary/#handle), lies beside the outline. The outline does not touch it;
  the handle only pulls the curve towards itself, like a magnet.
- A [path](/reference/glossary/#path) is a line through points, and a closed path is a
  [contour](/reference/glossary/#contour).
- The [counter](/reference/glossary/#counter) is the empty space inside a letter, like the hole
  of the "o" or the enclosed part of the "e".

:::note[Font units]
Positions are measured in font units, not millimetres or pixels. Most fonts divide the height of
an imaginary square, the [em](/reference/glossary/#em), into 1000 units (the
[units per em](/reference/glossary/#units-per-em)). An "o" might be 475 units tall. When the
letter is printed at 10 points, those 1000 units shrink to 10 points; at 100 points they grow to
100. You always draw in units.
:::

## Points, paths and contours

### Nodes and segments

Between two nodes runs a **segment**. If there are no handles between the two nodes, the segment
is a straight line. If there are handles, the segment is a curve. A contour is simply a chain of
segments: line, curve, curve, line, and so on, until it comes back to where it started.

So a capital "I" without serifs needs four nodes and four straight segments: a rectangle. An "o"
like the one above needs two contours, each with four nodes and four curved segments.

### Closed and open contours

A contour that comes back to its starting node is **closed**. Only closed contours can be filled
with ink, because only they have an inside and an outside. A path that stops before it comes back
is an [open contour](/reference/glossary/#open-contour): it has two loose ends.

![On the left an open path with two loose ends, on the right a closed contour with no ends that is filled.](diagram:outlines-open-closed)

Open contours are almost always a mistake in a font. They happen when you stop drawing with the Pen
before clicking the first node again, or when you cut a contour with the Scissors. FontEasy marks
an open contour as an error in the **Validation** panel ("Open contour"), and its **Fix** button
closes it with a straight line. Open paths are useful in one place only: as the skeleton of a
stroked letter, which the [Drawing panel](/advanced/drawing-effects/) turns into a real outline.

### Several contours, and holes

A glyph can have as many contours as it needs. An "i" has two (the stem and the dot), an "o" has
two (the outside and the hole), a "B" has three (the outside and two holes), a "%" has five.
Whether a contour adds ink or cuts a hole depends on its direction, which you will meet in
[Contour direction](#contour-direction) below.

## Curves without fear: Bézier curves

Font curves are [Bézier curves](/reference/glossary/#bezier-curve), named after the engineer
Pierre Bézier, who used them to design car bodies. You do not need any mathematics to use them.
You only need one picture in your head:

> A curve leaves a node in the direction of its handle, and it bends towards the next handle
> before it arrives at the next node.

The handle does two jobs. Its **direction** says which way the curve sets off. Its **length** says
how long the curve keeps going in that direction before it turns. A short handle lets the curve
turn early; a long handle makes it hold its direction longer.

![A cubic curve with two handles between two nodes, and a quadratic curve with one shared off-curve point.](diagram:outlines-bezier)

### Cubic and quadratic curves

There are two kinds of Bézier curves in fonts:

- A [cubic curve](/reference/glossary/#cubic-curve) has **two** handles per segment: one coming
  out of the start node, one coming into the end node. Each node has its own handle on each side,
  so you can shape every curve precisely. This is the kind of curve PostScript fonts use, which
  today means `.otf` files with [CFF](/reference/glossary/#cff) outlines. Illustrator, Inkscape
  and Figma draw with cubic curves too.
- A [quadratic curve](/reference/glossary/#quadratic-curve) has **one** off-curve point per
  segment, shared by both ends. It is simpler to compute, so the
  [TrueType](/reference/glossary/#truetype) format (`.ttf` files) uses it. A quadratic curve
  cannot bend as freely as a cubic one, so a quadratic outline usually needs more points for the
  same shape. TrueType may also chain several off-curve points in a row; the nodes between them
  are then implied, halfway between the off-curve points.

You can see the difference in the same letter. The "o" on the left comes from the TrueType file of
Source Serif, the one on the right from its OpenType (CFF) file:

![The same "o" drawn with quadratic curves on the left, with many off-curve points in a chain, and with cubic curves on the right, with fewer points.](diagram:outlines-ttf-otf)

Both describe nearly the same shape. The cubic version is easier to edit by hand because each
curve has exactly two handles you can grab.

### What FontEasy keeps

FontEasy stores your points exactly as they are, the way the
[UFO](/reference/glossary/#ufo) format does, so cubic and quadratic curves can live side by side
in one font without anything being lost.

- When you **draw** with the Pen, the Pencil or the Ellipse tool, you get cubic curves.
- When you **import** a `.ttf` file, its quadratic curves stay quadratic. When you import an `.otf`
  file, its cubic curves stay cubic.
- In Pro Mode you can change a glyph from one kind to the other with
  **Glyph › Contours › Convert to Cubic** or **Glyph › Contours › Convert to Quadratic**. Both work
  on the open glyph, or on every glyph you selected in the Overview.
- When you **export**, FontEasy makes what each format needs. A `.ttf` file gets quadratic
  outlines; an `.otf` file gets CFF outlines drawn from your cubic curves. You do not need to
  convert anything yourself before exporting.

![Editing "a" of Source Serif, imported from a TrueType file: the many small round off-curve points are the quadratic curves of that file.](screen:g-edit)

:::tip
If you edit an imported TrueType font by hand and find all those off-curve points fiddly, choose
**Glyph › Contours › Convert to Cubic** for the glyph first. The conversion is exact, so the shape
does not change, and you get two handles per curve to work with.
:::

## Corner points and smooth points

Nodes come in two kinds, and the difference is all about the handles on either side.

- At a [corner point](/reference/glossary/#corner-point), the outline changes direction
  suddenly. The handles (if there are any) point in different directions. Think of the top of an
  "A" or the corners of an "E".
- At a [smooth point](/reference/glossary/#smooth-point), the outline flows through without a
  bump. The two handles sit on one straight line, on opposite sides of the node. The tops and
  bottoms of an "o" are smooth points.

![On the left a corner point where the handles form an angle and the outline turns sharply, on the right a smooth point with both handles on one straight line.](diagram:outlines-corner-smooth)

FontEasy draws the two kinds differently on the canvas, so you can tell them apart at a glance:

| On the canvas | Meaning |
|---|---|
| Square | Corner point (node) |
| Large circle | Smooth point (node) |
| Small circle | Off-curve point (handle) |
| Small triangle next to a node | The first node of the contour, pointing the way the contour runs |

When you drag one handle of a smooth point, FontEasy turns the handle on the other side so that
both stay in line. The other handle keeps its own length. At a corner point, each handle moves on
its own.

To change a node from corner to smooth or back, select it and choose **Glyph › Toggle Smooth**
(<kbd>Alt</kbd>+<kbd>S</kbd>), or double-click the node with the Select or Node tool. When a node
becomes smooth, FontEasy lines up its two handles.

:::caution[A smooth point with a kink]
If a node is marked smooth but its handles are not in line, the outline shows a small bump.
FontEasy reports this in the **Validation** panel as "Smooth point with a kink", and **Fix**
straightens the handles.
:::

## Handle length and the shape of a curve

The direction of the handles decides where a curve goes. Their length decides its character. Here
are three curves from the same two nodes, with the same handle directions, and only the length
changed:

![Three quarter curves between the same two nodes: short handles give a pointy curve, balanced handles a round curve, long handles a boxy curve.](diagram:outlines-handle-length)

- **Short handles** make the curve turn quickly. The result looks pointy and thin in the middle.
- **Balanced handles** give an even, round curve. For a perfect quarter circle, each handle is
  about 55% of the radius long.
- **Long handles** keep the curve straight for longer and turn late. The curve looks boxy, like a
  rounded square.

Type designers use all three on purpose. A geometric sans-serif "o" is close to a circle; a
"superelliptic" "o" (like many grotesque typefaces) has longer handles and looks squarer. What you
want to avoid is handles so long that they cross each other, or that reach past the next node.
That makes curves that loop or bulge in odd ways.

:::tip
A useful habit when judging a curve: look at the two handles of one segment. If one is much
longer than the other, the curve usually looks lopsided. Bring them closer to the same length,
then adjust from there.
:::

## Extreme points

An [extreme point](/reference/glossary/#extreme-point) is the place on a curve that is furthest
up, down, left or right. On an "o", these are the top, the bottom and the far left and right
sides. Good outlines have a node at every extreme, and the handles at those nodes are exactly
horizontal (at the top and bottom) or exactly vertical (at the left and right).

![On the left an ellipse with nodes at the top, bottom, left and right and straight handles; on the right the same shape with nodes in between, so no node sits at the extremes.](diagram:outlines-extremes)

Both drawings show the same shape, so why does it matter?

- **Rendering and hinting.** At small sizes on screen, the font is fitted to the pixel grid.
  [Hinting](/reference/glossary/#hinting) and the rasteriser work much better when the
  highest, lowest and outermost parts of a curve are nodes they can line up.
- **Measuring.** The bounding box of a glyph (its total width and height) comes straight from the
  points when the extremes are nodes. Spacing and alignment get more reliable.
- **Editing.** Horizontal and vertical handles are easy to control: you know where the curve is
  flattest. You can line the top of an "o" up with the x-height in one move.
- **Variable fonts.** When glyphs are interpolated between masters, extremes as nodes keep the
  shapes stable.

Here is a real letter drawn this way. Every curve of the "S" has its nodes at the top, bottom,
left and right, with flat or upright handles:

![The "S" of Source Serif with its nodes and handles: nodes sit at the top, bottom and sides of every curve, and their handles are horizontal or vertical.](diagram:outlines-s)

FontEasy checks this for you. A curve that bulges more than one unit past its nodes is reported as
"Missing extreme point" in the **Validation** panel. In Pro Mode, **Glyph › Contours › Add Extreme
Points** adds the missing nodes for the open glyph (or for the glyphs selected in the Overview), and
the Validation panel's **Fix** button does the same for one problem.

## Contour direction

Every contour runs in a direction: from its first node to the next, all the way round. This
[contour direction](/reference/glossary/#contour-direction) is invisible in the printed letter,
but it decides something important: **which contours add ink and which cut holes**.

The rule FontEasy follows is the PostScript and UFO rule:

- **Outer contours run counter-clockwise.**
- **Inner contours (holes) run clockwise.**

When the inner contour of an "o" runs the other way from the outer one, the computer knows it is a
hole and leaves it empty. If both run the same way, many programs fill the hole in, and your "o"
becomes a black blob.

![On the left a correct "o": the outer contour runs counter-clockwise and the inner one clockwise, so the counter stays empty; on the right both run counter-clockwise and the hole fills in.](diagram:outlines-direction)

You can see the direction in the editor: the first node of each contour has a small triangle next
to it, pointing the way the contour runs. The tools to change it are in the **Glyph › Contours**
menu:

| Command | What it does |
|---|---|
| **Correct Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) | Turns every contour of the glyph the right way: outer contours counter-clockwise, holes clockwise. |
| **Reverse Direction** | Reverses the selected contours (or all of them when nothing is selected). |
| **Set Start Point** | Makes the selected node the first node of its contour. |

FontEasy decides what is a hole by looking at what lies wholly inside what. So the bar of an "H"
that sits on top of its stems still counts as an outer shape, not a hole. When a direction is
wrong, the **Validation** panel lists "Wrong contour direction", and **Fix** reverses it.

:::tip
You rarely need to think about direction while drawing. Draw your shapes, then press
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> (Correct Direction) once you are done. The start
point matters mostly for [variable fonts](/advanced/variable/), where every master must start each
contour at the matching node.
:::

## Overlapping contours

While you draw, it is often easiest to build a letter from simple pieces that overlap. An "H" can
be two upright rectangles and a bar laid across them; a "t" can be a stem and a crossbar. These are
[overlapping](/reference/glossary/#overlap) contours.

![On the left an "H" built from three overlapping rectangles; on the right the same letter after Remove Overlap, as one contour.](diagram:outlines-overlap)

Overlaps are fine in your working file. When you export a normal (static) font, FontEasy removes
them for you; the **Export Font** dialog has the option **Remove overlaps (your source keeps
them)**, and your drawing is not changed. Variable fonts keep their overlaps on purpose, because
every master must have the same contours.

If you want one clean outline in your drawing too, choose **Glyph › Contours › Remove Overlap**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>). Curves stay curves, and contours that did not
overlap anything are left exactly as they were. The **Validation** panel lists overlaps as
"Overlapping contours", but only as information, not as an error.

A different thing is a contour that crosses **itself**, like a figure eight. That is reported as
"Contour crosses itself", an error, because parts of it may render as holes. **Fix** untangles it.

## Good habits for clean outlines

Professional outlines look simple. Fewer, well-placed points are easier to edit, interpolate and
hint, and they make smoother curves. Keep these habits in mind:

1. **Use as few points as the shape needs.** Every extra node is a place where a curve can wobble.
   An "o" needs four nodes per contour, not twelve.
2. **Put nodes at the extremes**, and keep the handles there horizontal or vertical.
3. **Use smooth points where the outline flows** and corner points only where it really turns
   sharply.
4. **Keep handles inside their segment.** A handle should not reach past the next node or cross
   the other handle.
5. **Make straight lines really straight.** A line one unit off horizontal is usually a slip of
   the mouse; the Validation panel reports it as "Almost straight line".
6. **Stay on whole units.** FontEasy snaps points to whole font units as you drag, and reports
   "Fractional coordinates" when points sit between units, because they are rounded on export.
7. **Close every contour** and check the direction with
   <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> when you are done.
8. **Avoid points on top of each other.** Two nodes in the same spot make a zero-length segment
   ("Duplicate points" in the Validation panel).

FontEasy has tidy-up commands for the open glyph, or for every glyph selected in the Overview, in
**Glyph › Contours**:

| Command | What it does |
|---|---|
| **Simplify** | Removes nodes from smooth stretches of curve when the outline stays within one unit. Corners, extremes and straight lines are kept. |
| **Clean Up Points** (Pro) | Removes duplicate points, nodes in the middle of straight lines and handles on curves that are really straight. |
| **Add Extreme Points** (Pro) | Adds a node at every extreme that does not have one. |
| **Round Corners…** | Rounds the selected corner points with a radius you choose. |

And **Glyph › Fix Problems** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) fixes every fixable
problem in the glyph in one step. Like every edit, each of these is a single step you can undo with
<kbd>Ctrl</kbd>+<kbd>Z</kbd>.

## When something looks wrong

:::caution[The hole of my "o" (or "a", "e", "B") is filled in]
The inner contour runs the same way as the outer one. Choose **Glyph › Contours › Correct
Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>).
:::

:::caution[A shape is drawn as a line but has no fill]
It is an open contour. Use **Fix** next to "Open contour" in the Validation panel, or close it
yourself: choose the Pen and click the first node of the path.
:::

:::caution[A curve looks lumpy or wobbly]
There are probably too many nodes, or a smooth point has a kink. Try **Glyph › Contours ›
Simplify**, then look at the remaining handles: do they sit in line, and are the two handles of
each segment of similar length?
:::

:::caution[The Validation panel says "Missing extreme point"]
A curve bulges past its nodes. Click **Fix** next to the problem, or in Pro Mode choose
**Glyph › Contours › Add Extreme Points**. Then check that the new nodes have flat or upright
handles.
:::

The chapter on [outline problems](/drawing/problems/) goes through every check in the Validation
panel in detail.

## Summary

- A glyph is made of outlines; the outline is filled with ink, so it scales to any size.
- Nodes (on-curve points) lie on the outline; handles (off-curve points) pull the curve.
- A contour is a closed chain of segments. Only closed contours are filled. Open contours are
  errors, except as skeletons for strokes.
- Bézier curves leave a node in the direction of its handle; handle length controls how round or
  boxy the curve is.
- Cubic curves (two handles per segment) are used in `.otf`/CFF fonts and by FontEasy's drawing
  tools; quadratic curves (one shared off-curve point) are used in `.ttf` fonts. FontEasy keeps
  both and makes the right kind on export.
- Corner points turn sharply; smooth points have their handles in line. Toggle with
  <kbd>Alt</kbd>+<kbd>S</kbd> or a double-click.
- Put nodes at the extremes, with horizontal or vertical handles.
- Outer contours run counter-clockwise, holes clockwise. Correct Direction fixes it in one step.
- Overlaps are fine while drawing; they are removed when a static font is exported, or with Remove
  Overlap.

## Try it yourself

1. Open any font, double-click the "o" in the Overview and choose the Node tool
   (<kbd>A</kbd>). Count the nodes and handles of each contour. Find the triangle that marks each
   contour's first node: which way does each contour run? Is there a node at the top, bottom,
   left and right of each curve?
2. Choose the Ellipse tool (<kbd>L</kbd>) and drag a shape in an empty glyph. It has four smooth
   nodes at its extremes. With the Node tool, drag one handle of the top node and watch the
   opposite handle follow. Now select that node, press <kbd>Alt</kbd>+<kbd>S</kbd> to make it a
   corner, and drag the handle again. Undo with <kbd>Ctrl</kbd>+<kbd>Z</kbd> when you are done.
