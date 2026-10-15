---
title: Your First Font
description: A complete hands-on tutorial that takes you from an empty font to a tested, exported TrueType font with five letters drawn from simple shapes.
---

Enough reading: it is time to make a font. In this chapter you build a small font called
**Kotak Sans** ("kotak" is Indonesian for "box") from start to finish. You will draw five letters,
**H**, **I**, **O**, **n** and **o**, using nothing but rectangles and ellipses, give them good
spacing, look at them in the Preview, test them in your browser and in Word, export a real `.ttf`
font file and save your work.

Five letters do not sound like much, but they contain almost every idea of type design: straight and
round shapes, capitals and small letters, stems of equal thickness, overshoot, sidebearings. Once you
can make these five, you can make the rest of the alphabet the same way, and later with better tools.

Plan about an hour. Every step says exactly what to click and what you should see afterwards. If
something looks different, the boxes along the way explain why.

In this chapter you will learn:

- how to create a new font with the New Font dialog or the New Font Wizard;
- how the Font Journey guides you in Simple Mode;
- how to save a font as a UFO source;
- how to draw letters from rectangles and ellipses, with exact sizes;
- how to cut holes and arches with **Subtract**;
- how to set the width and sidebearings of a glyph, and how Auto-Spacing works;
- how to preview, check and test your font, install a test copy, and export a TTF.

## The plan

