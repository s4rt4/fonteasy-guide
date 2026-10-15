---
title: A Font from Your Handwriting
description: Print a template, write your letters in the boxes, scan or photograph the pages, and let the Handwriting wizard turn them into a working font.
---

Turning your own handwriting into a font is one of the most rewarding first projects. You do not
need to draw a single curve on the computer. You write the letters with a pen, as you always do,
and FontEasy reads them from a scan or a phone photo.

The **Handwriting Font** wizard guides you through it in four steps: **Print**, **Scan**,
**Check** and **Done**. In between, you write. An hour later you can type a letter to a friend in
your own hand.

In this chapter you will learn:

- how to start the Handwriting wizard and print the template;
- how to fill in the template so that it traces well;
- how to scan or photograph the pages;
- how FontEasy finds the boxes and reads your letters;
- how to review and adjust the letters before they go into the font;
- what to do afterwards: accented letters, spacing and kerning.

## The idea in four steps

![Five steps: print the template PDF, write one character in each box, scan or photograph the pages, check the letters, and the letters are in the font.](diagram:handwriting-steps)

1. **Print.** FontEasy makes a PDF *template*: pages of boxes, one per character, each with a
   small label and guide lines.
2. **Write.** You write one character in each box with a dark pen.
3. **Scan.** You scan the pages or photograph them with your phone, and give the pictures to the
   wizard.
4. **Check.** FontEasy finds every box, traces the ink into outlines and shows you all the
   letters. You adjust what needs it, and put them into the font.

## Starting the wizard

There are three ways in:

- Choose **Tools › Wizards › Handwriting Font Wizard…**.
- In the **New Font** wizard (**Tools › Wizards › New Font Wizard…**), choose **My handwriting**
  as the purpose. After the font is created, the Handwriting wizard opens by itself.
- In Simple Mode, the **Font Journey** panel has a **Handwriting…** button in the step
  **Draw the letters**.

