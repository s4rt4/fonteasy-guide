---
title: Drawing Tools
description: Every tool in the toolbox, what it does and how to use it, plus the contour commands in the Glyph menu and a first practice drawing.
---

The toolbox down the left edge of the window holds twenty tools. Some draw new shapes, some edit
the points you already have, some cut, turn or measure, and a few help you space and kern letters
right in the editor. You do not need all of them to make a font. Most designers live in three or
four: the Select and Node tools to adjust, the Pen to draw, and the Metrics tool to space.

This chapter goes through the tools one by one, in toolbox order. For each tool you get what it is
for, how to use it, its keyboard shortcut and the modifier keys it understands. After the tools
come the contour commands in the **Glyph** menu, such as Union and Remove Overlap, and to finish, a
short exercise: drawing an "n" with the Pen.

If words like node, handle or contour are still new, read [Outlines, points and curves](/drawing/outlines/)
first. The editor itself (the canvas, the rulers, the panels) is described in
[The glyph editor](/drawing/glyph-editor/).

In this chapter you will learn:

- how the toolbox is organised, and how to reach the tools hidden in its flyouts;
- what each of the twenty tools does, with its shortcut;
- which modifier keys (<kbd>Shift</kbd>, <kbd>Alt</kbd>, <kbd>Space</kbd>) change what a tool does;
- how to combine shapes with Union, Subtract, Intersect and Exclude;
- what the other commands in **Glyph › Contours** and **Glyph › Transform** do;
- how to draw a simple "n" with the Pen.

## The toolbox

The toolbox is one column of buttons. Some buttons hold more than one tool: those have a small
triangle in their bottom-right corner. To reach the other tools of such a slot:

1. **Right-click** the button, or press and hold it for a moment.
2. A small menu (a flyout) opens, listing the tools of that slot with their shortcuts.
3. Click the tool you want.

The button now shows the tool you picked, and keeps showing it until you pick another one from the
same flyout. Hover over any button to see the tool's name and shortcut.

Thin lines divide the toolbox into four groups: drawing and editing, measuring and anchors, spacing,
and navigation.

| Slot | Tools (shortcut) |
|---|---|
| 1 | Select (<kbd>V</kbd>), Node (<kbd>A</kbd>) |
| 2 | Pen (<kbd>P</kbd>), Add Point (<kbd>=</kbd>), Delete Point (<kbd>-</kbd>) |
| 3 | Pencil (<kbd>N</kbd>) |
| 4 | Rectangle (<kbd>M</kbd>), Ellipse (<kbd>L</kbd>), Polygon (<kbd>Shift</kbd>+<kbd>L</kbd>) |
| 5 | Knife (<kbd>K</kbd>), Scissors (<kbd>C</kbd>) |
| 6 | Rotate (<kbd>R</kbd>), Scale (<kbd>S</kbd>) |
| 7 | Measure (<kbd>U</kbd>), Anchor (<kbd>Shift</kbd>+<kbd>A</kbd>) |
| 8 | Metrics (<kbd>Y</kbd>) |
| 9 | Kerning (<kbd>J</kbd>) |
| 10 | Text (<kbd>T</kbd>) |
| 11 | Hand (<kbd>H</kbd>) |
| 12 | Zoom (<kbd>Z</kbd>) |

The single-key shortcuts work whenever a font is open and no text field has the keyboard focus.
You can change any of them in **Edit › Keyboard Shortcuts…**, like every other shortcut.

:::note[Simple Mode]
Simple Mode keeps the toolbox short. Add Point, Delete Point, Polygon, Scissors, Rotate, Scale and
Measure are only in Pro Mode, so in Simple Mode the Rotate/Scale slot disappears and the Measure
slot shows the Anchor tool. Switch with **Window › Switch Mode**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>) or the **Pro / Simple** switch in the title bar.
:::

Whatever tool you hold, a few things always work on the canvas: hold <kbd>Space</kbd> and drag to
pan, drag with the middle mouse button to pan, use <kbd>Ctrl</kbd>+wheel to zoom, and drag from a
ruler to add a guide.

## Selecting and editing

### Select

