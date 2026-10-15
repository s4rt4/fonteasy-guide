---
title: Fixing Outline Problems
description: Understand the problems FontEasy finds in your outlines while you draw, and fix them with one click or with Remove Overlap and Correct Direction.
---

An outline can look perfect on screen and still cause trouble in a finished font. A tiny gap may
leave a letter unfilled. A contour running the wrong way may turn a hole into a black blob in some
apps. Two points on top of each other may upset the hinting that makes text sharp on screen.

FontEasy checks your outlines all the time, while you draw. When it finds something, it marks the
spot on the canvas, puts a small dot on the glyph in the **Overview**, and lists it in the
**Validation** panel, with a short explanation and, for most problems, a **Fix** button.

You do not need to be afraid of these messages. Most of them are fixed with a single click, and
some are only friendly notes. This chapter explains each one in plain words, so you know what it
means and when to act.

In this chapter you will learn:

- where FontEasy shows problems: on the canvas, in the Overview and in the Validation panel;
- what each problem means, and how serious it is;
- how to fix one problem, all problems in a glyph, or all problems in the font;
- how to use **Remove Overlap** and **Correct Direction** yourself.

## Where problems appear

### On the canvas

In the glyph editor, every problem is marked with a small coloured ring at the place where it is.
Point at a ring with the mouse and a box appears with the problem's name and a one-sentence
explanation.

![Editing H: the crossbar overlaps both stems, four blue rings mark the crossings, and the Validation panel lists Overlapping contours 4 with a Fix button and Fix All.](screen:problems)

**View › Show Problems** turns these markers (and the dots in the Overview) on and off.

### In the Overview

In the **Overview**, a glyph with a problem gets a small dot in the top right corner of its cell:

- a **red** dot for an error,
- an **orange** dot for a warning.

Notes (the least serious kind) get no dot. Point at a cell to see its problems in the tooltip.

![The Overview of Nusantara Sans: B has a red dot, D an orange dot, and the Validation panel lists Open contour in B, Wrong contour direction in D and Overlapping contours in H, each with a Fix button.](screen:badges)

### In the Validation panel

The **Validation** panel is usually docked on the right, next to **Kerning** and **History**. If
you closed it, choose **Window › Panels › Validation**. **Font › Validate Font** also opens it,
switches the markers on and shows the list for the whole font.

The panel changes with what you are doing:

- **While you edit a glyph**, it lists that glyph's problems, grouped by kind, with how many there
  are. Click a problem to jump to it on the canvas. If there are none, it says "No problems in this
  glyph."
- **In the Overview**, it lists every kind of problem found in the font, with the names of the
  glyphs that have it. Click a glyph name to select it; double-click to open it. A large font is
  checked in small portions so FontEasy stays smooth; meanwhile the panel says "Checking… 118 of
  1568 glyphs". When everything is fine, it says "No problems found."

![The Glyph menu open, with Fix Problems at the bottom and Ctrl+Alt+X as its shortcut; the Validation panel lists Missing extreme point, Overlapping contours and Almost straight line in Source Serif 4.](screen:g-menu-glyph)

## How serious is it?

Every problem has one of three levels, shown by its icon colour:

| Level | Colour | Meaning |
|---|---|---|
| Error | red | Something is really wrong; the glyph may print incorrectly or not at all. Fix it. |
| Warning | orange | It works, but may look or render worse. Fix it before you publish. |
| Note | blue | Information. Often harmless while you draw; FontEasy handles it on export. |

In **Simple Mode**, the panel shows only the essential checks: open contours, contours that cross
themselves, components of missing glyphs, code points used twice, and wrong contour direction.
**Pro Mode** shows all of them.

## The problems, one by one

### Open contour (error)

