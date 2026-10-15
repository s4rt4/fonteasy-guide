---
title: Components and Composites
description: Reuse shapes you have already drawn, and build accented letters such as é, ñ and ü from a base letter and an accent in one step.
---

Look at the letters **á à â ä ã å**. They all share the same **a**. In a font, you do not have to
draw that **a** six times. You draw it once, draw each accent once, and let FontEasy put them
together. The finished letters are called *composite glyphs*, and the pieces they are made of are
called *components*.

Think of a set of rubber stamps. You have one stamp for the **a** and one for the acute accent.
To print **á**, you press both stamps on the paper, one above the other. A composite glyph works
in the same way: it does not contain a copy of the shapes, it only says "stamp the **a** here, and
the accent there". If you later carve a better **a** stamp, every letter printed with it changes
too.

This saves a lot of work. A Latin font for Western and Central European languages needs well over
a hundred accented letters. With components you draw the base letters and about a dozen accents,
and FontEasy builds the rest in seconds. It also keeps your font consistent: every **é**, **è**,
**ê** and **ë** uses exactly the same **e**, so they can never drift apart.

In this chapter you will learn:

- what components and composite glyphs are, and why they matter;
- how to add a component by hand, and how to turn it back into ordinary outlines;
- what anchors are, and how they tell an accent where to sit;
- how to build all accented letters at once with **Generate Composites…**;
- how to update composites after you change an accent or a letter;
- which accents Indonesian and other languages need.

## Components: shapes that stay linked