![The Select tool chosen while editing "O": with nothing selected, the options bar shows Width, LSB and RSB, and the hint "Select and move contours, components and anchors."](screen:g-tool-select)

**Select** (<kbd>V</kbd>) is the tool you come back to between all others. It works on whole
shapes:

- Click the outline of a contour to select the **whole contour**. Drag it to move it.
- Click a component or an anchor to select it; drag to move it.
- Click a single point to select just that point.
- Drag in an empty area to select every point inside a rectangle.
- Drag the vertical line on the right of the glyph to change its **advance width**.
- Drag a guide to move it, or drag it onto a ruler to delete it.
- Double-click a component to open the glyph it comes from. Double-click another glyph of the text
  line to edit that glyph.

With <kbd>Shift</kbd>, clicks and rectangles add to the selection instead of replacing it. Arrow
keys nudge the selection by one unit, <kbd>Shift</kbd>+arrow by ten. With a selection, the options
bar shows its **X**, **Y**, **W** and **H**; without one, the glyph's **Width**, **LSB** and
**RSB**.

### Node

![The Node tool chosen while editing "O": the options bar shows Width, LSB and RSB, and the hint "Select and edit individual points and handles."](screen:g-tool-node)

**Node** (<kbd>A</kbd>) works on individual points and handles. It behaves like Select with two
differences that matter:

- Clicking the outline selects only that **segment**: the two nodes at its ends. Drag to move the
  segment.
- It is the natural tool for **handles**. Drag a handle to reshape its curve. At a smooth point,
  the handle on the other side turns along to stay in line.

Double-click a node to switch it between corner and smooth (the same as **Glyph › Toggle Smooth**,
<kbd>Alt</kbd>+<kbd>S</kbd>). Double-click the outline between two nodes to add a node there.

:::tip
To bend a straight line into a curve with the Node tool, the line first needs handles. Add a point
in the middle with the Add Point tool, or redraw that segment with the Pen.
:::

## Drawing

### Pen

![The Pen tool chosen while editing "O": the options bar shows the Hobby curves checkbox and the hint "Draw Bézier contours point by point."](screen:g-tool-pen)

**Pen** (<kbd>P</kbd>) draws outlines point by point. It is the most precise drawing tool and the
one type designers use most. It has two gestures:

- **Click** to put down a corner point. Between two clicked points, the segment is a straight line.
- **Click and drag** to put down a smooth point and pull out its handles. The segment into this
  point becomes a curve. You drag the outgoing handle; the incoming one mirrors it on the other side.

![On the left three clicks make corner points joined by straight lines; on the right the middle point is dragged, which makes a smooth point with handles and curves on both sides.](diagram:drawing-tools-pen-click-drag)

To draw a closed shape:

1. Click (or drag) where the contour starts.
2. Keep clicking or dragging for each next node, going round the shape.
3. To finish, click the **first node** again. The contour closes.

Press <kbd>Enter</kbd> or <kbd>Esc</kbd>, or switch to another tool, to stop drawing without closing
the contour. The path then stays open, and the Validation panel will remind you about it. Each click
is a separate step in the History, so <kbd>Ctrl</kbd>+<kbd>Z</kbd> removes the last point.

Points you place with the Pen snap to whole units, to the metric lines and to guides.

#### Hobby curves

