---
title: Lookups and the Shaping Inspector
description: How to build substitution and positioning rules visually in the Lookups view, and how to watch a text being shaped one lookup at a time in the Inspector.
---

In the [previous chapter](/opentype/features/) you met OpenType features and saw how FontEasy
writes the common ones from your glyph names. Behind every feature there is a list of rules: "replace
`a` by `a.sc`", "replace `f i` by `f_i`", "move `V` 50 units closer after `A`". These rules are
organised in **[lookups](/reference/glossary/#lookup)**.

Most designers learn lookups by writing feature code. FontEasy gives you two easier ways in. The
**Lookups** view lets you build lookups from rules, by typing glyph names into fields and seeing
small pictures of what goes in and what comes out, without writing code. The **Inspector** shows
a line of text being shaped one lookup at a time, so you can see exactly which lookup changed
which glyph. It is the best tool there is for answering "why does my ligature not show up?".

Both are in the Features tab in Pro Mode.

In this chapter you will learn:

- how a text is shaped, from characters to glyphs to substitutions to positions;
- what a lookup is, the seven kinds you can build, and what lookup flags do;
- how to build lookups in the Lookups view, step by step;
- how FontEasy writes your lookups into `features.fea`, and what happens if you edit that code by
  hand;
- how to use the Shaping Inspector to see what every lookup does.

## How a text is shaped

When an app displays text in your font, a program called a *shaper* turns the characters into
positioned glyphs. This is **[shaping](/reference/glossary/#shaping)**. FontEasy's Preview uses
HarfRust, the Rust version of HarfBuzz, the shaper used by most browsers and many apps.

Shaping happens in steps:

1. **Characters to glyphs.** Each character becomes its default glyph through the font's character
   map: the character `f` becomes the glyph `f`.
2. **Substitutions.** The lookups of the [GSUB](/reference/glossary/#gsub) table run, one after the
   other, for the features that are switched on. Each may replace glyphs: `f i` becomes `f_i`.
3. **Positions.** The lookups of the [GPOS](/reference/glossary/#gpos) table run, again one after
   the other. Each may move glyphs: the `V` after an `A` moves closer.

![The four steps of shaping for the text "fi AV": the characters with their Unicode codes, the default glyphs f, i, A and V, the liga lookup joining f and i into f_i, and the kern lookup moving V −119 units closer to A.](diagram:lookups-pipeline)

Two things follow from this picture. First, **order matters**: a lookup sees the glyphs as the
lookups before it left them. Second, a **feature** does not do anything by itself; it only says
which lookups run when that feature is on.

## Lookups and rules

A lookup is a named list of rules of one kind. In FontEasy each lookup has:

- a **name**, made of letters, digits, `_` and `.`, that starts with a letter or `_`;
- a **type** (one of the seven kinds below);
- one or more **features** that run it, given by their tags, for example `liga` or `ss01`;
- **flags** that tell it which glyphs to skip;
- a list of **rules**.

### Kinds of lookups

![The seven kinds of lookups with an example each: single (a → a.sc), multiple (f_i → f i), alternate (a → a.alt1 or a.alt2), ligature (f i → f_i), contextual (T o' → o.alt), single adjustment (a moved up 20) and pair adjustment (A V −50).](diagram:lookups-kinds)

| Type | A rule says | Example rule | Written as |
|---|---|---|---|
| Single Substitution | one glyph becomes another | `a` → `a.sc` | `sub a by a.sc;` |
| Multiple Substitution | one glyph becomes two or more | `f_i` → `f i` | `sub f_i by f i;` |
| Alternate Substitution | one glyph, a choice of alternates | `a` from `a.alt1 a.alt2` | `sub a from [a.alt1 a.alt2];` |
| Ligature Substitution | two or more glyphs become one | `f i` → `f_i` | `sub f i by f_i;` |
| Contextual Substitution | glyphs are replaced only next to others | before `T`, glyphs `o` → `o.alt` | `sub T o' by o.alt;` |
| Single Adjustment | one glyph is moved (x, y, advance) | `a`: y 20 | `pos a <0 20 0 0>;` |
| Pair Adjustment | a pair moves closer or apart | `A` `V` −50 | `pos A V -50;` |

The first five belong to GSUB, the last two to GPOS. A Pair Adjustment lookup is kerning written as
a lookup: it adds to the kerning pairs of the [Kerning](/spacing/kerning/) chapter, it does not
replace them.

### Slots: one glyph, a class or a list

Each field of a rule is a **slot**. You can type:

- one glyph name: `a`;
- a class from your feature code: `@lowercase`;
- several glyphs in square brackets: `[a b c]`.

A Single Substitution with `[a b c]` → `[a.sc b.sc c.sc]` replaces each glyph of the first list by
the glyph at the same place in the second, so both lists must have the same number of glyphs.

### Lookup flags

Flags tell a lookup to look past certain glyphs, as if they were not there:

- **Skip marks**: ignore combining accents. A ligature `f i` then still forms when an accent sits
  between the two letters.
- **Skip ligatures**: ignore ligature glyphs.
- **Skip base glyphs**: ignore ordinary letters (useful for rules that work on accents only).
- **Right to left**: for cursive attachment in right-to-left scripts such as Arabic.

A first Latin font rarely needs flags. Leave them off unless you know you need one.

## The Lookups view

1. Choose **Features › Features** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>).
2. Make sure you are in Pro Mode (**Window › Pro Mode**).
3. At the top of the Features tab, click **Lookups**.

![The Lookups view of Mutator Sans: the list on the left with closedS, narrowI, ijLigature, tightAV and an unfinished draft; on the right the narrowI lookup, a Contextual Substitution for calt, with two rules that turn I and J into narrow forms next to each other.](screen:lookups)

The view has two parts.

**On the left, the list of lookups**, in the order they run. Each row shows the name, the type and
the features, and a status badge:

- **on**: the lookup is complete and written into the font;
- **unfinished**: something is missing or wrong, so the lookup is kept but not written into the
  font yet;
- **in code**: its code was edited by hand (see [Editing the code by hand](#editing-the-code-by-hand));
- **off**: the lookup is switched off and not written into the font.

**On the right, the selected lookup**: its **Name**, its **Type**, its **Features**, the flags, and
the **Rules**.

### Building a lookup

As an example, here is a stylistic set that swaps `S` for an alternate drawing `S.closed`:

1. Draw the alternate glyph and name it, here `S.closed`.
2. In the Lookups view, click **+ New** and choose **Single Substitution**.
3. A new lookup appears with a name like `single1`, a first empty rule and the feature `ss01`. Type
   a clearer name into **Name**, for example `closedS`.
4. In the rule, type `S` in the first field and `S.closed` in the second. Small pictures of both
   glyphs appear after the fields, with an arrow between them.
5. Check the **Features** field. To use another feature, type its tag, or click **Add Tag** and
   choose one from the list (each tag is listed with its name).
6. The badge in the list turns to **on**.

Now type `S` in the Preview, and switch on `ss01` in its row of feature tags: the `S` changes.

Every new lookup starts with a feature that suits its type: `liga` for ligatures, `calt` for
contextual substitutions, `salt` for alternates, `ccmp` for multiple substitutions, `kern` for both
positioning types, and `ss01` for single substitutions. Change it whenever you like.

### Rules for each type

The fields of a rule change with the type:

- **Single Substitution**: the glyph, an arrow, its replacement.
- **Multiple Substitution**: one glyph, an arrow, the glyphs it becomes (separated by spaces).
- **Alternate Substitution**: the glyph, the word **from**, the alternates (separated by spaces).
- **Ligature Substitution**: the glyphs (separated by spaces), an arrow, the ligature.
- **Contextual Substitution**: three fields, **before**, **glyphs** and **after**, then an arrow and
  the replacement. Only the **glyphs** are replaced; **before** and **after** are the context and
  may stay empty.
- **Single Adjustment**: the glyph, then **x**, **y** and **advance**, the number of units to move it
  sideways, up, and to add to its width.
- **Pair Adjustment**: the left glyph, the right glyph and the value (negative pulls together).

Click **+ Add Rule** for another rule, and the **×** at the end of a rule to remove it. Under the
rules, a reminder explains the slots: type glyph names; `@name` for a class from the feature code;
`[a b c]` for several glyphs at once.

### A contextual substitution

Contextual rules are where the Lookups view helps most, because they are the hardest to write by
hand. The screenshot above shows one: in the font Mutator Sans, two `I`s or an `I` and a `J` next
to each other look too heavy, so narrow forms are used there.

1. Click **+ New** and choose **Contextual Substitution**. Name it `narrowI`. Its feature is `calt`,
   which apps switch on by default.
2. In the first rule, type `[I J]` in **before**, `I` in **glyphs**, leave **after** empty, and type
   `I.narrow` as the replacement. This reads: "an `I` after an `I` or a `J` becomes `I.narrow`".
3. Click **+ Add Rule**. Leave **before** empty, type `J` in **glyphs**, `I` in **after** and
   `J.narrow` as the replacement: "a `J` before an `I` becomes `J.narrow`".
4. Type `VAVIIJ` in the Preview to see the result.

### Order, moving and deleting

Lookups run from the top of the list to the bottom. The buttons at the top right of the editor
change that:

- the **up** arrow (**Run earlier**) moves the lookup up;
- the **down** arrow (**Run later**) moves it down;
- the **×** (**Delete this lookup**) removes it.

Every change is a step in the history; <kbd>Ctrl</kbd>+<kbd>Z</kbd> undoes it.

### Unfinished lookups

A lookup that would not compile is not written into the font, so it can never break your font
while you are still working on it. FontEasy keeps it in the list with the badge **unfinished** and
shows what is wrong under the rules, for example:

- a rule is empty, or missing its replacement;
- a glyph name does not exist (`there is no glyph`);
- the numbers do not match (a list of 2 glyphs cannot become 3);
- the name or a feature tag is not valid (a tag has at most four letters or digits).

Under the problems, a note says that until these are fixed, the lookup is not written into the font.

### Seeing the code and the compiled lookups

At the bottom of the editor there are two sections you can open:

- **Feature code** shows the FEA code FontEasy writes for this lookup.
- **All lookups in the compiled font** lists every lookup of the font as it was last compiled:
  the visual ones, the ones written by hand, and the ones the compiler made, such as kerning and
  mark positioning. Each row shows the table and index (`GSUB 0`, `GPOS 1`), the type, the features
  and how many subtables it has.

## How lookups are written into the font

FontEasy stores your lookups as data inside the font (in the UFO's lib) and writes each one into
`features.fea` as an **automatic block**, just like the automatic features of the previous chapter:

```fea
# automatic lookup:smallcaps 1a2b3c4d
lookup smallcaps {
    sub a by a.sc;
} smallcaps;

feature smcp {
    lookup smallcaps;
} smcp;
# end automatic lookup:smallcaps
```

The lookup is defined once, and then each of its features runs it. Flags become a `lookupflag`
line at the top of the lookup. Visual lookups come after the other automatic features, in the order
of the list.

Because the result is ordinary feature code in `features.fea`, the font builds the same in other
tools such as fontmake, even though they know nothing about FontEasy's Lookups view.

### Editing the code by hand

You can open the Code view and change the code of a visual lookup directly. FontEasy then treats
it like any automatic block you edit: you have **taken it over**. From that moment:

- the code you wrote is what goes into the font, not the rules in the Lookups view;
- the lookup gets the badge **in code**, and FontEasy does not write it a second time;
- the editor shows a note that its code was edited by hand, and a button **Use These Rules**.

Click **Use These Rules** to go back: FontEasy removes the hand-written code of that lookup and
writes it again from the rules in the Lookups view.

:::caution
**Use These Rules** throws away the changes you made to that lookup's code. If you want to keep
them, copy the code somewhere first, or redo the changes as rules.
:::

## The Shaping Inspector

The **Inspector** shows a text being shaped step by step: first the characters turned into glyphs,
then one card for every lookup that changed something. It works on the font as compiled for the
Preview, so it sees all lookups: automatic, visual, hand-written and those built by the compiler.

1. Choose **Features › Features** and click **Inspector** at the top.
2. Type a text in the **Text** field. It starts with the text of the Preview.
3. Switch features on or off in the **Preview** panel: the Inspector follows its switches (the note
   next to the field reminds you). In a [variable font](/advanced/variable/), it also shows the
   place in the design space chosen with the sliders of the **Variations** panel.

![The Inspector on Mutator Sans with the text VAVIIJ: the first card shows the characters turned into glyphs, the second the calt lookup (GSUB 1, Chained Contextual Substitution) replacing one I by I.narrow, the third the kern lookup (GPOS 0, Pair Adjustment) changing the advances of V and A, and a note that 3 other lookups changed nothing.](screen:inspector)

Read the cards from top to bottom:

- The first card, **Characters to glyphs**, shows the default glyph of each character.
- Every following card names the table and the index of a lookup, its type and the features that
  ran it, for example `GSUB 1 · Chained Contextual Substitution` with `calt`.
- Each glyph is shown as a small box with its name and its advance width. If the lookup moved it,
  its offset follows in brackets, for example `(+0, +20)`. The glyphs that this lookup changed are
  highlighted.
- Under the boxes, the text is drawn as it looks after that step.
- At the end, a line says how many other lookups changed nothing in this text.

Click the title of a card to highlight it while you compare it with the others. Hover over a glyph
box to see its glyph number and cluster (which character of the text it came from).

During the substitution steps, positioning is left out, so the glyphs sit at their plain advance
widths. Positioning shows up in the GPOS cards.

### Finding problems with the Inspector

The Inspector answers questions that are hard to answer otherwise:

- **"My ligature does not appear."** Look for the card of the ligature lookup. If it is missing,
  the lookup did not change anything: perhaps its feature is off in the Preview, or an earlier
  lookup already replaced one of its glyphs (for example a `locl` that turned `i` into `i.loclTRK`).
- **"The wrong alternate shows up."** Find the first card where the glyph changed; that lookup is
  the cause.
- **"Kerning does not apply to my small caps."** Look at the GPOS cards: if the kern lookup changes
  `A V` but not `A.sc V.sc`, those glyphs need kerning of their own.

:::note
For most scripts, the steps appear exactly in the order the shaper runs them. For complex scripts
such as Arabic or Indic scripts, the shaper runs some lookups in special stages; those may appear
in a different place in the Inspector.
:::

## Tips and common mistakes

- **Name lookups clearly.** `narrowI` tells you what it does months later; `single3` does not.
- **One idea per lookup.** It is easier to find a problem in five small lookups than in one big one.
- **Watch the order.** A lookup that replaces `i` must run before a ligature that expects `i`, or
  after it if the ligature should win. Use **Run earlier** and **Run later**.
- **Check classes in the code.** A class such as `@lowercase` must be defined in the feature code
  (in the Code view) before a rule can use it.
- **Kerning belongs in the Kerning tools.** Use a Pair Adjustment lookup only for special cases; the
  ordinary kerning pairs and groups are easier to manage in the Kerning panel.

:::caution[Unfinished lookups do nothing]
If a rule seems to have no effect, look at the badge in the list. An **unfinished** lookup is not
in the font at all. Fix the problems listed under its rules.
:::

## When something goes wrong

- **The Lookups and Inspector buttons are missing.** They are only in Pro Mode. Switch with
  **Window › Pro Mode**.
- **The Inspector says the font doesn't compile.** The feature code has an error. Open the Code
  view, fix the problem shown in the panel under the code, and come back.
- **The Inspector shows "Compiling…" for a moment.** It waits for the Preview to build the font
  after your last change. This takes a moment for large fonts.
- **A lookup has the badge in code, but I did not mean to edit it.** Undo the edit in the Code view,
  or click **Use These Rules**.
- **The lookup is on, but the Preview shows no change.** Check that its feature is switched on in the
  Preview: optional features such as `ss01` start off.

## Summary

- Shaping turns **characters into glyphs**, then runs the **GSUB** lookups (substitutions) and the
  **GPOS** lookups (positions) in order; features decide which lookups run.
- A **lookup** has a name, a type, features, flags and rules. FontEasy builds seven types: single,
  multiple, alternate, ligature and contextual substitution, single and pair adjustment.
- In the **Lookups** view (Features tab, Pro Mode), click **+ New**, choose a type, type glyph names,
  a class (`@name`) or a list (`[a b c]`) into the rule fields, and pick features with **Add Tag**.
- Badges show the state: **on**, **unfinished** (not written until fixed), **in code** (taken over
  by hand), **off**.
- Lookups are written into `features.fea` as automatic blocks; editing that code takes them over,
  and **Use These Rules** brings the visual version back.
- The **Inspector** shapes a text one lookup at a time and highlights what each lookup changed; it
  follows the feature switches of the Preview.

## Try it yourself

1. Draw a glyph `a.alt` (duplicate `a` and change it). In the Lookups view, add a
   **Single Substitution** named `altA` with the rule `a` → `a.alt` and the feature `ss01`. Type
   `banana` in the Preview and switch `ss01` on and off.
2. Open the **Inspector** and type `fit AV` (or another text where your font has a ligature and
   kerning). Find the card where `f i` becomes a ligature and the card where kerning moves a glyph.
   Then switch `liga` off in the Preview and watch the ligature card disappear.
