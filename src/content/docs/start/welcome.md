---
title: Welcome
description: What a font really is, what you can make with FontEasy, and how to get the most out of this guide.
---

Welcome to FontEasy, a free font editor for Windows. With it you can draw your own letters, space
them so they read well, and turn them into a real font that you can install on your computer, use
in Word or Photoshop, put on a website or share with other people.

You do not need any experience. This guide starts at the very beginning and explains every new word
the first time it appears. If you have never wondered what happens inside a font file, that is fine:
by the end of Part I you will have made a small font of your own.

This first chapter is a gentle overview. There is nothing to install or click yet. Read it with a
cup of tea, and come back to it whenever you want to see the big picture again.

In this chapter you will learn:

- what a font is, and the difference between bitmap and outline fonts;
- what the words typeface, font and family mean;
- what kinds of fonts you can make with FontEasy;
- how FontEasy helps beginners with Simple Mode and Pro Mode;
- how this guide is organized, and what you need to get started.

## What a font is

Think of a box of rubber stamps, one stamp for every letter, number and punctuation mark. When you
"type" with the stamps, you pick the right stamp for each letter and press it on the paper, one after
the other. A [font](/reference/glossary/#font) is the digital version of that box. Each stamp is a
drawing called a [glyph](/reference/glossary/#glyph): the shape of one letter, figure or sign. When
you type the letter A in a text editor, the computer looks in the font, finds the glyph for A and
draws it on the screen.

The box itself is a [font file](/reference/glossary/#font-file): a single file, usually ending in
`.ttf` or `.otf`, that holds every glyph together with some extra information. That extra
information tells the computer how wide each letter is, how far apart two letters should sit, how
tall the capitals are, what the font is called, and which glyph to use for which typed character.

So a font is much more than a set of pretty drawings. It is a small machine that turns the letters
you type into shapes on a page. FontEasy helps you build both parts: the drawings and the machine.

### Bitmap fonts and outline fonts

There are two ways to store the drawing of a letter.

A [bitmap font](/reference/glossary/#bitmap-font) stores each letter as a grid of tiny squares
(pixels), like a mosaic. Old computers and early video games used bitmap fonts. They look fine at
exactly the size they were made for, but when you enlarge them the squares become visible and the
letters look blocky.

An outline font stores the edge of each letter instead: a few [points](/reference/glossary/#point)
joined by straight lines and smooth curves, like a connect-the-dots puzzle. The computer fills the
inside of this [outline](/reference/glossary/#outline) at whatever size you ask for, so the letters
stay sharp whether they are 8 points tall on your phone or two meters tall on a poster. Almost every
font you use today is an outline font, and FontEasy makes outline fonts.

![On the left a bitmap letter a made of square pixels; on the right the same letter as an outline with square on-curve points and round handles.](diagram:start-bitmap-outline)

You do not have to place every point by hand. FontEasy has shape tools (rectangles and ellipses), a
Pencil for drawing freehand, a Pen for precise curves, and it can even trace a photo of your
handwriting. You will try the simple tools in [Your First Font](/start/first-font/).

### Typeface, font and family

Three words are often mixed up, so let us sort them out now.

| Word | What it means | Example |
|---|---|---|
| [Typeface](/reference/glossary/#typeface) | The design: the look of the letters | Source Serif 4 |
| [Font](/reference/glossary/#font) | One style of that design, usually one file | Source Serif 4 Bold |
| [Family](/reference/glossary/#family) | All the styles that belong together | Regular, Italic, Bold, Bold Italic |

In everyday speech people say "font" for all three, and that is fine. In this guide, "font" usually
means the thing you are making in FontEasy: one style, which you can later grow into a family. You
will meet styles such as Bold and Italic again in [Type Basics](/start/type-basics/).

## What you can make with FontEasy

FontEasy is meant to carry you from your very first letter to a professional family. Here are the
kinds of fonts people make with it.

**Text fonts.** Fonts for reading: books, websites, reports. They have calm, even shapes that still
work at small sizes, and they need careful spacing. FontEasy's [spacing](/reference/glossary/#spacing)
and [kerning](/reference/glossary/#kerning) tools help you get there.

**Display fonts.** A [display font](/reference/glossary/#display-font) is made for big sizes:
headlines, logos, posters, packaging. Display fonts can be as bold, playful or strange as you like,
and you can start one with just the capital letters.

**Handwriting fonts.** Print a template from FontEasy, fill it in with a pen, scan it or take a photo
with your phone, and FontEasy traces your letters into the font. This is a lovely first project: you
get a font that looks like you.

![The Handwriting Font wizard showing the letters traced from a scanned template, each in its own box.](screen:handwriting)

**Color fonts.** A [color font](/reference/glossary/#color-font) has letters with several colors
built in, for emoji-like icons, festive titles or layered lettering. FontEasy builds them with
palettes and color layers, and it even reads colored SVG files from Illustrator.

![A color font in the Overview, with multicolored letters and the Color panel listing the layers of a glyph.](screen:colorfont)

**Variable fonts.** A [variable font](/reference/glossary/#variable-font) holds a whole range of
styles in one file, for example every weight from Light to Bold. You draw the two ends, and
everything in between comes for free. FontEasy can turn an ordinary font into a variable one and
even draw a first version of the bold for you.

![Editing the H of a variable font: a Weight slider in the Variations panel and the Preview shows a weight between Regular and Bold.](screen:variablebold)

You can also open fonts made elsewhere. FontEasy reads UFO and designspace sources, Glyphs files,
and finished TTF and OTF fonts, so you can study how a professional font is built or continue a
project you started in another program. When your font is ready, FontEasy exports it as TrueType
(`.ttf`), OpenType (`.otf`) and the web formats WOFF and WOFF2.

:::note
Make sure you are allowed to edit a font before you open someone else's font and change it.
Many free fonts use the SIL Open Font License, which allows changes; many commercial fonts do not.
The chapter [Testing and Publishing](/production/testing-publishing/) says more about
[font licenses](/reference/glossary/#font-license).
:::

## How FontEasy helps beginners

Professional font editors can feel like the cockpit of an aeroplane: hundreds of buttons, all
important to somebody. FontEasy has those buttons too, but it lets you hide most of them until you
need them.

**Simple Mode** shows the essential tools and a guided path. A panel called the **Font Journey**
lists the steps from an empty font to a finished one (name it, draw the letters, add accents, space
them, kern tricky pairs, add features, check it, test and export it) and gives you a button for each
step. A short tour explains the screen the first time you open a font, and an empty glyph tells you
how to start drawing it.

**Pro Mode** shows every tool and panel: masters for variable fonts, the OpenType feature code
editor, kerning classes, the full list of outline checks and more.

You choose the mode on the Home screen, under **How do you want to work?**, and you can switch at any
moment with the **Pro** / **Simple** switch at the top right of the window. Nothing in your font
changes when you switch: only the amount of tools on screen. The chapter
[A Tour of the Interface](/start/interface/) shows exactly where everything is.

![The FontEasy Home screen with buttons for a new font, four templates, the Recent list and the choice between Simple Mode and Pro Mode.](screen:home)

Some other helpers you will meet along the way:

- The **New Font Wizard** asks three easy questions (name, characters, proportions) and sets up the
  font for you.
- Live checks mark problems in your drawings while you work, such as a shape that is not closed,
  and most of them can be fixed with one click.
- **Check My Font** looks over the whole font before you publish it, from its names to its kerning.
- **Test Font in Browser** (<kbd>F5</kbd>) shows your font on a web page in a second, without
  installing anything.

:::tip
If you are completely new to fonts, start in Simple Mode. Everything you make there works in Pro
Mode too, so you never have to start over.
:::

## How to use this guide

The guide follows the life of a font, from the first letter to publishing it. You can read it from
start to finish, but you do not have to: after Part I, jump to whatever you need next.

![A map of the guide: Parts I to VI form the main path from Getting Started to Finishing and Publishing; Part VII and the Reference are there when you need them.](diagram:start-guide-map)

- **Part I · Getting Started** (you are here): this welcome, [installing FontEasy](/start/install/),
  [type basics](/start/type-basics/), [the interface](/start/interface/) and
  [your first font](/start/first-font/).
- **Part II · Drawing Glyphs**: [outlines and Bézier curves](/drawing/outlines/), the
  [glyph editor](/drawing/glyph-editor/), the [drawing tools](/drawing/drawing-tools/),
  [choosing your characters](/drawing/glyph-set/), [components and accents](/drawing/components/),
  [importing and tracing](/drawing/import-trace/), [handwriting fonts](/drawing/handwriting/) and
  [fixing problems](/drawing/problems/).
- **Part III · Spacing and Kerning**: [metrics and spacing](/spacing/metrics/) and
  [kerning](/spacing/kerning/).
- **Part IV · OpenType Features**: [features](/opentype/features/) such as ligatures and small caps,
  and the visual [lookup editor](/opentype/lookups/).
- **Part V · Advanced Design**: [variable fonts](/advanced/variable/), [color fonts](/advanced/color/),
  [drawing effects](/advanced/drawing-effects/) and [design automation](/advanced/automation/).
- **Part VI · Finishing and Publishing**: [font info](/production/font-info/),
  [quality checks](/production/quality/), [exporting](/production/export/) and
  [testing and publishing](/production/testing-publishing/).
- **Part VII · For Power Users**: [Python scripting](/power/scripting/) and
  [preferences](/power/preferences/).
- **Reference**: the [glossary](/reference/glossary/), all [keyboard shortcuts](/reference/shortcuts/)
  and the [FAQ](/reference/faq/).

### Conventions

Menu commands are written in bold, with › between the steps. **File › Export › Export Font…** means:
open the **File** menu, point to **Export**, then click **Export Font…**. Keys look like this:
<kbd>Ctrl</kbd>+<kbd>S</kbd> means "hold Ctrl and press S".

The pictures of the app are taken in the dark appearance at a window size of 1440 × 900. If your
window is smaller or you use the light appearance, things may sit a little differently, but they are
all there.

Words that belong to type design, such as [baseline](/reference/glossary/#baseline) or
[sidebearing](/reference/glossary/#sidebearing), link to the [glossary](/reference/glossary/) the
first time a chapter uses them. Hover over a link or open it in a new tab whenever a word is
unfamiliar.

### The boxes

Here and there you will find boxes like these:

:::note
A note gives background information: nice to know, but you can skip it.
:::

:::tip
A tip shows a quicker or better way to do something.
:::

:::caution
A caution warns about a common mistake, and how to avoid it.
:::

:::danger
A danger box warns about something that can lose your work. Read these.
:::

Every chapter ends with a **Summary** and a short **Try it yourself** exercise. The exercises are
small on purpose: ten minutes of doing teaches more than an hour of reading.

## What you need

Not much:

- **A Windows PC** with a 64-bit version of Windows. The chapter [Installing FontEasy](/start/install/)
  explains the details.
- **A mouse** is easier than a touchpad for drawing curves, but either works. A graphics tablet is
  welcome but not needed.
- **No money.** FontEasy is free and open source, under the MIT License or the Apache License 2.0.
  The fonts you make are yours.
- **No programming.** You never need to write code. (If you enjoy it, Part VII shows how to automate
  FontEasy with Python.)
- **Paper and a pencil.** Most type designers sketch their ideas on paper first. For a handwriting
  font you also need a printer and a scanner or a phone camera.
- **Patience and curiosity.** A complete font has many glyphs. Start small: a handful of letters is
  already a font you can type with.

## Summary

- A font is a file full of glyphs (the drawings of letters, figures and signs) plus the information
  that tells the computer how to use them.
- Bitmap fonts are grids of pixels; outline fonts, which FontEasy makes, are points joined by lines
  and curves and stay sharp at any size.
- A typeface is a design, a font is one style of it, and a family is all its styles together.
- With FontEasy you can make text, display, handwriting, color and variable fonts, and open fonts
  made elsewhere.
- Simple Mode shows the essentials and the Font Journey; Pro Mode shows everything. You can switch at
  any time.
- The guide follows a font from first letter to publishing. Bold menu paths, linked glossary words
  and four kinds of boxes help you along.

## Try it yourself

1. Open a word processor and type the same sentence in three fonts you have on your computer. Look
   closely at the letter g, the letter a and the end of each stroke. Which differences can you name?
2. Take a piece of paper and write the word "Hamburgefonstiv" in your own handwriting. Keep it: it
   is a classic test word for type designers, and you may want to turn it into a font later.