If no font is open, the wizard first creates a new font called "My Handwriting". The template is
built from the open font's [vertical metrics](/reference/glossary/#vertical-metrics): its guide
lines match your font's [x-height](/reference/glossary/#x-height),
[cap height](/reference/glossary/#cap-height), [ascender](/reference/glossary/#ascender) and
[descender](/reference/glossary/#descender). If you want different proportions (taller small
letters, for example), change them in **Font › Font Info…** *before* you print.

## Step 1: Print the template

1. In the **Print** step, choose the **Paper**: **A4** or **Letter**.
2. Tick **Also Æ, Ø, ß, € and other Latin-1 letters and signs** if you want those extra
   characters.
3. Read the line below: it says how many characters and pages the template has. The basic set
   has 89 characters (A–Z, a–z, 0–9 and 27 punctuation marks and signs) on 3 pages; with the
   Latin-1 extras it is 113 characters, still on 3 pages.
4. Click **Save Template PDF…**, choose where to save it, and click **Save**.
5. Click **Open PDF** to open it in your PDF viewer, and print it.
6. Click **Next**.

You do not need boxes for accented letters such as **é** or **ü**. After the wizard, FontEasy
builds them from your letters and accents (see
[Components and composites](/drawing/components/)).

:::caution[Print at 100 %]
In the print dialog, choose "Actual size" or 100 %, not "Fit to page". The boxes do not need to
be exact to the millimetre, but the page must not be cut off: all four black corner squares must
be on the paper.
:::

### What is on a page

![A template page with a page code at the top, four corner squares, a grid of 42 boxes, and one box enlarged to show its guide lines: ascender, cap height, x-height, baseline and descender.](diagram:handwriting-template)

- **Four black corner squares.** They let FontEasy find the page in your picture.
- **A row of small squares** between the top two corners: the *page code*. It tells FontEasy which
  page this is and checks that it belongs to this template.
- **A heading** with the font name and "handwriting template, page 1 of 3", and two short lines of
  instructions.
- **42 boxes**, 6 per row and 7 rows. Each box has the character it is for in its top left corner,
  and five guide lines: the ascender and descender (light), the cap height and x-height (dashed),
  and the [baseline](/reference/glossary/#baseline) (solid and darker).

The guide lines are printed in light grey. When FontEasy reads the page, light grey counts as
paper, so the lines never become part of your letters.

## Step 2: Write your letters

Take your time here: the quality of the font depends on this step more than on any other.

1. Write each character in its own box, sitting on the solid **baseline**.
2. Let capitals reach the **cap height** line, and small letters such as **x**, **n** and **o**
   reach the **x-height** line.
3. Let the ascenders of **b d h k l** rise towards the top line, and the descenders of
   **g j p q y** hang below the baseline towards the bottom line.
4. Stay inside the box. Ink that touches the box edge may be cut off.
5. Leave a box empty if you do not want that character. Empty boxes are simply skipped.

:::tip[Pens and paper]
- Use a **dark felt-tip pen or marker** with an even line, about 1–2 mm wide. Thick, even strokes
  trace best.
- Avoid ballpoint pens: their lines are thin and grey, and break up when traced. Pencil is too
  light.
- Black ink is best; dark blue works too.
- Write at your normal pace. Slow, careful letters often look stiffer than your real handwriting.
- Write a few practice letters on scrap paper first, to warm up.
- If a letter goes wrong, print that page again rather than crossing it out. A scribble in a box
  is traced like any other ink.
:::

## Step 3: Scan or photograph the pages

In the **Scan** step:

1. Scan the filled-in pages at **300 dpi**, or take a photo of each with your phone.
2. Save the pictures as PNG or JPG files on your computer.
3. Click **Add Scans or Photos…** and pick all the pictures at once. The order does not matter.
4. Wait while FontEasy reads them. Each page appears in a list with a green tick, its page number
   and how many characters were found, for example "scan1.jpg — page 1   42 characters".
5. When at least one page has been read, click **Next**.

You can click **Add Scans or Photos…** again to add more pages or to replace a page with a better
picture. If you add a picture of the same page twice, the newest one wins.

:::tip[Taking good photos]
- Lay the page flat on a table, in **good, even light**. Daylight from a window is ideal.
- Hold the phone **straight above** the page, not at a steep angle.
- Make sure **all four corner squares** are in the picture, with a little margin around them.
- Avoid the shadow of your phone and hand falling on the page.
- Do not use the flash: it makes a bright spot.
- Phone "document scanner" apps that crop the page are fine, as long as the corner squares stay.
:::

### How FontEasy reads a page

You do not need to understand this to use the wizard, but it helps when something goes wrong.

1. **Find the corners.** FontEasy looks for four solid dark squares, one near each corner of the
   picture.
2. **Straighten the page.** From the four corners it works out how the page was tilted or seen in
   perspective, and maps it back to a flat page. That is why a photo taken at a slight angle still
   works.
3. **Read the page code.** The small squares at the top say which page this is. If the code does
   not match the template (different characters, paper size or metrics), the page is refused,
   rather than putting letters in the wrong places.
4. **Cut out each box.** Each box is cut out and its lighting is evened out: every pixel is
   compared with the paper brightness around it, so shadows and uneven light do not matter.
5. **Find the ink.** Empty boxes are recognised and skipped. The grey guide lines count as paper.

![A page photographed at a slight angle, with its four corner squares, and the same page straightened as FontEasy reads it.](diagram:handwriting-perspective)

## Step 4: Check the letters

The **Check** step shows every character that was read, as traced outlines, in a grid. The grid
fills in gradually while FontEasy traces.

![The Check step of the Handwriting Font wizard: a grid of traced letters A to n, the box for Q marked empty, G selected with its own threshold of 140 and Use this letter ticked, and a button Put 41 Letters in the Font.](screen:handwriting)

At the top are two sliders that apply to all letters:

- **Ink threshold** decides how dark a pixel must be to count as ink (from 40 to 230; 140 to
  start with). The hint says it clearly: lower the threshold if strokes come out too thick or
  joined, raise it if they break up.
- **Smoothness** decides how closely the curves follow the ink. Higher values give smoother
  curves with fewer points; lower values keep more of the pen's texture.

To work on one letter:

1. Click it in the grid. It is highlighted, and a row appears below the grid.
2. Move **Threshold for this letter** to adjust only that letter. This helps when you pressed
   harder or lighter on some letters.
3. Untick **Use this letter** to leave it out. A letter left out is crossed through in the grid.
4. Click the letter again to deselect it.

Boxes you left empty are marked **empty**. Moving the main **Ink threshold** slider resets the
per-letter thresholds.

When you are happy, click **Put … Letters in the Font** (the number counts the letters that are
used). FontEasy then:

- creates any glyph that does not exist yet, and replaces the outline of each glyph that does;
- places each letter with small [sidebearings](/reference/glossary/#sidebearing) of 5 % of the em
  on both sides;
- spaces the letters automatically, using **n** and **H** as references;
- adds a **space** glyph a quarter of an em wide, if the font has none.

The status bar says, for example, "41 letters traced into the font". It is all one undo step,
"Import Handwriting".

## Step 5: Done, and what comes next

The **Done** step says "Your letters are in the font." It suggests what to do next: build the
accented letters, look at the spacing in a line of text, and try the font in the preview.

1. Click **Generate Composites…** to build accented letters from your letters and accents right
   away (you need to have written the accents, or draw them now). See
   [Components and composites](/drawing/components/). Or click **Close**.
2. Type a sentence in the **Preview** panel and read it. Do the letters sit on one line? Is any
   letter too big or too small?
3. Open letters that need care in the glyph editor. Typical fixes are smoothing a wobbly curve
   with **Glyph › Contours › Simplify** and fixing small problems shown in the Validation panel
   (see [Fixing outline problems](/drawing/problems/)).

### Spacing and kerning

The automatic spacing gives you a usable start, but handwriting is irregular, and some letters
will look too far apart or too close.

- Choose **Metrics › Metrics Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) and look at
  your letters between **n**s and **o**s. Adjust the left and right sidebearings until the rhythm
  feels even. **Metrics › Auto-Spacing…** can space many letters at once. All this is explained in
  [Spacing](/spacing/metrics/).
- Then fix the pairs that still look wrong, such as **To**, **Ty** or **AV**, with
  [kerning](/reference/glossary/#kerning) in the **Kerning Window**
  (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>). See [Kerning](/spacing/kerning/).

:::tip[Make it feel more handwritten]
A real hand never writes the same letter twice exactly the same way. Once your basic font works,
you can add second versions of common letters and let the font alternate between them with an
OpenType feature. See [OpenType features](/opentype/features/).
:::

## When something goes wrong

**A page shows a red cross and an error.**

- "found … of the 4 corner squares; make sure all four are in view and the page is well lit":
  part of the page is cut off, or the light is too poor. Take a new photo with all four corners and
  some margin.
- "could not tell the four corner squares apart" or "the corner squares are in a line": the
  picture is strongly distorted or cropped. Photograph from straight above.
- "this page is from a different template (other characters, page size or metrics)": the page was
  printed with other settings than the ones in the wizard now. Choose the same **Paper** and
  **Latin-1** setting as when you printed, and do not change the font's metrics between printing
  and scanning. If you did, print the template again.
- "page … is not part of this template": the page belongs to a longer template, for example one
  printed with the Latin-1 extras. Tick the same option again.

**Letters are too thick, or touching parts merge.** Lower the **Ink threshold**, or lower
**Threshold for this letter** for that letter.

**Thin strokes break into pieces.** Raise the threshold, or write again with a thicker pen.

**A letter has bits of dirt or a stray line.** Clean the scanner glass or the page, or remove the
extra contour in the glyph editor afterwards (select it and press <kbd>Delete</kbd>).

**Letters sit at different heights.** The wizard keeps each letter where you wrote it relative to
the printed baseline. Move the letter up or down in the glyph editor, or write that letter again.

**The wizard put a letter I don't want.** Undo with <kbd>Ctrl</kbd>+<kbd>Z</kbd>, or delete or
redraw that glyph later. Next time, untick **Use this letter**.

## Summary

- **Tools › Wizards › Handwriting Font Wizard…** guides you through **Print**, **Scan**,
  **Check** and **Done**.
- The template PDF (A4 or Letter, optionally with Latin-1 extras) has 42 boxes per page with
  guide lines from your font's metrics, four corner squares and a page code.
- Write with a dark felt-tip pen, on the baseline, inside the boxes; print at 100 %.
- Add scans (300 dpi) or phone photos taken from above with all four corners in view, in any
  order.
- FontEasy finds the corners, straightens the page, checks the page code, evens out the light and
  traces each box.
- In **Check**, adjust **Ink threshold**, **Smoothness**, and per-letter thresholds; untick
  letters you do not want; then **Put … Letters in the Font**.
- Afterwards: generate composites, fine-tune spacing in the Metrics window, and kern.

## Try it yourself

1. Print the template, but fill in only the first page (the capitals). Photograph it with your
   phone, run the wizard, and type your name in capitals in the **Preview** panel.
2. In the **Check** step, pick one letter and drag **Threshold for this letter** from one end to
   the other. Watch how the strokes get thinner and thicker, and find the value that looks most
   like your pen.