Tick **Hobby curves** in the options bar to draw in a different way: you only click the points the
curve should pass through, and FontEasy works out smooth handles for you, using the
[Hobby curve](/reference/glossary/#hobby-curve) method of John Hobby (the one used by MetaPost).
There is nothing to drag: each click reshapes the whole curve so it flows evenly through all your
points. A corner between two straight lines stays a corner.

Hobby curves are a quick way to draw calm, round shapes, such as the bowl of a "b" or a script
letter. You can always fine-tune the handles afterwards with the Node tool. To turn an existing
contour into Hobby curves, select it and choose **Glyph › Contours › Hobby Curves** (Pro Mode).

### Add Point

![The Add Point tool chosen while editing "O": the options bar shows the hint "Click a segment to add a point."](screen:g-tool-addpoint)

**Add Point** (<kbd>=</kbd>, Pro Mode) adds a node where you click on a segment. On a curve, the
new node splits it into two curves that follow exactly the same path, so the shape does not change;
you can then drag the new node and its handles. Double-clicking a segment with the Select or Node
tool does the same.

### Delete Point

![The Delete Point tool chosen while editing "O": the options bar shows the hint "Click a point to remove it, keeping the shape."](screen:g-tool-deletepoint)

**Delete Point** (<kbd>-</kbd>, Pro Mode) removes the point you click. When you remove a node, its
handles go with it and its two neighbours are joined by one segment, which stays a curve if there
are handles on either side. A contour left with fewer than two nodes disappears. To delete several
points at once, select them and press <kbd>Delete</kbd>.

### Pencil

![The Pencil tool chosen while editing "O": the options bar shows the hint "Draw freehand; the stroke becomes a smooth contour."](screen:g-tool-pencil)

**Pencil** (<kbd>N</kbd>) draws freehand. Drag across the canvas like a pen on paper. When you let
go, FontEasy simplifies the stroke and turns it into a smooth contour of curves, with far fewer
points than the stroke had. If you end the stroke close to where you started, the contour is closed;
otherwise it stays an open path. The new contour is selected, so you can move it or delete it
straight away.

The Pencil is great for sketching and for handwriting-style fonts. For a stroked, single-line look,
draw open paths and give them a stroke in the Drawing panel; see
[Drawing effects](/advanced/drawing-effects/).

### Rectangle

![The Rectangle tool chosen while editing "O": the options bar shows the hint "Drag to draw a rectangle (Shift: square)."](screen:g-tool-rectangle)

**Rectangle** (<kbd>M</kbd>) draws a rectangle: drag from one corner to the opposite corner. Hold
<kbd>Shift</kbd> for a square. While you drag, the size is shown next to the pointer in font units,
for example `90 × 670`. The result is a closed contour with four corner points, already running in
the right direction. Rectangles are the quickest way to block in stems, bars and serifs.

### Ellipse

![The Ellipse tool chosen while editing "O": the options bar shows the hint "Drag to draw an ellipse (Shift: circle)."](screen:g-tool-ellipse)

**Ellipse** (<kbd>L</kbd>) draws an ellipse inside the rectangle you drag. Hold <kbd>Shift</kbd> for
a circle. The ellipse has four smooth points, one at each extreme, with horizontal and vertical
handles: a model of clean points. Two ellipses, one inside the other, make a quick "O"; correct the
direction afterwards with <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> so the inner one becomes a
hole.

![An "O" drawn from two ellipses in the Node tool: four smooth points on each contour, at the top, bottom, left and right.](screen:editnew)

### Polygon

![The Polygon tool chosen while editing "O": the options bar shows Sides 6 and the hint "Drag to draw a regular polygon."](screen:g-tool-polygon)

**Polygon** (<kbd>Shift</kbd>+<kbd>L</kbd>, Pro Mode) draws a polygon with a point at the top,
fitted inside the rectangle you drag. Set the number of corners in the **Sides** field of the
options bar, from 3 to 24 (6 at first). Hold <kbd>Shift</kbd> to drag a square area, which gives a
regular polygon. Use it for triangles, for the arrows and signs of a symbol font, or for a
diamond-shaped dot.

## Cutting

### Knife

![The Knife tool chosen while editing "O": the options bar shows the hint "Drag across contours to cut them."](screen:g-tool-knife)

**Knife** (<kbd>K</kbd>) cuts shapes in two. Drag a straight line across a closed contour; a red
line shows the cut while you drag. When you let go, every closed contour that the line crosses
exactly twice is split into two closed contours along the line. Use it to slice a stem at an
angle, or to separate a part of a letter so you can move it.

### Scissors

![The Scissors tool chosen while editing "O": the options bar shows the hint "Click a segment to split the contour there."](screen:g-tool-scissors)

**Scissors** (<kbd>C</kbd>, Pro Mode) opens a closed contour at the place you click: on a node, the
contour is opened at that node; on a segment, a node is added there first. The result is an open
path with two ends at the same spot. That is mostly useful for strokes: an open skeleton line that
the Drawing panel turns into an outline. Remember that open contours are not filled.

## Transforming

### Rotate

![The Rotate tool chosen while editing "O": the options bar shows Width, LSB and RSB, and the hint "Drag to rotate the selection."](screen:g-tool-rotate)

**Rotate** (<kbd>R</kbd>, Pro Mode) turns the selection around the centre of its bounding box.
Drag on the canvas: the angle follows the pointer around that centre. Hold <kbd>Shift</kbd> to turn
in steps of 15°. If nothing is selected, the whole glyph turns. To type an exact angle instead, use
**Glyph › Transform › Rotate…** or the **Rotate** field of the Transform panel.

### Scale

![The Scale tool chosen while editing "O": the options bar shows Width, LSB and RSB, and the hint "Drag to scale the selection."](screen:g-tool-scale)

**Scale** (<kbd>S</kbd>, Pro Mode) makes the selection bigger or smaller around the centre of its
bounding box. Drag away from the centre to enlarge, towards it to shrink. Dragging sideways scales
the width, up and down the height. Hold <kbd>Shift</kbd> to keep the proportions. If nothing is
selected, the whole glyph is scaled. For exact percentages, use **Glyph › Transform › Scale…** or the
W and H fields of the options bar.

:::caution
Scaling a letter to make another one (a small "o" from a big "O") also scales its stems, so the
small letter looks thin next to the others. Use scaling as a start, then correct the stem
thickness by hand.
:::

## Measuring and placing

### Measure

![The Measure tool chosen while editing "O": the options bar shows the hint "Measure distances and angles in font units."](screen:g-tool-measure)

**Measure** (<kbd>U</kbd>, Pro Mode) is a ruler for the canvas. Drag from one place to another: a
line follows, with a label showing the distance in units, the angle in degrees and the horizontal
and vertical distances (`Δx`, `Δy`). The ends snap like points do, so it is easy to measure from a
metric line. Use it to check that stems have the same thickness, or how far a serif sticks out. The
Measure tool never changes the glyph.

### Anchor

![The Anchor tool chosen while editing "O": the options bar shows the hint "Click to add an anchor (top, bottom, …); drag anchors to place accents."](screen:g-tool-anchor)

**Anchor** (<kbd>Shift</kbd>+<kbd>A</kbd>) places [anchors](/reference/glossary/#anchor): named
points that tell FontEasy where accents attach. Click an empty spot to add an anchor; it gets the
next usual name the glyph does not have yet ("top", then "bottom", "ogonek", "center", "topright";
on an accent "_top", "top", "_bottom", "bottom"). Click an anchor to select it, drag it to move it.
Anchors are drawn as small diamonds with their names. Rename them, or type their exact position, in
the Glyph Info panel. The [Components and accents](/drawing/components/) chapter shows how anchors
build letters such as "é" and "ü".

## Spacing

### Metrics

![The Metrics tool chosen while editing "O": the options bar shows the hint "Drag the sidebearings; click another glyph of the text to space it."](screen:g-tool-metrics)

**Metrics** (<kbd>Y</kbd>) sets the [sidebearings](/reference/glossary/#sidebearing) right on the
canvas:

- Drag near the **right** edge of the glyph to change its advance width (the right sidebearing).
- Drag near the **left** edge to change the left sidebearing: the outline and the width move
  together, so the right sidebearing stays the same.
- Click **another glyph of the text line** to space that one next.

Under each glyph of the text line, the Metrics tool shows its left and right sidebearings and, below
them, its width. A sidebearing that comes from a metrics key shows the key next to the number, in
the accent colour. **Metrics › Metrics Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>)
chooses this tool and sets a spacing line for you. The full story is in
[Spacing and metrics](/spacing/metrics/).

### Kerning

![The Kerning tool chosen while editing "O": the options bar shows the hint "Drag a glyph to kern it against the one before (Alt: exception); arrows kern the next pair."](screen:g-tool-kerning)

**Kerning** (<kbd>J</kbd>) adjusts the space between two particular letters, such as "A" and "V".
Type a pair or a word in the Text bar first. Then:

- **Drag a glyph** of the line left or right to kern it against the glyph before it.
- Or click a glyph to pick the pair it forms with the glyph before it, then press
  <kbd>←</kbd> and <kbd>→</kbd> to kern that pair by one unit, or ten with <kbd>Shift</kbd>.
- Hold <kbd>Alt</kbd> while dragging or pressing the arrows to make an **exception**: a value just
  for these two glyphs, even if they belong to [kerning groups](/reference/glossary/#kerning-group).

The kerning value of each pair is written under the line, coloured by where it comes from (a group,
an exception or a plain pair), and a thin line marks the pair the arrows change.
**Kerning › Kerning Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>) opens the Kerning panel
and chooses this tool. See [Kerning](/spacing/kerning/).

## Navigating

### Text

![The Text tool chosen while editing "O": the options bar shows the hint "Type text above the canvas; click a glyph of it to edit that glyph."](screen:g-tool-text)

**Text** (<kbd>T</kbd>) puts the cursor in the Text bar above the canvas, so you can type the line of
text to edit in. Then click any glyph of the line on the canvas to edit that glyph. Because the Text
bar now has the keyboard focus, single-key tool shortcuts type letters there; click the canvas or
press a toolbox button to choose another tool.

### Hand

![The Hand tool chosen while editing "O": the options bar shows the hint "Pan the view (or hold Space)."](screen:g-tool-hand)

**Hand** (<kbd>H</kbd>) moves the view: drag to pan. You rarely need to pick it, because holding
<kbd>Space</kbd> gives you the hand with any tool, and the mouse wheel scrolls too.

### Zoom

![The Zoom tool chosen while editing "O": the options bar shows the hint "Click to zoom in, Alt-click to zoom out."](screen:g-tool-zoom)

**Zoom** (<kbd>Z</kbd>) magnifies. Click to zoom in two times around the pointer;
<kbd>Alt</kbd>+click to zoom out. Drag a rectangle to zoom so that the area fills the window. To get
the whole glyph back, press <kbd>Ctrl</kbd>+<kbd>0</kbd> (**View › Fit in Window**).

## Modifier keys at a glance

| Key | With | Effect |
|---|---|---|
| <kbd>Shift</kbd> | Select, Node | Click or drag a rectangle to add to (or remove from) the selection. |
| <kbd>Shift</kbd> | Arrow keys | Nudge ten units instead of one (kern ten units with the Kerning tool). |
| <kbd>Shift</kbd> | Rectangle, Ellipse, Polygon | Square, circle, regular polygon. |
| <kbd>Shift</kbd> | Rotate | Turn in steps of 15°. |
| <kbd>Shift</kbd> | Scale | Keep the proportions. |
| <kbd>Alt</kbd> | Kerning | Make a kerning exception. |
| <kbd>Alt</kbd> | Zoom | Zoom out instead of in. |
| <kbd>Space</kbd> | Any tool | Hold and drag to pan. |
| <kbd>Ctrl</kbd> | Mouse wheel | Zoom around the pointer. |
| <kbd>Enter</kbd> / <kbd>Esc</kbd> | Pen | Stop drawing the current path. |
| <kbd>Esc</kbd> | Select, Node | Deselect. |

## Contour commands in the Glyph menu

The **Glyph** menu has commands that work on whole contours. Most of them work on the open glyph,
and some also on every glyph you selected in the Overview, so you can clean up a whole font at once.

![The Glyph menu open: Edit Glyph, Previous and Next Glyph, New, Duplicate and Rename Glyph, Mark Color, Toggle Smooth, Copy to Background, Place Image, Add Component, Decompose, Add Anchors, Transform, Contours, Generate and Update Composites, and Fix Problems.](screen:g-menu-glyph)

### Combining shapes: Union, Subtract, Intersect, Exclude

These four commands combine overlapping contours, like the shape tools in Illustrator. They need the
editor, and they use your selection: select a point (or more) of the contour that should act as the
second shape, then choose the command from **Glyph › Contours**. The second shape is the
selected contour, or the last contour of the glyph if nothing is selected.

![A circle and a square: Union merges them into one shape, Subtract cuts the selected square out of the circle, Intersect keeps only the part they share, and Exclude keeps everything except the shared part.](diagram:drawing-tools-booleans)

| Command | Result |
|---|---|
| **Union** | Merges the shapes into one outline. With fewer than two contours selected, it merges every contour of the glyph. |
| **Subtract** | Cuts the selected shape out of the others. |
| **Intersect** | Keeps only the part the shapes share. |
| **Exclude** (Pro) | Keeps everything except the shared part. |

Curves stay curves, and contours not involved are left exactly as they were. If nothing changes,
the status bar says "Nothing changed: select contours that overlap others."

### Everything in Glyph › Contours

| Command | Shortcut | What it does |
|---|---|---|
| **Remove Overlap** | <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd> | Merges all overlapping contours into clean outlines and untangles contours that cross themselves. |
| **Union**, **Subtract**, **Intersect**, **Exclude** | | Combine shapes, see above. |
| **Correct Direction** | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> | Outer contours counter-clockwise, holes clockwise. |
| **Reverse Direction** | | Reverses the selected contours (all when nothing is selected). |
| **Set Start Point** | | Makes the selected node the first point of its contour. |
| **Round Corners…** | | Rounds the selected corner points with the radius you type (40 units at first). |
| **Simplify** | | Removes nodes that are not needed, keeping the shape within one unit. |
| **Hobby Curves** (Pro) | | Reworks the selected contours (or all) as Hobby curves. |
| **Add Extreme Points** (Pro) | | Adds nodes at the extremes of curves. |
| **Clean Up Points** (Pro) | | Removes duplicate points and points that do nothing. |
| **Convert to Cubic** (Pro) | | Turns quadratic (TrueType) curves into cubic ones, exactly. |
| **Convert to Quadratic** (Pro) | | Turns cubic curves into quadratic ones. |

Remove Overlap, Correct Direction, Simplify, Hobby Curves, Add Extreme Points, Clean Up Points and
the two conversions also work in the Overview, on all the selected glyphs at once. The status bar
then reports how many glyphs changed. The [Outlines](/drawing/outlines/) chapter explains why
direction, extremes and overlaps matter.

### Glyph › Transform

| Command | What it does |
|---|---|
| **Scale…** | A small dialog for horizontal and vertical percentages. |
| **Rotate…** | A small dialog for an angle in degrees. |
| **Skew…** | A small dialog for horizontal and vertical slant in degrees. |
| **Flip Horizontal** | Mirrors left to right. |
| **Flip Vertical** | Mirrors top to bottom. |

They apply to the selection, or to the whole glyph when nothing is selected, around its centre. The
Transform panel does the same with all values at once.

### Other commands in the Glyph menu

- **Toggle Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>) switches the selected nodes between corner and
  smooth.
- **Copy to Background**, **Place Image…** and **Remove Image** manage the tracing layer and the
  reference image (see [The glyph editor](/drawing/glyph-editor/)).
- **Add Component…**, **Decompose**, **Add Anchors**, **Generate Composites…** and **Update
  Composites** work with components and accents (see [Components and accents](/drawing/components/)).
- **Fix Problems** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) fixes every fixable problem the
  Validation panel found.