Before drawing, a type designer makes a plan. Ours is simple: every stroke is 80 units thick, the
capitals are 700 units tall (the cap height) and the small letters 500 units (the x-height). Round
letters overshoot the lines by 10 units, as you learned in [Type Basics](/start/type-basics/#overshoot).

![The five letters of Kotak Sans built from rectangles and ellipses in their boxes: H width 550, I width 200, O width 600, n width 500, o width 520, with the cap height 700, x-height 500 and baseline 0.](diagram:first-font-plan)

All sizes in this chapter are in font units, in a font with 1000 [units per em](/reference/glossary/#units-per-em).
The point (0, 0) is where the [baseline](/reference/glossary/#baseline) meets the left edge of the
glyph's box; X grows to the right and Y grows upwards. You will type these numbers into FontEasy, so
your letters come out exactly like the picture.

| Letter | Shapes | Width |
|---|---|---|
| I | one rectangle | 200 |
| H | three rectangles | 550 |
| O | two ellipses, the inner one subtracted | 600 |
| o | two ellipses, the inner one subtracted | 520 |
| n | an arch from two ellipses and a rectangle, plus two rectangles | 500 |

## Two ways to start a font

First make sure FontEasy is in Simple Mode: on the Home screen, click **Simple Mode** under **How do
you want to work?**, or click **Simple** in the switch at the top right. Simple Mode keeps the screen
calm and shows the Font Journey.

FontEasy offers two ways to create a font. For this tutorial use the first.

### The New Font dialog

1. On the Home screen, click **New Font…** (or press <kbd>Ctrl</kbd>+<kbd>N</kbd>). The **New Font**
   dialog opens.
2. In **Family name**, replace "Untitled" with `Kotak Sans`.
3. Under **Start with**, choose **Latin Basic**: the 95 characters of the ASCII set, A–Z, a–z,
   figures and punctuation.
4. Click **Create**.

![The New Font dialog with the Family name field, the four templates under Start with (Latin Basic is chosen) and the Create button.](screen:newfont)

FontEasy creates the font and opens it in the workspace. Every glyph of the template is there, but
empty: the Overview shows each letter faintly, waiting to be drawn. The status bar says
"96 glyphs · 1000 UPM" (the 95 characters plus `.notdef`, the box that is shown for characters the
font does not have).

:::note
In Pro Mode the dialog also has a **Units per em** field. Keep it at 1000 for this tutorial; all the
numbers below assume it.
:::

### The New Font Wizard

The second way is **Tools › Wizards › New Font Wizard…**, which asks three friendly questions:

1. **Name**: what is your font called, and what is it for (**Reading text**, **Headlines and logos**
   or **My handwriting**)? Choosing handwriting opens the Handwriting Font Wizard right after.
2. **Characters**: which template to start from.
3. **Proportions**: how tall the small letters are next to the capitals, shown as pictures: **Small**,
   **Medium** or **Large**.

![Step 3 of the New Font Wizard: three pictures of H with two short bars for Small, Medium and Large x-heights, and the Create Font button.](screen:newfont-wizard)

The wizard sets the cap height to 700 and the x-height to 62, 71 or 78 % of it, for example 497 for
**Medium**. That is great for your own projects, but this tutorial assumes an x-height of exactly 500,
so stay with the New Font dialog for now.

## A first look around

Because this is your first font in Simple Mode, the guided tour starts at the bottom of the window.
Click **Next** through its five steps (or **Skip tour**). It points out the Overview, the tools, the
Font Journey and the Preview, which you are about to use.

![Simple Mode with a new font: the tour box "Your font, glyph by glyph" at the bottom and the Font Journey at the top right.](screen:tour)

Now look at the panel at the top right: the **Font Journey**. It lists the way from an empty font to a
finished one:

1. **Name your font** (already ticked; its **Font Info…** button lets you change the name later).
2. **Draw the letters**, with **Draw Next**, **Handwriting…** and **Import SVG…** buttons.
3. **Add accented letters**.
4. **Space the letters**.
5. **Kern tricky pairs**.
6. **Features**.
7. **Check your font**.
8. **Test and export**.

The first step that is not finished is open and highlighted. A green tick marks a finished step. You
can click any step to open it and see its buttons. Under **Draw the letters** it says
"0 of 62 letters and figures drawn": the 26 capitals, 26 small letters and 10 figures that every font
wants.

![The Font Journey with Name your font ticked and Draw the letters open, showing 6 of 62 letters and figures drawn and the Draw Next, Handwriting… and Import SVG… buttons.](screen:journey)

:::tip
**Draw Next** opens the first letter or figure that is still empty, starting with A. In this tutorial
we draw in our own order, so we open glyphs from the Overview instead.
:::

## Save your font first

Saving now means you can never lose more than a few minutes of work.

1. Press <kbd>Ctrl</kbd>+<kbd>S</kbd> (or choose **File › Save**). Because the font has never been
   saved, the **Save Font As** window opens.
2. Choose a folder, for example a new folder `Fonts` in your **Documents**.
3. The file name is already `Kotak Sans.ufo`, and the type is **UFO font source**. Click **Save**.

The status bar says "Saved Kotak Sans.ufo", and the dot after the font name disappears.

[UFO](/reference/glossary/#ufo) (Unified Font Object) is the open format FontEasy uses for the fonts
you work on. It is not a single file but a folder ending in `.ufo`, full of small text files: one per
glyph, plus files for the font info, kerning and features. Many other font editors can open it too.
This is your *source*: the editable master copy. The `.ttf` you export later is the finished product,
made from the source, a bit like a PDF made from a Word document.

:::danger
Always keep and back up the `.ufo` folder. An exported `.ttf` cannot be turned back into an
editable source without losing information. Do not move or rename the files inside the `.ufo` folder
by hand; let FontEasy manage them.
:::

From now on, press <kbd>Ctrl</kbd>+<kbd>S</kbd> whenever you finish a letter. FontEasy also writes a
recovery copy every few minutes, so a crash will not cost you your work, but saving is still your job.

## Draw the I

The I is a single rectangle: the perfect first letter.

1. In the Overview, find the glyph `I` (capital i) and double-click it. It opens in a new tab next
   to **Overview**, in the glyph editor.
2. Look at the canvas. The horizontal lines are labelled **ascender 750**, **cap height 700**,
   **x-height 500**, **baseline 0** and **descender -250**. The two vertical lines are the edges of
   the glyph's box: at 0 on the left, and at its width (500 for a new glyph) on the right. In the middle
   a hint says the glyph is empty and how to draw it.

![The glyph editor for an empty glyph in Simple Mode: labelled metric lines, the two vertical lines of the glyph box, and the hint "Empty glyph: draw it with the Pen (P) or Pencil (N), paste shapes from Illustrator or Inkscape, or use Tools › Autotrace Image.".](screen:emptyglyph)

3. Choose the **Rectangle** tool: click the square button in the toolbox, or press <kbd>M</kbd>. The
   options bar says "Drag to draw a rectangle (Shift: square)."
4. Drag anywhere on the canvas to draw a rectangle of any size. Do not worry about its size or
   position: you will type the exact numbers next.
5. Press <kbd>V</kbd> to switch to the **Select** tool. The rectangle you just drew is still selected,
   and the options bar now shows four fields: **X**, **Y**, **W** and **H**, the left edge, bottom
   edge, width and height of the selection.
6. Click in the **X** field, type `60` and press <kbd>Enter</kbd>. Then set **Y** to `0`, **W** to
   `80` and **H** to `700` in the same way, pressing <kbd>Enter</kbd> after each.

![The Rectangle tool chosen in the glyph editor: its name and hint "Drag to draw a rectangle (Shift: square)." in the options bar, and the shape tools button highlighted in the toolbox.](screen:g-tool-rectangle)

You now have a stem 80 units wide, standing on the baseline and reaching exactly to the cap height,
60 units from the left edge of the box.

7. Click an empty part of the canvas (or press <kbd>Ctrl</kbd>+<kbd>D</kbd>) so that nothing is
   selected. The options bar now shows **Width**, **LSB** and **RSB** of the glyph.
8. Click in **Width**, type `200` and press <kbd>Enter</kbd>.

The right edge of the box moves in. **LSB** shows 60 and **RSB** shows 60: the I has 60 units of
space on each side. Look at the **Preview** panel at the bottom: after a moment of "Compiling…", your
I appears in the preview text wherever the text has an I. Press <kbd>Ctrl</kbd>+<kbd>S</kbd>.

:::tip
To see the whole glyph box at a comfortable size, choose **View › Fit in Window**
(<kbd>Ctrl</kbd>+<kbd>0</kbd>). Hold <kbd>Space</kbd> and drag to move around the canvas, and use
**View › Zoom In** and **Zoom Out** (<kbd>Ctrl</kbd>+<kbd>=</kbd> and <kbd>Ctrl</kbd>+<kbd>-</kbd>).
:::

:::caution
If a number field does not take your value, check that you pressed <kbd>Enter</kbd> (or clicked
elsewhere) after typing: the value is applied when the field loses focus. And if you typed into the
wrong field, press <kbd>Ctrl</kbd>+<kbd>Z</kbd> to undo. Every change can be undone.
:::

## Draw the H

The H is two stems like the I, joined by a crossbar.

1. Go back to the **Overview** tab and double-click `H`.
2. Press <kbd>M</kbd> for the **Rectangle** tool and drag a rectangle.
3. Press <kbd>V</kbd> and set **X** `70`, **Y** `0`, **W** `80`, **H** `700`. This is the left stem.
4. Press <kbd>M</kbd>, drag a second rectangle, press <kbd>V</kbd>, and set **X** `400`, **Y** `0`,
   **W** `80`, **H** `700`. This is the right stem.
5. Press <kbd>M</kbd>, drag a third rectangle, press <kbd>V</kbd>, and set **X** `70`, **Y** `320`,
   **W** `410`, **H** `70`. This is the crossbar. It runs over both stems.
6. Click an empty part of the canvas, then set **Width** to `550`.

The crossbar is a little thinner than the stems (70 instead of 80). Horizontal strokes that are as
thick as vertical ones look heavier to our eyes, so designers make them slightly thinner. The bar
also sits a little above the exact middle of the letter, which looks more balanced.

The bar overlaps the stems. That is perfectly fine: while you draw, shapes may overlap. When you
export, FontEasy merges them into one clean outline (the **Remove overlaps** option, on by default).

## Draw the O

An O is a ring: an outer ellipse with an inner ellipse cut out of it. In font terms, the outer
[contour](/reference/glossary/#contour) is the shape, and the inner contour is a hole, the
[counter](/reference/glossary/#counter).

1. In the Overview, double-click `O`.
2. Choose the **Ellipse** tool: press <kbd>L</kbd>, or right-click the **Rectangle** button in the
   toolbox and choose **Ellipse**.
3. Drag an ellipse, press <kbd>V</kbd>, and set **X** `40`, **Y** `-10`, **W** `520`, **H** `720`.
   The ellipse now reaches from −10 to 710: 10 units below the baseline and 10 units above the cap
   height. That is the overshoot.
4. Press <kbd>L</kbd>, drag a second, smaller ellipse, press <kbd>V</kbd>, and set **X** `125`,
   **Y** `70`, **W** `350`, **H** `560`. This inner ellipse is still selected.
5. Choose **Glyph › Contours › Subtract**.

The inner ellipse is cut out of the outer one, and you see a ring. **Subtract** takes the selected
shape (or, when nothing is selected, the last one drawn) and removes it from the others.

![The glyph editor with an O made of two ellipses: an outer and an inner contour, their square on-curve points and round handles, in the Node tool.](screen:editnew)

The sides of the ring are 85 units thick, a little more than the 80-unit top and bottom. Round
strokes look thinner than straight ones of the same thickness, so they get a little extra. The
counter is centred: both ellipses have their middle at X 300, Y 350.

6. Click an empty part of the canvas and set **Width** to `600`. **LSB** and **RSB** both show 40.

:::caution
If the inside of the O is filled instead of hollow, the inner ellipse was not subtracted. Press
<kbd>Ctrl</kbd>+<kbd>Z</kbd> until you are back at two ellipses, click the inner one with the
**Select** tool and choose **Glyph › Contours › Subtract** again. If the status bar says "Nothing
changed: select contours that overlap others.", the two ellipses do not overlap: check their numbers.
:::

:::note
Another way to make a hole is to keep both ellipses and choose **Glyph › Contours › Correct
Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>). Outlines have a direction, and a contour
that runs the other way inside another one becomes a hole. If the **Validation** panel ever reports
"Wrong contour direction", its **Fix** button does the same. The chapter
[Outlines and Bézier Curves](/drawing/outlines/) explains [contour direction](/reference/glossary/#contour-direction).
:::

## Draw the o

The small o is built exactly like the O, only smaller: it sits between the baseline and the x-height,
again with 10 units of overshoot.

1. In the Overview, double-click `o`.
2. Press <kbd>L</kbd>, drag an ellipse, press <kbd>V</kbd>, and set **X** `40`, **Y** `-10`,
   **W** `440`, **H** `520`.
3. Press <kbd>L</kbd>, drag another ellipse, press <kbd>V</kbd>, and set **X** `122`, **Y** `70`,
   **W** `276`, **H** `360`.
4. Choose **Glyph › Contours › Subtract**.
5. Click an empty part of the canvas and set **Width** to `520`.

The sides are 82 units and the top and bottom 80. Compare your o with the O: the small letter is
rounder, because its height shrank more than its width. That is typical of real fonts too.

## Draw the n

The n is the most interesting letter of the five: a stem on the left, and an arch that comes out of
it and goes down into a second stem. We build the arch from the top half of a ring.

![Building the n in four steps: two ellipses; Subtract makes a ring; a rectangle over the lower half and Subtract again leaves an arch; two rectangles add the stems.](diagram:first-font-n-steps)

1. In the Overview, double-click `n`.
2. Press <kbd>L</kbd>, drag an ellipse, press <kbd>V</kbd>, and set **X** `60`, **Y** `100`, **W**
   `380`, **H** `410`. Its top is at 510: 10 units of overshoot above the x-height.
3. Press <kbd>L</kbd>, drag another ellipse, press <kbd>V</kbd>, and set **X** `140`, **Y** `180`,
   **W** `220`, **H** `250`.
4. Choose **Glyph › Contours › Subtract**. You have a ring, 80 units thick all round.
5. Press <kbd>M</kbd>, drag a rectangle, press <kbd>V</kbd>, and set **X** `40`, **Y** `80`, **W**
   `420`, **H** `225`. It covers the lower half of the ring, up to Y 305, the middle of the ring.
6. Choose **Glyph › Contours › Subtract** again. The lower half disappears and an arch is left.
7. Press <kbd>M</kbd>, drag a rectangle, press <kbd>V</kbd>, and set **X** `60`, **Y** `0`, **W**
   `80`, **H** `500`. This is the left stem, from the baseline to the x-height.
8. Press <kbd>M</kbd>, drag a rectangle, press <kbd>V</kbd>, and set **X** `360`, **Y** `0`, **W**
   `80`, **H** `310`. This is the right stem. It reaches a little into the arch, so the two join
   without a gap.
9. Click an empty part of the canvas and set **Width** to `500`.

Your n now has a [stem](/reference/glossary/#stem), a shoulder and a second stem, all 80 units
thick. The left stem and the arch overlap near the top left: again, that is fine, and the export
merges them.

:::tip
Did something go wrong halfway? <kbd>Ctrl</kbd>+<kbd>Z</kbd> undoes one step at a time, and the
**History** panel (bottom right, next to **Validation** and **Kerning**) lists every step: click an
earlier one to go back to it.
:::

Look at the Font Journey: **Draw the letters** now says "5 of 62 letters and figures drawn". Save
with <kbd>Ctrl</kbd>+<kbd>S</kbd>.

## Space the letters

Drawing is half the work; the other half is [spacing](/reference/glossary/#spacing). As you saw in
[Type Basics](/start/type-basics/#sidebearings-and-advance-width-a-first-look), each glyph sits in a
box, and the empty space on its left and right are the [sidebearings](/reference/glossary/#sidebearing).
Because you typed the X positions and widths, your letters already have these sidebearings:

| Letter | LSB | RSB | Why |
|---|---|---|---|
| H | 70 | 70 | straight sides get the most space |
| I | 60 | 60 | a single stem, a little tighter |
| n | 60 | 60 | straight sides, small letter |
| O | 40 | 40 | round sides need less space |
| o | 40 | 40 | round sides need less space |

The rule of thumb behind these numbers: round sides get roughly half to two thirds of the space of
straight sides, because a curve already brings extra white next to it. The goal is an even rhythm of
black and white across a word, so that no letter seems to stand apart.

### Look at the spacing in a line of text

Numbers are a start, but your eyes decide. The glyph editor can show your letter between others.

1. Open the `n` from the Overview.
2. Above the canvas is a **Text** field. Click in it, delete what is there and type `nnonnoonn`. The
   letters appear side by side on the canvas.
3. Choose the **Metrics** tool (<kbd>Y</kbd>). Its hint says "Drag the sidebearings; click another
   glyph of the text to space it."
4. Look at the line. Do the gaps between n and n, n and o, and o and o look about equally light? If
   one gap looks too wide or too narrow, drag that sidebearing of the glyph, or click the glyph and
   type a new **LSB** or **RSB** in the options bar (with the **Select** tool and nothing selected).
5. Try the capitals too: type `HHOHHIHOOH` in the **Text** field.

The **Spacing text** list next to the field offers ready-made strings like these. The chapter
[Metrics and Spacing](/spacing/metrics/) explains a proper spacing routine.

### Let Auto-Spacing do it

FontEasy can also space letters for you. It measures the white space of a reference glyph, `n` for
small letters and `H` for capitals and figures, and gives every other glyph the same amount of
white, with less for round sides.

1. In the Font Journey, click **Space the letters**, then **Auto-Spacing…**. FontEasy selects every
   glyph that has outlines and opens the **Auto-Spacing** dialog.
2. The dialog shows the references (**Lowercase reference** `n`, **Capital reference** `H`), a
   **Depth of openings** slider, and a table with the sidebearings of each glyph **Now (L / R)** and
   **New (L / R)**.
3. Compare the two columns. If you like the new values, click **Apply**; otherwise click
   **Cancel**.

![The Auto-Spacing dialog with the lowercase reference n, the capital reference H, the Depth of openings slider at 20 % and a table of current and new sidebearings.](screen:autospace)

Because Auto-Spacing copies the space of `n` and `H`, those two must be spaced well first. That is
why you set them by hand above. The Font Journey keeps this step open even after you use it: spacing
is something you come back to whenever you add letters.

:::note
The fifth step of the Journey, **Kern tricky pairs**, adds corrections for pairs such as AV or To. Our
five letters hardly need [kerning](/reference/glossary/#kerning), so skip it for now. The chapter
[Kerning](/spacing/kerning/) covers it.
:::

## Preview your letters

The **Preview** panel at the bottom shows your font as a real, compiled font.

1. Click in the text field of the **Preview** and replace "Hamburgefonstiv" with `OHIO noon Hon`.
2. Drag the size slider to about 100 pt.
3. Tick **Waterfall** to see the same text at several sizes.

Letters you have not drawn yet (all except H, I, O, n and o) are empty glyphs, so they show as gaps.
Look at your words as a reader would. Do the round letters look as tall as the straight ones? Do the
gaps look even? If not, go back and adjust; that is what designers do all day.

## Check your font

Before showing your font to the world, let FontEasy look it over.

1. In the Font Journey, click **Check your font**, then **Check My Font**. (Or choose
   **Font › Check Font…**, <kbd>F7</kbd>.)
2. The **Font Check** panel opens at the bottom and lists its findings in groups, each with an icon
   for errors, warnings and notes.

![The Font Check panel in Simple Mode with Check Again, Fix All and Save Report… buttons, counts of errors, warnings and notes, and findings in the Outlines group, each with a Fix button.](screen:fontcheck-simple)

A font with only five letters drawn will get some warnings, for example about missing letters or
missing information in the font's names. That is expected for a first test. Click a finding to see
what it is about; many have a **Fix** button. The chapter [Quality Checks](/production/quality/)
explains every check. When everything is fine, the Journey step gets its green tick.

The **Validation** panel on the right works on a smaller scale: it checks the outlines of the glyph
you are editing while you draw, and shows "No problems in this glyph." when all is well.

## Test your font

Seeing your letters in a real app is the most exciting moment. FontEasy offers two quick tests, and
neither needs an exported file.

### In your browser

Press <kbd>F5</kbd> (or **File › Test Font in Browser**, or **Test (F5)** in the Font Journey's last
step). FontEasy builds the font, writes a small test page and opens it in your web browser. The page
shows:

- the text of your Preview, large and editable: click it and type to try other words;
- a waterfall of that text from 12 to 96 pixels;
- a paragraph of sample sentences (with gaps for the letters you have not drawn yet);
- checkboxes for the font's OpenType features, if it has any.

The font is only loaded inside that page; nothing is installed on your computer.

### In Word and other apps

To try your font in any Windows app, install a test copy:

1. Choose **File › Install Font for Testing** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>).
2. A message says "Test font installed".
3. Open (or restart) Word, WordPad or another app and look in its font list for **Kotak Sans Test**.

FontEasy adds " Test" to the family name, so the test copy never gets mixed up with a real
installation of your font. It is installed for your user account only. Apps that were already open
may need a restart to see it. After you change your font, install the test copy again to update it.

When you are done testing, choose **File › Remove Test Fonts**. It removes every test copy FontEasy
installed.

:::caution
Do not double-click your exported `.ttf` and click **Install** in Windows' preview window to test
work in progress. That installs a permanent copy under the real name, and a later version with the
same name can clash with it. Use **Install Font for Testing** while you are working.
:::

## Export a TTF

Now make the real thing: a TrueType font file you can give to others.

1. Choose **File › Export › Export Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>), or **Export…** in the
   Font Journey's last step. The **Export Font** dialog opens.
2. Under **Formats**, **TrueType (.ttf) — desktop** is ticked. Leave the others unticked for now.
3. Leave **Remove overlaps (your source keeps them)** ticked: it merges the overlapping shapes of your
   H and n in the exported file, while your UFO keeps them separate and editable.
4. Leave **Hint TrueType outlines (ttfautohint)** ticked. FontEasy brings ttfautohint along; hints
   make small text sharper on Windows.
5. **Folder** suggests a folder called `fonts` next to your `Kotak Sans.ufo`. Click **Browse…** to
   choose another one if you like.
6. **File name** is `KotakSans-Regular`. Keep it.
7. Click **Export**.

![The Export Font dialog with TrueType ticked, Remove overlaps ticked, the hinting option, and the Folder and File name fields.](screen:export)

After a moment a message says "Font exported" with the file name and folder, and the status bar says
"Exported to …". Open the folder in File Explorer: there is `KotakSans-Regular.ttf`, a complete
font file. Double-click it and Windows shows a preview of your letters.

:::note
The picture of the dialog was taken without ttfautohint, so there the hinting option is grayed out
with "ttfautohint not found". In the installed FontEasy it is available. The other formats (OTF,
WOFF and WOFF2 for websites, plus a CSS file) are explained in [Exporting](/production/export/).
:::

## Save and close

1. Press <kbd>Ctrl</kbd>+<kbd>S</kbd> one last time.
2. Choose **File › Close** (<kbd>Ctrl</kbd>+<kbd>W</kbd>). If there are unsaved changes, FontEasy asks
   whether to save them.

The Home screen appears, and **Kotak Sans.ufo** is now at the top of the **Recent** list. Next time,
click it to continue where you left off.

You now have two things: `Kotak Sans.ufo`, the source you keep editing, and `KotakSans-Regular.ttf`,
the font you export again whenever the source has changed.

## When something goes wrong

**The shape tool draws, but I cannot see the X, Y, W and H fields.** They belong to the **Select**
tool. Press <kbd>V</kbd> after drawing. If they still do not show, nothing is selected: click the
shape once.

**I typed a number but the shape jumped somewhere else.** **X** and **Y** are the left and bottom
edges of the whole selection. If two shapes were selected, both moved. Undo with
<kbd>Ctrl</kbd>+<kbd>Z</kbd>, click one shape only and try again.

**Subtract removed the wrong shape.** It subtracts the selected shape from the others. Undo, select
the shape you want to cut out, and choose **Subtract** again.

**My letter does not show in the Preview.** Wait for "Compiling…" to finish. Check that the Preview
text actually contains the letter (the Preview is case-sensitive: `o` is not `O`).

**The test font does not appear in Word.** Close Word completely and start it again. Look for the
name with " Test" at the end.

## What comes next

You have made a font. From here, the guide goes deeper into each step you took:

- draw curves with the Pen and Pencil in [Outlines and Bézier Curves](/drawing/outlines/),
  [The Glyph Editor](/drawing/glyph-editor/) and [Drawing Tools](/drawing/drawing-tools/);
- build accented letters automatically in [Components and Accents](/drawing/components/);
- turn your handwriting into a font in [Handwriting Fonts](/drawing/handwriting/);
- refine spacing and kerning in [Metrics and Spacing](/spacing/metrics/) and [Kerning](/spacing/kerning/);
- fill in the font's names in [Font Info](/production/font-info/) and publish it with
  [Exporting](/production/export/) and [Testing and Publishing](/production/testing-publishing/).

## Summary

- **New Font…** with a template creates a font with empty glyphs; the **New Font Wizard** also asks
  for the purpose and the proportions.
- In Simple Mode, the **Font Journey** lists the steps and offers a button for each.
- Save early as a UFO: a folder that is your editable source. Export makes the finished `.ttf`.
- The **Rectangle** (<kbd>M</kbd>) and **Ellipse** (<kbd>L</kbd>) tools draw shapes; the **Select**
  tool's **X**, **Y**, **W** and **H** fields set exact positions and sizes.
- **Glyph › Contours › Subtract** cuts the selected shape out of the others: counters, arches and more.
- With nothing selected, **Width**, **LSB** and **RSB** set the box and sidebearings of a glyph;
  round sides get less space than straight ones. **Auto-Spacing…** spaces glyphs from `n` and `H`.
- The Preview, **Check My Font** (<kbd>F7</kbd>), **Test Font in Browser** (<kbd>F5</kbd>) and
  **Install Font for Testing** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) let you see and test your work;
  **File › Remove Test Fonts** cleans up.
- **File › Export › Export Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>) writes the `.ttf`.

## Try it yourself

1. Draw **L**, **T** and **E** with rectangles only, using the stem thickness of 80 and a cap height
   of 700. Give them sensible widths, then type `HELLO TOLE` in the Preview. Which sidebearings feel
   too wide? (Hint: the open sides of L, T and E need less space than the stems of H.)
2. Make a **c** from your **o**: open `c`, draw the o's two ellipses again, subtract, then draw a
   rectangle over the right part of the ring and subtract it as well. Adjust the rectangle until the
   [aperture](/reference/glossary/#aperture) looks right.
3. Export again, install a new test copy, and write a short note in Word with your new letters.
