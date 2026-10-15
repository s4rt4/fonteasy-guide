---
title: Design Automation
description: Make many glyphs bolder, lighter, narrower, wider, slanted, outlined or inlined at once, generate small caps from capitals, and know when to redraw by hand instead.
---

Some design jobs are the same small change repeated on hundreds of glyphs. Making every letter a
little bolder, narrowing a whole alphabet for a condensed style, or building small capitals from
the capitals: done by hand, each of these takes days. FontEasy can do a good first version of them
in seconds.

Think of these tools as a very fast, very careful assistant. The assistant follows rules: stems
get thicker by exactly so many units, heights stay on their lines, points stay in the same order.
What the assistant cannot do is *see*: it does not notice that the bowl of a bold "a" now looks
cramped, or that a narrow "m" needs thinner joins. That part stays your job. The best results come
from letting the tool do the heavy lifting and then refining by eye.

In this chapter you will learn:

- how **Tools › Transform Glyphs…** makes glyphs bolder or lighter, narrower or wider, slanted,
  outlined or inlined;
- how to choose which glyphs and which masters a change applies to;
- how **Font › Make Small Caps…** builds small capitals from your capitals;
- how **Make Variable** uses the same tools to draw a bold master;
- when automation is a good idea and when to redraw by hand.

## Why "keeping the points" matters

