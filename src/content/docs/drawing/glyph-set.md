---
title: The Glyph Set
description: How to find, add, name, organise and check the glyphs of your font in the Overview.
---

A font is more than the 26 letters of the alphabet. Even a small Latin font has capitals and
lowercase, figures, punctuation, a few symbols and a space, around a hundred glyphs. Add accented
letters for other European languages and you are soon at three or four hundred. The **Overview**
is where you keep all of them in order: you see every glyph at a glance, find the one you need,
add the ones that are missing and mark your progress.

This chapter is about that collection. It explains the difference between a character and a glyph,
why glyphs have names like `a.sc` or `uni0410`, how to add and remove glyphs, and how FontEasy's
glyph sets tell you which characters a language needs and which ones your font still lacks.

In this chapter you will learn:

- the difference between a character, a glyph and a character set;
- how to read the Overview grid and its sidebar of categories, scripts, glyph sets and colours;
- how to search by name, by character or by Unicode code;
- how to select several glyphs at once;
- how to add glyphs, one at a time or a whole set at once;
- how to create, duplicate, rename and delete glyphs;
- how glyph names and Unicode code points work;
- how to use mark colours and what the badges on glyph cells mean.

## Characters and glyphs

Two words are easy to mix up, so let us pin them down first.

- A [character](/reference/glossary/#character) is a letter, figure or sign as an idea: "capital
  A", "the euro sign", "the digit 7". It is what you type and what a text file stores.
- A [glyph](/reference/glossary/#glyph) is a drawing in a font. It is what you see.

Most of the time, one character has one glyph. But not always. A font can have several glyphs for
the same character: a normal "A", a small-capital "A" and a small raised "A" for superscripts. And
one glyph can stand for several characters: the "fi" [ligature](/reference/glossary/#ligature)
replaces "f" followed by "i".

![One character, U+0041, with three glyphs in Source Serif: A, A.sc and A.sups; and two characters, U+0066 and U+0069, shown by one glyph, the ligature f_i.](diagram:glyph-set-one-character)

How does the computer know which glyph belongs to which character? Through
[Unicode](/reference/glossary/#unicode), the world-wide list that gives every character a
number, its [code point](/reference/glossary/#code-point). Code points are written `U+` followed by
a hexadecimal number: `U+0041` is "A", `U+00E9` is "é", `U+20AC` is "€". A glyph that has a code
point is typed directly. A glyph without one (like `A.sc` or `f_i`) is only reached through
[OpenType features](/reference/glossary/#opentype-feature), such as small caps or ligatures, which
swap it in when the text asks for it.

A [character set](/reference/glossary/#character-set) is a list of characters that belong
together, such as "everything needed for Western European languages". FontEasy calls the lists it
knows [glyph sets](/reference/glossary/#glyph-set); you will meet them below.

## The Overview

Open a font and the Overview is the first thing you see. You can always come back to it with the
**Overview** tab under the font's tab.

![The Overview of Source Serif 4: the sidebar on the left lists categories, scripts and glyph sets with their counts, the search box sits above the grid, and the "a" is selected in the grid.](screen:g-overview)

### The grid

Each cell shows one glyph, drawn from its real outline, with a faint baseline. Under the cell is the
glyph's name, shortened with "…" when it is long. Point at a cell to see a tooltip with the full
name, the code point and the Unicode name of the character (for example
`a  U+0061  LATIN SMALL LETTER A`). A glyph that has a code point but no drawing yet shows its
character faintly, so you can still see what it is meant to be.

To change the size of the cells, choose **View › Larger Glyph Cells**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>=</kbd>) or **View › Smaller Glyph Cells**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>-</kbd>), or hold <kbd>Ctrl</kbd> and turn the mouse wheel over
the grid.

Above the grid you see how many glyphs are shown ("1464 glyphs") and how many are selected ("1
selected"). The status bar repeats the name and code point of the selected glyph, and the
**Glyph Info** panel describes it in detail.

The glyphs appear in the order they are stored in the font. To reorder them, choose
**Font › Sort Glyphs › By Unicode**, **By Name** or **By Category**.

### The sidebar

The sidebar on the left filters the grid. Click a row to show only those glyphs; click
**All Glyphs** to see everything again. Each row has a count on the right.

| Section | What it lists |
|---|---|
| **All Glyphs** | Every glyph in the font. |
| **CATEGORIES** | The kind of character, from Unicode: Letter, Number, Punctuation, Symbol, Mark (accents that combine with letters), Separator (spaces), Other. **Unencoded** lists glyphs without a code point, such as `.notdef`, `A.sc` or `f_i`. |
| **SCRIPTS** | The writing system: Latin, Greek, Cyrillic and so on. **Common** holds characters shared by many scripts (figures, punctuation), **Inherited** the combining accents. |
| **GLYPH SETS** | FontEasy's character sets, with how many of their characters the font has ("96/96"). |
| **COLORS** | The mark colours in use, if you have marked any glyphs. |

## Searching

The search box above the grid finds glyphs as you type. Press <kbd>/</kbd> (or choose
**Edit › Find Glyph…**, <kbd>Ctrl</kbd>+<kbd>F</kbd>) to jump into it, and <kbd>Esc</kbd> to clear
it. You can search for:

- **a glyph name**, or part of one: `acute` finds `aacute`, `eacute`, `acutecomb` and more;
- **a character**: type `&` to find the ampersand, `é` to find `eacute`;
- **a code point**: `U+20AC`, or just `20AC` (at least two hexadecimal digits);
- **a Unicode name**: `capital letter` finds every capital, `dash` finds the en dash and the em dash.

The search works together with the sidebar: with **Number** chosen, typing `one` finds only the
figures whose names contain "one".

## Selecting glyphs

Many commands work on all the selected glyphs at once, so it pays to know how to select:

| To select | Do this |
|---|---|
| One glyph | Click it. |
| A range | Click the first, then <kbd>Shift</kbd>+click the last. |
| Glyphs here and there | <kbd>Ctrl</kbd>+click each one. <kbd>Ctrl</kbd>+click again to deselect. |
| All glyphs | **Edit › Select All** (<kbd>Ctrl</kbd>+<kbd>A</kbd>). |
| None | **Edit › Deselect** (<kbd>Ctrl</kbd>+<kbd>D</kbd>). |

The arrow keys move the selection through the grid; with <kbd>Shift</kbd> they add the glyphs they
pass. The glyph you clicked last has a stronger outline: it is the one Glyph Info shows and the one
<kbd>Enter</kbd> opens. With several glyphs selected, <kbd>Enter</kbd> opens them all as a line of
text in the editor.

What you can do with a selection:

- the commands in **Glyph › Contours** that clean up outlines (Remove Overlap, Correct Direction,
  Simplify and others) work on every selected glyph; see [Drawing tools](/drawing/drawing-tools/);
- rename, duplicate, mark or delete them (below);
- **Edit › Copy** (<kbd>Ctrl</kbd>+<kbd>C</kbd>) copies their names as `/A/B/C`, ready to paste
  into the Text bar of the editor or the Preview.

![Four glyphs, A to D, selected in the Overview and marked green, with the Rename Glyphs dialog adding the suffix .sc to all four.](screen:multi)

Right-click a glyph for a short menu: **Rename Glyph…**, **Duplicate Glyph**, **Copy Names**,
**Mark Color** and **Delete**.

## Glyph sets: which characters do you need?

A glyph set is FontEasy's list of the characters that belong to one part of Unicode. Choosing one in
the sidebar answers the question "what does my font still lack?".

| Glyph set | What it covers |
|---|---|
| **Basic Latin (ASCII)** | The 95 characters of the classic English keyboard: A–Z, a–z, 0–9, punctuation, the space. |
| **Latin-1 Supplement** | Accented letters and signs for Western European languages: é, ñ, ü, ç, ß, ©, £, ¿ and more. |
| **Latin Extended-A** | Letters for Central and Eastern European languages and more: č, ł, ő, ş, ž… |
| **Latin Extended-B** | Rarer Latin letters, for African languages, Romanian, Pinyin and others. |
| **Latin Extended Additional** | Letters with more accents, such as Vietnamese ạ, ế, ữ. |
| **General Punctuation** | Typographic punctuation: dashes, curly quotes, ellipsis, per mille… |
| **Currency Symbols** | €, ₹, ₺, ₫ and other currency signs. |
| **Combining Diacritics** | Accents on their own, used to build accented letters. |
| **Greek** | The Greek alphabet. |
| **Cyrillic** | The Cyrillic alphabet (Russian, Ukrainian, Bulgarian, Serbian…). |

The count next to each set tells you how far along you are: "96/96" means complete, "0/208" means
not started. When you choose a set, the grid shows the glyphs you have and, after them, every
missing character as a **dashed "ghost" cell** with its character and name in grey.

![The Overview filtered by Latin-1 Supplement: 96 of 96 characters are in the font, so every cell is a real glyph; the sidebar shows the progress of every glyph set.](screen:sets)

To fill the gaps:

- **double-click a ghost cell** to add that one glyph, or
- click **Add {n} missing** at the top of the grid (for example **Add 208 missing**) to add every
  missing glyph of the set at once.

New glyphs are empty, with a width of half an em (a quarter for the space), and they get their
standard names and code points automatically. Then you draw them, or build the accented ones from
components; see [Components and accents](/drawing/components/).

:::tip[Which sets does my language need?]
For English, **Basic Latin (ASCII)** is enough. For Indonesian or Malay, too. French, German,
Spanish, Italian, Portuguese and the Nordic languages need **Latin-1 Supplement** as well. Polish,
Czech, Turkish, Hungarian and the Baltic languages need **Latin Extended-A** too. Vietnamese needs
**Latin Extended Additional**. And curly quotes and dashes, from **General Punctuation**, are
welcome in any language.
:::

When you start a new font, the New Font dialog offers templates (Blank, Latin Basic, Latin Extended,
Handwriting) that create a starting set of glyphs for you; see
[Your first font](/start/first-font/).

## Adding glyphs

### Add Glyphs: many at once

**Font › Add Glyphs…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>G</kbd>) is the quickest way to add
glyphs:

1. Choose **Font › Add Glyphs…**.
2. Type what you want, separated by spaces: characters (`é ñ ç`), glyph names (`a.sc f_i`), or code
   points (`U+20AC`). You can mix them.
3. Click **Add**.

Or click one of the glyph set buttons under **Or add a whole glyph set:** to add every character
of that set in one go.

![The Add Glyphs dialog: a text field for characters, glyph names or code points, buttons for the ten glyph sets, and Cancel and Add.](screen:addglyphs)

Characters the font already has are skipped, so you cannot add a duplicate by accident. If
everything you typed is already there, the dialog says so.

### New Glyph: one with a name you choose

**Glyph › New Glyph…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>N</kbd>) creates a single glyph with
a **Name** and a **Unicode** code point:

- Type a standard name such as `Aacute`, and the Unicode field fills in by itself (`U+00C1`).
- Type a single symbol such as `€` in the Name field, and it becomes the standard name (`Euro`) with
  its code point.
- Type a code point in the Unicode field with the name empty, and the standard name appears.
- For a glyph without a code point, such as an alternate, type the name (`g.alt`) and leave Unicode
  empty.

Click **Create**.

### Duplicate Glyph

**Glyph › Duplicate Glyph** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>D</kbd>) copies the selected
glyphs. The copies get a number added to the name (`a.001`, then `a.002`) and no code point, so
they do not compete with the original. This is the usual start for an alternate: duplicate "a",
rename the copy to `a.ss01`, and redraw it.

## Renaming and deleting

### Rename Glyph

**Glyph › Rename Glyph…** (<kbd>F2</kbd>) changes the name and the code point of the selected
glyph.

![The Rename Glyph dialog for "A": Name A, Unicode U+0041, and the box Also update components, kerning and groups ticked.](screen:rename)

Keep **Also update components, kerning and groups** ticked: then every composite glyph that uses
this one, every kerning pair and every group follows the new name. To give a glyph more than one
code point, type them separated by spaces.

With several glyphs selected, the dialog becomes **Rename Glyphs**, for renaming many at once:

- **Find** and **Replace with** change part of every name (`.alt` to `.ss01`);
- **Add suffix** adds an ending to every name (`.sc`);
- a preview below shows the first few results, such as `A → A.sc`.

In Pro Mode, **Font › Update Glyph Names** renames every glyph that has a code point to its standard
name (`uni00E9` becomes `eacute`), updating components, kerning and groups too. That is handy
after importing a font that used unusual names.

### Deleting glyphs

Select the glyphs and press <kbd>Delete</kbd> (or choose **Edit › Delete**, or **Delete** in the
right-click menu). There is no question first, but <kbd>Ctrl</kbd>+<kbd>Z</kbd> brings them back.
If other glyphs still use a deleted glyph as a component, FontEasy tells you how many, because those
composites now have a missing part.

## Glyph names

Every glyph has a [glyph name](/reference/glossary/#glyph-name). Names are for you and for the
software, never shown to the reader, but good names matter: FontEasy uses them to find components,
build OpenType features and write the final font.

The names follow a convention from Adobe, the Adobe Glyph List, that every font tool understands:

| Name | Meaning |
|---|---|
| `A`, `a`, `zero`, `ampersand`, `eacute`, `Euro` | Standard names for common characters. |
| `uni0410` | `uni` and four hexadecimal digits: the character with that code point (here Cyrillic А). |
| `u1F600` | `u` and five or six digits, for code points beyond `FFFF` (here 😀). |
| `a.sc`, `g.alt`, `a.ss01`, `one.osf` | A base name, a dot and a **suffix**: another form of the same character (small cap, alternate, stylistic set 1, old-style figure). |
| `f_i`, `f_f_l` | Names joined by underscores: a ligature of those glyphs. |
| `acutecomb`, `dieresiscomb` | Combining accents, used as components. |
| `.notdef` | The "missing character" box, shown when a font lacks a character. Every font needs it. |

Suffixes are more than labels. FontEasy reads them to build features automatically: glyphs named
`.sc` become small caps, `.ss01` a stylistic set, `f_i` a ligature, and so on. The
[OpenType features](/opentype/features/) chapter lists them all. So it is worth sticking to these
names from the start.

:::caution[Names to avoid]
Keep names to plain letters, digits, dots and underscores, and do not start a name with a digit or
a dot (except `.notdef`). Spaces and accented letters in names cause trouble in other tools. Names
are case-sensitive: `a.sc` and `A.sc` are two different glyphs.
:::

## Mark colours

Mark colours are coloured tags for your own organisation: green for finished, yellow for "needs
work", red for "redraw", or any system you like. They are stored in the font but have no effect on
the exported font.

1. Select one or more glyphs.
2. Choose **Glyph › Mark Color** and a colour: **Red**, **Orange**, **Yellow**, **Green**,
   **Blue**, **Purple** or **Gray**. (Or right-click › **Mark Color**.)

A coloured band appears at the top of each marked cell, and a **COLORS** section appears in the
sidebar, so you can show all the green glyphs, for instance. **No Color** removes the mark.

## Badges: problems at a glance

FontEasy checks your outlines while you work. When **View › Show Problems** is on, cells with a
problem get a small dot in the top-right corner:

- a **red dot** for an error, such as an open contour;
- an **orange dot** for a warning, such as a wrong contour direction or a missing extreme point.

Information-level findings, such as overlapping contours, get no dot. In a variable font, a small
orange diamond in the top-left corner marks a glyph that does not interpolate between its masters.

![The Overview with problem badges: "B" has a red dot for an open contour, "D" an orange dot for a wrong direction, and the Validation panel lists the problems with Fix buttons.](screen:badges)

The **Validation** panel lists the same problems by kind, with a **Fix** button for each kind and
**Fix All**. Click a glyph name there to select it, double-click to open it. The chapter on
[outline problems](/drawing/problems/) explains every check.

## Common mistakes

:::caution[I typed "é" but nothing happens in the font]
The font has no glyph with the code point `U+00E9`. Add it with **Font › Add Glyphs…**, or check
with the search box: type `é`.
:::

:::caution[My alternate glyph is typed instead of the normal one]
The copy kept a code point. Duplicates have none, but a glyph made with New Glyph or renamed might.
Open **Glyph › Rename Glyph…** (<kbd>F2</kbd>) and clear the **Unicode** field of the alternate.
:::

:::caution[I cannot find a glyph in the grid]
A filter in the sidebar may be hiding it. Click **All Glyphs** and clear the search box with
<kbd>Esc</kbd>.
:::

## Summary

- A character is an idea with a Unicode code point; a glyph is a drawing. One character can have
  several glyphs, and one glyph can show several characters.
- The Overview shows every glyph; the sidebar filters by category, script, glyph set and mark
  colour.
- Search by name, character, code point (`U+20AC`) or Unicode name; press <kbd>/</kbd> to start.
- Select with click, <kbd>Shift</kbd>+click and <kbd>Ctrl</kbd>+click; many commands work on the
  whole selection.
- Glyph sets show your progress ("96/96"); ghost cells and **Add {n} missing** fill the gaps.
- **Font › Add Glyphs…** adds many glyphs at once; **Glyph › New Glyph…** one with a chosen name;
  **Duplicate Glyph** a copy without a code point.
- **Rename Glyph…** (<kbd>F2</kbd>) renames and updates components, kerning and groups.
- Glyph names follow the Adobe Glyph List: `uni0410`, suffixes like `.sc` and `.ss01`, ligatures
  like `f_i`.
- Mark colours organise your work; badges flag problems.

## Try it yourself

1. In your font, choose **Latin-1 Supplement** in the sidebar. How many characters are missing?
   Double-click the ghost cell of "é" to add it, then search for `eacute` to find it again.
2. Select the glyph "a", duplicate it with <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>D</kbd>, rename the
   copy to `a.ss01` with <kbd>F2</kbd>, and mark it yellow. Then click **Unencoded** in the sidebar
   and find it there.