## Practice: drawing an "n" with the Pen

Time to put the Pen to work. You will draw a simple sans-serif "n": a stem on the left and an arch
that comes down into a second stem. The picture shows the order of the clicks. Squares are plain
clicks; the two round points (4 and 9) are click-and-drag.

![A simple "n" with twelve numbered points: points 1 to 3 go up the left stem, 4 is dragged to form the inner arch, 5 to 8 go down and up the right stem, 9 is dragged to form the outer arch, and 10 to 12 finish at the top of the left stem.](diagram:drawing-tools-n-practice)

1. Open an empty glyph "n" (double-click it in the Overview).
2. Choose the Pen (<kbd>P</kbd>). Make sure **Hobby curves** is not ticked.
3. **Click** on the baseline for point 1, the bottom-left corner of the stem.
4. **Click** point 2 on the baseline, a stem's width to the right.
5. **Click** point 3 straight above point 2, a little below the x-height. This is where the inner
   arch begins.
6. **Click and drag** point 4 at the top of the inner arch: press the mouse button, then drag to the
   right, level with the x-height line, and let go. The curve from 3 to 4 bends.
7. **Click** point 5, where the inner arch meets the right stem.
8. **Click** point 6 on the baseline below point 5, and point 7 a stem's width to its right.
9. **Click** point 8 straight above point 7, where the outer arch begins.
10. **Click and drag** point 9 at the top of the outer arch, just above the x-height: drag to the
    **left**, level, and let go.