A [glyph](/reference/glossary/#glyph) is one drawn shape in your font, such as **a** or **é**.
Usually a glyph is made of [contours](/reference/glossary/#contour): closed outlines of points and
curves that you draw with the Pen or the shape tools. A glyph can also contain
[components](/reference/glossary/#component). A component is a *reference* to another glyph,
placed at a certain position. It is not a copy. It is a live link.

A glyph made (wholly or partly) from components is a
[composite glyph](/reference/glossary/#composite-glyph). The glyph **aacute** (á), for example,
is usually made of two components: the glyph **a**, and the accent glyph **acutecomb**.

![The base letter a with its top anchor, the accent acutecomb with its _top anchor, and the composite aacute where the two anchors meet.](diagram:components-composite)

Because a component is a link, a change to the original glyph shows up in every glyph that uses
it. If you make the bowl of your **a** a little rounder, **á à â ä ã å ā ă ą** all follow at once.

![Redrawing the base letter a once changes every composite that uses it: agrave, aacute, acircumflex and adieresis.](diagram:components-linked)

:::note
In the glyph editor, components are drawn in a different colour from your own contours, so you
can always see which parts are links and which are real outlines. The **Glyph Info** panel lists
the components of the open glyph under **Components**.
:::

### Why components are worth it

- **Less drawing.** Draw a letter and an accent once; reuse them as often as you like.
- **Consistency.** Every composite uses the very same base shape, so there are no small
  differences between **é** and **è**.
- **Easy changes.** Improve the accent once and all letters that use it improve.
- **Smaller files.** A composite stores only a few numbers, not a full set of outlines.

You are not limited to accents. You can reuse any shape: for example, the bowl of **b** inside
**p**, or a figure inside a fraction. For accented letters, though, FontEasy does most of the work
for you, as you will see below.

## Accents, marks and Unicode

The small signs above or below letters are called [diacritics](/reference/glossary/#diacritic),
or simply accents. In a font they are drawn as separate glyphs called
[marks](/reference/glossary/#mark).

[Unicode](/reference/glossary/#unicode) (the worldwide list that gives every character a number)
has two kinds of accent characters:

- **Combining accents**, such as `U+0301` COMBINING ACUTE ACCENT. Their glyphs are usually named
  with `comb` at the end: `acutecomb`, `gravecomb`, `dieresiscomb`, `cedillacomb`. They have no
  width of their own and are meant to sit on another letter. When someone types **e** followed by
  `U+0301`, a good font shows **é**.
- **Spacing accents**, such as `acute` or `dieresis`: accents that stand on their own, with a
  width, as in the old typewriter keys.

For building composites, FontEasy prefers the combining accents (`acutecomb`, …). If your font
only has the spacing ones, it uses those instead.

Unicode also knows that **é** (`U+00E9`) can be split into **e** + `U+0301`. FontEasy uses this
knowledge to write a *recipe* for every accented letter, so it knows that **é** needs **e** and
**acutecomb**.

## Anchors: where marks attach

How does FontEasy know where to put the accent? With
[anchors](/reference/glossary/#anchor). An anchor is a named point in a glyph. It is not part of
the outline and never prints; it only marks a spot.

Anchors come in pairs:

| On the base letter | On the accent | Used for |
|---|---|---|
| `top` | `_top` | accents above, such as ´ ` ^ ¨ ~ |
| `bottom` | `_bottom` | accents below, such as the cedilla ¸ and the dot below |
| `ogonek` | `_ogonek` | the ogonek hook of ą ę į ų |

The rule is simple: the accent is moved until its `_top` anchor lands exactly on the letter's
`top` anchor (or `_bottom` on `bottom`, and so on). The underscore means "this is the point that
attaches me".

![The c with its bottom anchor and the cedilla with its _bottom anchor are joined so that the anchors meet in ccedilla.](diagram:components-bottom-anchor)

Accents can stack. An accent can have its own `top` anchor as well as `_top`; then a second
accent above it sits on the first one, as in Vietnamese **ệ** or **ǟ**.

### You do not have to place anchors first

If a glyph has no anchors, FontEasy works them out from the outline and the font's
[vertical metrics](/reference/glossary/#vertical-metrics):

- `top` on a letter sits in the middle of the letter, at the
  [x-height](/reference/glossary/#x-height) for small letters or the
  [cap height](/reference/glossary/#cap-height) for capitals (or at the top of the letter if it is
  taller, as with **b**, **d**, **h**, **l**);
- `bottom` sits in the middle, on the [baseline](/reference/glossary/#baseline);
- `ogonek` sits at the right edge, on the baseline;
- on an accent, `_top` sits in its middle at the x-height (or cap height for capital accents);
  `_bottom` sits in its middle on the baseline.

This means that a font with plain letters and accents but no anchors at all can get its accented
letters in one step. The automatic positions are a good start; for the best result you will move
some anchors by hand.

### Adding and moving anchors

There are three ways to add anchors.

1. Open a glyph in the glyph editor (double-click it in the **Overview**).
2. Choose one of these:
   - **Glyph › Add Anchors** adds the usual anchors the glyph is missing (`top`, `bottom`, and
     `ogonek` on vowels, or `_top` / `_bottom` on accents), placed from the outline.
   - In the **Glyph Info** panel, under **Anchors**, click **Add Usual Anchors**.
   - Pick the **Anchor** tool (<kbd>Shift</kbd>+<kbd>A</kbd>) and click on the canvas. Each
     click adds the next usual name that is still missing (`top`, then `bottom`, …).
3. To move an anchor, drag it with the **Anchor** tool, or type new **x** and **y** values next to
   it in the **Glyph Info** panel.
4. To rename an anchor, click its name in the **Glyph Info** panel and type a new one. The **×**
   button next to it removes it.

![The Anchor tool chosen while editing O: its hint at the top says to click to add an anchor and drag anchors to place accents.](screen:g-tool-anchor)

**Glyph › Add Anchors** also works in the **Overview**: select several glyphs first, and it adds
the missing anchors to all of them in one undo step.

:::tip[Where to put the top anchor]
Put `top` where the accent should be centred *optically*, not always in the exact middle. On an
**a** or a **t** that leans, the visual centre is often a little to the right. On capitals,
move `top` a little higher if your capital accents need more room.
:::

### Anchors also position marks while typing

Anchors do a second job when you export. FontEasy turns them into the OpenType `mark` and `mkmk`
features (positioning rules in the [GPOS](/reference/glossary/#gpos) table). Thanks to them, a
letter followed by a combining accent that has no ready-made composite, for example **q** +
`U+0301`, still shows the accent in the right place in apps that support OpenType. You can read
more in [OpenType features](/opentype/features/).

## Adding a component by hand

Sometimes you want to build a glyph yourself, for example a ligature or a letter that Unicode does
not split into parts.

1. Open the glyph that should receive the component.
2. Choose **Glyph › Add Component…**. The **Add Component** dialog opens.
3. Type the glyph name, for example `acutecomb`. The buttons below the box show matching glyph
   names; click one to pick it.
4. Click **Add**.

The component appears at the origin (the left end of the baseline) and is selected. Move it with
the **Select** tool or the arrow keys, or type **x** and **y** values in the **Glyph Info**
panel.

![Editing adieresis: the letter and its two dots are components, drawn in a different colour, and the Validation panel says there are no problems in this glyph.](screen:parts)

Some useful facts:

- A glyph cannot contain itself. FontEasy refuses with "A glyph cannot contain itself."
- If you type a name that does not exist, you see "There is no glyph named …". Create that glyph
  first (see [The glyph set](/drawing/glyph-set/)).
- **Double-click a component** with the **Select** or **Node** tool to open the glyph it links
  to. In the **Glyph Info** panel, clicking the component's name does the same.
- A glyph can mix contours and components. The **R** could be made of the **P** as a component
  plus a drawn leg.

:::caution[Deleting a glyph that others use]
If you delete a glyph that is used as a component, the composites that used it lose that part.
FontEasy warns you after deleting ("… glyphs still use a deleted glyph as a component.") and the
Validation panel lists them as **Component of a missing glyph**. Undo with
<kbd>Ctrl</kbd>+<kbd>Z</kbd> if that was not what you wanted.
:::

## Decomposing: turning links into outlines

Sometimes you want a composite to stop following its parts. Perhaps the **ij** in Dutch should
be drawn as one joined shape, or you want to reshape the accent only on **Å**. Then you
*decompose* it: each component is replaced by a copy of its outlines.

1. Open the composite glyph.
2. To decompose only some components, select them with the **Select** tool. To decompose all of
   them, select nothing.
3. Choose **Glyph › Decompose**.

The status bar reports, for example, "2 components decomposed". The glyph now contains ordinary
contours that you can edit freely; it no longer changes when the original glyphs change.

![On the left, aacute as a composite of two linked components; after Glyph › Decompose, the same letter is three plain contours with no links.](diagram:components-decompose)

You can also decompose many glyphs at once: select them in the **Overview** and choose
**Glyph › Decompose**. Decomposing also unfolds components inside components, and a mirrored
component keeps its outline running in the correct direction.

:::caution
Decompose only when you really need it. A decomposed glyph will not follow later improvements to
the letter or the accent, and **Update Composites** can no longer rebuild it.
:::

## Building accented letters with Generate Composites

This is where components really pay off. Once your base letters and accents are drawn, one dialog
builds every accented letter your [glyph sets](/reference/glossary/#glyph-set) need.

1. Make sure the base letters (**a**, **e**, **c**, **A**, …) and the accents (`acutecomb`,
   `gravecomb`, `circumflexcomb`, `dieresiscomb`, `tildecomb`, `cedillacomb`, …) are drawn.
2. Choose **Glyph › Generate Composites…** (or **Tools › Wizards › Auto Composites Wizard…**,
   which opens the same dialog).
3. In **Characters**, choose which characters to consider: **All glyph sets**, or one set such
   as **Latin-1 Supplement** or **Latin Extended-A**.
4. Read the list. Each line is a recipe that FontEasy can build right now.
5. Click **Build**.

![The Generate Composites dialog: Characters is set to All glyph sets, 14 recipes such as aacute = a + acutecomb@top | 00E1 are ready, and 559 more need other glyphs drawn first.](screen:composites)

The status bar says how many composite glyphs were built, for example "14 composite glyphs
built". The new glyphs appear in the **Overview**, with their Unicode values set, ready to type.

### Reading a recipe

Each line has this form:

```text
aacute = a + acutecomb@top | 00E1
```

- `aacute` is the [glyph name](/reference/glossary/#glyph-name) of the new glyph;
- `a` is the base glyph, placed at the origin;
- `acutecomb@top` means: add `acutecomb` so that its `_top` anchor sits on the `top` anchor;
- `00E1` is the Unicode [code point](/reference/glossary/#code-point) (á) the glyph gets.

More accents are joined with more `+`, for example `uni0344 = dieresiscomb + acutecomb@top`.
An accent without `@anchor` attaches to `top`.

You may edit the recipes before clicking **Build**: delete lines you do not want, or change a
glyph name. A line that starts with `#` is ignored.

### Letters that cannot be built yet

Below the recipes, a line such as "559 more need other glyphs drawn first" can be opened. It lists
each blocked letter and what is **missing**, for example `ecaron — missing: caroncomb`. Draw the
missing glyphs, then open **Generate Composites…** again: those letters move into the ready list.

If every accented letter is already there, the dialog says "Nothing to build: every accented
letter these sets need is already in the font, or none can be made from its glyphs."

### Clever choices FontEasy makes for you

The recipes follow the usual habits of type designers, not just the bare Unicode rules:

- **i** and **j** lose their dot under an accent above: **í** is built from `dotlessi`
  (ı) + `acutecomb`, if your font has a dotless i.
- Capitals use `.case` accents when they exist (`acutecomb.case`): flatter accents made for
  capitals.
- Latvian **ģ ķ ļ ņ ŗ** get a comma below, not a cedilla.
- **ď ľ ť Ľ** get the small vertical caron at the right side.
- Stacked accents (Vietnamese, **ǟ**) sit on the previous accent.
- Empty placeholder glyphs from a template (for example an empty **adieresis**) are filled in.

Existing glyphs are only rebuilt if they are empty or already composites. A glyph you drew by hand
is never overwritten.

:::note[Variable fonts]
If your font has several [masters](/reference/glossary/#master), **Build** creates the composites
in every master, each from that master's own letters, accents and anchors. See
[Variable fonts](/advanced/variable/).
:::

## Updating composites

Composites follow their components automatically: when you redraw the **a**, every **á** changes
at once. But the *position* of the accent was worked out when the composite was built. If you
later move an anchor or change the height of an accent, the old positions stay until you update.

1. Open a composite, or select several glyphs in the **Overview** (glyphs that are not
   composites are simply skipped).
2. Choose **Glyph › Update Composites**.

FontEasy reads the recipe back from the components and places the accents on the current
anchors again. In the editor the status bar says "Composite updated." or "Already up to date.".

:::tip[A good order of work]
1. Draw the base letters and the accents.
2. Choose **Glyph › Generate Composites…** and **Build**.
3. Look at the accented letters in the **Preview** panel.
4. Move the anchors that need it (on the letters or on the accents).
5. Select all glyphs in the **Overview** (<kbd>Ctrl</kbd>+<kbd>A</kbd>) and choose
   **Glyph › Update Composites**.
:::

## Accents for Indonesian and other languages

The standard Indonesian alphabet (EYD) uses only the 26 basic letters, with no accents. So a font
for everyday Indonesian text does not *need* accented letters. You will still meet them often:

- **é** and **è** appear in Javanese, Sundanese, Balinese and other regional languages written in
  Latin letters, in dictionaries that show pronunciation (*apél* versus *apel*), and in names.
- Loanwords and names from other languages: **café**, **Gödel**, **São Paulo**, **Dvořák**.
- If you hope people abroad will use your font, the
  [Latin-1 Supplement](/drawing/glyph-set/) set covers French, German, Spanish, Portuguese, Dutch
  and the Nordic languages; **Latin Extended-A** adds Central European languages such as Polish,
  Czech and Turkish; **Latin Extended Additional** includes Vietnamese.

The good news: with components, adding these languages costs you only a few accent drawings.
The table shows which accents cover the most ground.

| Draw this accent | Glyph name | Gives you, for example |
|---|---|---|
| acute ´ | `acutecomb` | á é í ó ú ý ć ń ś ź |
| grave ` | `gravecomb` | à è ì ò ù |
| circumflex ^ | `circumflexcomb` | â ê î ô û |
| dieresis ¨ | `dieresiscomb` | ä ë ï ö ü ÿ |
| tilde ~ | `tildecomb` | ã ñ õ |
| ring ˚ | `ringcomb` | å ů |
| cedilla ¸ | `cedillacomb` | ç ş |
| caron ˇ | `caroncomb` | č š ž ř ě |
| macron ¯ | `macroncomb` | ā ē ī ō ū |

For capitals you can draw separate, flatter versions (`acutecomb.case`, …); FontEasy uses them
automatically for capital letters.

:::tip[Simple Mode]
In Simple Mode, the **Font Journey** panel has a step **Add accented letters** with a
**Generate…** button. It opens the same **Generate Composites** dialog.
:::

## Composites in fonts you open

How composites arrive depends on the file you open:

- **UFO**, **designspace** and **.glyphs** files keep their components and anchors exactly.
- **TTF** and **OTF** files are finished fonts. FontEasy imports their glyphs as plain outlines,
  so an accented letter arrives as ordinary contours, not as linked components.

![Editing aacute of Source Serif 4, opened from an OTF: the letter and accent arrived as three plain contours with 75 points.](screen:g-components)

If you want to keep working on an imported binary font, you can rebuild the accented letters as
real composites: delete the imported accented glyphs (or leave them empty), make sure the font
has the combining accents, and use **Generate Composites…**. Read more in
[Bringing artwork in](/drawing/import-trace/).

## Components and kerning

Composites are also useful when you space and kern. **Kerning › Auto Groups from Composites**
puts every accented letter into the [kerning group](/reference/glossary/#kerning-group) of its
base letter: **á à â ä** join the group of **a**, so the pair **T a** also kerns **T á**. Letters
whose accent sticks out to the side (**ď ľ ť ơ ư**) are left out on that side. See
[Kerning](/spacing/kerning/).

## Smart components

FontEasy also has *smart components*: components that can stretch or change shape, for example
one bar that serves as the stem of several letters at different lengths. They are an advanced
topic, explained in [Drawing effects](/advanced/drawing-effects/) and the
[glossary](/reference/glossary/#smart-component).

## When something goes wrong

- **The accent sits too high, too low or off-centre.** Move the anchor on the base letter (or
  `_top` on the accent), then choose **Glyph › Update Composites**.
- **All capital accents collide with the letters.** Draw `.case` accents that are flatter, or move
  `_top` on the accents, then use **Generate Composites…** again for the capitals.
- **A letter is not in the ready list.** Open the "… more need other glyphs drawn first" list to
  see what is missing. A glyph that exists but is still empty counts as missing.
- **The Validation panel shows "Component of a missing glyph".** A component refers to a glyph
  that was deleted or renamed. Add that glyph again or remove the component in the **Glyph Info**
  panel.
- **Changing the accent changed letters you wanted to keep.** That is how links work. Decompose
  the letters that should be different, before you change the accent.

## Summary

- A component is a live link to another glyph; a composite glyph is built from components.
- Changing the original changes every composite that uses it.
- Anchors (`top`, `bottom`, `ogonek` on letters; `_top`, `_bottom`, `_ogonek` on accents) say
  where accents attach. FontEasy creates missing ones from the outline.
- **Glyph › Add Component…** adds a component by hand; **Glyph › Decompose** turns components
  into ordinary contours.
- **Glyph › Generate Composites…** builds all accented letters from recipes such as
  `aacute = a + acutecomb@top | 00E1`.
- **Glyph › Update Composites** places accents again after anchors move.
- TTF and OTF files arrive with plain outlines; UFO, designspace and .glyphs keep their components.

## Try it yourself

1. In a new font, draw **a**, **e**, **o** and an acute accent in the glyph `acutecomb`. Choose
   **Glyph › Generate Composites…**, set **Characters** to **Latin-1 Supplement** and click
   **Build**. Type `áéó` in the **Preview** panel.
2. Open **a**, choose the **Anchor** tool and drag the `top` anchor a little to the right. Select
   all glyphs in the **Overview**, choose **Glyph › Update Composites**, and watch **á** change in
   the preview. Then make the bowl of **a** bigger and see that **á** follows without any update.