Before looking at the tools, one idea makes everything else clearer. A glyph is made of
[points](/reference/glossary/#point). There are two ways a tool could make a letter bolder:

- **Add new outlines** around the old ones and merge them. This works, but the glyph ends up with a
  different number of points in a different order.
- **Move the existing points** outwards. The glyph keeps exactly the same points, only in new
  places.

FontEasy's Bolder / Lighter uses the second way. That matters for
[variable fonts](/advanced/variable/): interpolation needs the same points in the same order in
every master. A glyph made bolder by moving points is still compatible with the original, so the
two can be the Light and Bold masters of a variable font, and every weight in between works at
once.

![Left: a stem with four points, numbered 1 to 4. Right: the bolder stem has the same four points, each moved outwards; the dashed outline shows the original.](diagram:automation-bolder)

## Transform Glyphs

Choose **Tools › Transform Glyphs…** to open the dialog. It works in both Simple and Pro mode.

![The Transform Glyphs dialog on Source Serif 4 with Bolder / Lighter chosen: Each side of a stem is 21 units, stems go from about 84 to 126 units, and the preview shows Hamburg before (top) and after (bottom); Selected glyphs (7) is chosen.](screen:transform)

At the top are five tabs: **Bolder / Lighter**, **Narrower / Wider**, **Slant**, **Outline** and
**Inline**. Under the settings, a preview shows the word "Hamburg" set in your font twice: the top
line is how it looks now, the bottom line is how it will look. It updates as you move the sliders.

At the bottom you choose **what** to change (and, in a variable font, **where**), then click
**Apply**. Each Apply is a single step in the undo history, so **Edit › Undo** takes the whole
change back at once.

### Bolder / Lighter

The **Each side of a stem** slider adds units to both sides of every [stem](/reference/glossary/#stem).
A negative value makes the font lighter. The line under the slider tells you the result, for
example: "Stems are now about 84 units; they become 126. Points stay the same, so the result
interpolates with the original."

What FontEasy does:

- The stems grow on both sides; horizontal strokes grow too, in proportion to how thick they are
  in your font.
- The [sidebearings](/reference/glossary/#sidebearing) stay the same, so the
  [advance width](/reference/glossary/#advance-width) grows with the letter.
- Shapes are pulled back to their lines: the baseline, x-height, cap height, ascender and descender
  stay where they were, so a bolder "x" is not taller than before.
- The number and order of points do not change.

To measure your stems, FontEasy looks at the letters n, l, H and I (and e, o, H for the horizontal
strokes). If those are not drawn yet, it assumes typical values.

### Narrower / Wider

The **Width** slider (50% to 150%) makes letters narrower or wider. A plain horizontal squash would
also make the vertical stems thinner, which turns a condensed letter into a light, spindly one. So
after scaling, FontEasy brings the stems back to their original thickness: "Stems keep their
thickness: a narrower letter is not a thinner one."

![An H in three versions: the original with 60-unit stems; squashed to 70%, where the stems become thin; and Narrower 70%, where the letter is narrow but the stems stay 60 units.](diagram:automation-condense)

### Slant

The **Angle** slider (−20° to 20°) leans the letters. FontEasy leans them around half the
x-height, so each letter stays over its own space instead of drifting sideways. If you slant every
glyph of the font, FontEasy also sets the font's italic angle.

This makes an [oblique](/reference/glossary/#oblique), not a true [italic](/reference/glossary/#italic):
the letters lean but keep their upright shapes. A real italic often has different shapes, such as
a single-storey "a" and an "f" with a descender. Slant is a good start for a sans serif oblique,
or for the italic master of a variable font that you then redraw.

### Outline and Inline

These two make decorative styles:

- **Outline** turns each letter into a band along its edge, so the inside becomes hollow, like a
  letter traced with a pen. **Line** sets how thick the band is.
- **Inline** cuts a thin line into the letter, a little inside its edge, like the engraved lines
  on old poster type. **Line** sets the thickness of the cut line and **from the edge** sets how
  far inside the edge it runs.

Both build new outlines and clean away tiny leftover bits. Unlike Bolder / Lighter, they **add
points**, so the result is no longer compatible with the original. They are meant for separate
decorative fonts, not for masters of a variable font.

### Choosing the glyphs

Under the preview, choose what the change applies to:

- **Selected glyphs (n)**: the glyphs selected in the Overview. If a glyph is open in the glyph
  editor, the change applies to that glyph.
- **Every drawn glyph**: every glyph that has outlines.

When you open the dialog with nothing selected and no glyph open, it starts on **Every drawn glyph**.

[Composite glyphs](/reference/glossary/#composite-glyph) such as "é" are not changed directly.
After their base glyphs change, FontEasy rebuilds them from their parts, so the accents go back to
their anchors on the new, bolder or narrower letters.

### Active master or every master

In a font with more than one master, a checkbox **In every master** appears.

- **Off** (the default): only the active master changes. Use this to adjust one master, for
  example to make the Bold master a bit heavier.
- **On**: every master changes by the same amount. Use this to shift the whole family, for
  example to make all weights a little narrower.

### Step by step: a slightly bolder font

1. Choose **Tools › Transform Glyphs…**.
2. Stay on **Bolder / Lighter**.
3. Drag **Each side of a stem** to a small value, for example 5 units. Watch the preview.
4. Choose **Every drawn glyph**.
5. In a variable font, decide whether to tick **In every master**.
6. Click **Apply**.

The dialog closes and the status bar reports how many glyphs changed, for example "312 glyphs
changed". Look through the Overview and the Preview to check the result.

## Make Small Caps

[Small caps](/reference/glossary/#small-caps) are capital letters drawn at about the height of the
lowercase, with lowercase weight. They are used for abbreviations such as NASA or UNESCO in running
text, so they do not shout. Simply shrinking the capitals does not work: the stems would become
too thin next to the lowercase.

**Font › Make Small Caps…** builds them properly from your capitals.

![The Make Small Caps dialog on Source Serif 4: the letters A to Z, a height of 514 units between the x-height 475 and the cap height 670, and a preview of HAMBURG with small caps after the H.](screen:smallcaps)

1. Choose **Font › Make Small Caps…**.
2. In **Letters**, keep A to Z or type only the capitals you want. Other characters are ignored.
3. Set the **Height**. The slider runs from the x-height to the cap height (both are shown next to
   it); FontEasy starts a little above the x-height, which suits most designs.
4. Check the preview: "HAMBURG" is shown with a full-size H and small caps after it.
5. Click **Make Small Caps**.

What FontEasy does:

- Each capital is scaled to the chosen height and widened slightly, and its stems are made thinner
  to match the lowercase stems.
- The new glyphs are named after the lowercase letter with `.sc`: `a.sc`, `b.sc` and so on. They
  have no Unicode value of their own, because they are reached through features.
- Small caps are made in every master of a variable font.
- Glyphs that already exist are left alone, so running it again only adds missing ones.
- The **Small Caps** features (`smcp` and `c2sc`) follow by themselves, because FontEasy builds
  them from glyph names (see the [chapter on features](/opentype/features/)).

The status bar reports how many small caps were made.

## Make Variable draws a bold master

The chapter on [variable fonts](/advanced/variable/#making-a-font-variable-in-one-step) explains
**Font › Make Variable…**. Its option **Draw the new master for me (thicker, narrower or slanted)**
uses the same tools as Transform Glyphs:

- a **Weight** master is made bolder (or lighter) by moving points, in proportion to the weight
  you choose;
- a **Width** master is made narrower or wider, with stems kept;
- an **Italic** master is slanted by 10°, and its italic angle is set.

Because the points stay the same, the new master is compatible from the first moment, and the
slider in the Preview shows every style in between right away.

![Source Serif 4 after Make Variable: the Variations panel shows the weight slider at 560 and the H calculated there, and "Compatible in every master."](screen:variablebold)

## When to automate and when to redraw

Automation is excellent for:

- **First drafts**: a bold or condensed master to start refining, instead of a blank page.
- **Small adjustments**: making a whole font 3% narrower or 4 units heavier after testing.
- **Consistency**: the same change applied exactly to every glyph.
- **Families of decoration**: outline and inline versions of a display font.
- **Small caps**: a solid base that often needs only light touch-ups.

Redraw by hand when:

- **Counters fill up.** In heavy weights, the inside of "e", "a" and "s" gets small. Type designers
  open these shapes up, make letters wider, and thin the joins where strokes meet. A tool that
  only moves stems outwards cannot do that.
- **Letters change structure.** A true italic, a single-storey "g" or a different "y" are new
  drawings, not transformations.
- **Optical corrections are needed.** Round letters need to be slightly bigger than flat ones, and
  diagonals need to be slightly lighter than straight stems. Rules applied the same way to every
  glyph do not know about these.
- **Extreme values.** Pushing a slider to its end usually shows where the method breaks down:
  overlapping curves, collapsed counters, crowded serifs.

:::tip[A good workflow]
Apply the change, then go through the alphabet in the Preview, at text size and at headline size.
Mark the glyphs that look wrong with a mark colour, and fix them one by one. In a variable font,
fix them by moving points, so the master stays compatible.
:::

:::caution[Common mistakes]
- **Making a glyph bolder twice.** Each Apply adds to the last one. If the result is too heavy,
  use **Edit › Undo** to return to the original rather than stacking corrections on top of each other.
- **Using Outline or Inline on a master.** These add points, so the glyph no longer interpolates.
  Make decorative styles as separate fonts.
- **Forgetting In every master.** In a variable font, a change to only the active master changes
  the relationship between masters, which is sometimes what you want and sometimes not.
:::

Kerning can be automated too: **Kerning › Auto-Kerning…** finds pairs from the shapes of the
letters. It is explained in the [chapter on kerning](/spacing/kerning/).

## Summary

- **Tools › Transform Glyphs…** has five tabs: **Bolder / Lighter**, **Narrower / Wider**,
  **Slant**, **Outline** and **Inline**, with a before-and-after preview.
- **Bolder / Lighter** moves points instead of adding them, keeps sidebearings and heights, and
  stays compatible for interpolation.
- **Narrower / Wider** keeps stem thickness; **Slant** makes an oblique and sets the italic angle.
- **Outline** and **Inline** add points and are for decorative fonts.
- Apply to **Selected glyphs** or **Every drawn glyph**, and in a variable font to the active
  master or **In every master**. Composite glyphs are rebuilt afterwards.
- **Font › Make Small Caps…** makes `a.sc`, `b.sc` … with lowercase weight, and the small caps
  features follow by themselves.
- **Make Variable** uses the same methods to draw a compatible Bold, Condensed or Italic master.
- Use automation for drafts and consistent changes; redraw by hand for counters, structure and
  optical corrections.

## Try it yourself

1. Open a font with a few drawn letters. In **Tools › Transform Glyphs…**, try each tab and watch
   the preview without clicking Apply. Then apply **Narrower / Wider** at 85% to **Every drawn
   glyph**, look at the result, and undo it.
2. Run **Font › Make Small Caps…** with the default settings. Type a word in the Preview and turn
   on the small caps feature to see your new `.sc` glyphs. Compare one small cap with the
   lowercase letter next to it: is its weight close? If not, try **Bolder / Lighter** on just the
   `.sc` glyphs.