11. **Click** point 10 where the outer arch meets the left stem, then point 11 at the top of the
    stem on the x-height, and point 12 at the top-left corner.
12. **Click point 1** again to close the contour.

:::tip
The closing click has to land right on the first node, within a few font units. If the path does
not close, zoom in on point 1 (<kbd>Ctrl</kbd>+wheel) and click it again.
:::

You now have a rough "n". The curves are not perfect yet, because points 3, 5, 8 and 10 have no
handles of their own. Shape them:

1. Choose the Node tool (<kbd>A</kbd>).
2. Click on the curve between 3 and 4, then on the handles that appear and drag them until the arch
   looks round. A handle lying on top of its node can be dragged out of it.
3. Do the same for the curves 4 to 5, 8 to 9 and 9 to 10. Keep the handles at 4 and 9 horizontal
   (they sit at the top extremes) and the ones at 5 and 8 vertical.
4. Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd> to make sure the direction is right.
5. Type `nnnn` in the Text bar to see your "n" next to itself.

If you went wrong, <kbd>Ctrl</kbd>+<kbd>Z</kbd> takes back one point at a time while you are still
drawing. And if the drawing went badly, select everything with <kbd>Ctrl</kbd>+<kbd>A</kbd>, press
<kbd>Delete</kbd> and start again: everybody's first "n" looks odd.

