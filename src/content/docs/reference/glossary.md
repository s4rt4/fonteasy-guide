---
title: Glossary
description: Plain-language explanations of the font words used in FontEasy and in this guide, from advance width to x-height.
---

Type design has its own vocabulary, and it can feel like a wall of strange words at first. This glossary explains every term the guide uses, in plain language, for someone who has never made a font. Each entry says what the word means, gives an everyday comparison, tells you why it matters, and shows where you meet it in FontEasy.

The terms are in alphabetical order, grouped by their first letter. Links in the chapters jump straight to the right entry, and links inside an entry take you to related terms or to the chapter that explains the topic in full. Menu names are written the way FontEasy shows them, for example **Font › Font Info…**.

:::tip[Finding a word quickly]
On the website, press <kbd>Ctrl</kbd>+<kbd>F</kbd> in your browser and type the word. In the PDF, use your PDF reader's search. If a term in an entry is new to you, follow its link: most entries are short enough to read in under a minute.
:::

## A

### Advance width

The **advance width** is how far the text cursor moves to the right after a glyph is typed. Think of each letter as a rubber stamp on a wooden block: the advance width is the width of the whole block, not just of the ink on it. It includes the letter's shape plus the empty space on both sides, called the [sidebearings](/reference/glossary/#sidebearing). If the advance width is too small, letters crash into each other; too big, and words fall apart. In FontEasy you see it as the right-hand metric line in the glyph editor, and you can type it in the **Width** field of the options bar when nothing is selected. The [Metrics](/spacing/metrics/) chapter explains it in depth.

