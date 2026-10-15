---
title: Spacing and Metrics
description: How to give every glyph the right amount of space around it, by hand, with metrics keys and with Auto-Spacing.
---

You have drawn your letters. Each one looks good on its own. Now you type a word with them and
something feels wrong: some letters huddle together, others drift apart, and the word looks
patchy. This is not a drawing problem. It is a **spacing** problem, and fixing it is one of the
biggest steps from "a set of drawings" to "a font people can read".

Spacing means deciding how much empty room each [glyph](/reference/glossary/#glyph) carries on its
left and on its right. Think of every letter as a rubber stamp on a wooden block: the block is a
little wider than the ink. When you line up the stamps side by side, the wood around the ink
decides how far apart the letters print. Spacing is choosing the width of each block.

The good news: spacing follows a few simple rules, FontEasy shows your glyphs in real words while
you work, and it can do most of the first pass for you with Auto-Spacing.

In this chapter you will learn:

- what the advance width and the left and right sidebearings are;
- why even spacing matters more for reading than perfect shapes;
- the classic way type designers space a font, with spacing strings such as `HOH` and `non`;
- how to space glyphs in FontEasy with the Metrics window, the Metrics tool and the text line;
- how metrics keys such as `=o` and `=|H` keep related letters in step;
- how Auto-Spacing works and when to use it;
- what tabular, proportional and monospaced figures and fonts are.

## What spacing is

Every glyph in a font has two kinds of measurements: the shape (its outline) and the
**[metrics](/reference/glossary/#metrics)**, the numbers that say how much room the glyph takes
up in a line of text. All of them are measured in font units. In most fonts there are 1,000 units
to the [em](/reference/glossary/#em), so a value of 50 means one twentieth of the font size.

### The advance width

The **[advance width](/reference/glossary/#advance-width)** is the total width of a glyph's box.
When an app sets text, it draws a glyph, then moves the "pen" forward by exactly that width and
draws the next glyph there. Nothing else decides where the next letter starts (apart from
kerning, which you will meet in the next chapter).

The advance width is not the width of the ink. It is the width of the ink **plus** the empty space
on both sides.

### Sidebearings

The empty space on each side of the ink is called a
**[sidebearing](/reference/glossary/#sidebearing)**:

- the **left sidebearing** (LSB) is the space between the start of the box and the leftmost point
  of the outline;
- the **right sidebearing** (RSB) is the space between the rightmost point of the outline and the
  end of the box.

So the advance width is always LSB + the width of the ink + RSB. If you make the RSB bigger, the
advance width grows by the same amount. If you make the LSB bigger, the whole drawing slides to the
right inside a wider box.

![The letters n and o of Source Serif with their boxes: the light purple bands are the left and right sidebearings, the arrow below is the advance width.](diagram:metrics-sidebearings)

Look at the two letters in the picture. A sidebearing is always measured from the outermost point
of the outline. The **n** gets 34 units on the left and 30 on the right, but those are measured
from the tips of its serifs; the stems themselves stand further inside. The **o** gets 45 units on
each side, measured from the single point where its curve comes closest to the edge. Above and
below that point, the round side curves away, so the white next to an `o` is shaped like a wedge
and is much larger than the number suggests. You will see shortly why this matters.

:::note
A sidebearing can be negative. Letters with parts that reach out, such as the tail of a `j` or
the arm of an italic `f`, often stick out of their box on purpose so they tuck under or over their
neighbours.
:::

## Why spacing matters more than shapes

When you read, your eye does not look at letters one by one. It takes in whole words as patterns
of black strokes and white gaps. Readers notice the rhythm of the white space long before they
notice the detail of a curve. A font with average shapes but even spacing reads comfortably. A
font with beautiful shapes but uneven spacing feels bumpy, because some pairs of letters seem to
stick together and form "holes" or "blobs" in the word.

![The word minimum set three times: too tight, too loose and with even spacing.](diagram:metrics-tight-loose)

The word *minimum* is a good test because it is made almost only of straight vertical strokes.
In the first line the letters are too close: the counters (the white inside `n` and `m`) look
bigger than the gaps between letters, so the word turns into a dark comb. In the second line the
letters fall apart into separate shapes. In the third line the white between the letters is about
the same as the white inside them, and the word reads as one calm, even texture. That is the goal.

:::tip[A rule of thumb]
The space between two straight stems (as in `nn`) should look roughly like the white space inside
an `n`, often a little less. Text fonts are spaced looser than display fonts, and small sizes need
looser spacing than big headlines.
:::

## The classic method

Type designers have spaced fonts the same way for over a century. The idea comes from the type
designer Walter Tracy: space a few key letters first, then give every other letter sides that copy
those key letters.

### Straight and round sides

Most letters have sides of a few basic kinds:

- **straight**: the left side of `n`, `h`, `b`; both sides of `H`, `I`;
- **round**: both sides of `o`, the left side of `d`, `c`, `e`; both sides of `O`;
- **diagonal**: `v`, `w`, `y`, `A`, `V`;
- **open or odd**: `r`, `f`, `t`, `L`, `T`, `F`.

A round side touches the edge of its box only at one point, so the white next to it is bigger than
it seems from the numbers. To look as far away as a straight side, a round side needs a *smaller*
sidebearing. As a starting point, a round side often gets about half to two thirds of the
sidebearing of a straight side in the same font, measured from the stem. (In a serif font such as
Source Serif the numbers can look the other way round, because the serifs of `n` reach out
towards the box edge. The eye does not care about numbers: it judges the area of white.)

### Spacing strings

To judge one glyph, you set it between letters you already trust. These short test texts are
called **spacing strings**:

- `HH?HH` and `HOH?HOH` for capitals and figures;
- `nn?nn` and `non?non` for lowercase letters;
- `OO?OO` and `oo?oo` to check round sides.

Replace `?` with the letter you are spacing. If `nnann` looks even, the `a` is spaced well.

![The strings HOHOH and nonon: purple bands mark the sidebearings of straight sides, orange bands the smaller sidebearings of round sides.](diagram:metrics-spacing-strings)

Look at the bands: the straight stems of `H` and `n` carry wider sidebearings than the round sides
of `O` and `o`, and yet the white between every pair of letters looks the same.

### A spacing order

Space in this order, and each step builds on the one before:

1. Space `n` so that `nnnn` looks even. This sets the rhythm of the lowercase.
2. Space `o` so that `nonon` looks even, changing only the `o`.
3. Space `H` so that `HHHH` looks even, then `O` with `HOHOH`.
4. Give the other letters their sides from these four, using the table below.
5. Check every letter in its spacing strings, then in real words.

| Side shape | Copy the side of | Letters (examples) |
|---|---|---|
| Straight left | left of `n` | `b h k l m n p r` |
| Straight right | right of `n` | `h m n`, the stem side of `d q u` |
| Round left | left of `o` | `c d e o q` |
| Round right | right of `o` | `b o p`, often a little more for `c e` |
| Straight capital | sides of `H` | `B D E F H I K L M N P R` (left) |
| Round capital | sides of `O` | `C G O Q` (left), `D O Q` (right) |

Diagonal and open letters (`v w y`, `A V W`, `T`, `L`) cannot copy anything. Space them by eye in
their strings, and leave their difficult pairs, such as `AV` or `To`, for
[kerning](/spacing/kerning/).

## Spacing in FontEasy

FontEasy lets you space glyphs in a line of text right inside the
[glyph editor](/drawing/glyph-editor/), so you always judge spacing in context.

### The text line

Above the canvas of every glyph tab is a bar labelled **Text**. Whatever you type there is shown
on the canvas around the glyph you are editing, with real advance widths and kerning. The glyph you
are editing stays editable; the others are drawn in grey.

- Type ordinary characters: `nnann`.
- Type `/` followed by a [glyph name](/reference/glossary/#glyph-name) for glyphs that have no key
  on your keyboard: `/a.sc`, or `/A/V` for two glyphs. A name ends at a space or the next `/`.
- Open the **Spacing text** list at the right of the bar for ready-made strings: **Glyph only**,
  `nn◦nn`, `oo◦oo`, `HH◦HH`, `OO◦OO` and `Hamburgefonstiv`. The `◦` stands for the glyph you are
  editing.

To move to another glyph of the line, double-click it. With the **Text**, **Metrics** or
**Kerning** tool, a single click is enough. The line stays where it is on the screen, so you can
work through a whole word letter by letter.

:::tip
If you select several glyphs in the Overview and open them together (press
<kbd>Enter</kbd>), they appear side by side in one text line.
:::

### The Metrics window

The quickest way to start spacing is **Metrics › Metrics Window**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>).

![The Metrics menu of FontEasy with Metrics Window, Auto-Spacing… and Update Metrics.](screen:g-menu-metrics)

1. In the Overview, click the glyph you want to space, for example `n`.
2. Choose **Metrics › Metrics Window**.
3. FontEasy opens the glyph, sets the text line to `nn◦nn` (or `HH◦HH` for a capital or a figure)
   and switches to the **Metrics** tool.

![The Metrics window for n of Source Serif: the text line reads nnnnn, the middle n is the one being edited, and the numbers under each glyph are its left and right sidebearings and its advance width.](screen:g-spacing)

Under each glyph of the line you now see three numbers: the left sidebearing at the left edge, the
right sidebearing at the right edge, and the advance width in the middle, a little lower. The
thin vertical lines show the box of the glyph you are editing.

### The Metrics tool

The **Metrics** tool (<kbd>Y</kbd>) is made for spacing. Its hint in the options bar says what it
does: drag the sidebearings, click another glyph of the text to space it.

1. Choose the **Metrics** tool in the toolbox, or press <kbd>Y</kbd>.
2. Press near the **left** edge of the glyph and drag sideways: the outline moves inside its box,
   which changes the left sidebearing.
3. Press near the **right** edge (the advance width line) and drag: the box gets wider or narrower,
   which changes the right sidebearing.
4. Watch the whole line while you drag. When the gaps look even, let go.
5. Click the next glyph of the line to space it.

![Spacing H of Mutator Sans with the Metrics tool: the text line reads HHHHH and the numbers 60 | 60 under the glyphs are the sidebearings.](screen:spacing)

Every drag is one step in the history, so <kbd>Ctrl</kbd>+<kbd>Z</kbd> takes it back.

### Typing exact numbers

Dragging is good for judging by eye. When you know the number you want, type it:

1. Choose the **Select** tool (<kbd>V</kbd>) and click an empty part of the canvas so nothing is
   selected.
2. The options bar now shows three fields: **Width**, **LSB** and **RSB**.
3. Click a field, type a number and press <kbd>Enter</kbd> (or <kbd>Tab</kbd>).

The **Glyph Info** panel also shows the **Advance width** of the glyph, so you can check the
result.

## Metrics keys

Many letters share sides. The left side of `b`, `h`, `k`, `l`, `m`, `n`, `p` and `r` is the same
straight stem. If you change the left sidebearing of `n`, you probably want all of those to follow.
A **[metrics key](/reference/glossary/#metrics-key)** (FontEasy also calls it a metric expression)
does exactly that: instead of a number, the side holds a little formula that points to another
glyph.

### What a metrics key looks like

A key starts with `=`. You can type it into the **Width**, **LSB** or **RSB** field.

| Key | Means |
|---|---|
| `=n` | the same value as the same side of `n` |
| `=n+10` | the same side of `n`, plus 10 units |
| `=n-5` | the same side of `n`, minus 5 units |
| `=H*1.1` | the same side of `H`, times 1.1 |
| `=H/2` | the same side of `H`, divided by 2 |
| `=40` | always 40 |

In the **Width** field a key copies the advance width of the other glyph, so `=n` there makes the
glyph exactly as wide as `n`.

A vertical bar after the `=` means the **opposite** side: `=|H` in an LSB field takes the RSB of
`H`, and in an RSB field the LSB of `H`. This is useful for letters that mirror each other. The bowl of `d` is on the left, the
bowl of `b` on the right, so the left side of `d` can be `=|b`. A symmetric letter can even copy
its own other side: the RSB of `O` set to `=|O` always equals the LSB of `O`.

### Setting a key

1. Open the glyph, for example `m`.
2. Choose the **Select** tool and click an empty part of the canvas.
3. In the **LSB** field, type `=n` and press <kbd>Enter</kbd>.
4. In the **RSB** field, type `=n` and press <kbd>Enter</kbd>.

The left and right sidebearings of `m` now match those of `n`. The fields show the key in the
accent colour, and when you hover over one, a tooltip shows the value it gives (for example
`=n = 30`). With the Metrics tool, the numbers under the glyphs show the key next to the value, in
the accent colour too.

To remove a key, type a plain number into the field. The glyph keeps that number and forgets the
key.

FontEasy stores metrics keys the same way the Glyphs app does, so they survive when the font is
opened in Glyphs or built with glyphsLib.

### Update Metrics

A key is applied when you type it. But if you later change `n`, the `m` does not move by itself
yet. To bring every glyph up to date with its keys, choose **Metrics › Update Metrics**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>U</kbd>).

FontEasy works out the order for you: keys can point to glyphs that have keys themselves (`m`
copies `n`, `h` copies `m`…), and the glyph that others depend on is always updated first. Even a
chain that loops back on itself is calculated once and does not freeze the app. The status bar
then says how many glyphs changed.

If a key cannot be applied, for example because it names a glyph that does not exist, FontEasy
shows a message that lists each glyph and what went wrong.

### Accented letters

Accented letters are usually [composite glyphs](/reference/glossary/#composite-glyph): an `á`
made of the `a` plus an accent (see [Components and accents](/drawing/components/)). **Update
Metrics** gives a composite without keys the same advance width as its base letter, so when you
respace `a`, all of `á à â ä ã å` follow.

## Auto-Spacing

Spacing a whole font by hand takes time. **Metrics › Auto-Spacing…** gives you a strong first
pass in seconds, which you then refine by eye.

### How Auto-Spacing works

Auto-Spacing does what the classic method does, but by measuring:

- It takes a **reference glyph**: `n` for lowercase letters, punctuation and the like, `H` for
  capitals and figures.
- It measures how much white the reference has beside its sides, as an *area*, over the height of
  the x-height (for lowercase) or the cap height (for capitals).
- It gives each side of every other glyph the same amount of white area.

Because it measures area and not the nearest point, round sides automatically get smaller
sidebearings than straight ones, just as a designer would give them.

One question remains: how deep into an opening should the white count? The open side of a `c`, the
space under the arm of an `r` or the inside of an `L` are white too, but if all of it counted, these
letters would be pushed far too close to their neighbours. The **Depth of openings** setting limits
how far into such openings the white is measured, as a share of the measured height.

FontEasy's own spacing method was calibrated against seven professionally spaced fonts (Arial,
Georgia, Verdana, Segoe UI, Calibri, Times and Tahoma). With the default settings, it lands on
average within about 8/1000 of an em of the designers' own sidebearings.

### Using Auto-Spacing

1. Space your reference glyphs `n` and `H` by hand first, until `nnnn` and `HHHH` look right.
   Auto-Spacing copies their white, so they set the tone for the whole font.
2. In the Overview, select the glyphs to space. Press <kbd>Ctrl</kbd>+<kbd>A</kbd> for all of them,
   or click and <kbd>Shift</kbd>-click a range. (If a glyph is open in the editor, Auto-Spacing
   works on that glyph only.)
3. Choose **Metrics › Auto-Spacing…**.
4. Check the **Lowercase reference** (`n`) and **Capital reference** (`H`). You can type another
   glyph name, for example `o` for a font with very round letters.
5. Leave **Depth of openings** at 20% to start. A smaller value counts less of the white inside
   openings, so open letters like `c`, `r` and `L` get more space; a larger value pulls them closer.
6. Look at the table: for each glyph it shows the sidebearings **Now (L / R)** and **New (L / R)**.
7. Click **Apply**.

![The Auto-Spacing dialog for O of Mutator Sans: the lowercase and capital references, the Depth of openings slider at 20%, and the current and new sidebearings of the glyph.](screen:autospace)

The status bar says how many glyphs were spaced. All of it is a single step in the history, so
one <kbd>Ctrl</kbd>+<kbd>Z</kbd> undoes the whole run.

:::caution[Auto-Spacing is a start, not the end]
Auto-Spacing works from outlines, not from your eye. Always go through the font afterwards with
the Metrics window and fix the letters that look off. Diagonal letters (`v`, `w`, `y`, `A`, `V`)
and letters with big openings (`r`, `f`, `L`, `T`) are the usual suspects.
:::

If the table stays empty and FontEasy says there is nothing to space, the selected glyphs are
empty, or the reference glyph is missing or has no outline yet.

### Spacing from the Font Journey

In Simple Mode, the **Font Journey** panel has a step **Space the letters**. Its button
**Auto-Spacing…** selects every glyph that has an outline and opens the Auto-Spacing dialog for
all of them at once. It is the easiest way for a beginner to space a complete font.

## Figures: tabular and proportional

Figures (the digits 0 to 9) need a special decision. In a table of prices or a spreadsheet, the
digits must line up in columns, so every figure needs the same advance width. These are called
**[tabular figures](/reference/glossary/#tabular-figures)**. In running text, a narrow `1` in a
wide box looks lonely, so many fonts also have **proportional figures**, where each digit is only
as wide as it needs to be.

![Tabular figures sit in boxes of equal width, so 1111 and 2026 line up; proportional figures have boxes of different widths.](diagram:metrics-figures)

How to space them in FontEasy:

- **Tabular**: give every figure the same **Width**. The easiest way is a width key: give `zero`
  a width you like, then type `=zero` into the **Width** field of `one` to `nine`. Centre each
  figure in its box by giving it equal sidebearings.
- **Proportional**: space the figures like letters, with `HH?HH` and `00?00` (Auto-Spacing uses `H`
  as the reference for figures).

Many fonts have both: one set as the default glyphs and the other as extra glyphs named with a
suffix, such as `one.tf` (tabular) or `one.pf` (proportional). FontEasy turns those names into the
OpenType features `tnum` and `pnum` automatically, so users can switch between them; see
[OpenType Features](/opentype/features/).

## Monospaced fonts

In a **[monospaced](/reference/glossary/#monospaced)** font, such as the ones used for programming,
*every* glyph has the same advance width: `i` and `m` take exactly the same room. Spacing then
works differently: you cannot change the width, so you change the design instead. A narrow `i` gets
long serifs to fill its box, a wide `m` gets squeezed.

FontEasy has no special monospace switch, but you can make a font monospaced with metrics keys:

1. Give `n` the width you want for every glyph, for example 600.
2. In the **Width** field of each other glyph, type `=n`.
3. Centre each glyph in its box by setting its **LSB** and **RSB** to the same value.
4. When you later change the width of `n`, choose **Metrics › Update Metrics** and every glyph
   follows.

For hundreds of glyphs, typing keys one by one is slow; a short script can set them all (see
[Scripting](/power/scripting/)).

## Tips and common mistakes

- **Space before you kern.** Kerning fixes a few awkward pairs. It cannot rescue a font whose
  basic spacing is uneven. FontEasy's Auto-Kerning dialog says so too: spacing sets the rhythm,
  kerning corrects pairs.
- **Judge at the size people will read.** Look at the **Preview** panel at text size, not only at
  the giant letters on the canvas. Type a long sentence there.
- **Squint.** Half-close your eyes, or step back from the screen. Dark spots and holes in a line
  of text jump out when the details blur.
- **Use real words.** Spacing strings are for the first pass; words like `minimum`, `Hamburgefonstiv`
  and sentences in your own language catch what strings miss.
- **Check both sides.** A glyph that looks fine after `n` may look wrong before `o`.

:::caution[Do not space by numbers alone]
Two glyphs with the same sidebearing numbers do not look equally spaced if one is round and the
other straight. Trust the line of text on the screen, not the numbers under it.
:::

:::caution[Moving the outline is not the same as moving the box]
Dragging the outline itself with the Select tool moves the drawing inside its box, which changes
*both* sidebearings at once. To change only one side, use the Metrics tool or the LSB and RSB
fields.
:::

## When something goes wrong

- **The text line shows a glyph in the wrong place or an empty space.** You probably typed a name
  after `/` that the font does not have. Check the spelling of the glyph name.
- **A metrics key is not accepted, or Update Metrics shows an error.** The key names a glyph that
  does not exist, or that glyph has no outline to measure. Fix the name, or draw the glyph first.
- **After Update Metrics, an accented letter has the wrong width.** Update Metrics copies the width
  of the base letter only when the composite has no keys of its own and its first component is not
  moved sideways. Give it a key such as `=a`, or remove its keys.
- **Auto-Spacing makes a letter far too tight or too loose.** Undo with
  <kbd>Ctrl</kbd>+<kbd>Z</kbd>, then space that letter by hand. Letters with unusual shapes are
  better spaced by eye.

## Summary

- The **advance width** is the full width of a glyph's box; the **left and right sidebearings**
  are the empty space on each side of the outline.
- Even spacing matters more for readability than perfect shapes: the white between letters should
  look like the white inside them.
- Space `n`, `o`, `H` and `O` first with spacing strings such as `nnnn`, `nonon` and `HOHOH`, then
  give other letters the sides of these; round sides need smaller sidebearings than straight ones.
- The **text line** shows any text around the glyph you edit; **Metrics › Metrics Window**
  (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) sets up a spacing string and the **Metrics** tool
  (<kbd>Y</kbd>).
- **Metrics keys** such as `=n`, `=o+5` and `=|H` link sides to other glyphs;
  **Metrics › Update Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>U</kbd>) brings them up to date.
- **Metrics › Auto-Spacing…** gives every side as much white as the reference `n` or `H`; check
  the result by eye.
- Tabular figures share one width; proportional figures each have their own; in a monospaced font
  every glyph has the same width.

## Try it yourself

1. Open any font, select `n` in the Overview and choose **Metrics › Metrics Window**. Drag the
   right sidebearing of `n` far out and watch `nnnnn` fall apart, then undo. Now type `nonon` in
   the text line and adjust only the `o` until the line looks even.
2. Open `m`, choose the **Select** tool, click an empty spot and type `=n` into both the **LSB**
   and the **RSB** fields. Then change the left sidebearing of `n`, choose
   **Metrics › Update Metrics** and check that `m` followed.
