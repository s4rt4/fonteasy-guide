---
title: Type Basics
description: The words and ideas behind every font, from the baseline and x-height to glyphs, Unicode, the em and families of styles.
---

Type designers have their own vocabulary. They talk about baselines and x-heights, stems and bowls,
glyphs and code points. These words are not there to sound clever: each one names something you will
see and adjust in FontEasy. Once you know them, the menus, panels and the rest of this guide suddenly
make sense.

This chapter is the most important concept chapter of the guide. It has no buttons to click, but
plenty of pictures. All the letters in the pictures are real letters from free fonts, mostly
Source Serif 4. Take your time, and come back whenever a word puzzles you. Every term also has an
entry in the [glossary](/reference/glossary/).

In this chapter you will learn:

- the lines that every letter sits on: baseline, x-height, cap height, ascender and descender;
- why round letters are a little bigger (overshoot);
- the parts of a letter: stem, bowl, counter, aperture, terminal and serif;
- what serif and sans serif, contrast, weight, width, italic and oblique mean;
- the difference between a glyph and a character, and what Unicode and code points are;
- what the em and units per em are, and the first idea of sidebearings and advance width;
- how fonts form families of styles.

## The lines letters sit on

Think back to the lined exercise books from primary school. You wrote on a line, the small letters
reached up to a dotted middle line, and the tall letters reached to the top line. Fonts work in the
same way. Every letter of a font is drawn in relation to a few invisible horizontal lines, the
[vertical metrics](/reference/glossary/#vertical-metrics).

![The word Hxdp with five lines: the ascender line at the top of d, the cap height at the top of H, the x-height at the top of x, the baseline under all letters, and the descender line at the bottom of p.](diagram:type-basics-vertical-metrics)

From bottom to top:

- The [descender](/reference/glossary/#descender) line marks how far letters such as p, g, q, j and y
  reach below the line of text. Their tails are called descenders too.
- The [baseline](/reference/glossary/#baseline) is the line the letters stand on, like the line in
  an exercise book. It is the most important line of all: in FontEasy its height is always 0.
- The [x-height](/reference/glossary/#x-height) is the height of the small letters without
  ascenders, such as x, a, n and o. It is named after the letter x because x has flat tops and
  bottoms that touch the lines exactly.
- The [cap height](/reference/glossary/#cap-height) is the height of the capital letters, such as
  H, E and T.
- The [ascender](/reference/glossary/#ascender) line marks how tall letters such as b, d, h, k and l
  grow above the x-height. In many fonts ascenders are a little taller than the capitals, as in the
  picture.

The x-height matters more than you might think. Two fonts set at the same size can look very
different in size because one has a large x-height and the other a small one. A large x-height makes
text easier to read at small sizes; a small x-height looks elegant and old-fashioned.

### The lines in FontEasy

When you open a glyph in FontEasy, the editor draws these lines across the canvas and labels each one
with its name and height. In the picture below you can see the cap height (670), x-height (475),
baseline (0) and descender (−335) of Source Serif 4.

![The glyph editor showing the letter a of Source Serif 4, with labelled lines for cap height 670, x-height 475, baseline 0 and descender −335.](screen:g-edit)

A new font in FontEasy starts with sensible values: ascender 750, cap height 700, x-height 500 and
descender −250. The [New Font Wizard](/start/first-font/#two-ways-to-start-a-font) also lets you pick
the x-height by eye (Small, Medium or Large next to the capitals). You can change all of them later
in **Font › Font Info…**, as the chapter [Font Info](/production/font-info/) explains.

### Overshoot

Look closely at an O next to an H. If both were exactly as tall, the O would look smaller. Our eyes
judge a round shape by its middle, and a circle that only touches the lines with one point at the
top and one at the bottom seems to shrink away from them. To look the same size, round and pointed
letters reach a little past the lines. This is called [overshoot](/reference/glossary/#overshoot).

![H and O side by side: the H sits exactly between the baseline and the cap height, while the O pokes a little above the cap height and below the baseline; the overshoot areas are marked in red.](diagram:type-basics-overshoot)

The amount is small, usually 1 to 3 percent of the letter height. In Source Serif 4 the O reaches
15 units above the cap height and 15 below the baseline, and the o goes 13 units above the x-height.
Pointed letters such as A, V and W get a similar extra at their points. When you draw your first
round letters in [Your First Font](/start/first-font/) you will give them a small overshoot too.

:::tip
Overshoot is a classic example of a rule in type design: what matters is how a letter *looks*, not
what a ruler says. When your eyes and the numbers disagree, trust your eyes.
:::

## The parts of a letter

Letters are built from a small set of parts that come back again and again. Learning their names
helps you see why one font feels different from another, and it helps you keep your own letters
consistent.

![The word bean with labelled parts: the stem of b, the bowl of b and its counter inside, the aperture of e, the terminal at the top of a, and a serif at the foot of n.](diagram:type-basics-anatomy)

- A [stem](/reference/glossary/#stem) is a main vertical stroke, like the straight line of b, the
  sides of H or the downstrokes of n. Stems of similar letters should have the same thickness.
- A [bowl](/reference/glossary/#bowl) is a curved stroke that closes in a space, like the round part
  of b, d, p and o.
- A [counter](/reference/glossary/#counter) is the space inside a letter, fully closed (inside o or b)
  or partly open (inside n or c). Counters are the white parts of a letter, and they are just as
  important as the black parts: if they are too small, letters fill in and become hard to read.
- An [aperture](/reference/glossary/#aperture) is the opening of a partly closed counter, like the
  gap at the right of e or c. Wide apertures keep letters clear at small sizes; narrow ones look
  compact and strong.
- A [terminal](/reference/glossary/#terminal) is the end of a stroke that does not end in a serif,
  like the curly top end of a. Terminals can be cut straight, rounded, angled or end in a ball.
- A [serif](/reference/glossary/#serif) is a small extra stroke, a "foot", at the end of a main
  stroke, like the flat feet at the bottom of n.

There are more names, such as the crossbar of H or A, the shoulder of n where the arch leaves the
stem, or the tail of Q. You do not have to learn them all now. The useful habit is to look at letters
as shapes made of parts, and to notice when a part in one letter should match a part in another.

### Serif and sans serif

The little feet give fonts their best-known category. A font with serifs is called a serif font; a
font without them is a [sans serif](/reference/glossary/#sans-serif) font (*sans* is French for
"without").

![The word Rag twice: on the left in a serif font with the serifs of R circled, on the right in a sans serif font with plain stroke ends.](diagram:type-basics-serif-sans)

Serif fonts often feel classic, bookish or formal. Sans serif fonts often feel modern, clean or
technical. Both can be very readable; it depends much more on the design than on the category.

The sans serif on the right of the picture, Source Code Pro, is also
[monospaced](/reference/glossary/#monospaced): every letter takes exactly the same width, like on a
typewriter. Programmers like monospaced fonts because columns of code line up.

## Contrast, weight and width

Three more words describe the overall look of a font.

### Contrast

[Contrast](/reference/glossary/#contrast) is the difference between the thick and the thin parts of
the strokes. Imagine writing with a broad calligraphy pen: the strokes come out thick in one direction
and thin in another. Many serif fonts keep this memory of the pen. A font with low contrast looks as
if it was drawn with a round marker; its strokes are almost the same everywhere.

![Two letters o: on the left a high-contrast o with thick sides and very thin top and bottom; on the right a low-contrast o whose stroke is almost equally thick all round.](diagram:type-basics-contrast)

High contrast looks elegant and works best at large sizes, where the thin parts stay visible. Low
contrast is sturdy and survives small sizes, rough printing and low-resolution screens. A font where
every stroke has exactly the same thickness is called [monoline](/reference/glossary/#monoline).

### Weight

[Weight](/reference/glossary/#weight) is how thick or dark the strokes are. Fonts give each weight a
name and a number from 100 to 900. The most common are Regular (400) and [Bold](/reference/glossary/#bold) (700).

![The letter a in six weights of Source Serif 4: ExtraLight 200, Light 300, Regular 400, Semibold 600, Bold 700 and Black 900.](diagram:type-basics-weight)

A bold letter is not simply a regular letter with a thicker outline around it. When the stems get
heavier, the counters must stay open, so the letters get wider, the joins get thinner and the
details change. That is why a designer draws the Bold as a separate design. FontEasy can help with
that later, as you will see in [Design Automation](/advanced/automation/) and
[Variable Fonts](/advanced/variable/).

### Width

[Width](/reference/glossary/#width) is how narrow or broad the letters are. A Condensed style has
narrow letters that save space in headlines; an Extended or Wide style has broad, stretched letters.

![The word WIDTH twice in the same typeface, once condensed with narrow letters and once wide with broad letters.](diagram:type-basics-width)

Width and weight can be combined: a family may have a Bold Condensed, a Light Wide and so on.

## Italic and oblique

Slanted letters come in two kinds, and type designers care about the difference.

![The letters afe three times: upright roman, an oblique that is the same letters slanted, and a true italic with different shapes such as a single-story a and a descending f.](diagram:type-basics-italic-oblique)

- An [oblique](/reference/glossary/#oblique) is the upright (roman) design, slanted. The shapes stay
  the same; only the angle changes. Many sans serif fonts use obliques.
- An [italic](/reference/glossary/#italic) is a separate design with its own letter shapes, inspired
  by handwriting. Look at the picture: the italic a has a single round bowl, and the italic f
  dips below the baseline. Most serif fonts have true italics.

Both are used for the same job in text: to emphasize a word, or to mark titles and foreign words.

## Glyphs and characters

Here is an idea that surprises many beginners: what you type and what you see are two different
things.

A [character](/reference/glossary/#character) is the idea of a letter: "small letter a", "digit
seven", "question mark". It is what is stored when you type, send a message or save a text file. A
[glyph](/reference/glossary/#glyph) is a drawing of a character in a particular font. When your text
is displayed, the computer picks a glyph for each character.

![On the left, one character U+0061 LATIN SMALL LETTER A with arrows to three different glyphs: a regular, an italic and a bold a. On the right, two characters f and i with arrows to one ligature glyph fi.](diagram:type-basics-glyph-character)

The link between them is not always one to one:

- **One character, many glyphs.** The character a has a different glyph in every font and every
  style. Even inside one font there can be several: a normal a, a small-capital a, a stylistic
  [alternate](/reference/glossary/#alternate).
- **Several characters, one glyph.** In many serif fonts, f followed by i is shown with a single
  joined glyph, a [ligature](/reference/glossary/#ligature), so that the dot of the i does not bump
  into the top of the f. The text still contains two characters: if you copy it, you get "f" and
  "i".

Choosing the right glyph for each character is the job of OpenType features, the subject of
[Part IV](/opentype/features/). For now it is enough to know that a font is a collection of glyphs,
and that most of them are linked to a character.

### Unicode and code points

How does the computer know which glyph belongs to which character? Through
[Unicode](/reference/glossary/#unicode), a worldwide standard that gives every character of every
writing system a unique number. That number is the character's
[code point](/reference/glossary/#code-point). It is written as U+ followed by a hexadecimal number
(a counting system that uses the digits 0–9 and the letters A–F):

| Character | Code point | Unicode name |
|---|---|---|
| A | `U+0041` | LATIN CAPITAL LETTER A |
| a | `U+0061` | LATIN SMALL LETTER A |
| é | `U+00E9` | LATIN SMALL LETTER E WITH ACUTE |
| 7 | `U+0037` | DIGIT SEVEN |
| ? | `U+003F` | QUESTION MARK |

Unicode covers more than 150,000 characters, from Latin and Javanese to Arabic, Chinese and emoji. No
font has them all: a font chooses its own [character set](/reference/glossary/#character-set), the
characters it supports.

Each glyph in FontEasy has a [glyph name](/reference/glossary/#glyph-name), such as `A`, `a`,
`eacute` or `f_i`, and usually one code point. Select a glyph in the Overview and the **Glyph Info**
panel shows both, together with the character, its official Unicode name and its script.

![The Overview of Source Serif 4 with the letter a selected; the Glyph Info panel on the right shows the name a, Unicode U+0061, the character a, LATIN SMALL LETTER A and the script Latin.](screen:g-overview)

Some glyphs have no code point at all, for example a small-capital `a.sc` or an alternate `a.ss01`.
They cannot be typed directly; OpenType features swap them in. FontEasy lists them under
**Unencoded** in the Overview.

:::tip
The search field at the top of the Overview understands all three: type a glyph name (`eacute`), a
character (`é`) or a code point (`U+00E9`). Press <kbd>/</kbd> to jump into the field.
:::

## The em and units per em

How big is a letter? To answer that, type design uses a measure from the days of metal type. Each
letter was cast on a small metal block, and all blocks of one font had the same height. That height
was called the [em](/reference/glossary/#em). When you set a font at 12 points, the em is 12 points
tall. The letters themselves are smaller: they fit inside the em with room above and below.

In a digital font the em is a square grid. Designers do not draw in millimeters or pixels but in
font units, and the number of units in one em is called
[units per em](/reference/glossary/#units-per-em), or UPM.

![The letters H and g, each in its own box one em tall, with a ruler from −250 to 750: one em equals 1000 units, every glyph box is one em tall, and the widths differ.](diagram:type-basics-em-square)

- Most fonts use **1000 units per em**. This is the tradition of PostScript and OpenType CFF fonts,
  and FontEasy's default. It makes the numbers easy: a cap height of 700 is 70 % of the em.
- Many TrueType fonts use **2048** units per em. Both work everywhere.

The coordinates work like a graph from school. The x-axis runs to the right from the left edge of
the glyph. The y-axis runs upwards from the baseline, so points above the baseline have positive
numbers and points below it (in descenders) have negative numbers. In the default FontEasy font the
em runs from −250 at the descender to 750 at the ascender: exactly 1000 units.

In FontEasy the status bar shows the UPM of the font, for example "320 glyphs · 1000 UPM". In Pro
Mode the **New Font** dialog has a **Units per em** field, and **Edit › Preferences… › General ›
Units per em** sets the value for new fonts. If you are not sure, keep 1000.

:::note
Letters are allowed to stick out of the em. Accents on capitals, such as Å, often reach above it, and
some swashes reach far outside. The em is a measuring stick, not a fence.
:::

## Sidebearings and advance width: a first look

Letters in a line of text do not touch each other (except in some scripts and handwriting fonts).
Each glyph carries a little empty space on its left and right. Think of each glyph as sitting in its
own box, like the metal blocks of old: when you type, the boxes are placed side by side.

![The letters n and o in their boxes: green bands show the left sidebearings, orange bands the right sidebearings, and an arrow under the n marks its advance width; the gap between n and o is the right sidebearing of n plus the left sidebearing of o.](diagram:type-basics-sidebearings)

- The [advance width](/reference/glossary/#advance-width) is the width of the box: how far the
  "pen" moves to the right before the next letter starts.
- The [sidebearings](/reference/glossary/#sidebearing) are the empty spaces between the drawing and
  the sides of its box: the left sidebearing (LSB) and the right sidebearing (RSB).
- The space between two letters is the right sidebearing of the first plus the left sidebearing of
  the second.

Good [spacing](/reference/glossary/#spacing) means choosing these spaces so that the rhythm of black
and white looks even across a whole word. Round sides get a little less space than straight sides,
because the curve already brings extra white. For the few pairs that still look wrong, such as AV or
To, a font adds [kerning](/reference/glossary/#kerning): small corrections for particular pairs of
letters.

In FontEasy the **Glyph Info** panel shows the advance width of the selected glyph, and in the glyph
editor the options bar shows **Width**, **LSB** and **RSB** when nothing is selected. You will set
them for your first letters in [Your First Font](/start/first-font/#space-the-letters), and Part III,
[Metrics and Spacing](/spacing/metrics/) and [Kerning](/spacing/kerning/), goes into depth.

## Families and styles

A single font is one [style](/reference/glossary/#style): Regular, Italic, Bold and so on. Fonts
that share one design form a [family](/reference/glossary/#family), and the design itself is the
[typeface](/reference/glossary/#typeface).

![The typeface Source Serif 4 as a family of four styles, each showing Ag: Regular, Italic, Bold and Bold Italic; four styles are four font files.](diagram:type-basics-family)

The classic family for text has four styles: Regular, Italic, Bold and Bold Italic. Word processors
switch between them when you press the Bold or Italic button. Bigger families add more weights
(Thin to Black) and widths (Condensed to Extended), and can grow to dozens of styles.

Traditionally each style is a separate [font file](/reference/glossary/#font-file). A
[variable font](/reference/glossary/#variable-font) stores the whole range in a single file, and an
app can choose any weight in between, such as 450 or 563.

In FontEasy a font you create starts as one style, saved as one UFO source. Its family name and
style name are set in **Font › Font Info…**. When you want more styles, you can grow the font into a
family later, with masters and a designspace (see [Variable Fonts](/advanced/variable/)).

## Common mix-ups

:::caution[Font size is not letter height]
"12 point" is the height of the em, not of the capitals. That is why two fonts at the same point size
can look very different in size: one may have a tall x-height, the other a short one.
:::

:::caution[Glyphs are not characters]
Drawing a beautiful glyph is only half the job. If the glyph has no code point, or the wrong one,
typing the letter will not show it. FontEasy's templates give every glyph the right code point for
you.
:::

:::caution[Slanted is not italic]
Slanting a roman makes an oblique. A true italic has its own shapes. Both are fine, but call them by
their names, especially in your font's style name.
:::

## Summary

- Letters are drawn on invisible lines: descender, baseline (always 0 in FontEasy), x-height, cap
  height and ascender. Round and pointed letters overshoot these lines a little so they look the
  same size.
- Letters are made of parts: stems, bowls, counters, apertures, terminals and, in serif fonts, serifs.
- Contrast is the difference between thick and thin strokes; weight is how dark the strokes are;
  width is how narrow or broad the letters are.
- An oblique is a slanted roman; an italic has its own, more handwritten shapes.
- A character is what you type; a glyph is how one font draws it. Unicode gives every character a
  code point, written like `U+0041`.
- One em is the size of the font; FontEasy uses 1000 units per em by default, with y going up from
  the baseline.
- Every glyph sits in a box as wide as its advance width; the sidebearings are the space on either
  side of the drawing.
- Styles such as Regular, Italic and Bold form a family; a variable font holds many styles in one
  file.

## Try it yourself

1. On paper, draw four horizontal lines for the descender, baseline, x-height and cap height (use
   about 2 cm between baseline and cap height). Write "Hxdp" between them. Where does each letter
   touch a line? Now add an O and an o: let them overshoot a little.
2. Find a printed page with a serif font and one with a sans serif font. On each, find a stem, a
   bowl, a counter, an aperture and a terminal.
3. In FontEasy, create a new font from the **Latin Basic** template and double-click the glyph `H`
   in the Overview. Read the names and heights of the lines in the editor. Then go back to the
   **Overview** tab, type `U+0067` in the search field, click the glyph that is left and look at the
   **Glyph Info** panel: which
   character is it, and what is its Unicode name?