See also: [Spacing](/reference/glossary/#spacing), [Metrics key](/reference/glossary/#metrics-key).

### Alternate

An **alternate** is a second (or third) design of the same character that people can switch to, such as a single-storey `g` next to the usual double-storey one, or a swash capital. It is like keeping two versions of a stamp for the same letter. The normal version is typed by default; the alternate waits until the user asks for it in an app that supports [OpenType features](/reference/glossary/#opentype-feature). In FontEasy you make one by adding a glyph with a suffix, for example `g.alt`: FontEasy then builds the **Stylistic alternates** feature for you. Glyphs named `a.ss01` go into a [stylistic set](/reference/glossary/#stylistic-set) instead. See [Features](/opentype/features/).

Not to be confused with the **Alternate Layers** in the **Layers** panel, which are [bracket layers](/reference/glossary/#bracket-layer).

### Anchor

An **anchor** is a small named marker inside a glyph that says "attach something here". A letter like `a` usually has an anchor called `top`, and an accent like `acutecomb` has a matching `_top`. When the two are combined, the anchors snap together, like a press stud closing. Anchors let FontEasy place accents exactly over every letter without measuring each one by hand. They also feed the automatic [mark](/reference/glossary/#mark) positioning in the finished font. Add them with the **Anchor** tool (<kbd>Shift</kbd>+<kbd>A</kbd>), with **Glyph › Add Anchors**, or with **Add Usual Anchors** in the **Glyph Info** panel. The [Components](/drawing/components/) chapter shows the whole process.

See also: [Composite glyph](/reference/glossary/#composite-glyph), [Diacritic](/reference/glossary/#diacritic).

### Aperture

The **aperture** is the opening of a partly closed letter, such as the gap in `c`, `e`, `a` or `s` where the inside meets the outside. Imagine a door that can be open wide or only a crack. Wide apertures keep letters clear and readable at small sizes and on poor screens, because the inside space stays connected to the white around the letter. Narrow apertures look tighter and more formal, but `e` and `c` can start to look like `o` when the text is tiny. Aperture is a design choice, not a setting: you control it by how far you draw the strokes around. The picture under [Bowl](/reference/glossary/#bowl) shows the aperture of an `e`. See [Type basics](/start/type-basics/).

See also: [Counter](/reference/glossary/#counter), [Terminal](/reference/glossary/#terminal).

### Ascender

An **ascender** is the part of a lowercase letter that rises above the [x-height](/reference/glossary/#x-height), like the tall stems of `b`, `d`, `h`, `k` and `l`. Picture the x-height as a low ceiling: ascenders poke up through it. The word also names a font-wide measurement, the ascender line, which tells apps how high the tallest letters normally go. That value helps decide [line spacing](/reference/glossary/#vertical-metrics), so letters on one line do not touch the line above. In FontEasy you set it in **Font › Font Info…** under **Dimensions** (**Ascender**), and the editor draws it as a horizontal metric line. Learn more in [Type basics](/start/type-basics/) and [Font info](/production/font-info/).

See also: [Descender](/reference/glossary/#descender), [Cap height](/reference/glossary/#cap-height).

### Autosave

**Autosave** means FontEasy quietly saves a recovery copy of your open fonts every few minutes, without you pressing anything. It works like the spare key you hide for emergencies: you hope never to need it, but you are glad it exists. Autosave does not overwrite your real file; it writes a separate copy. If FontEasy or your computer stops unexpectedly, the next start shows **Recover Unsaved Fonts** so you can bring your work back. You choose how often it happens in **Edit › Preferences…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>) with **Autosave every** … min; 0 turns it off. Still save normally with **File › Save** (<kbd>Ctrl</kbd>+<kbd>S</kbd>). See [Preferences](/power/preferences/) and the [FAQ](/reference/faq/).

### Auto-kerning

**Auto-kerning** lets FontEasy look at the outlines of your letters and suggest [kerning](/reference/glossary/#kerning) for pairs that leave too much or too little white space between them, such as `AV`, `To` or `LT`. It is like asking a helper to make a first rough pass through a pile of letter pairs, so you only need to fine-tune. Choose **Kerning › Auto-Kerning…**, adjust **Strength**, optionally include figures and punctuation, then press **Kern These Pairs**. The whole result is one undo step. Space your font first: kerning corrects pairs, while [spacing](/reference/glossary/#spacing) sets the rhythm of every letter. Read [Kerning](/spacing/kerning/) for when to trust the result.

See also: [Kerning pair](/reference/glossary/#kerning-pair), [Kerning group](/reference/glossary/#kerning-group).

### Axis

An **axis** is one direction in which a [variable font](/reference/glossary/#variable-font) can change, such as weight (thin to black) or width (narrow to wide). Think of the slider on a dimmer switch: one slider, one axis. Each axis has a four-letter tag, a minimum, a default and a maximum, for example `wght` from 100 to 900. A font can have several axes at once, each with its own slider. In FontEasy you add axes in **Font › Masters & Axes…** on the **Axes** tab, or let **Font › Make Variable…** set one up for you. The **Variations** panel shows a slider for every axis. See [Variable fonts](/advanced/variable/).

See also: [Master](/reference/glossary/#master), [Designspace](/reference/glossary/#designspace), [Weight](/reference/glossary/#weight).

## B

### Baseline

The **baseline** is the invisible line that letters sit on, like the ruled line in a school notebook. Most letters rest on it, while [descenders](/reference/glossary/#descender) such as the tails of `g`, `p` and `y` hang below it. In font units the baseline is height 0: everything above is a positive number and everything below is negative. If a letter does not sit on the baseline it looks as if it is jumping or sinking in a line of text. Round letters dip a little below it on purpose; that is [overshoot](/reference/glossary/#overshoot). In the FontEasy glyph editor the baseline is one of the horizontal metric lines. See [Type basics](/start/type-basics/).

See also: [x-height](/reference/glossary/#x-height), [Vertical metrics](/reference/glossary/#vertical-metrics).

### Bezier curve

A **Bézier curve** is the kind of smooth curve used to draw letters on a computer. It is defined by a few [points](/reference/glossary/#point): two ends that the curve passes through, and [handles](/reference/glossary/#handle) that pull the curve toward them without touching it, like magnets bending a piece of wire. Moving a handle changes how the curve bends; moving an end point moves the curve itself. Almost every outline font in the world is made of Bézier curves and straight lines. FontEasy's **Pen** tool (<kbd>P</kbd>) draws Bézier contours point by point, and the **Node** tool (<kbd>A</kbd>) edits them. The [Outlines](/drawing/outlines/) chapter teaches them step by step.

See also: [Cubic curve](/reference/glossary/#cubic-curve), [Quadratic curve](/reference/glossary/#quadratic-curve), [Hobby curve](/reference/glossary/#hobby-curve).

### Bitmap font

A **bitmap font** stores each letter as a grid of tiny squares (pixels), like a cross-stitch pattern, instead of as [outlines](/reference/glossary/#outline). Bitmap fonts look crisp at exactly the size they were made for, but they turn blocky when enlarged, because the squares just get bigger. Old computers and some pixel-art games use them. FontEasy makes outline fonts, which stay smooth at every size. You can still start from a picture: **Glyph › Place Image…** puts a scan or drawing behind a glyph to trace by hand, and **Tools › Autotrace Image…** turns a picture of a letter into outlines automatically. See [Import and trace](/drawing/import-trace/).

See also: [Outline](/reference/glossary/#outline), [Font format](/reference/glossary/#font-format).

### Bold

**Bold** is a heavier style of a typeface, with thicker strokes, used to make words stand out. Think of writing the same word with a fat marker instead of a fine pen. In a well-made family, bold is not just "the regular letters with a thicker outline": shapes are redrawn so the insides stay open and the letters keep their proportions. Apps link a Bold style to its Regular through the font's style names and its weight class (700 for Bold). In FontEasy, **Tools › Transform Glyphs…** with **Bolder / Lighter** gives you a starting point, and a variable font can cover bold with a second [master](/reference/glossary/#master). See [Variable fonts](/advanced/variable/) and [Automation](/advanced/automation/).

See also: [Weight](/reference/glossary/#weight), [Style](/reference/glossary/#style), [Family](/reference/glossary/#family).

### Bowl

A **bowl** is the rounded part of a letter that encloses (or almost encloses) a space, like the round body of `b`, `d`, `p`, `q` or `o`. Picture the bowl of a spoon attached to its handle: in `b`, the [stem](/reference/glossary/#stem) is the handle. The shape of the bowls carries much of a typeface's personality, from perfectly round geometric bowls to narrow, slanted or squarish ones. Keeping bowls consistent across letters makes a font look like one family. You draw bowls with curves in the glyph editor, usually with the **Pen** or **Ellipse** tools. The space inside a bowl is the [counter](/reference/glossary/#counter). See [Type basics](/start/type-basics/).

![The letters b, e and c: the stem and bowl of b, the counters of b and e, the aperture of e and the terminal of c.](diagram:glossary-anatomy)

See also: [Aperture](/reference/glossary/#aperture), [Terminal](/reference/glossary/#terminal).

### Brace layer

A **brace layer** (FontEasy calls it an **intermediate layer**) is an extra drawing of one glyph at a point between your [masters](/reference/glossary/#master) in a [variable font](/reference/glossary/#variable-font). Normally the in-between styles are calculated automatically by [interpolation](/reference/glossary/#interpolation). Sometimes one glyph looks wrong halfway, for example a joint that gets too dark in the semibold. A brace layer is like a tailor adding a fitting halfway through: you correct that one spot and the rest follows. In FontEasy, move the sliders in the **Variations** panel to the spot, then use **Add Layer at …** under **Intermediate Layers** in the **Layers** panel. See [Variable fonts](/advanced/variable/).

See also: [Bracket layer](/reference/glossary/#bracket-layer), [Layer](/reference/glossary/#layer).

### Bracket layer

A **bracket layer** (FontEasy calls it an **alternate layer**) swaps one glyph for a different design from a certain point on an [axis](/reference/glossary/#axis). A classic example is the dollar sign: in light weights it has a bar running through, but in very bold weights there is no room, so from a certain weight on a version without the bar takes over. It is like changing to winter tyres when the temperature drops below a set value. In FontEasy, open the glyph, move the **Variations** sliders, then use **Add Alternate** under **Alternate Layers** in the **Layers** panel, and draw the alternate in every master. See [Variable fonts](/advanced/variable/).

See also: [Brace layer](/reference/glossary/#brace-layer), [Alternate](/reference/glossary/#alternate).

## C

### Cap height

The **cap height** is the height of flat capital letters such as `H`, `E` or `T`, measured from the [baseline](/reference/glossary/#baseline). Think of it as the ceiling for capitals. Round and pointed capitals like `O` and `A` go a tiny bit higher so they look the same size; that is [overshoot](/reference/glossary/#overshoot). The cap height helps apps align text, helps [hinting](/reference/glossary/#hinting), and is used when FontEasy scales imported drawings. Set it in **Font › Font Info…** under **Dimensions** (**Cap height**); the glyph editor shows it as a metric line. **Font › Check Font…** warns if it does not match where `H` really ends. See [Type basics](/start/type-basics/).

See also: [x-height](/reference/glossary/#x-height), [Vertical metrics](/reference/glossary/#vertical-metrics).

### CFF

**CFF** (Compact Font Format) is one of the two ways outlines can be stored inside an [OpenType](/reference/glossary/#opentype) font. CFF fonts use [cubic curves](/reference/glossary/#cubic-curve), the same kind most drawing apps use, and they usually have the file extension `.otf`. The other way is [TrueType](/reference/glossary/#truetype) with quadratic curves and the extension `.ttf`. For the person typing, both look and work almost the same; the difference is mainly technical, a bit like two kinds of zip file holding the same pictures. In FontEasy, tick **OpenType CFF (.otf) — desktop, print** in **File › Export › Export Font…**. Variable fonts are exported as TrueType. See [Export](/production/export/).

See also: [OTF](/reference/glossary/#otf), [Font format](/reference/glossary/#font-format).

### Character

A **character** is a single unit of written text as the computer understands it: the letter "A", the digit "7", the comma, the space. It is the idea of a letter, not its look. The letter "a" is the same character whether it is printed in a heavy poster font or a delicate script. Every character has a number in [Unicode](/reference/glossary/#unicode), its [code point](/reference/glossary/#code-point). A [glyph](/reference/glossary/#glyph) is the drawing that shows a character. Usually one character has one glyph, but one character can have several glyphs (`a`, `a.sc`, `a.ss01`), and one glyph can show several characters, like the `fi` [ligature](/reference/glossary/#ligature). See [Type basics](/start/type-basics/).

See also: [Character set](/reference/glossary/#character-set).

### Character set

A **character set** is the list of [characters](/reference/glossary/#character) a font supports, for example "A–Z, a–z, figures and punctuation" or "everything needed for most European languages". It is like the list of dishes on a menu: if a dish is not listed, the kitchen cannot serve it, and if a character is missing, apps show a box or borrow it from another font. Choosing your character set early tells you how much work lies ahead. In FontEasy, the **New Font** dialog offers starting sets under **Start with**, and **Font › Add Glyphs…** adds whole [glyph sets](/reference/glossary/#glyph-set) at once. See [Glyph sets](/drawing/glyph-set/).

See also: [Unicode](/reference/glossary/#unicode), [Subsetting](/reference/glossary/#subsetting).

### Code point

A **code point** is the number [Unicode](/reference/glossary/#unicode) gives to each [character](/reference/glossary/#character), written like `U+0041` for capital A or `U+20AC` for the euro sign. It works like a postal code: everyone in the world agrees which character lives at which number, so text typed on one computer shows the same letters on another. A glyph needs a code point to be typed directly from the keyboard; glyphs without one (such as `a.sc`) are reached through [OpenType features](/reference/glossary/#opentype-feature). In FontEasy, the **Glyph Info** panel shows a glyph's **Unicode**, and the Overview search accepts U+ codes. The **Validation** panel warns when a **Code point used twice**. See [Glyph sets](/drawing/glyph-set/).

### Color font

A **color font** contains glyphs with more than one color, such as emoji, multicolored lettering or letters with a gradient. Ordinary fonts have no color of their own: the app paints each letter in the text color. A color font is like a set of printed stickers instead of rubber stamps. FontEasy builds color fonts from stacked layers, each filled from a [palette](/reference/glossary/#palette), stored in the [COLR and CPAL](/reference/glossary/#colr-and-cpal) tables, optionally with an [OpenType-SVG](/reference/glossary/#opentype-svg) copy. Start with **Make Color Glyph** in the **Color** panel (**Window › Panels › Color**) and set colors in **Font › Color Palettes…**. Read [Color fonts](/advanced/color/).

See also: [Layer](/reference/glossary/#layer).

### COLR and CPAL

**COLR** and **CPAL** are the two tables inside a font file that make a [color font](/reference/glossary/#color-font) work. COLR (color) says which shapes are stacked on top of each other for each colored glyph, and whether they use flat colors or gradients. CPAL (color palette) holds the actual list of colors. Think of a paint-by-numbers picture: COLR is the drawing with numbers in each area, and CPAL is the box of paints. Because colors are numbered, a second palette can recolor the whole font, for example for dark mode. FontEasy writes these tables for you on export; you work with them in the **Color** panel and **Font › Color Palettes…**. See [Color fonts](/advanced/color/).

See also: [Palette](/reference/glossary/#palette), [OpenType-SVG](/reference/glossary/#opentype-svg).

### Component

A **component** is a reference to another glyph, placed inside a glyph instead of a copy of its outlines. It is like a shortcut on your desktop that points to the real file: if you change the original, every place that uses it updates. For example, `é` can be made of the `e` and the acute accent as two components. If you later improve the `e`, the `é` changes too, with no extra work. In FontEasy, add one with **Glyph › Add Component…**, move it with the **Select** tool, and turn it into plain outlines with **Glyph › Decompose**. The **Glyph Info** panel lists a glyph's components. See [Components](/drawing/components/).

See also: [Composite glyph](/reference/glossary/#composite-glyph), [Smart component](/reference/glossary/#smart-component).

### Composite glyph

A **composite glyph** is a glyph built entirely or partly from [components](/reference/glossary/#component), such as `aacute` (á) made of `a` plus a combining acute accent. Building accented letters this way saves a huge amount of drawing: one accent can serve dozens of letters, positioned by their [anchors](/reference/glossary/#anchor). It is like assembling furniture from standard parts instead of carving every chair from a single block. In FontEasy, **Glyph › Generate Composites…** or **Tools › Wizards › Auto Composites Wizard…** creates all the accented letters a glyph set needs, and **Glyph › Update Composites** refreshes them after you move anchors. See [Components](/drawing/components/).

![The letter a plus an acute accent makes the composite glyph aacute, built from two components.](diagram:glossary-composite)

See also: [Diacritic](/reference/glossary/#diacritic).

### Contour

A **contour** is one closed shape in a glyph: a loop of curves and straight lines that ends where it began. The letter `o` has two contours, the outer edge and the inner hole; `i` has two separate contours, the stem and the dot; `B` has three. Think of tracing around a cookie cutter: each separate loop you trace is one contour. Together, the contours make up the glyph's [outline](/reference/glossary/#outline), and whether an area is filled or empty depends on their [direction](/reference/glossary/#contour-direction). In FontEasy, the **Select** tool (<kbd>V</kbd>) moves whole contours, and **Glyph › Contours** holds the commands that combine, cut and clean them. See [Outlines](/drawing/outlines/).

See also: [Open contour](/reference/glossary/#open-contour), [Path](/reference/glossary/#path).

### Contour direction

**Contour direction** is the way a [contour](/reference/glossary/#contour) runs when you follow its points in order: clockwise or counter-clockwise. It sounds unimportant, but it tells the computer which parts to fill: by convention the outer shapes run counter-clockwise and the holes clockwise (for the cubic outlines FontEasy uses). It is like the rule that cars drive on one side of the road: it only works when everyone follows the same convention. With the wrong direction, some apps fill a hole or leave a shape empty. In FontEasy, **Glyph › Contours › Correct Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) fixes it, and the **Validation** panel reports **Wrong contour direction**. See [Problems](/drawing/problems/).

### Contrast

**Contrast** is the difference between the thickest and thinnest parts of a letter's strokes. In a high-contrast typeface, such as a fashion-magazine headline font, vertical strokes are heavy and horizontal ones hairline-thin. In a low-contrast typeface, every stroke is about the same thickness, like letters drawn with a felt-tip pen. Contrast comes from the history of writing with a broad pen held at an angle, and it strongly affects mood and readability at small sizes. You control it as you draw. In FontEasy, the **Drawing** panel's **Stroke** with a **Flat nib** creates contrast automatically from the **Nib angle** and **Thin stroke** settings. See [Drawing effects](/advanced/drawing-effects/).

See also: [Nib](/reference/glossary/#nib), [Monoline](/reference/glossary/#monoline).

### Corner point

A **corner point** is a [point](/reference/glossary/#point) on an outline where the direction changes sharply, making a visible corner, like the tips of `V` or the corners of `E`. The lines or curves on both sides of it can point in completely different directions, like the hinge of a folding ruler. Its opposite is the [smooth point](/reference/glossary/#smooth-point), where the curve flows through without a kink. In the FontEasy editor, corner points are drawn as small squares. Select a point with the **Node** tool (<kbd>A</kbd>) and use **Glyph › Toggle Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>) to switch it between corner and smooth. **Glyph › Contours › Round Corners…** rounds selected corners. See [Outlines](/drawing/outlines/).

### Counter

A **counter** is the enclosed or partly enclosed white space inside a letter: the hole in `o`, the inside of `b`'s [bowl](/reference/glossary/#bowl), the small "eye" in the top of `e`, the space inside `n`. Counters are as important as the black strokes: readers recognize letters partly by the shape of their white spaces, like recognizing a doughnut by its hole. Counters that are too small fill in at small sizes or in poor printing; counters that differ too much from letter to letter make text look uneven. You shape counters by drawing the inner [contours](/reference/glossary/#contour). [Spacing](/reference/glossary/#spacing) also tries to balance the white between letters with the white inside them. See [Type basics](/start/type-basics/).

See also: [Aperture](/reference/glossary/#aperture).

### Cubic curve

A **cubic curve** is a [Bézier curve](/reference/glossary/#bezier-curve) with two [handles](/reference/glossary/#handle) between its two end points, one handle for each end. Having two handles makes cubic curves flexible: one curve segment can bend in an S-shape and match many shapes with few points. They are the curves you know from Illustrator, Inkscape and Figma, and the kind used in [CFF](/reference/glossary/#cff) (`.otf`) fonts. FontEasy draws in cubic curves; when you export a [TrueType](/reference/glossary/#truetype) font, they are converted to [quadratic curves](/reference/glossary/#quadratic-curve) automatically. Pro mode has **Glyph › Contours › Convert to Cubic** and **Convert to Quadratic**. See [Outlines](/drawing/outlines/).

## D

### Descender

A **descender** is the part of a letter that hangs below the [baseline](/reference/glossary/#baseline), such as the tails of `g`, `j`, `p`, `q` and `y`. If the baseline is the floor, descenders are the legs that reach down into the basement. The word also names a font-wide measurement, the descender line, which says how deep these parts normally go. It is written as a negative number, because it lies below the baseline at 0. Together with the [ascender](/reference/glossary/#ascender), it helps apps work out line spacing. In FontEasy, set it in **Font › Font Info…** under **Dimensions** (**Descender**); the editor shows it as a metric line. See [Type basics](/start/type-basics/).

See also: [Vertical metrics](/reference/glossary/#vertical-metrics).

### Designspace

A **designspace** is a file (`.designspace`) that ties several [masters](/reference/glossary/#master) of a font family together and says where each one sits on the [axes](/reference/glossary/#axis). Imagine a map with pins: each pin is a master, such as Light at weight 300 and Bold at weight 700, and the map also names the [instances](/reference/glossary/#instance) in between. The masters themselves are separate [UFO](/reference/glossary/#ufo) folders next to the designspace file. In FontEasy, open one with **File › Open…**. Adding the first axis in **Font › Masters & Axes…** turns a single font into a designspace, and **Save** then writes the `.designspace` file next to the UFO. See [Variable fonts](/advanced/variable/).

See also: [Variable font](/reference/glossary/#variable-font), [Interpolation](/reference/glossary/#interpolation).

### Diacritic

A **diacritic** is a small mark added to a letter to change its sound or meaning, such as the accent in `é`, the tilde in `ñ`, the dots in `ü` or the cedilla in `ç`. They are like the small labels you stick on a box to say "fragile" or "this side up": the box is the same, the note changes how you treat it. Many languages, including Vietnamese, French, Turkish and Polish, cannot be written without them. In fonts, diacritics are usually drawn once as [mark](/reference/glossary/#mark) glyphs (for example `acutecomb`) and combined with letters as [components](/reference/glossary/#component). In FontEasy, use **Glyph › Generate Composites…**. See [Components](/drawing/components/).

See also: [Anchor](/reference/glossary/#anchor), [Composite glyph](/reference/glossary/#composite-glyph).

### Display font

A **display font** is a typeface made for big sizes: headlines, posters, logos, book covers and signs. Because it is read in short bursts and at large sizes, it can be bold in character, with dramatic [contrast](/reference/glossary/#contrast), tight [spacing](/reference/glossary/#spacing), unusual shapes or decoration. A text font, by contrast, is made for long reading at small sizes and stays calm. Compare a shop sign with the small print on a receipt. Knowing which one you are making guides many choices, such as [x-height](/reference/glossary/#x-height) and how open the letters are. In FontEasy's **New Font Wizard…** (**Tools › Wizards**), the question **What is it for?** offers **Headlines and logos**. See [Your first font](/start/first-font/).

### Em

The **em** is the imaginary square box that every glyph of a font is designed in. Its height equals the font size: in 12-point text, the em is 12 points tall. Historically it was the size of the metal block a letter was cast on, roughly as wide as a capital M, hence the name. Inside the font, the em is divided into a grid of small steps called [units per em](/reference/glossary/#units-per-em), often 1000. All measurements, such as the [advance width](/reference/glossary/#advance-width), [cap height](/reference/glossary/#cap-height) and [kerning](/reference/glossary/#kerning), are counted in those units. Letters may reach outside the em; it is a reference, not a cage. See [Type basics](/start/type-basics/).

### Export

To **export** a font means to turn your editable working file into a finished font file that other apps can use, such as a `.ttf`, `.otf`, `.woff` or `.woff2`. It is like baking: your [UFO](/reference/glossary/#ufo) source is the dough you can still shape, and the exported font is the bread you can share but no longer knead. Always keep the source, because you edit there and export again. In FontEasy, use **File › Export › Export Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>), **Export Web Font…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>) or, in Pro mode, **Export Profiles…** to export several sets of formats at once. Read [Export](/production/export/).

See also: [Font format](/reference/glossary/#font-format), [Font file](/reference/glossary/#font-file).

### Extreme point

An **extreme point** is a [point](/reference/glossary/#point) placed where a curve reaches its highest, lowest, leftmost or rightmost position, where it runs exactly horizontal or vertical. Think of the top of a hill: the extreme point sits right on the summit, not halfway up the slope. Putting points there is a long-standing rule of good drawing: it makes outlines easier to edit, helps [hinting](/reference/glossary/#hinting) and rendering, and keeps the font's measured size exact. In FontEasy, the **Validation** panel reports **Missing extreme point**, and Pro mode has **Glyph › Contours › Add Extreme Points**. The SVG import can add them too. See [Outlines](/drawing/outlines/) and [Problems](/drawing/problems/).

## F

### Family

A **family** is a group of related fonts that share a name and a design, such as Regular, Italic, Bold and Bold Italic of the same typeface. Think of siblings: different personalities, same family name. Apps group the members under one name in their font menu, and the **B** and **I** buttons in a word processor jump between them when the styles are linked correctly. In FontEasy, the family name and the [style](/reference/glossary/#style) name are set in **Font › Font Info…** under **Names**. Keep the family name under 31 characters, because Windows cuts longer names in some menus. **Font › Check Font…** checks these names. See [Font info](/production/font-info/).

See also: [Typeface](/reference/glossary/#typeface), [Font](/reference/glossary/#font).

### Feature code

**Feature code** is the short programming-like text that describes a font's [OpenType features](/reference/glossary/#opentype-feature): which glyph replaces which, and which pairs move. It is written in a language called AFDKO feature syntax and stored in the file `features.fea` inside the [UFO](/reference/glossary/#ufo). It looks like this: `sub f i by f_i;`. You rarely need to write it yourself, because FontEasy writes most of it automatically from your glyph names. In FontEasy, open **Features › Features** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>) and choose the **Code** view to read or edit it. Errors are listed with their line numbers. See [Features](/opentype/features/).

See also: [Lookup](/reference/glossary/#lookup), [GSUB](/reference/glossary/#gsub).

### Font

A **font** is one specific style of a [typeface](/reference/glossary/#typeface), delivered as a file that a computer can use to show text: for example "Nusantara Sans Bold". In everyday speech "font" and "typeface" are used for the same thing, and that is fine. Strictly, the typeface is the design, and the font is one concrete member of it, like the difference between a song and one particular recording of it. A font contains the [glyphs](/reference/glossary/#glyph), their [metrics](/reference/glossary/#metrics), [kerning](/reference/glossary/#kerning), [features](/reference/glossary/#opentype-feature) and names. In FontEasy, **File › New Font…** (<kbd>Ctrl</kbd>+<kbd>N</kbd>) starts one. See [Welcome](/start/welcome/) and [Type basics](/start/type-basics/).

See also: [Font file](/reference/glossary/#font-file), [Family](/reference/glossary/#family).

### Font file

A **font file** is the finished file you install on a computer or put on a website so that apps can use your [font](/reference/glossary/#font): typically a `.ttf`, `.otf`, `.woff` or `.woff2`. It is a packed, read-only result, like a printed book compared with the manuscript. Your editable work lives in a different kind of file, the [UFO](/reference/glossary/#ufo) source, which you open and save in FontEasy. You create font files with **File › Export › Export Font…**. To try a font without exporting by hand, use **File › Test Font in Browser** (<kbd>F5</kbd>) or **File › Install Font for Testing** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>). See [Export](/production/export/) and [Testing and publishing](/production/testing-publishing/).

See also: [Font format](/reference/glossary/#font-format).

### Font format

A **font format** is the kind of [font file](/reference/glossary/#font-file), which decides where it can be used. [TTF](/reference/glossary/#ttf) and [OTF](/reference/glossary/#otf) are for installing on computers; [WOFF](/reference/glossary/#woff) and WOFF2 are compressed versions for websites. All of them are [OpenType](/reference/glossary/#opentype) fonts inside, a bit like the same photo saved as JPEG or PNG. Source formats, such as [UFO](/reference/glossary/#ufo), designspace and Glyphs files, are for editing, not for using in apps. In FontEasy, tick the formats you need under **Formats** in **File › Export › Export Font…**, which describes each one (desktop, print, web). If unsure, TrueType works in every app. See [Export](/production/export/).

See also: [CFF](/reference/glossary/#cff), [TrueType](/reference/glossary/#truetype).

### Font license

A **font license** is the legal text that says what other people may do with your font: install it, use it in logos, embed it in apps, change it, sell it. A font is software, so it is licensed rather than simply sold, like a music track that you may listen to but not resell. Many free fonts use the SIL Open Font License (OFL); commercial fonts have their own terms. In FontEasy, write the license and its web address in **Font › Font Info…** under **Legal and credits** (**License**, **License URL**). **Font › Check Font…** warns if there is no license text or URL. FontEasy's own license covers the app, not your font. See [Font info](/production/font-info/).

## G

### Glyph

A **glyph** is one drawn shape in a font: the actual picture that appears for a letter, figure, symbol or space. If a [character](/reference/glossary/#character) is the idea of "a", the glyph is one particular drawing of it. A font can hold several glyphs for one character, such as a normal `a`, a small capital `a.sc` and an [alternate](/reference/glossary/#alternate) `a.ss01`, and one glyph can stand for several characters, as a [ligature](/reference/glossary/#ligature) does. Each glyph has a [glyph name](/reference/glossary/#glyph-name), an outline and an [advance width](/reference/glossary/#advance-width). In FontEasy, every box in the Overview is a glyph: double-click one to draw it. See [Type basics](/start/type-basics/).

See also: [Glyph set](/reference/glossary/#glyph-set).

### Glyph name

A **glyph name** is the short internal name of a [glyph](/reference/glossary/#glyph), such as `a`, `A`, `eacute`, `one` or `f_i`. Users never see it, but the font and FontEasy use it to find glyphs, like the label on a drawer in a workshop. Names follow simple rules: only `A–Z`, `a–z`, `0–9`, `_` and `.`, not starting with a digit or period, under 64 characters. Suffixes carry meaning: `a.sc` is a small capital, `f_i` a ligature, `a.ss01` a stylistic set member, and FontEasy builds [features](/reference/glossary/#opentype-feature) from them. Rename a glyph with **Glyph › Rename Glyph…** (<kbd>F2</kbd>); Pro mode adds **Font › Update Glyph Names**. See [Glyph sets](/drawing/glyph-set/) and [Features](/opentype/features/).

### Glyph set

A **glyph set** is a ready-made list of glyphs needed for a purpose, such as **Basic Latin (ASCII)**, **Latin-1 Supplement** or **Latin Extended-A**. Instead of adding letters one by one, you add the whole set at once, like buying a starter kit rather than single pieces. It is the practical side of your [character set](/reference/glossary/#character-set). In FontEasy, **Font › Add Glyphs…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>G</kbd>) has a list of sets under **Or add a whole glyph set:**. The Overview's sidebar has a **GLYPH SETS** section that filters the grid to one set and offers **Add {n} missing**. See [Glyph sets](/drawing/glyph-set/).

See also: [Unicode](/reference/glossary/#unicode).

### GPOS

**GPOS** (glyph positioning) is the table inside an [OpenType](/reference/glossary/#opentype) font that moves glyphs from their normal place. It holds the [kerning](/reference/glossary/#kerning), puts accents on letters through [mark](/reference/glossary/#mark) positioning, and joins cursive letters. Think of it as the stage director who tells each actor to step a little to the left or right; it never changes who is on stage, only where they stand (that is the job of [GSUB](/reference/glossary/#gsub)). You rarely touch GPOS directly: FontEasy builds it when the font is compiled, from your kerning and anchors. In **Features › Features**, the **Lookups** and **Inspector** views let you see positioning [lookups](/reference/glossary/#lookup). See [Lookups](/opentype/lookups/).

### GSUB

**GSUB** (glyph substitution) is the table inside an [OpenType](/reference/glossary/#opentype) font that swaps glyphs for other glyphs. It is how `f` + `i` becomes the `fi` [ligature](/reference/glossary/#ligature), how `a` becomes a small capital, and how a stylistic set changes letters. Think of a stage manager replacing one actor with an understudy; the [GPOS](/reference/glossary/#gpos) table, by contrast, only moves actors around. GSUB is built from your [feature code](/reference/glossary/#feature-code), much of which FontEasy writes automatically from [glyph names](/reference/glossary/#glyph-name). In **Features › Features**, the **Lookups** view shows substitution [lookups](/reference/glossary/#lookup) such as **Single Substitution** and **Ligature Substitution**. See [Lookups](/opentype/lookups/).

### Guide

A **guide** is a helper line in the glyph editor that you place yourself to line things up, such as the height of a crossbar or the thickness of a stem. Guides are not part of the letter and never appear in the exported font, like pencil lines on a drawing that you erase afterwards. Points snap to guides when you drag them close, which makes it easy to keep the bars of `E`, `F` and `H` at the same height. In FontEasy, drag from the ruler at the top of the editor to make a horizontal guide, or from the ruler on the left for a vertical one. The metric lines work in a similar way. See [The glyph editor](/drawing/glyph-editor/).

## H

### Handle

A **handle** is the line ending in an [off-curve point](/reference/glossary/#off-curve-point) that sticks out from a point on a curve. Dragging it changes how the curve bends, like pulling on a bow to change its shape, while the curve itself never touches the handle's end. Longer handles make fuller, rounder curves; shorter ones make tighter bends. On a [smooth point](/reference/glossary/#smooth-point) the two handles stay in a straight line, so the curve flows; on a [corner point](/reference/glossary/#corner-point) they can point anywhere. In FontEasy, select and drag handles with the **Node** tool (<kbd>A</kbd>); they appear as thin lines with small round dots. See [Outlines](/drawing/outlines/).

See also: [Bezier curve](/reference/glossary/#bezier-curve).

### Hinting

**Hinting** is extra information in a font that helps screens draw small text sharply. At small sizes a letter covers only a few pixels, and without help the stems can come out blurry or uneven, like trying to draw a circle on a very coarse grid. Hints tell the rasterizer how to snap the outlines to the pixel grid. Modern screens with high resolution need it less, but Windows still benefits. FontEasy hints [TrueType](/reference/glossary/#truetype) fonts automatically with ttfautohint: tick **Hint TrueType outlines (ttfautohint)** in **File › Export › Export Font…**. Hints make the file bigger, and `.otf` files are not hinted. See [Export](/production/export/).

See also: [Extreme point](/reference/glossary/#extreme-point).

### Hobby curve

A **Hobby curve** is a smooth curve that passes through the points you click, with the [handles](/reference/glossary/#handle) worked out automatically. It is named after John Hobby, who invented the method for the MetaPost drawing language. Instead of adjusting handles yourself, you place only the [on-curve points](/reference/glossary/#on-curve-point), like pushing pins into a board and letting a flexible strip find the nicest curve through them. It is a quick way to get pleasant, even curves. In FontEasy, turn on **Hobby curves** in the **Pen** tool's options bar, use **Hobby Curves** in the **Drawing** panel, or (in Pro mode) **Glyph › Contours › Hobby Curves**. See [Drawing tools](/drawing/drawing-tools/).

## I

### Ink trap

An **ink trap** is a small notch cut into a letter where strokes meet at a sharp inner corner. In print, ink spreads into such corners and fills them, making the letter look clotted; the notch gives the ink somewhere to go, so the corner looks clean at the final size. It is like the gap left between paving stones so they have room to expand in the heat. Ink traps are also used as a visible style detail in modern display fonts. In FontEasy, select corner nodes, open the **Drawing** panel and press **Ink Trap** under **Corners**; **Depth** sets how deep it cuts. See [Drawing effects](/advanced/drawing-effects/).

See also: [Display font](/reference/glossary/#display-font).

### Instance

An **instance** is a named style that is calculated from the [masters](/reference/glossary/#master) of a family, such as "SemiBold" between a Light and a Bold master. You do not draw instances; they are produced by [interpolation](/reference/glossary/#interpolation), like mixing two paints to get a shade in between. In a [variable font](/reference/glossary/#variable-font), instances appear as named styles in font menus. They can also be exported as ordinary static fonts for apps that cannot use variable fonts. In FontEasy, define them in **Font › Instances…** (Pro mode), where **Usual Instances** fills in Thin to Black, and export them with **File › Export › Static Instances…**. See [Variable fonts](/advanced/variable/).

See also: [Designspace](/reference/glossary/#designspace).

### Interpolation

**Interpolation** is calculating an in-between shape from two or more drawings. If a Light `n` and a Bold `n` have exactly the same points in the same order, the computer can produce a `n` at any weight between them by moving each point part of the way. It is like a morphing animation between two faces. Interpolation is the engine behind [variable fonts](/reference/glossary/#variable-font) and [instances](/reference/glossary/#instance). It only works when the drawings are compatible: same [contours](/reference/glossary/#contour), same points, same order. In FontEasy, the **Variations** panel shows whether a glyph interpolates, and **Font › Make Compatible** fixes contour order, direction and start points. See [Variable fonts](/advanced/variable/).

See also: [Master](/reference/glossary/#master).

### Italic

An **italic** is a slanted companion style of a typeface, often with letters drawn differently, closer to handwriting: a single-storey `a`, a `f` with a tail, curvier joins. It is used for emphasis, titles and foreign words. A true italic is redrawn; an [oblique](/reference/glossary/#oblique) is just the upright letters tilted. Think of the difference between writing quickly by hand and leaning a printed word sideways. In FontEasy, the **Italic angle** in **Font › Font Info…** (**Dimensions**) records the slant, with a negative number for letters leaning right. **Font › Make Variable…** can add an italic as a second master. See [Variable fonts](/advanced/variable/) and [Font info](/production/font-info/).

See also: [Style](/reference/glossary/#style), [Family](/reference/glossary/#family).

## K

### Kerning

**Kerning** is a correction to the space between two specific letters, used where normal [spacing](/reference/glossary/#spacing) does not look right. In `AV`, for example, the slanted sides leave a big gap, so the `V` is moved closer to the `A`. It is like nudging two cut-out paper letters together by hand until the gap looks even. Kerning values are counted in font units: negative brings letters closer, positive pushes them apart. Space first, kern second. In FontEasy, use the **Kerning** tool (<kbd>J</kbd>) and drag a glyph against the one before it, or open **Kerning › Kerning Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>). Read [Kerning](/spacing/kerning/).

![The letters A and V without kerning leave a big gap; with kerning of minus 80 units the boxes overlap and the gap looks even.](diagram:glossary-kerning)

See also: [Kerning pair](/reference/glossary/#kerning-pair), [Kerning group](/reference/glossary/#kerning-group), [Auto-kerning](/reference/glossary/#auto-kerning).

### Kerning group

A **kerning group** (also called a kerning class) is a set of glyphs that share the same kerning, because their sides look alike. `A`, `À`, `Á` and `Ä` all have the same right side, so you kern the group `@A` against `V` once and every member follows. It is like a school class going on an outing together: you buy one group ticket instead of a ticket per child. Groups are separate for the left and right side of a glyph. In FontEasy, edit them in **Kerning › Kerning Groups…**, and let **Kerning › Auto Groups from Composites** put accented letters in their base letter's groups. See [Kerning](/spacing/kerning/).

See also: [Kerning pair](/reference/glossary/#kerning-pair).

### Kerning pair

A **kerning pair** is one entry in the font's kerning list: a left glyph (or [group](/reference/glossary/#kerning-group)), a right glyph (or group), and a number saying how much to move them together or apart. `A V −80` is a kerning pair. Think of a list of seating rules at a dinner: "these two sit a little closer". A pair between two single glyphs that overrides a group value is called an exception. In FontEasy, the **Kerning** panel lists every pair and lets you filter them; with the **Kerning** tool, hold <kbd>Alt</kbd> while dragging to make an exception. **Kerning › Kerning Audit** (Pro mode) finds pairs that do nothing or collide. See [Kerning](/spacing/kerning/).

See also: [Kerning](/reference/glossary/#kerning).

## L

### Language system

A **language system** is a pairing of a [script](/reference/glossary/#script) and a language that a font's features are written for, such as Latin script with Turkish language. Declaring it lets the font behave differently per language, for example using a special `i` in Turkish or other letter shapes in Romanian. It is like a restaurant offering the same dishes, with small changes for local tastes. In the feature code it appears as lines like `languagesystem latn TRK;`. In FontEasy, the **Language Systems** block is written automatically with your features. To test language-specific forms, pick a language in the **Preview** panel's language menu (**Default language**). See [Features](/opentype/features/).

### Layer

A **layer** is one of several stacked drawings that belong to the same glyph, like transparent sheets laid on top of each other. In FontEasy every glyph has a **Foreground**, which is the real letter, and a **Background**, which is for reference sketches and never exported. **Glyph › Copy to Background** copies the outline there before you try a change. Variable fonts add [brace layers](/reference/glossary/#brace-layer) and [bracket layers](/reference/glossary/#bracket-layer), and [color fonts](/reference/glossary/#color-font) use color layers, each in a different color. Find them in the **Layers** panel (**Window › Panels › Layers**), and show the background with **View › Show Background Layer**. See [The glyph editor](/drawing/glyph-editor/).

### Leading

**Leading** (pronounced "ledding") is the distance from one line of text to the next. The name comes from the strips of lead that printers put between lines of metal type. More leading makes text airy and easy to follow; too little makes lines crowd and descenders touch ascenders. Leading is mostly chosen by the person setting the text, in their app's line spacing setting. The font only suggests a default through its [vertical metrics](/reference/glossary/#vertical-metrics) and [line gap](/reference/glossary/#line-gap). In FontEasy you set those values in **Font › Font Info…**, and **Font › Check Font…** checks that the line spacing is the same on Windows and macOS. See [Font info](/production/font-info/).

### Ligature

A **ligature** is a single glyph that replaces two or more letters which would otherwise clash or look awkward together, such as `fi`, `fl` or `ffi`. In many typefaces the hook of the `f` bumps into the dot of the `i`; the ligature redraws the pair as one shape. Think of two people holding hands so their elbows stop bumping. Standard ligatures fix collisions and switch on by default; discretionary ligatures, like `ct`, are decorative and optional. In FontEasy, name a glyph after its parts, such as `f_i`, and FontEasy builds the ligature feature automatically (the parts must exist). Names like `c_t.dlig` make discretionary ones. See [Features](/opentype/features/).

![On the left, f and i as two glyphs, where the hook of the f crowds the dot of the i; on the right, the fi ligature drawn as one glyph.](diagram:glossary-ligature)

### Line gap

The **line gap** is an extra amount of space that a font asks apps to add between lines of text, on top of the [ascender](/reference/glossary/#ascender) and [descender](/reference/glossary/#descender). Think of it as a spacer between shelves. The catch is that only some apps use it, so the same font can have different line spacing in different programs. That is why most fonts use a line gap of 0 and build the desired space into the ascender and descender values instead. In FontEasy, the fields **Typo line gap** and **hhea line gap** are in **Font › Font Info…** under **OpenType (empty = automatic)**. **Font › Check Font…** notes a non-zero line gap. See [Font info](/production/font-info/).

See also: [Leading](/reference/glossary/#leading), [Vertical metrics](/reference/glossary/#vertical-metrics).

### Lookup

A **lookup** is a list of rules inside the font's [OpenType](/reference/glossary/#opentype) features, such as "replace `f i` with `f_i`" or "move `V` 80 units left after `A`". [Features](/reference/glossary/#opentype-feature) run lookups in order, like a recipe that calls a series of steps. Substitution lookups live in [GSUB](/reference/glossary/#gsub) and positioning lookups in [GPOS](/reference/glossary/#gpos). Each lookup has a type, such as **Single Substitution**, **Ligature Substitution** or **Pair Adjustment**. In FontEasy, **Features › Features** has a **Lookups** view where you build lookups from rules without writing code, and an **Inspector** view that shapes a text one lookup at a time. See [Lookups](/opentype/lookups/).

See also: [Feature code](/reference/glossary/#feature-code), [Shaping](/reference/glossary/#shaping).

## M

### Mark

A **mark** is a glyph designed to attach to another glyph instead of standing on its own, such as a combining accent (`acutecomb`, `dieresiscomb`) or a vowel sign in many scripts. Marks usually have zero [advance width](/reference/glossary/#advance-width), so they do not push the next letter away, a bit like a hat that sits on a head without taking up a chair. Through [anchors](/reference/glossary/#anchor), the font's mark positioning places them exactly over or under each letter. FontEasy builds the **Mark Positioning** and **Mark to Mark Positioning** features automatically from your anchors. Do not confuse marks with **Glyph › Mark Color**, which only colors a glyph's box in the Overview. See [Components](/drawing/components/).

See also: [Diacritic](/reference/glossary/#diacritic).

### Master

A **master** is one complete, hand-drawn version of a font that serves as an end point (or corner) for [interpolation](/reference/glossary/#interpolation), such as a Light master and a Bold master. Every style in between is calculated from the masters, like the two end colors of a gradient. All masters must contain the same glyphs with compatible outlines: the same contours and points, only in different positions. In FontEasy, manage them in **Font › Masters & Axes…** (Pro mode) or create the second one with **Font › Make Variable…**. Switch masters with **Font › Next Master** (<kbd>Ctrl</kbd>+<kbd>]</kbd>) and **Previous Master** (<kbd>Ctrl</kbd>+<kbd>[</kbd>). See [Variable fonts](/advanced/variable/).

See also: [Designspace](/reference/glossary/#designspace), [Axis](/reference/glossary/#axis).

### Metrics

**Metrics** are the measurements that control how glyphs sit and fit together in text. Horizontal metrics are each glyph's [advance width](/reference/glossary/#advance-width) and [sidebearings](/reference/glossary/#sidebearing); vertical metrics are the font-wide heights such as [baseline](/reference/glossary/#baseline), [x-height](/reference/glossary/#x-height), [cap height](/reference/glossary/#cap-height), [ascender](/reference/glossary/#ascender) and [descender](/reference/glossary/#descender). Think of them as the measurements of a bookshelf: the size of each slot and the height of each shelf. FontEasy has a whole **Metrics** menu: **Metrics Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>), **Auto-Spacing…** and **Update Metrics**, plus the **Metrics** tool (<kbd>Y</kbd>) in the editor. See [Metrics](/spacing/metrics/).

See also: [Vertical metrics](/reference/glossary/#vertical-metrics), [Spacing](/reference/glossary/#spacing).

### Metrics key

A **metrics key** is a small formula that links a glyph's width or [sidebearing](/reference/glossary/#sidebearing) to another glyph, so you never have to copy numbers by hand. For example, giving `m` the left sidebearing `=n` makes it always match `n`, while `=|H+10` in a left sidebearing takes the right sidebearing of `H` plus 10 units. It is like a spreadsheet cell that says "same as cell B2". When the source glyph changes, the linked one follows. In FontEasy, type a key starting with `=` in the **Width**, **LSB** or **RSB** field of the options bar (with nothing selected), then use **Metrics › Update Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>U</kbd>) to apply keys everywhere. See [Metrics](/spacing/metrics/).

### Monoline

A **monoline** design uses strokes of one constant thickness everywhere, like letters written with a ballpoint pen, a neon tube or a plotter. There is no [contrast](/reference/glossary/#contrast) between thick and thin parts. Monoline lettering looks friendly, technical or retro, and is common in signage, engraving and single-line fonts for machines. Drawing it by hand is tedious, because both edges of every stroke must stay parallel. In FontEasy you can draw only the centre lines and let the **Drawing** panel's **Stroke** with a **Round pen** give them an even thickness; **Use for All Glyphs** applies it to the whole font. See [Drawing effects](/advanced/drawing-effects/).

See also: [Stroke](/reference/glossary/#stroke), [Nib](/reference/glossary/#nib).

### Monospaced

A **monospaced** font gives every glyph exactly the same [advance width](/reference/glossary/#advance-width), so `i` takes as much room as `m`, like the letters of an old typewriter. Columns of text line up perfectly, which is why programmers use monospaced fonts for code and why they suit tables and terminals. The narrow letters get wider sidebearings or extra serifs, and the wide ones are squeezed. Most fonts are proportional instead, with widths that follow each letter's shape. Even proportional fonts often include monospaced figures, called [tabular figures](/reference/glossary/#tabular-figures). In FontEasy, give glyphs equal widths in the **Width** field, or link them with [metrics keys](/reference/glossary/#metrics-key). See [Metrics](/spacing/metrics/).

## N

### Nib

The **nib** is the tip of a pen that touches the paper. A round nib makes strokes of even thickness; a flat (broad) nib makes thick strokes when it moves one way and thin strokes when it moves sideways, which is where the [contrast](/reference/glossary/#contrast) in classic letters comes from. Calligraphers hold a flat nib at a fixed angle, such as 30 degrees. In FontEasy, the **Drawing** panel's **Stroke** section lets you choose **Round pen** or **Flat nib**, and with a flat nib set the **Nib angle** and the **Thin stroke**. Your [paths](/reference/glossary/#path) then become outlines as if written with that pen. See [Drawing effects](/advanced/drawing-effects/).

See also: [Stroke](/reference/glossary/#stroke), [Monoline](/reference/glossary/#monoline).

### Node

A **node** is another word for an [on-curve point](/reference/glossary/#on-curve-point): a point that the outline actually passes through, where one segment ends and the next begins. Think of the knots on a string of beads: the string runs through each knot. Nodes are either [corner points](/reference/glossary/#corner-point) or [smooth points](/reference/glossary/#smooth-point), and curved segments have [handles](/reference/glossary/#handle) attached to them. FontEasy's **Node** tool (<kbd>A</kbd>) is named after them: it selects and edits individual points and handles. Other tools work on nodes too, such as **Add Point** (<kbd>=</kbd>) and **Delete Point** (<kbd>-</kbd>). See [Drawing tools](/drawing/drawing-tools/) and [Outlines](/drawing/outlines/).

See also: [Point](/reference/glossary/#point).

## O

### Oblique

An **oblique** is a slanted version of the upright letters, made by tilting them without redrawing their shapes. A true [italic](/reference/glossary/#italic), in contrast, changes the letterforms, for example giving `a` a single storey. Obliques are common in [sans serif](/reference/glossary/#sans-serif) families, where the shapes already look fine when leaned. Think of leaning a bookshelf: the books are the same, only tilted. A simple slant can look a little wrong (curves get distorted), so designers often correct it by hand afterwards. In FontEasy, **Tools › Transform Glyphs…** with **Slant** makes an oblique and sets the font's italic angle when you slant every glyph. See [Automation](/advanced/automation/).

See also: [Style](/reference/glossary/#style).

### Off-curve point

An **off-curve point** is a point that controls the shape of a curve without lying on it: the end of a [handle](/reference/glossary/#handle). The curve is pulled toward it, like a kite pulled toward the wind but never reaching it. In a [cubic curve](/reference/glossary/#cubic-curve) each curved segment has two off-curve points; in a [quadratic curve](/reference/glossary/#quadratic-curve) it can have one or more. Their opposite is the [on-curve point](/reference/glossary/#on-curve-point). In the FontEasy editor, off-curve points are drawn as small round dots at the end of thin handle lines; drag them with the **Node** tool (<kbd>A</kbd>). See [Outlines](/drawing/outlines/).

See also: [Point](/reference/glossary/#point).

### On-curve point

An **on-curve point** is a point that the outline passes through, at the end of each line or curve segment. It is also called a [node](/reference/glossary/#node). Picture fence posts: the fence (the outline) runs through every post, while the [off-curve points](/reference/glossary/#off-curve-point) are like ropes pulling the fence into a curve between them. On-curve points are either [corner points](/reference/glossary/#corner-point) or [smooth points](/reference/glossary/#smooth-point). Good outlines use as few on-curve points as possible, placed at the [extremes](/reference/glossary/#extreme-point) of curves. In FontEasy, corner points appear as squares and smooth points as circles. **Glyph › Contours › Simplify** removes unnecessary points. See [Outlines](/drawing/outlines/).

### Open contour

An **open contour** is a [contour](/reference/glossary/#contour) whose ends do not meet, like a piece of string instead of a rubber band. Fonts can only fill closed shapes, so an open contour in a normal glyph shows up as nothing at all, or as a broken letter, in the exported font. Open contours often happen by accident, for example when you stop drawing with the **Pen** tool before clicking the first point again. They are intentional when you draw centre lines for a [stroke](/reference/glossary/#stroke) or with the pencil on the **Sketchboard**. In FontEasy, the **Validation** panel reports **Open contour**, and **Fix** closes it with a straight line. See [Problems](/drawing/problems/).

See also: [Path](/reference/glossary/#path).

### OpenType

**OpenType** is the modern standard for font files, created by Microsoft and Adobe and used on every current computer, phone and browser. An OpenType font holds the outlines (as [TrueType](/reference/glossary/#truetype) or [CFF](/reference/glossary/#cff)), the [metrics](/reference/glossary/#metrics), names and, importantly, smart typographic features such as [ligatures](/reference/glossary/#ligature), [small caps](/reference/glossary/#small-caps), [kerning](/reference/glossary/#kerning) and language-specific forms. Think of it as a shipping container standard: whatever is inside, every port knows how to handle it. Both `.ttf` and `.otf` files are OpenType fonts, and so are web fonts. Everything FontEasy exports is OpenType. See [Export](/production/export/) and [Features](/opentype/features/).

See also: [OpenType feature](/reference/glossary/#opentype-feature), [GSUB](/reference/glossary/#gsub), [GPOS](/reference/glossary/#gpos).

### OpenType feature

An **OpenType feature** is a named typographic behavior that apps can switch on or off, identified by a four-letter tag: `liga` for standard ligatures, `smcp` for small caps, `kern` for kerning, `ss01` for stylistic set 1, `tnum` for tabular figures. It is like the settings on a camera: the same lens, different modes. Some features are on by default, others wait for the user. Each feature runs one or more [lookups](/reference/glossary/#lookup). FontEasy makes most features automatically from your [glyph names](/reference/glossary/#glyph-name); see them in **Features › Features** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>), refresh them with **Features › Update Automatic Features**, and test them with the toggles in the **Preview** panel. See [Features](/opentype/features/).

See also: [Feature code](/reference/glossary/#feature-code).

### OpenType-SVG

**OpenType-SVG** is a way of storing [color font](/reference/glossary/#color-font) glyphs as small SVG pictures inside the font file, in a table called `SVG`. SVG is the same vector picture format used on the web and exported by drawing apps. Some apps support OpenType-SVG color fonts but not the [COLR and CPAL](/reference/glossary/#colr-and-cpal) method, and others the other way round, so adding both is like printing a sign in two languages to reach more readers. In FontEasy, when your font has color glyphs, the export dialog shows **Color font: also write an SVG table (for apps without COLR support)**; tick it to include the SVG version. See [Color fonts](/advanced/color/) and [Export](/production/export/).

### OTF

**OTF** is the file extension `.otf`, used for [OpenType](/reference/glossary/#opentype) fonts whose outlines are stored as [CFF](/reference/glossary/#cff) with [cubic curves](/reference/glossary/#cubic-curve). The name is short for "OpenType font", which is a little confusing, because `.ttf` files are OpenType fonts too. Think of OTF and TTF as two kinds of envelope for the same letter. OTF is often preferred for print and design work, while TTF has [hinting](/reference/glossary/#hinting) for crisp text on Windows screens. In FontEasy, choose **OpenType CFF (.otf) — desktop, print** in **File › Export › Export Font…**. FontEasy can also open `.otf` files with **File › Open…**. See [Export](/production/export/).

See also: [TTF](/reference/glossary/#ttf), [Font format](/reference/glossary/#font-format).

### Outline

An **outline** is the shape of a glyph described by its edges: all its [contours](/reference/glossary/#contour), made of curves and straight lines, which the computer fills in when it shows the letter. It is like the shape you cut from paper with scissors: you describe only the border, and the inside becomes solid. Because an outline is mathematical, it can be scaled to any size and stays smooth, unlike a [bitmap](/reference/glossary/#bitmap-font). Drawing good outlines is the core of type design. In FontEasy you draw outlines in the glyph editor with tools like the **Pen**, **Pencil**, **Rectangle** and **Ellipse**, and see them filled with **View › Show Fill**. See [Outlines](/drawing/outlines/).

See also: [Path](/reference/glossary/#path).

### Overlap

An **overlap** is where two [contours](/reference/glossary/#contour) of the same glyph lie partly on top of each other, for example the bar of a `t` drawn as a separate rectangle across the stem. While drawing, overlaps are handy: you can move parts around freely, like separate pieces of paper laid over each other. In a finished static font they can cause small rendering glitches, so they are usually merged with [remove overlap](/reference/glossary/#remove-overlap). [Variable fonts](/reference/glossary/#variable-font) keep them on purpose. In FontEasy, the **Validation** panel lists **Overlapping contours** as information, not as an error, and the export removes overlaps if you tick the option. See [Problems](/drawing/problems/).

### Overshoot

**Overshoot** is the small amount by which round and pointed letters, such as `O`, `o`, `S` and `A`, go past the [baseline](/reference/glossary/#baseline), [x-height](/reference/glossary/#x-height) or [cap height](/reference/glossary/#cap-height). A circle and a square of exactly the same height look different: the circle seems smaller, because it touches the line only at one point. Making round letters slightly bigger, usually by 1–2% of the height, fixes this optical illusion. It is like a painter making a wheel a touch larger so it looks right. Overshoot is drawn, not set: place the top and bottom points of round letters a few units past the metric lines in the FontEasy editor. See [Type basics](/start/type-basics/).

![H and O side by side: the O goes slightly above the cap height and below the baseline, shown enlarged six times.](diagram:glossary-overshoot)

## P

### Palette

A **palette** is the numbered list of colors that a [color font](/reference/glossary/#color-font) uses. Each color layer of a glyph picks its color by number from the palette, like a paint-by-numbers kit. Because layers refer to numbers, not to fixed colors, you can add more palettes: a dark-mode palette or a seasonal one gives the same drawings different colors, and apps can switch between them. All palettes must have the same number of colors. In FontEasy, edit palettes in **Font › Color Palettes…**: **Add Palette**, **Add Color**, or choose from **Ready-made palettes**. Each layer in the **Color** panel can also use the **Text color**. See [Color fonts](/advanced/color/).

See also: [COLR and CPAL](/reference/glossary/#colr-and-cpal).

### Path

A **path** is a line made of connected curve and line segments, defined by [points](/reference/glossary/#point). When a path closes on itself it is a [contour](/reference/glossary/#contour); when it does not, it is an [open contour](/reference/glossary/#open-contour). The word comes from drawing software, where "path" is the general name for any vector line, a bit like "road" covering both ring roads and dead ends. In fonts, paths are normally closed and filled. In FontEasy, open paths are useful with the **Drawing** panel's **Stroke**, which treats paths as centre lines and gives them the thickness of a pen. Pencil strokes on the **Sketchboard** are open paths too. See [Outlines](/drawing/outlines/) and [Drawing effects](/advanced/drawing-effects/).

### Point

A **point** is one of the dots that define an [outline](/reference/glossary/#outline). There are two families: [on-curve points](/reference/glossary/#on-curve-point) (also called [nodes](/reference/glossary/#node)) that the outline passes through, and [off-curve points](/reference/glossary/#off-curve-point) at the ends of [handles](/reference/glossary/#handle) that bend the curves. On-curve points are either [corner points](/reference/glossary/#corner-point) or [smooth points](/reference/glossary/#smooth-point). Think of a connect-the-dots puzzle where some dots are pulled by invisible strings. Point positions are whole numbers in font units. In FontEasy, edit points with the **Node** tool (<kbd>A</kbd>), add them with **Add Point** (<kbd>=</kbd>) and remove them with **Delete Point** (<kbd>-</kbd>). See [Outlines](/drawing/outlines/).

![The letter D with its points: squares are corner points, green circles are smooth points, and small hollow dots on thin lines are off-curve points with their handles.](diagram:glossary-points)

### PostScript name

The **PostScript name** is a technical, one-word name for each font, such as `NusantaraSans-Bold`. Apps and printers use it internally to identify a font exactly, and some, like design programs and PDF files, show or store it. Think of it as the ID number on a passport, while the [family](/reference/glossary/#family) and [style](/reference/glossary/#style) names are the name people call you. The rules are strict: printable ASCII only, no spaces or `()[]{}<>/%`, at most 63 characters. FontEasy builds it from the family and style names. You can set it yourself in **Font › Font Info…** under **OpenType (empty = automatic)** (**PostScript name**), which is wise if the family name has accented letters. See [Font info](/production/font-info/).

## Q

### Quadratic curve

A **quadratic curve** is a [Bézier curve](/reference/glossary/#bezier-curve) with only one [off-curve point](/reference/glossary/#off-curve-point) controlling each curved piece, instead of two as in a [cubic curve](/reference/glossary/#cubic-curve). Quadratic curves are simpler to calculate, and they are the curves of [TrueType](/reference/glossary/#truetype) (`.ttf`) fonts. Because each piece can bend only in one simple arc, a quadratic outline usually needs more points to describe the same shape, a bit like drawing a circle with more, shorter strokes. FontEasy draws in cubic curves and converts to quadratic automatically when you export a `.ttf`. Pro mode also has **Glyph › Contours › Convert to Quadratic** and **Convert to Cubic**. See [Outlines](/drawing/outlines/).

## R

### Remove overlap

**Remove overlap** merges the overlapping [contours](/reference/glossary/#contour) of a glyph into one clean outline, keeping the visible shape the same. Imagine two paper shapes laid over each other being cut out together as one piece. You usually do this before releasing a static font, because [overlaps](/reference/glossary/#overlap) can cause small rendering problems, such as darker spots in some apps. In FontEasy, use **Glyph › Contours › Remove Overlap** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>) on the selection or glyph. You do not have to do it by hand: the export option **Remove overlaps (your source keeps them)** merges them only in the exported file. Variable fonts keep overlaps. See [Problems](/drawing/problems/) and [Export](/production/export/).

## S

### Sans serif

A **sans serif** typeface has no [serifs](/reference/glossary/#serif), the small strokes at the ends of letters; "sans" is French for "without". Typical examples are the fonts on most phone screens, road signs and app interfaces. Sans serif letters tend to look clean, modern and simple, and they work well on screens and at large sizes. They can still vary a lot: geometric ones built from circles, humanist ones close to handwriting, and grotesques with a more industrial feel. In FontEasy there is no special setting for it: whether your font is sans serif depends only on how you draw the ends of the strokes. See [Type basics](/start/type-basics/).

See also: [Serif](/reference/glossary/#serif), [Typeface](/reference/glossary/#typeface).

### Script

A **script** is a writing system, such as Latin (used for English and Indonesian), Greek, Cyrillic, Arabic or Devanagari. One script can serve many languages: Latin is used for hundreds of them, each needing some extra letters or accents. Fonts declare which scripts they support, and features can behave differently per script, through the [language system](/reference/glossary/#language-system). In FontEasy, the Overview sidebar has a **SCRIPTS** section that filters glyphs by writing system. Note that FontEasy also uses "script" in its other meaning, a small Python program, in **Tools › Scripting** (Pro mode); see [Scripting](/power/scripting/). For writing systems, see [Glyph sets](/drawing/glyph-set/).

See also: [Unicode](/reference/glossary/#unicode).

### Serif

A **serif** is the small stroke or foot at the end of a letter's main strokes, like the little feet at the bottom of `n` or the flat ends at the top of `T`. A typeface with serifs is also called a serif typeface; Times New Roman and Source Serif are examples. Serifs came from carving letters in stone and writing with a pen, and they help guide the eye along a line of print. Serif fonts often feel classic, literary or formal. Serifs can be thin and sharp, heavy and square (slab serifs), or gently curved into the stem with a bracket. In FontEasy, serifs are part of the outline you draw. See [Type basics](/start/type-basics/).

![The letters R and n in a serif typeface, with the serifs circled, next to the same letters in a sans serif typeface without serifs.](diagram:glossary-serif-sans)

See also: [Sans serif](/reference/glossary/#sans-serif).

### Shaping

**Shaping** is the step where an app turns a string of [characters](/reference/glossary/#character) into the right [glyphs](/reference/glossary/#glyph) in the right positions, applying the font's [OpenType features](/reference/glossary/#opentype-feature). It swaps `f` + `i` for the ligature, picks small caps, places accents and applies kerning. Think of a translator who reads your words and decides how each should be spoken in context. For some scripts, such as Arabic or Devanagari, shaping is essential to get readable text at all. FontEasy's **Preview** panel shapes text with HarfRust (**Shaped with HarfRust**), and its **Glyphs** switch shows the resulting glyph names. **Features › Features › Inspector** shapes a text one [lookup](/reference/glossary/#lookup) at a time. See [Lookups](/opentype/lookups/).

### Sidebearing

A **sidebearing** is the empty space between a glyph's outline and the edge of its [advance width](/reference/glossary/#advance-width). Each glyph has two: the left sidebearing (LSB) and the right sidebearing (RSB). When two letters are typed next to each other, the RSB of the first plus the LSB of the second make the gap between them. Think of the margins on both sides of a page. Straight sides like those of `n` need more sidebearing than round sides like those of `o`, so the white space looks even. In FontEasy, drag sidebearings with the **Metrics** tool (<kbd>Y</kbd>), or type values in the **LSB** and **RSB** fields of the options bar. See [Metrics](/spacing/metrics/).

![The letters n and o inside their advance-width boxes: the shaded strips on each side are the left and right sidebearings.](diagram:glossary-sidebearing)

See also: [Spacing](/reference/glossary/#spacing), [Metrics key](/reference/glossary/#metrics-key).

### Small caps

**Small caps** (small capitals) are capital-shaped letters about the height of lowercase letters, drawn with the weight of lowercase so they blend into text. They are used for abbreviations like NASA or UNESCO in running text, for headings and for the first words of a chapter. They are not just shrunken capitals: shrinking makes strokes too thin, like a photo of a person printed smaller is not a child. In FontEasy, **Font › Make Small Caps…** creates them from your capitals as `a.sc`, `b.sc` and so on, and the **Small Capitals** features (`smcp`, `c2sc`) follow by themselves. You can also draw glyphs with the `.sc` suffix yourself. See [Features](/opentype/features/) and [Automation](/advanced/automation/).

### Smart component

A **smart component** is a [component](/reference/glossary/#component) that can stretch or change shape when you place it, instead of being a fixed copy. You give a part, such as a bar or a serif, its own axes (for example **Width** and **Height**) and draw its extreme versions; each glyph that uses it can then set its own values. It is like an adjustable wrench instead of a set of fixed spanners: one tool, many sizes. This keeps repeated parts consistent while fitting letters of different widths, for example the bars of `T`, `E` and `F`. In FontEasy, create them in the **Drawing** panel under **Smart Components**. See [Drawing effects](/advanced/drawing-effects/) and [Components](/drawing/components/).

### Smooth point

A **smooth point** is an [on-curve point](/reference/glossary/#on-curve-point) where the outline flows through without any corner, because the [handles](/reference/glossary/#handle) on both sides lie on one straight line. It is like a smooth bend in a road, where you never need to stop and turn. Smooth points make up the round parts of letters such as `o`, `s` and `e`. If the handles of a smooth point are not in line, the curve gets a small visible bump. In the FontEasy editor, smooth points are drawn as circles. Use **Glyph › Toggle Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>) to switch a point between smooth and corner. The **Validation** panel reports **Smooth point with a kink**. See [Outlines](/drawing/outlines/).

See also: [Corner point](/reference/glossary/#corner-point).

### Spacing

**Spacing** is setting the space on both sides of every glyph, its [sidebearings](/reference/glossary/#sidebearing), so that text has an even rhythm of black and white. Good spacing matters more than most beginners expect: well-drawn letters look clumsy if spaced badly, and plain letters look professional if spaced well. It is like arranging fence posts at regular intervals so the fence looks tidy. Spacing works for all pairs at once; [kerning](/reference/glossary/#kerning) only fixes the exceptions. In FontEasy, use the **Metrics** tool (<kbd>Y</kbd>), **Metrics › Metrics Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>), and **Metrics › Auto-Spacing…**, which measures from reference glyphs like `n` and `H`. See [Metrics](/spacing/metrics/).

See also: [Tracking](/reference/glossary/#tracking).

### Stem

A **stem** is a main vertical (or, in italics, slanted) stroke of a letter, like the upright of `l`, the two legs of `n` or the left side of `b`. Stems are the backbone of a typeface: their thickness largely decides how light or [bold](/reference/glossary/#bold) the font looks. Keeping stem widths the same across letters makes text look even, like the poles of a fence having the same thickness. Designers often measure one stem and reuse that number. In FontEasy, measure stems with the **Measure** tool (<kbd>U</kbd>). **Tools › Transform Glyphs…** with **Bolder / Lighter** changes stem thickness while keeping the points the same. See [Type basics](/start/type-basics/) and [Automation](/advanced/automation/).

See also: [Contrast](/reference/glossary/#contrast), [Weight](/reference/glossary/#weight).

### Stroke

A **stroke** has two meanings in type design. In everyday terms it is one movement of the pen or brush that forms part of a letter, such as the stem and the arch in `n`. In drawing software it is a line given a thickness, as opposed to a filled shape. FontEasy uses the second meaning in its **Drawing** panel: with **Draw the paths with a pen**, your [paths](/reference/glossary/#path) are treated as centre lines and get an outline of the pen's width, with a **Round pen** or **Flat nib**, chosen **Ends** and **Corners**. Press **Expand** to turn the stroke into normal outlines for good. See [Drawing effects](/advanced/drawing-effects/).

See also: [Nib](/reference/glossary/#nib), [Monoline](/reference/glossary/#monoline).

### Style

A **style** is one member of a font [family](/reference/glossary/#family), described by its style name: Regular, Italic, Bold, Light Condensed and so on. Each style is its own font (or a named [instance](/reference/glossary/#instance) in a variable font). Think of a clothing line where one design comes in several cuts and colors. The four basic styles, Regular, Italic, Bold and Bold Italic, are linked so that the **B** and **I** buttons in apps work. In FontEasy, set the style name in **Font › Font Info…** under **Names**; the **Weight class** in the **OpenType** section should match it, which **Font › Check Font…** checks. See [Font info](/production/font-info/).

See also: [Weight](/reference/glossary/#weight), [Italic](/reference/glossary/#italic).

### Stylistic set

A **stylistic set** is a group of [alternate](/reference/glossary/#alternate) designs that users can turn on together, such as a set of rounder letters or a set of alternative figures. A font can have up to 20, tagged `ss01` to `ss20`. It is like a costume change for a whole cast of characters at once. Designers use them to offer variety without separate fonts. In FontEasy, give glyphs a suffix such as `a.ss01` or `g.ss02`, and FontEasy builds the matching features automatically (they are listed as **Stylistic sets** in **Features › Features**). Test them with the feature toggles in the **Preview** panel. See [Features](/opentype/features/).

See also: [OpenType feature](/reference/glossary/#opentype-feature).

### Subsetting

**Subsetting** means making a smaller copy of a font that contains only some of its glyphs, for example only the Latin letters a website needs. Smaller files load faster, which matters a lot on the web. It is like packing only the clothes you need for a trip instead of your whole wardrobe. The risk is leaving out characters someone later types, which then show in a fallback font. In FontEasy, Pro mode's **File › Export › Export Profiles…** has a **Characters** choice per profile: **Every glyph**, **Latin (ASCII, Western European)** or **Latin + Latin Extended**. Your source font always keeps every glyph. See [Export](/production/export/).

See also: [Character set](/reference/glossary/#character-set), [WOFF](/reference/glossary/#woff).

## T

### Tabular figures

**Tabular figures** are numbers that all have exactly the same width, so they line up in columns, like the figures on a bank statement or a timetable. Normal (proportional) figures have widths that suit each digit, so a `1` is narrower than an `8`, which looks better in text but makes columns ragged. Tabular figures are a small [monospaced](/reference/glossary/#monospaced) family inside your font. Users switch to them with the `tnum` feature. In FontEasy, name the tabular versions with the suffix `.tf`, such as `one.tf` and `two.tf`, give them equal widths, and FontEasy builds the feature automatically. See [Features](/opentype/features/) and [Metrics](/spacing/metrics/).

See also: [OpenType feature](/reference/glossary/#opentype-feature).

### Terminal

A **terminal** is the end of a stroke that does not finish in a [serif](/reference/glossary/#serif), such as the top end of `c`, the tail of `a` or the end of `f`'s hook. Terminals can be ball-shaped (a little round drop), flat, angled, tapered or sliced. Like the tip of a brush stroke, the terminal shows how the "pen" left the paper, and it says a lot about a typeface's personality. A friendly font might have soft round terminals; a sharp modern font might cut them at an angle. You shape terminals by drawing them, and the **Drawing** panel's stroke **Ends** setting controls them for stroked paths. The picture under [Bowl](/reference/glossary/#bowl) circles the terminal of a `c`. See [Type basics](/start/type-basics/).

### Tracking

**Tracking** (also called letter-spacing) is adding or removing the same amount of space between all letters in a piece of text, for example to open up a line of capitals in a heading. Unlike [kerning](/reference/glossary/#kerning), which changes particular pairs, tracking changes everything evenly, like moving all the chairs in a row apart by the same distance. It is set by the person using the font, in their app or in CSS with `letter-spacing`, not stored in the font. Your job as designer is good default [spacing](/reference/glossary/#spacing), so users rarely need to track. In FontEasy, judge spacing in real text in the **Preview** panel and the **Metrics Window**. See [Metrics](/spacing/metrics/).

### TrueType

**TrueType** is a font technology developed by Apple and adopted by Microsoft, now one of the two outline flavors inside [OpenType](/reference/glossary/#opentype) fonts. TrueType outlines use [quadratic curves](/reference/glossary/#quadratic-curve) and support detailed [hinting](/reference/glossary/#hinting), which helps small text on Windows screens. The other flavor is [CFF](/reference/glossary/#cff). Files with TrueType outlines usually end in `.ttf`, and web fonts often contain TrueType too. It is the most widely supported choice, like a plug that fits every socket. In FontEasy, **TrueType (.ttf) — desktop** is an option in **File › Export › Export Font…**, and variable fonts are always exported as TrueType. See [Export](/production/export/).

See also: [TTF](/reference/glossary/#ttf).

### TTF

**TTF** is the file extension `.ttf`, used for fonts with [TrueType](/reference/glossary/#truetype) outlines. It stands for "TrueType font", and a modern `.ttf` file is a full [OpenType](/reference/glossary/#opentype) font with all its features. TTF files work on Windows, macOS, Linux, phones and in most apps, which makes them the safest choice if you are unsure. They can carry [hinting](/reference/glossary/#hinting) for sharp small text. In FontEasy, tick **TrueType (.ttf) — desktop** in **File › Export › Export Font…**, optionally with **Hint TrueType outlines (ttfautohint)**. **File › Open…** also opens existing `.ttf` files. See [Export](/production/export/).

See also: [OTF](/reference/glossary/#otf), [Font file](/reference/glossary/#font-file).

### Typeface

A **typeface** is the design of a set of letters: their shapes, proportions and style, independent of any file or size. "Source Serif" is a typeface; "Source Serif 4 Bold" in a `.ttf` file is a [font](/reference/glossary/#font) of it. Think of a recipe and the cakes baked from it: the typeface is the recipe, the fonts are the cakes. A typeface can have many styles, which together form a [family](/reference/glossary/#family). In everyday speech people say "font" for both, and this guide does too when the difference does not matter. With FontEasy you design a typeface and export it as one or more fonts. See [Welcome](/start/welcome/) and [Type basics](/start/type-basics/).

## U

### UFO

**UFO** (Unified Font Object) is an open source format for font projects, and FontEasy's own working format. A UFO is a folder, not a single file: inside, each glyph is a small text file, with separate files for kerning, groups, features and font info. It is like a ring binder where every page can be taken out and read, instead of a sealed book. Many font tools can read and write UFO, so your work is never locked into one program. In FontEasy, **File › Save** writes a UFO, **File › Open UFO Folder…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd>) opens one, and **File › Export** turns it into installable font files. See [Welcome](/start/welcome/) and [Export](/production/export/).

See also: [Designspace](/reference/glossary/#designspace).

### Unicode

**Unicode** is the worldwide standard that gives every [character](/reference/glossary/#character) of every writing system its own number, its [code point](/reference/glossary/#code-point). Thanks to Unicode, an `é` or an Arabic letter typed on one device appears as the same character on any other. Think of a world telephone directory where every character has a permanent number. Unicode also groups characters into blocks such as **Basic Latin (ASCII)** and **Latin Extended-A**. A font connects its glyphs to Unicode numbers through its character map. In FontEasy, sort the Overview with **Font › Sort Glyphs › By Unicode**, and find glyphs with no Unicode under **Unencoded**. See [Glyph sets](/drawing/glyph-set/).

See also: [Glyph set](/reference/glossary/#glyph-set).

### Units per em

**Units per em** (UPM) is the number of small steps the [em](/reference/glossary/#em) square is divided into: the grid on which every point and measurement of the font is placed. Common values are 1000 (usual for PostScript/CFF fonts) and 2048 (usual for TrueType). It is like choosing millimetre or centimetre graph paper: finer grids allow more precise positions. With 1000 UPM, a stem of 80 units is 8% of the font size. Pick it at the start, because changing it later rescales everything. In FontEasy, set it in the **New Font** dialog (Pro mode), as a default in **Edit › Preferences…**, or in **Font › Font Info…** under **Dimensions**. See [Type basics](/start/type-basics/).

## V

### Variable font

A **variable font** is a single font file that contains a whole range of styles, such as every weight from Thin to Black, which apps can pick with a slider. It works by [interpolation](/reference/glossary/#interpolation) between [masters](/reference/glossary/#master) along one or more [axes](/reference/glossary/#axis). Think of a dimmer switch instead of a row of separate light bulbs. One file replaces many and allows in-between styles like weight 450. In FontEasy, **Font › Make Variable…** guides you: you draw the two ends, and everything between comes for free. Pro mode adds **Font › Masters & Axes…**. FontEasy exports variable fonts as TrueType. See [Variable fonts](/advanced/variable/).

See also: [Instance](/reference/glossary/#instance), [Designspace](/reference/glossary/#designspace).

### Vertical metrics

**Vertical metrics** are the font-wide height values that tell apps how tall the font is and how far apart to put lines of text: the [ascender](/reference/glossary/#ascender), [descender](/reference/glossary/#descender), [line gap](/reference/glossary/#line-gap), and the Windows ascent and descent. They are stored more than once for historical reasons (typo, hhea and Windows values), which is why they confuse even experienced designers. If they are wrong, lines overlap, or tall letters and accents get cut off on Windows. In FontEasy, they live in **Font › Font Info…** under **Dimensions** and **OpenType (empty = automatic)**; leaving the latter empty lets FontEasy calculate them. **Font › Check Font…** checks them. See [Font info](/production/font-info/).

See also: [Leading](/reference/glossary/#leading), [Metrics](/reference/glossary/#metrics).

## W

### Waterfall

A **waterfall** is a type specimen that shows the same text at a series of growing sizes, one line under the other, like water spilling down steps. It lets you check at a glance how your letters behave from tiny text to headlines: small sizes reveal spacing and weight problems, large sizes reveal curve details. Professional type specimens almost always include one. In FontEasy, open the **Preview** panel (**Window › Panels › Preview**), type your sample text, and tick **Waterfall**: the text is shown at seven sizes, from 12 up to 96. The preview updates as you edit glyphs. See [Testing and publishing](/production/testing-publishing/).

### Weight

**Weight** is how thick or heavy the strokes of a typeface are, from Thin and Light through Regular and Medium to Bold and Black. Apps describe weight with a number called the weight class: 100 for Thin, 400 for Regular, 700 for Bold, 900 for Black. Think of the difference between pencil, pen and marker. In a [variable font](/reference/glossary/#variable-font), weight is usually the `wght` [axis](/reference/glossary/#axis). In FontEasy, set the **Weight class** in **Font › Font Info…** under **OpenType (empty = automatic)**, make a heavier or lighter version with **Tools › Transform Glyphs…** (**Bolder / Lighter**), or add a weight axis with **Font › Make Variable…**. See [Variable fonts](/advanced/variable/).

See also: [Bold](/reference/glossary/#bold), [Stem](/reference/glossary/#stem).

### Width

**Width** has two meanings in fonts. As a style, it is how narrow or wide the letters of a typeface are, from Condensed to Expanded, recorded as the width class and, in variable fonts, the `wdth` [axis](/reference/glossary/#axis). As a measurement of one glyph, it usually means the [advance width](/reference/glossary/#advance-width). Think of a clothes size versus the measurement of one sleeve. In FontEasy, the **Width** field in the glyph editor's options bar is the advance width. For the style, **Tools › Transform Glyphs…** offers **Narrower / Wider**, which keeps stem thickness, and **Font › Make Variable…** can add a width axis. See [Metrics](/spacing/metrics/) and [Variable fonts](/advanced/variable/).

### WOFF

**WOFF** (Web Open Font Format) is a compressed wrapper around an [OpenType](/reference/glossary/#opentype) font, made for websites. WOFF2 is the newer version with much better compression, supported by all current browsers; plain WOFF is only needed for very old browsers. It is the same font inside, just packed tighter, like a vacuum-packed duvet. Websites load it with a CSS `@font-face` rule. In FontEasy, use **File › Export › Export Web Font…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>) or tick **WOFF2 (.woff2) — web** and **WOFF (.woff) — older browsers** in the export dialog. **Also write a CSS file with @font-face rules** creates the CSS for you. See [Export](/production/export/).

See also: [Subsetting](/reference/glossary/#subsetting).

## X

### x-height

The **x-height** is the height of lowercase letters without ascenders or descenders, such as `x`, `a`, `n` and `o`, measured from the [baseline](/reference/glossary/#baseline). It is called that because the flat top and bottom of `x` show it clearly. The x-height strongly affects how big a font looks: two fonts at the same point size can look very different in size if one has a larger x-height. A large x-height reads well at small sizes; a small one looks elegant and classic. In FontEasy, set it in **Font › Font Info…** under **Dimensions** (**x-height**). The **New Font Wizard…** asks about it, and the editor shows it as a metric line. See [Type basics](/start/type-basics/).

See also: [Cap height](/reference/glossary/#cap-height), [Overshoot](/reference/glossary/#overshoot).
