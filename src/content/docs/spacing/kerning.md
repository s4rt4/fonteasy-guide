---
title: Kerning
description: How to fix the space between awkward pairs of letters such as AV and To, by hand, with kerning groups, with Auto-Kerning and with the Kerning Audit.
---

Even when every letter of your font is spaced well, a few combinations still look wrong. Type
`AVATAR` and you will see it: the `A` and the `V` lean away from each other and leave a big wedge
of white between them, while the other letters sit at a comfortable distance. Type `To` and the
small `o` floats far away under the arm of the `T`. No amount of spacing can fix this, because the
problem is not one letter. It is the **pair**.

**[Kerning](/reference/glossary/#kerning)** is the fix. It is a list of exceptions to the normal
spacing: "when `A` is followed by `V`, move the `V` 119 units closer". Think of letters cut out of
paper and laid in a row: kerning is nudging two cut-out letters closer (or further apart) because
their shapes leave too much (or too little) room between them.

Kerning comes **after** spacing. Spacing sets the rhythm of the whole font; kerning corrects the
pairs that break it. A well-spaced font needs a few hundred kerning pairs, not tens of thousands.

In this chapter you will learn:

- how kerning differs from spacing and from tracking;
- what kerning pairs are and what negative and positive values do;
- which pairs need kerning, and good words to test them;
- how kerning groups and exceptions save you thousands of pairs;
- how to kern with the Kerning window, the Kerning tool and the Kerning panel;
- how Auto-Kerning measures your outlines and kerns pairs for you;
- what the Kerning Audit finds, and how much kerning is enough.

## Spacing, kerning and tracking

Three things decide the distance between two letters, and it helps to keep them apart:

- **Spacing** belongs to each glyph. The [sidebearings](/reference/glossary/#sidebearing) of `A`
  are the same whatever comes next. You set them in the [previous chapter](/spacing/metrics/).
- **Kerning** belongs to a pair. It adds or removes space only between two particular glyphs, such
  as `A` followed by `V`.
- **[Tracking](/reference/glossary/#tracking)** (also called letter-spacing) belongs to the user of
  the font, not to the font. It adds the same amount of space between *all* letters of a text, for
  example to open up a headline in capitals. You do not set tracking in a font; apps such as word
  processors and design programs do.

![The word AVATAR three times: without kerning, with tracking +80 where every gap grows by the same amount, and with the font's kerning where only some pairs move, by −119, −120, −61, −70 and −10 units.](diagram:kerning-tracking)

Look at the three lines. Tracking (orange) makes every gap bigger, so the problem gaps around `V`
are still too big compared with the others. Kerning (the numbers in the last line) moves only the
pairs that need it, so the word becomes even.

## Kerning pairs

A **[kerning pair](/reference/glossary/#kerning-pair)** is two glyphs in a fixed order, plus a
number:

- the **first** (left) glyph, for example `A`;
- the **second** (right) glyph, for example `V`;
- the **value**, in font units.

The value changes the advance width of the first glyph, but only when the second glyph follows it.

- A **negative** value pulls the pair **closer**. Most kerning is negative: `AV −119`, `To −80`.
- A **positive** value pushes the pair **apart**. You need it less often, for pairs whose shapes
  would bump into each other, for example `f` followed by a closing bracket or a question mark, or
  a descender that hits the next letter.

![A and V of Source Serif: without kerning a big gap opens at the top of the letters; with kerning −119 the V moves under the A and the gap matches the rest of the word.](diagram:kerning-av-pair)

The order matters: `AV` and `VA` are two different pairs, and each needs its own value (even
though, for symmetric letters like these, the values are often similar).

### Which pairs need kerning

Pairs need kerning when their facing sides are shaped very differently from the straight stems
that spacing was set up for. The usual suspects are:

| Kind of shape | Typical pairs |
|---|---|
| Diagonals next to diagonals | `AV`, `VA`, `AW`, `AY`, `AT` |
| Overhanging tops | `To`, `Ta`, `Te`, `Ty`, `Fa`, `Pa`, `Yo`, `Vo`, `Wo` |
| Open bottoms | `LT`, `LV`, `LY`, `L’` |
| Punctuation | `T.`, `V,`, `Y.`, `P.`, `r.`, `“A`, `A”` |
| Round next to diagonal | `OA`, `AO`, `OV`, `ov`, `vo`, `yo` |

Good words to test kerning:

- `AVATAR`, `WAVE`, `VALVE` for capital diagonals;
- `To`, `Ty`, `Tw`, `Yo`, `Wo`, `Fa` for capitals followed by lowercase letters;
- `LT`, `LTA`, `ATLAS` for open shapes;
- `"Tom."`, `"Yes,"` for quotes and punctuation.

:::tip
Set your test words in capitals, in lowercase and in mixed case. Many problems only show up in one
of them. Pairs of a lowercase letter followed by a capital (`aV`) are rare in real text, and most
fonts do not kern them.
:::

## Kerning groups

A Latin font with accents easily has 200 letters. If you had to kern `A` against `V`, then `Á`
against `V`, `Â` against `V`, `Ä` against `V`, and then all of those against `W` and `Y` too, you
would never finish. **[Kerning groups](/reference/glossary/#kerning-group)** (also called kerning
classes) solve this.

A kerning group is a set of glyphs that share the same shape on one side. `A`, `Á`, `À`, `Â`, `Ä`,
`Ã` and `Å` all have the same right side (the accent sits on top and does not change it). Put them
in one group, kern the **group** against `V` once, and all of them follow.

![Kerning group @A holds A, Á, Â and Ä; one kerning value against V (−119) applies to all four pairs.](diagram:kerning-groups)

### Left side and right side

Every glyph can be in two groups, one for each side, because its left and right sides can be
different (the left side of `D` is straight like `H`, its right side is round like `O`):

- A **first-glyph group** is used when the glyph is the *first* glyph of a pair. What matters then
  is the glyph's **right** edge. In the UFO font format these groups are called `kern1`.
- A **second-glyph group** is used when the glyph is the *second* glyph of a pair. What matters
  then is its **left** edge. These are called `kern2`.

A glyph can belong to only one group per side. FontEasy shows groups with an `@` in front of
their name: `@A`, `@O`, `@V`. So the pair `A @V` means "the glyph `A` followed by any glyph of the
second-glyph group `V`".

### Exceptions

Sometimes one member of a group needs something different. `T` against the `@o` group (o, ó, ö…)
might be −80, but `T` followed by `ö` could crash into the dots of the umlaut. Then you add an
**exception**: a pair of single glyphs, `T ö`, with its own value, that overrides the group value.

FontEasy always uses the most specific value it finds for a pair, the same rule apps use with a
finished font:

1. a glyph followed by a glyph (an exception, or a pair of glyphs without groups);
2. a glyph followed by a group, or a group followed by a glyph;
3. a group followed by a group.

## Kerning in FontEasy

You kern in the same text line you used for spacing, in the [glyph editor](/drawing/glyph-editor/),
with the **Kerning** tool and the **Kerning** panel.

![The Kerning menu of FontEasy with Kerning Window, Kerning Groups…, Auto Groups from Composites, Auto-Kerning… and Kerning Audit.](screen:g-menu-kerning)

### The Kerning window

1. In the Overview, double-click a glyph to open it, for example `V`.
2. Choose **Kerning › Kerning Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>).
3. FontEasy shows the **Kerning** panel in the dock and switches to the **Kerning** tool.
4. Type your test word into the **Text** bar above the canvas, for example `AVATAR`.

![Kerning AVATAR in Source Serif: the V is being edited, −119 under the canvas is the kerning of A–V, the 0 marks the pair that starts at V, and the Kerning panel on the right lists the pairs of the font.](screen:g-kerning)

The value of each kerned pair is written under the canvas, between the two glyphs. The pair that
starts at the glyph you are editing is marked with a thin line and is always shown, even at 0.

### The Kerning tool

The **Kerning** tool (<kbd>J</kbd>) is available in both Simple and Pro Mode. Its hint sums it up:
drag a glyph to kern it against the one before; arrows kern the next pair.

**With the mouse:**

1. Choose the **Kerning** tool or press <kbd>J</kbd>.
2. Press on a glyph of the text line and drag it left or right. This kerns it against the glyph
   **before** it. The glyph before becomes the one being edited, and the glyph you drag follows the
   pointer.
3. Let go when the gap looks right. The new value appears under the pair.

**With the keyboard**, for precise steps:

1. Click the **second** glyph of the pair you want to kern. With the Kerning tool, clicking a glyph
   picks the pair it forms with the glyph before it: the glyph before becomes the one being
   edited.
2. Press <kbd>←</kbd> to move the second glyph 1 unit closer, <kbd>→</kbd> to move it 1 unit away.
   The arrow keys always kern the pair that starts at the glyph being edited.
3. Hold <kbd>Shift</kbd> to move 10 units at a time.

Each drag, and each key press, is one step in the history. Kerning a pair back to 0 removes it
from the list.

The colour of a value tells you where it comes from:

- **accent colour**: the value comes from a group (the pair kerns as a group);
- **orange**: an exception, a pair of single glyphs although at least one of them is in a group;
- **normal text colour**: a pair of glyphs that are not in groups.

### Groups or exceptions when you kern

When you change a pair, FontEasy changes the entry that gives the pair its value now. If `A` and
`V` are in groups and the value comes from `@A @V`, dragging changes the group pair, so `ÀV`, `ÄW`
and every other member follow at once. If the pair has no kerning yet, the value is written at
group level when the glyphs have groups.

To make an **exception** for just these two glyphs instead, hold <kbd>Alt</kbd> while you drag
or while you press the arrow keys. The value turns orange.

:::caution
Exceptions are powerful but easy to overuse. Before you add one, ask whether the group is right.
Fifty exceptions for one letter usually mean that letter is in the wrong group.
:::

### The Kerning panel

The **Kerning** panel lists every kerning pair of the font. It sits in the dock next to
**Validation** and **History**; open it with **Window › Panels › Kerning** if you closed it.

![The Kerning panel of Mutator Sans: three pairs, T @MMK_R_A −150, V @MMK_R_A −55 and @MMK_L_A V −60, with the Groups… and Auto Groups buttons above.](screen:kerning)

- The first line shows how many pairs the font has (or the filter leaves).
- Type in the **Filter: A, @O** box to find pairs: a glyph name (`A`), a group (`@O`), or the name
  of any member of a group (typing `Aacute` also finds pairs of its group).
- Each row shows the first glyph or group, the second glyph or group, and the value. Group names
  are in the accent colour.
- Drag the value sideways, or click it and type, to change it.
- Click the **×** at the end of a row to remove the pair.
- Click the names of a pair to show it in the editor with the Kerning tool.

If the font has no kerning yet, the panel tells you to use the Kerning tool in the editor.

### Making kerning groups

1. Choose **Kerning › Kerning Groups…** (or click **Groups…** in the Kerning panel).
2. At the top, choose the side: **First glyph of a pair (kern1)** or
   **Second glyph of a pair (kern2)**.
3. Click **Add Group**.
4. Type the group name after the `@`, for example `A`, and the member glyph names, separated by
   spaces: `A Aacute Agrave Acircumflex Adieresis Atilde Aring`.
5. Repeat for the other groups and the other side.
6. Click **Apply**.

![The Kerning Groups dialog of Mutator Sans with the first-glyph side chosen: groups @MMK_L_A, @comma, @dot and @period with their members, an Add Group button and Apply.](screen:kerngroups)

To delete a group, click the **×** at the end of its row. Because a glyph can be in only one group
per side, putting a glyph in a new group takes it out of its old group on that side.

### Auto Groups from Composites

Most kerning groups follow a simple rule: an accented letter kerns like its base letter. FontEasy
can build those groups for you from your [composite glyphs](/reference/glossary/#composite-glyph):

1. Make sure your accented letters are composites (built with **Glyph › Generate Composites…**,
   see [Components and accents](/drawing/components/)).
2. Choose **Kerning › Auto Groups from Composites**, or click **Auto Groups** in the Kerning panel.

Each accented letter joins the groups of its base letter on both sides (`Aacute` kerns like `A`),
and FontEasy creates the base letter's group if it has none yet. Glyphs that already have a group
on a side keep it. Letters whose accent sticks out to the right, such as `ď`, `ľ`, `ť`, `ơ` and
`ư`, are left out of the first-glyph group, because their right edge is not the same as the base
letter's. The status bar says how many glyphs were put in groups.

:::tip
Run **Auto Groups from Composites** before you start kerning by hand, and again after you add new
accented letters. Every pair you kern afterwards then covers the whole family of accents.
:::

## Auto-Kerning

Kerning a font by hand means looking at hundreds of pairs. **Kerning › Auto-Kerning…** finds and
kerns the obvious ones for you by measuring your outlines. It is also in Simple Mode, and the
**Kern tricky pairs** step of the **Font Journey** has an **Auto-Kerning…** button.

### How Auto-Kerning works

In plain words, Auto-Kerning does what your eye does, with a ruler:

1. **It measures every glyph once.** It cuts the glyph into 64 thin horizontal slices, from the
   descender to the ascender, and notes where the outline starts and ends on each slice. This gives
   a **shape profile** of the left and the right edge of the glyph.
2. **It puts two profiles side by side.** For a pair such as `A` and `V`, it measures the gap
   between the right edge of `A` and the left edge of `V` on every slice where both letters have
   ink.
3. **It does not count deep openings fully.** The space under the arm of a `T` or inside the `V`
   is white, but the eye does not see all of it as gap. Each gap only counts up to a certain depth.
4. **It compares with the normal white of the font.** The target is the typical white between
   letters in your font (for capitals, lowercase, and the two mixed), with reference pairs such as
   `HH`, `Hn` and `nn` when the font has too few letters to tell.
5. **It kerns the pair towards that target**, but only part of the way (the **Strength**), never
   so close that the shapes come nearer than a minimum distance, rounded to 5 units. Very small
   values are left out.

It measures one glyph per [kerning group](#kerning-groups), so groups are kerned as groups.

FontEasy's Auto-Kerning was checked against the hand-made kerning of professional Windows fonts
(Calibri, Segoe UI, Arial, Times New Roman, Verdana). It finds the same direction of kerning for
about 85% of the pairs that matter, and it is a little gentler than a designer, for example for
`T`, `Y` and `V` followed by lowercase letters.

### Using Auto-Kerning

1. Space the font first. Auto-Kerning corrects pairs; it relies on good spacing.
2. Run **Kerning › Auto Groups from Composites** so accented letters are in groups.
3. Choose **Kerning › Auto-Kerning…**.
4. Choose which glyphs to kern against each other: **Letters**, **+ Figures** (letters and
   figures) or **+ Punctuation** (letters, figures and punctuation such as `. , : ; - ‘ ’ “ ” ( ) ! ?`).
   Only glyphs you have drawn are used.
5. Set the **Strength**, from 0.1 to 1.0. The default is 0.4. A higher strength kerns more
   tightly, a lower one more gently.
6. Look at the grid: it shows the strongest pairs set as they will look, with their values. Values
   in the accent colour pull together; values in orange push apart (such as `qj` or `fb`). The line
   above says how many pairs were found and how many of them are kerned already.
7. Leave **Replace kerning the font has (otherwise only new pairs are added)** off to keep every
   pair you kerned yourself. Turn it on only if you want the new values everywhere.
8. Click **Kern These Pairs**.

![The Auto-Kerning dialog on Source Serif: Letters chosen, Strength 0.400, 958 pairs found, and a grid of pairs such as AV −80, VA −75, LT −50 and qj +55.](screen:autokern)

The status bar reports how many pairs were set. They are all one step in the history, so a single
<kbd>Ctrl</kbd>+<kbd>Z</kbd> takes them all back.

:::caution[Check the result]
Auto-Kerning measures shapes; it does not read. Afterwards, go through your test words with the
Kerning tool and fix what looks wrong. Pay special attention to `T`, `V`, `W` and `Y` with
lowercase letters, which often need a little more, and to punctuation.
:::

Some settings of Auto-Kerning (the depth of openings, the minimum distance, the smallest value
kept, and the reference glyphs) are not in the dialog. You can change them from a script; see
[Scripting](/power/scripting/).

## The Kerning Audit

Kerning lists grow over time and collect mistakes. The **Kerning Audit** checks them all at once.
It is part of **Font › Check Font…** (<kbd>F7</kbd>), and **Kerning › Kerning Audit** (Pro Mode)
runs only the kerning part.

| Check | What it means |
|---|---|
| Kerning of a missing glyph | A pair names a glyph or group that does not exist, so it does nothing. |
| Group member missing | A group lists a glyph that does not exist. |
| Glyph in two groups | A glyph is in two groups on the same side; it can be in only one. |
| Exception that changes nothing | An exception has the same value as its groups. |
| Zero kerning | A pair is kerned by 0 and overrides nothing. |
| Very large kerning | A value bigger than 30% of the em, usually a typo. |
| Kerning makes glyphs collide | With this kerning, the two shapes overlap. |

The collision check uses the same shape profiles as Auto-Kerning. It reports a pair when the
kerning makes the two outlines overlap by more than 1% of the em. Shapes that already touch
without kerning, on purpose, are not reported, and for a group pair it names the members that
overlap most.

![The Kerning Audit on Source Serif: the Font Check panel shows the Kerning section with three warnings, for example that the kerning of T o (−900) makes them overlap by 623 units.](screen:kerningaudit)

1. Choose **Kerning › Kerning Audit**.
2. The **Font Check** panel opens at the bottom with only the **Kerning** section.
3. Click a finding to jump to it: a pair opens in the editor with the Kerning tool, a group opens
   the Kerning Groups dialog.
4. Many findings have a **Fix** button (for example, removing a zero pair or a useless exception),
   and **Fix All** fixes every finding that can be fixed. Each is one step in the history.

The [Quality checks](/production/quality/) chapter explains the Font Check panel in full.

## How much kerning is enough

There is no fixed number, but these guidelines help:

- **A few hundred pairs** with groups are typical for a well-spaced text font in Latin. Thousands of
  pairs often mean the spacing needs work.
- **Kern what readers will meet.** `To`, `Ty`, `Yo` and `AV` appear in real words; `qQ` does not.
- **Small values do not matter.** A pair kerned by 5 units out of 1,000 is invisible at text sizes.
  Auto-Kerning leaves those out for that reason.
- **Do not kern to make letters touch.** Two kerned letters should still look like they have the
  same white between them as the rest of the word, not less.
- **Display fonts need more.** Big headlines show every gap, so fonts for large sizes are usually
  kerned more carefully than fonts for small text.

## Kerning in the finished font

You do not write any code for kerning. When the font is compiled (for the Preview, for **Test
Font in Browser** or for export), the compiler builds the OpenType `kern` feature from your pairs
and groups. In the Features list it is marked **built**; see
[OpenType Features](/opentype/features/). When you open a TTF or OTF font, FontEasy reads its
kerning back into pairs and groups, so you can edit it like your own.

## Tips and common mistakes

- **Space first, kern second.** If you find yourself kerning `nn` or `oo`, the spacing is wrong.
- **Make groups before kerning.** Kerning glyph by glyph and grouping later leaves you with a mess
  of exceptions.
- **Check both orders.** `AV` and `VA` are different pairs.
- **Look at the Preview at reading size.** Kerning that looks right at 300 points can look too
  tight at 12.
- **Keep your test text.** Type a long line of your test words into the **Preview** panel and keep
  it there while you work.

:::caution[Kerning cannot fix bad spacing]
If a letter looks too far from *all* its neighbours, change its sidebearings, not its kerning.
Kerning that repeats for one letter against everything is spacing in disguise.
:::

## When something goes wrong

- **Dragging with the Kerning tool pans the view instead.** You pressed on the first glyph of the
  line, which has no glyph before it, or on empty space. Press on the second glyph of the pair.
- **Changing one pair changed others too.** The pair kerns as a group. Hold <kbd>Alt</kbd> to make
  an exception for just these two glyphs.
- **A pair shows a value in orange you did not expect.** It is an exception that overrides the
  group value. Remove it in the Kerning panel (the **×** button) to go back to the group value.
- **Auto-Kerning finds nothing or shows an error.** The reference glyphs `H` and `n` must be drawn,
  and the glyphs to kern must have outlines.
- **The Kerning Audit reports a collision you meant.** Some designs touch on purpose. Findings are
  advice: you can leave them.

## Summary

- **Spacing** belongs to each glyph, **kerning** to a pair of glyphs, **tracking** to the user of
  the font.
- A **kerning pair** is a first glyph, a second glyph and a value: negative pulls closer, positive
  pushes apart.
- **Kerning groups** let one value cover a whole family of letters; first-glyph groups (`kern1`)
  look at the right edge, second-glyph groups (`kern2`) at the left edge. **Exceptions** override
  a group for single glyphs.
- **Kerning › Kerning Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>) opens the Kerning panel
  and the **Kerning** tool (<kbd>J</kbd>): drag a glyph, or use the arrows (with <kbd>Shift</kbd>
  for 10 units); hold <kbd>Alt</kbd> for an exception.
- **Kerning › Auto Groups from Composites** groups accented letters with their base letters.
- **Kerning › Auto-Kerning…** measures shape profiles and kerns the pairs that stand out; check the
  result by eye.
- The **Kerning Audit** finds missing glyphs, group conflicts, useless pairs, huge values and
  collisions.

## Try it yourself

1. Open a font with `A`, `V`, `T` and `o` drawn. Type `AVATAR To` in the text line, choose the
   Kerning tool and kern `AV`, `VA`, `AT`, `TA` and `To` by eye. Then open the Kerning panel and
   find your pairs with the filter.
2. Make sure your accented capitals are composites, run **Kerning › Auto Groups from Composites**,
   and type `ÁVÄTAR` in the text line. The accented letters should now kern exactly like `A`. Then
   run **Kerning › Auto-Kerning…** with Strength 0.4 and compare its values with yours.