A [contour](/reference/glossary/#contour) is a closed outline: it ends where it began, like a
rubber band. An [open contour](/reference/glossary/#open-contour) has a gap, like a piece of
string. A font can only fill shapes that are closed, so an open contour is not filled at all. This
usually happens when you stop drawing with the Pen before clicking on the first point again.

**Fix** closes the contour with a straight line from the last point to the first. If the last
point lies exactly on the first, the two are merged into one.

![An open contour in the shape of a D, unfilled with a gap at the bottom; after Fix, a straight line closes it and the shape is filled.](diagram:problems-open-contour)

:::note
Glyphs with a stroke effect are drawn as open centre lines on purpose, so they are not reported
as open. See [Drawing effects](/advanced/drawing-effects/).
:::

### Contour crosses itself (error)

The outline crosses over itself, like a figure eight. Parts of such a shape may appear as holes,
and different apps may fill it differently. **Fix** untangles it into clean shapes (it uses
**Remove Overlap**).

### Component of a missing glyph (error)

A [component](/reference/glossary/#component) refers to a glyph that does not exist, usually
because that glyph was deleted or renamed. There is no automatic fix: add the missing glyph again,
or remove the component in the **Glyph Info** panel. See
[Components and composites](/drawing/components/).

### Code point used twice (error)

Two glyphs have the same [code point](/reference/glossary/#code-point) (Unicode value). When
someone types that character, only one of the two can appear. There is no automatic fix, because
FontEasy cannot know which glyph you meant. Open one of them and change or remove its Unicode
value in the **Unicode** box of **Glyph › Rename Glyph…** (<kbd>F2</kbd>) (see
[The glyph set](/drawing/glyph-set/)).

### Wrong contour direction (warning)

Every contour runs in a direction, like a road with one-way traffic. The rule for fonts is: **outer
shapes run anticlockwise, holes run clockwise**. That is how a font tells "this is ink" from "this
is a hole". If the directions are mixed up, some apps fill the hole of an **o** or the counter of
an **e**, and the letter becomes a blob.

![On the left, the outer contour and the hole of an O run the same way and the hole is filled in; on the right, the outer contour runs anticlockwise and the hole clockwise, so the hole stays open.](diagram:problems-direction)

**Fix** reverses the contours that run the wrong way. You can also do it yourself; see
[Correct Direction](#correct-direction) below.

### Duplicate points (warning)

Two points sit exactly on top of each other. You cannot see it, but it creates a segment of zero
length, which can confuse [hinting](/reference/glossary/#hinting) and other tools. **Fix** removes
the extra point.

### Missing extreme point (warning)

The [extreme points](/reference/glossary/#extreme-point) of a curve are where it is exactly
horizontal or vertical: the very top, bottom, left and right of a bowl. Fonts render and hint
best when there is a point at each of those places. FontEasy reports a curve that bulges more than
one unit past its points without a point there.

![On the left, a circle with points only on the diagonals and orange rings at its top, bottom and sides; on the right, the fixed circle has points where the curve turns, with horizontal and vertical handles.](diagram:problems-extremes)

**Fix** adds the missing points without changing the shape. In Pro Mode the same is available as
**Glyph › Contours › Add Extreme Points**.

### Smooth point with a kink (warning)

A [smooth point](/reference/glossary/#smooth-point) promises that the curve flows through it
without a corner. That only works when its two [handles](/reference/glossary/#handle) are in one
straight line. If they are not, you see a small bump. **Fix** lines up the handles. A handle next
to a straight line follows that line.

### Overlapping contours (note)

Two contours lie on top of each other, like the crossbar of an **H** drawn over the two stems.
That is perfectly fine, even handy, while you draw: you can move the bar up or down without
redrawing anything. When you export a normal (static) font, FontEasy removes the overlaps for you
(the **Export Font** dialog has the option **Remove overlaps (your source keeps them)**, on by
default). [Variable fonts](/reference/glossary/#variable-font) keep their overlaps, marked so that
apps draw them correctly.

So you only need to act if you want to see the merged result now. **Fix** merges the overlapping
contours with **Remove Overlap**.

![On the left, an H made of three contours lying on top of each other, with rings where they cross; on the right, after Remove Overlap, one contour with the overlaps merged.](diagram:problems-overlap)

### Almost straight line (note)

A straight line is exactly one unit away from being perfectly horizontal or vertical. That is
almost always a slip of the mouse. Designers who tilt a line on purpose usually tilt it by more,
so lines two or more units off are left alone. **Fix** makes the line exactly straight by moving
its second point.

### Fractional coordinates (note)

A point is not on a whole unit, for example at x = 100.4. On export all points are rounded to whole
units anyway, which can shift them very slightly. **Fix** rounds them now, so you see exactly what
you will get.

### More problems at a glance

![Four small before-and-after pictures: duplicate points merged into one, a kinked smooth point with its handles lined up, an almost straight line made straight, and a contour that crosses itself untangled into two shapes.](diagram:problems-small)

## Fixing problems

### Fix one kind of problem

In the **Validation** panel, click **Fix** next to a problem. In the glyph editor this fixes every
problem of that kind in the open glyph. In the Overview it fixes that kind of problem in every
glyph listed under it.

### Fix everything that can be fixed

Click **Fix All** at the bottom of the list. In the editor it fixes all fixable problems of the
open glyph; in the Overview, all fixable problems in the whole font, as one undo step. FontEasy
applies the fixes in a sensible order (closing open contours first, merging overlaps before
correcting directions, and so on) so one fix does not undo another.

### Glyph › Fix Problems

**Glyph › Fix Problems** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) does the same as **Fix All**
for the glyph you are editing, or for the glyphs selected in the Overview. The status bar says
"Problems fixed." or "Nothing to fix.".

:::tip
Every fix can be undone with <kbd>Ctrl</kbd>+<kbd>Z</kbd>. If a fix changes more than you expected,
undo it and fix that spot by hand.
:::

The two errors that need you, **Component of a missing glyph** and **Code point used twice**, have
no **Fix** button.

## Doing it yourself: the Contours menu

Two of the fixes are also ordinary commands in **Glyph › Contours**. They work on the glyph you are
editing, or on all glyphs selected in the Overview.

### Remove Overlap

**Glyph › Contours › Remove Overlap** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>) merges all
overlapping contours into clean outlines. Curves stay curves, and contours that do not overlap
anything are left exactly as they were. The status bar says "Overlaps removed." or "No overlaps to
remove.". Read more in the glossary under [Remove overlap](/reference/glossary/#remove-overlap).

:::caution[Keep overlaps while designing]
Because export removes overlaps anyway, you may prefer to keep them in your source: an **H** made
of three rectangles is easier to change than one merged outline. In a font with several masters,
merging only some masters can make them incompatible, so be careful there.
:::

### Correct Direction

**Glyph › Contours › Correct Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) looks at
which contours lie inside others and turns each one the right way: outer shapes anticlockwise,
holes clockwise. The status bar tells you how many contours were reversed, for example "2 contours
reversed".

**Glyph › Contours › Reverse Direction** turns the selected contours the other way, whatever their
direction. Use it only if you know you need it; **Correct Direction** is almost always the better
choice.

## Variable fonts: interpolation

If your font has several [masters](/reference/glossary/#master), the Validation panel also has an
**Interpolation** section. It lists glyphs whose masters do not match (different numbers of
contours or points, for example), so they cannot be blended. The **Make Compatible** button fixes
what can be fixed automatically. See [Variable fonts](/advanced/variable/).

## Validation and Font Check

The Validation panel looks at the *shapes* of your glyphs while you draw. Before you publish, run
the wider **Font › Check Font…** (<kbd>F7</kbd>), which also checks names, metrics, character set,
kerning and features. See [Quality checks](/production/quality/).

## Good habits

- Glance at the Validation panel every time you finish a glyph. A problem fixed at once is easier
  than fifty found at the end.
- Close every contour with the Pen by clicking its first point.
- After importing SVGs or tracing pictures, select all glyphs in the Overview and press
  <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>.
- Do not worry about **Overlapping contours** while designing; they are handled on export.
- Fix errors and warnings before you share or publish a font.

## Summary

- FontEasy checks outlines as you draw: rings on the canvas, red and orange dots in the Overview,
  and a list in the **Validation** panel.
- Errors: **Open contour**, **Contour crosses itself**, **Component of a missing glyph**, **Code
  point used twice**. Warnings: **Wrong contour direction**, **Duplicate points**, **Missing extreme
  point**, **Smooth point with a kink**. Notes: **Overlapping contours**, **Almost straight line**,
  **Fractional coordinates**.
- Simple Mode shows only the essential checks.
- **Fix** fixes one kind; **Fix All** and **Glyph › Fix Problems**
  (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) fix everything fixable.
- **Remove Overlap** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>) merges overlaps; **Correct
  Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) turns contours the right way.
- Missing components and duplicate code points need your decision.

## Try it yourself

1. Open a glyph, draw a rectangle with the Pen but do not close it. Watch the red ring appear, then
   press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>.
2. Draw an **H** from three rectangles so that the bar overlaps the stems. Read the
   **Overlapping contours** note, then choose **Glyph › Contours › Remove Overlap** and compare the
   point count in the **Glyph Info** panel before and after. Undo, and keep the three rectangles.
