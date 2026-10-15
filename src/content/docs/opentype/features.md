---
title: OpenType Features
description: What OpenType features are, how FontEasy makes them from your glyph names, and how to write, check and test feature code.
---

A modern font is more than a box of letter shapes. It can also carry a little intelligence: when
someone types `f` and `i`, the font can show a single joined `ﬁ` instead; when they ask for small
capitals, the font swaps every lowercase letter for a small capital; when the text is Turkish, the
font can use the Turkish form of a letter. These smart behaviours are called
**[OpenType features](/reference/glossary/#opentype-feature)**.

Features may sound like an expert topic, but FontEasy makes the common ones for you. If you name
your glyphs the usual way (`a.sc` for a small cap `a`, `f_i` for the `fi` ligature), the features
appear by themselves and stay up to date as you add glyphs. When you want more, you can write
feature code in the built-in editor, or build rules visually in the
[Lookups view](/opentype/lookups/).

In this chapter you will learn:

- what OpenType features are, with pictures of ligatures, small caps, alternates and figure styles;
- the common feature tags, from `liga` to `ss01`;
- how FontEasy writes features from glyph names, and the naming rules it follows;
- how to use the Features tab, its Code view and the Simple Mode view;
- the basics of feature code (FEA), with small examples;
- what errors and warnings mean, and how to fix them;
- how to test features in the Preview, including other languages.

## What OpenType features are

To understand features, you need one idea: **characters** and **glyphs** are not the same thing.

- A **[character](/reference/glossary/#character)** is what you type: the letter "f", with its
  [Unicode](/reference/glossary/#unicode) code `U+0066`. A text file stores characters.
- A **[glyph](/reference/glossary/#glyph)** is a drawing in the font. One character usually maps to
  one glyph, but a font can have many glyphs for the same character (a normal `a`, a small cap `a`,
  an alternate `a`) and glyphs that are no single character at all (the ligature `f_i`).

When an app shows text, it first turns each character into its default glyph. Then the font's
features may **swap** glyphs for others, or **move** them. This process is called
**[shaping](/reference/glossary/#shaping)**. The text itself never changes: if you copy a word set
with an `ﬁ` ligature, you still copy the two letters `f` and `i`.

Features come in two kinds:

- **Substitution** features swap glyphs. They live in the font's
  **[GSUB](/reference/glossary/#gsub)** table (glyph substitution). Ligatures, small caps,
  alternates and figure styles are substitutions.
- **Positioning** features move glyphs. They live in the **[GPOS](/reference/glossary/#gpos)** table
  (glyph positioning). Kerning and the placement of accents are positioning.

Some features are **on by default**: every app that supports OpenType applies them without being
asked, for example standard ligatures (`liga`), kerning (`kern`) and localized forms (`locl`).
Others are **optional**: the user switches them on in their app, for example small caps (`smcp`),
old-style figures (`onum`) or a stylistic set (`ss01`). How the user does that depends on the app:
a typography panel in a design program, a font settings menu, or CSS on the web.

### Ligatures

A **[ligature](/reference/glossary/#ligature)** is one glyph that replaces two or more. The classic
case is `f` followed by `i`: in many serif fonts the hood of the `f` bumps into the dot of the `i`,
so type designers draw a joined `ﬁ`.

![On the left, f and i set as two glyphs, with the hood of the f bumping into the dot of the i; on the right, the liga feature replaces them with one ligature glyph, f_i.](diagram:features-ligature)

- **Standard ligatures** (`liga`) fix collisions like this one. They are on by default.
- **Discretionary ligatures** (`dlig`) are decorative, such as a joined `ct` or `st`. The user
  switches them on.

### Small caps

**[Small caps](/reference/glossary/#small-caps)** are capital letters drawn at about the height of
the lowercase, with strokes as heavy as the lowercase letters. They are used for abbreviations
(`NASA`, `UNESCO`) and for headings that should not shout.

![Small Caps set three ways: with no feature, with smcp on (lowercase letters become small caps) and with smcp plus c2sc on (capitals become small caps too).](diagram:features-small-caps)

- `smcp` turns **lowercase** letters into small caps.
- `c2sc` turns **capitals** into small caps.

Small caps are not shrunken capitals: a capital scaled down to the x-height looks thin and weak
next to the lowercase. FontEasy can draw a first version of them for you with
**Font › Make Small Caps…** (see [Automation](/advanced/automation/)).

### Alternates and stylistic sets

An **[alternate](/reference/glossary/#alternate)** is another drawing of the same letter: a `g` with
an open tail, an `a` with one storey, a `Q` with a long tail.

- **Stylistic alternates** (`salt`) offer alternates one letter at a time.
- **[Stylistic sets](/reference/glossary/#stylistic-set)** (`ss01` to `ss20`) switch a whole group
  of letters at once, so a user can choose "set 1" for a rounder look.
- **Character variants** (`cv01` to `cv99`) offer variants of one particular character.
- **Access All Alternates** (`aalt`) collects every alternate of a glyph, so apps can show them all
  in a glyph palette.

### Figure styles and case-sensitive forms

Figures can come in several styles. **Lining** figures (`lnum`) stand as tall as capitals;
**old-style** figures (`onum`) go up and down like lowercase letters and blend into running text.
Each style can be **tabular** (`tnum`, every figure equally wide, for tables) or **proportional**
(`pnum`); see [Spacing and Metrics](/spacing/metrics/#figures-tabular-and-proportional).

![Three features at work: onum turns 2026 into old-style figures, zero gives the zero a slash, and case raises the brackets and hyphen of (H-O) to sit well with capitals.](diagram:features-figures)

- `zero` replaces `0` with a slashed zero, so it cannot be confused with the letter `O`.
- `case` (case-sensitive forms) moves punctuation such as brackets and hyphens up, to sit well
  between capitals.
- `frac` turns `1/2` into a real fraction; `sups` and `subs` give superscript and subscript
  figures; `numr` and `dnom` are the numerators and denominators fractions are built from;
  `ordn` turns the `a` and `o` after a number into ordinals (`1ª`, `2º`).

### Localized forms

Some languages write a letter differently. Turkish has a dotted capital `İ`, so a small cap or a
ligature with `i` must keep its dot; Romanian prefers a comma below `ș` instead of a cedilla.
**Localized forms** (`locl`) swap in the right glyph when the text is marked as being in that
language. The font must declare each language in a
**[language system](/reference/glossary/#language-system)**.

### Kerning and marks are features too

Your kerning becomes the `kern` feature, and the [anchors](/reference/glossary/#anchor) that place
accents become the `mark` and `mkmk` features. You never write those yourself: the compiler builds
them from your kerning pairs and anchors when the font is made.

## Common feature tags

Every feature has a four-letter **tag**. These are the ones you will meet most often:

| Tag | Name | What it does | Default |
|---|---|---|---|
| `liga` | Standard Ligatures | `f i` → `ﬁ` where letters collide | on |
| `dlig` | Discretionary Ligatures | decorative ligatures such as `ct` | off |
| `calt` | Contextual Alternates | swaps a glyph depending on its neighbours | on |
| `smcp` | Small Capitals | lowercase → small caps | off |
| `c2sc` | Small Capitals From Capitals | capitals → small caps | off |
| `ss01`–`ss20` | Stylistic Set 1–20 | a group of alternates | off |
| `salt` | Stylistic Alternates | one alternate at a time | off |
| `locl` | Localized Forms | forms for a language | on |
| `case` | Case-Sensitive Forms | punctuation for capitals | off |
| `onum` / `lnum` | Oldstyle / Lining Figures | figure height style | off |
| `tnum` / `pnum` | Tabular / Proportional Figures | figure width style | off |
| `frac` | Fractions | `1/2` → ½ | off |
| `sups` / `subs` | Superscript / Subscript | raised and lowered figures | off |
| `zero` | Slashed Zero | `0` with a slash | off |
| `kern` | Kerning | your kerning pairs | on |
| `mark` | Mark Positioning | accents on their letters | on |
| `aalt` | Access All Alternates | lists every alternate | off |

"Default" says whether apps apply the feature without being asked. FontEasy's Preview shows the
default ones switched on.

## Features made from glyph names

You rarely need to write feature code in FontEasy. It reads your glyph names and writes the
features for you. A glyph name has two parts: the base name, and after a dot, a **suffix**. The
suffix says what the glyph is for.

| Glyph name | Feature |
|---|---|
| `a.sc` (also `.smcp`) | `smcp`: `a` → `a.sc` |
| `A.sc`, `A.c2sc` | `c2sc`: a capital with its own small cap |
| `f_i`, `f_f_l` | `liga`: the parts joined by `_` become one glyph |
| `c_t.dlig`, `s_t.hlig` | `dlig`, `hlig` (historical ligatures) |
| `a.ss01` … `a.ss20` | the stylistic sets `ss01` … `ss20` |
| `a.cv01` … `a.cv99` | the character variants `cv01` … `cv99` |
| `g.alt`, `g.alt2`, `g.salt` | `salt` |
| `one.osf`, `one.lf` | `onum`, `lnum` |
| `one.tf`, `one.pf` | `tnum`, `pnum` |
| `hyphen.case` | `case` |
| `zero.zero` | `zero` |
| `one.sups`, `one.subs`, `one.sinf` | `sups`, `subs`, `sinf` |
| `one.numr`, `one.dnom` | `numr`, `dnom` (and `frac`, see below) |
| `ordfeminine`, `ordmasculine` | `ordn` |
| `i.loclTRK`, `Scommaaccent.loclROM` | `locl` for that language |
| `.init`, `.medi`, `.fina`, `.isol` | positional forms for joining scripts |

The rules FontEasy follows:

- **The base glyph must exist.** `a.sc` only makes a feature if the font has an `a`. For
  ligatures, *every* part must exist: `f_f_l` needs `f` and `l`.
- **Longer ligatures come first**, so `f_f_i` wins over `f_f` when you type "ffi".
- **Small caps of capitals.** A capital with a `.sc` glyph (`A.sc`) goes into `c2sc`. If your small
  caps are named after the lowercase letters (`a.sc`) and the capital has no small cap of its own,
  the capital uses the lowercase one: `A` → `a.sc`.
- **Several alternates.** If a glyph has more than one alternate (`g.alt` and `g.alt2`), `salt`
  offers all of them as a choice.
- **Fractions.** When the font has a `fraction` glyph and figures with both `.numr` and `.dnom`
  forms, FontEasy writes `frac`: the slash becomes the fraction slash, figures before it become
  numerators and figures after it become denominators.
- **Ordinals.** With `ordfeminine` (ª) or `ordmasculine` (º) in the font, `ordn` turns an `a` or
  `o` after a figure into them.
- **Localized forms** use the OpenType language tag after `locl`: `TRK` Turkish, `ROM` Romanian,
  and so on. FontEasy adds the language systems they need, and languages that share a form get it
  too: the Turkish forms also apply to Azerbaijani, Crimean Tatar, Kazakh and Tatar; the Romanian
  forms also to Moldavian.
- **Access All Alternates** (`aalt`) is made from all the one-to-one substitutions above.
- `kern`, `mark`, `mkmk` and `curs` are not written from names; the compiler builds them from your
  kerning and anchors.

:::tip[Let FontEasy make the glyphs]
**Font › Make Small Caps…** draws `a.sc`, `b.sc` … from your capitals, and the small caps
features follow by themselves. **Glyph › Rename Glyph…** (<kbd>F2</kbd>) changes a name and
updates the components, kerning groups and kerning pairs that use it; the automatic features follow
on the next refresh.
:::

### Where the automatic code goes

FontEasy writes the automatic features into the font's own feature file, `features.fea`, so the
font builds the same in any other tool. Each automatic feature sits between two marker comments:

```fea
# automatic smcp 1a2b3c4d
feature smcp {
    sub a by a.sc;
    sub b by b.sc;
} smcp;
# end automatic smcp
```

The number after the tag is a check value of the code below it. FontEasy refreshes these blocks:

- when you save the font;
- when the font is compiled (for the Preview, testing and export);
- when you open the Features tab;
- when you choose **Features › Update Automatic Features**.

Refreshing rewrites unchanged blocks from your glyphs, adds blocks for new features and removes
blocks whose glyphs are gone. It does not add steps to your undo history. The status bar says
whether anything changed.

FontEasy also puts the blocks in a sensible order (localized forms, then figures, then small
caps, then ligatures), because the order of features in the file is the order in which their
rules run.

### Taking over an automatic feature

Sometimes you want to change an automatic feature by hand, for example to add a rule. You can:

- **Edit its code.** As soon as the code inside a block no longer matches its check value,
  FontEasy treats it as your code: the markers are removed and it is never generated again.
- Or right-click the feature in the feature list and choose **Edit by Hand**. This keeps the
  current code as it is and stops updating it from the glyph names.

A feature you write yourself is never generated over. If your file already has a `feature smcp`
block of your own, FontEasy leaves small caps to you.

### Turning a feature off

If you do not want a feature, untick its checkbox in the feature list. The glyphs stay in the font,
but the feature is not made. Tick it again to bring it back.

## The Features tab

Choose **Features › Features** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>). A **Features** tab
opens next to the Overview, and the automatic features are refreshed at once.

![The Features menu with Features, Update Automatic Features and Check Features.](screen:g-menu-features)

In Pro Mode the tab has the feature list on the left and three views on the right: **Code**,
**Lookups** and **Inspector**. This chapter is about the Code view; the other two are explained
in [Lookups and the Shaping Inspector](/opentype/lookups/).

### The feature list

Each row of the list shows the tag, the feature's name and a badge that says where it comes from:

- **auto**: made from glyph names and kept up to date. Edit its code to take it over.
- **off**: turned off; its glyphs are in the font, but the feature is not made.
- **manual**: written by hand in the feature code.
- **built**: built when the font is compiled, from the kerning pairs and groups (`kern`) or from
  the anchors (`mark`, `mkmk`, `curs`).

Automatic features have a checkbox to turn them on and off. Hover over a row to see which glyphs
the feature brings in. Click a row to jump to its code. Right-click it for **Show Code** and, for
automatic features, **Edit by Hand**. The small sparkle button above the list updates the
automatic features from the glyph names.

### The Code view

The **Code** view is a text editor for `features.fea`, with line numbers and colours: keywords,
`@classes`, numbers and comments each have their own colour, and the automatic block markers are
shown in italics.

![The Features tab of Mutator Sans in Pro Mode: the feature list with auto, manual and built badges, the Code view with a hand-written calt feature and automatic blocks, and an error on line 4: glyph not in font.](screen:features)

Every change you type is applied to the font. Typing is grouped into steps, so
<kbd>Ctrl</kbd>+<kbd>Z</kbd> undoes a burst of typing, not one letter at a time.

### Features in Simple Mode

In Simple Mode the Features tab is simpler. It shows one card per feature, with a readable name,
its tag and the glyphs it uses, and a checkbox to turn automatic features off. Features built by
the compiler, such as Kerning, show a tick and a short explanation instead.

![The Features tab in Simple Mode: cards for Access All Alternates, Localized Forms, Small Capitals From Capitals, Stylistic Set 1, Kerning and Standard Ligatures, each with its glyphs.](screen:features-simple)

Below the cards, a table **How to name glyphs** reminds you of the suffixes: `a.sc` for small
capitals, `f_i` for ligatures, `a.ss01` for stylistic sets, `one.osf` for old-style figures, and
so on. That is all a beginner needs: name the glyphs, and the features appear.

## Feature code basics

Feature code is written in a small language called **FEA** (the Adobe feature file syntax). You do
not need it for the common features, but reading it helps you understand what FontEasy writes,
and writing a few lines lets you do things names cannot. See also
[feature code](/reference/glossary/#feature-code) in the glossary.

### Statements and blocks

- Every statement ends with a semicolon `;`.
- A **feature block** starts with `feature` and its tag, and ends with the tag again:
  `feature liga { … } liga;`
- `#` starts a comment, which runs to the end of the line.
- `sub` (short for *substitute*) replaces glyphs; `by` says with what.

### Language systems

At the top of the file, `languagesystem` lines say which scripts and languages the features are
for. The usual start is:

```fea
languagesystem DFLT dflt;
languagesystem latn dflt;
```

FontEasy adds the language systems that its automatic features need, after any you wrote
yourself.

### Single substitutions

One glyph becomes another:

```fea
feature smcp {
    sub a by a.sc;
    sub b by b.sc;
} smcp;
```

### Classes

A **class** is a named list of glyphs. Its name starts with `@`. A class lets one rule cover many
glyphs; the two lists must be in the same order:

```fea
@lower = [a b c d e];
@lower_sc = [a.sc b.sc c.sc d.sc e.sc];

feature smcp {
    sub @lower by @lower_sc;
} smcp;
```

### Ligatures

Several glyphs, in order, become one:

```fea
feature liga {
    sub f f i by f_f_i;
    sub f i by f_i;
    sub f l by f_l;
} liga;
```

Put the longest ligatures first, as FontEasy does: once `f i` has become `f_i`, the `f f i` rule
can no longer match.

### Alternates

One glyph, a choice of several. The app shows the choices to the user:

```fea
feature salt {
    sub g from [g.alt g.alt2];
} salt;
```

### Contextual substitutions

A glyph is replaced only next to certain others. The glyph to replace is marked with an
apostrophe `'`:

```fea
feature calt {
    sub T o' by o.alt;
} calt;
```

This reads: "an `o` that comes after a `T` becomes `o.alt`". The glyphs without `'` are only the
context; they are not changed.

### Lookups and languages

A **[lookup](/reference/glossary/#lookup)** is a named group of rules that a feature runs. Localized
forms use one lookup per language:

```fea
feature locl {
    script latn;
    language TRK;
    lookup locl_turkish {
        sub i by i.loclTRK;
    } locl_turkish;
} locl;
```

The next chapter, [Lookups and the Shaping Inspector](/opentype/lookups/), explains lookups in
detail and shows how to build them without writing code.

### Positioning

`pos` moves glyphs instead of replacing them. For kerning, use the kerning tools of the
[Kerning](/spacing/kerning/) chapter: the compiler writes the `kern` feature for you. Hand-written
positioning is rarely needed in a first font.

### Other files

`include(other.fea);` reads another feature file. Its path is relative to the font's folder. If the
file is not found, the error points at the `include` line.

## Errors and warnings

FontEasy checks your feature code while you type. When you stop typing for a moment, the code is
checked against the glyphs of your font with fea-rs, the same checker the compiler uses. This is
fast even for very large feature files.

When something is wrong:

- the faulty word is **underlined** in the code (red for errors, orange for warnings);
- the **line number** of an error turns red;
- the panel under the code shows **Errors** and **Warnings** counts and one line per problem, such
  as `Line 4  glyph not in font`.

Click a problem in the list to jump to its line. When everything is fine, the panel says
**No problems in the feature code**.

You can also check on demand with **Features › Check Features** (Pro Mode). The status bar then
shows the number of errors and warnings. And **Font › Check Font…** (<kbd>F7</kbd>) includes the
feature code in its checks; clicking a feature problem there opens the editor at that line.

Common problems and their fixes:

| Problem | Usual cause | Fix |
|---|---|---|
| A glyph the font does not have (`glyph not in font`) | a typo in a glyph name, or a glyph you deleted or renamed | correct the name, or add the glyph |
| A statement is not finished | a missing semicolon `;` | add `;` at the end of the statement |
| A class is unknown | a `@class` used before it was defined, or a typo | define the class above, or fix the name |
| A block does not close properly | `feature liga { … } lgia;`, or a missing `}` | write the same tag at both ends and close every `{` |

:::caution[A broken feature file stops the font from building]
While the feature code has errors, the Preview cannot compile the font. It then shows your text
with plain, unshaped outlines and the message "Build failed — showing unshaped outlines". Fix
the errors and the Preview comes back.
:::

## Testing features in the Preview

The **Preview** panel shows your text in the compiled font, shaped exactly as apps will show it.
Its feature switches let you test every feature.

1. Type a test text into the Preview, for example `OFFICE SAFARI` or `office 1/2 2026`.
2. Look at the row of tags under the text field. Each tag is a feature of the compiled font. The
   features apps use by default (such as `kern`, `liga`, `locl`, `ccmp`) are already switched on.
3. Click a tag to switch it on or off. The text updates at once.
4. Tick **Glyphs** to see, under the controls, the name and advance width of every glyph the text
   is shaped into. This tells you exactly whether a ligature or small cap came in.
5. To test localized forms, open the language list (it starts at **Default language**) and choose a
   language the font has, such as `TRK Turkish`.

![The Preview with OFFICE SAFARI: c2sc is switched on, so every capital becomes a small cap, and with Glyphs ticked the shaped glyphs are listed by name: O.sc, F.sc, F.sc, I.sc and so on.](screen:features-preview)

To try the font in a real app, use **File › Test Font in Browser** (<kbd>F5</kbd>), which shows the
font in your web browser with its features, or **File › Install Font for Testing**
(<kbd>Ctrl</kbd>+<kbd>F5</kbd>). See [Testing and publishing](/production/testing-publishing/).

## Features of imported fonts

When you open a TTF or OTF file, FontEasy translates its substitution features back into feature
code: single, multiple, alternate and ligature substitutions, with their language systems. They
appear as **manual** code. Contextual substitutions are not translated; a comment at the top of
the file lists which features were left out, so you can write them again by hand if you need them.

![Feature code imported from Source Serif 4: the comment on line 2 lists the contextual lookups that were not imported, the feature list marks the imported features as manual, and the Preview below has the feature toggles.](screen:g-features)

## Tips and common mistakes

- **Name glyphs before you write code.** Most features come for free from good names. Write code
  only for what names cannot say.
- **Do not edit inside automatic blocks by accident.** Any change to a block takes it over and
  stops FontEasy from updating it. If that happened by mistake, undo, or delete the whole block and
  let FontEasy write it again on the next refresh.
- **Ligature parts must exist.** `f_j` makes no feature if the font has no `j`.
- **Check the glyph list in the Preview.** A feature that seems to do nothing often works, but the
  glyphs look alike. Ticking **Glyphs** shows the truth.
- **Mind the order.** Rules run in the order of the file. A rule that changes `i` to `i.loclTRK`
  must come before a ligature that expects `i`.

:::caution[Renaming does not change your own code]
**Glyph › Rename Glyph…** updates components and kerning, and the automatic features are rewritten
with the new name. Feature code you wrote by hand is not changed: after a rename, the checker shows
the old name as a glyph not in the font, so you can correct it.
:::

## When something goes wrong

- **A feature does not appear in the list.** Check the name: the base glyph must exist (`a` for
  `a.sc`), and the suffix must be one FontEasy knows. Then choose
  **Features › Update Automatic Features**.
- **The feature shows off.** Its checkbox is unticked. Tick it.
- **I wrote my own feature and the automatic one vanished.** That is on purpose: when you write
  your own `feature smcp` block, FontEasy removes its automatic `smcp` block at the next refresh,
  so the font never has two versions. Delete your block to get the automatic one back.
- **The feature works in the Preview but not in my app.** Many apps need the user to switch on
  optional features (`smcp`, `onum`, `ss01`). Check the app's typography settings.
- **The language list has no languages.** The font declares no languages other than the default.
  Add a `locl` glyph such as `i.loclTRK`, and FontEasy adds the language systems.

## Summary

- **OpenType features** let a font swap glyphs (GSUB: ligatures, small caps, alternates, figure
  styles, localized forms) or move them (GPOS: kerning, accents) while the text stays the same.
- Some features are on by default (`liga`, `kern`, `locl`); others are switched on by the user
  (`smcp`, `onum`, `ss01`).
- FontEasy writes features from **glyph name suffixes**: `.sc`, `_` ligatures, `.ss01`, `.alt`,
  `.osf`, `.tf`, `.case`, `.sups`, `.numr`/`.dnom`, `.locl` with a language tag, and more.
- The automatic code lives in `features.fea` between marker comments and is refreshed on save,
  on compile and with **Features › Update Automatic Features**; editing a block takes it over.
- The **Features** tab (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>) has a feature list with
  badges and switches, and a **Code** view that checks your code as you type.
- Test features in the **Preview**: click the feature tags, tick **Glyphs** to see the shaped
  glyphs, and choose a language to test `locl`.

## Try it yourself

1. Draw (or duplicate and change) a glyph named `g.ss01`. Open **Features › Features** and find
   `ss01` in the list. Type `g` in the Preview, switch `ss01` on, and tick **Glyphs** to see
   `g.ss01` come in.
2. Make sure your font has `f`, `i` and a glyph named `f_i`. Type `fit` in the Preview and look at
   the glyph list with `liga` on and off. Then open the Code view, find the `# automatic liga`
   block and read the rule FontEasy wrote.