## Common mistakes

:::caution[The Pen started a new shape instead of continuing my path]
The Pen always starts a new contour once the previous one is finished (closed, or ended with
<kbd>Enter</kbd>, <kbd>Esc</kbd> or a tool change). Finish each shape in one go, ending on its first
node.
:::

:::caution[My shape has no fill]
It is still an open path: the last click did not land on the first node. Choose the Pen and click
the first node, or use **Fix** in the Validation panel.
:::

:::caution[Pressing a letter key types in the Text bar]
After the Text tool, the keyboard focus is in the Text bar. Click on the canvas, then use the
shortcut again.
:::

:::caution[A tool is missing from the toolbox]
It may be hidden in a flyout (right-click the slot with the small triangle), or it is a Pro Mode
tool and you are in Simple Mode.
:::

## Summary

- The toolbox has twelve slots; slots with a corner triangle hide more tools, reached by
  right-clicking or pressing and holding.
- Select (<kbd>V</kbd>) works on whole contours, components and anchors; Node (<kbd>A</kbd>) on
  single points, segments and handles.
- The Pen (<kbd>P</kbd>): click for corners and lines, drag for smooth points and curves, click the
  first node to close. With Hobby curves you only click.
- Pencil, Rectangle, Ellipse and Polygon draw complete shapes; Add Point and Delete Point edit
  contours point by point.
- Knife cuts shapes along a line; Scissors opens a contour.
- Rotate and Scale transform by dragging; <kbd>Shift</kbd> constrains them.
- Measure measures, Anchor places anchors, Metrics and Kerning space letters in the text line, Text,
  Hand and Zoom help you get around.
- **Glyph › Contours** combines and cleans shapes: Union, Subtract, Intersect, Exclude, Remove
  Overlap, Correct Direction, Simplify and more.

## Try it yourself

1. Draw the "n" from the practice section. Then draw it once more in another empty glyph with
   **Hobby curves** ticked, clicking only the points (no dragging), and compare the two.
2. Draw a circle with the Ellipse tool and a rectangle overlapping it with the Rectangle tool.
   Select a point of the rectangle and try **Union**, **Subtract** and **Intersect** from
   **Glyph › Contours**, undoing with <kbd>Ctrl</kbd>+<kbd>Z</kbd> after each one.
