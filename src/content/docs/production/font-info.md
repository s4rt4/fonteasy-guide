---
title: Font Info
description: Give your font its names, version, credits and vertical metrics, so apps list it correctly and lines of text never collide or get cut off.
---

Up to now you have been drawing letters. Before your font can leave FontEasy it also needs an identity: a name people find in the font menu, a style such as Regular or Bold, a version number, a line that says who made it and how it may be used. It also needs a few measurements that tell apps how tall a line of text is. All of this lives in one place, the **Font Info** dialog.

Think of Font Info as the label on a jar. The jam inside can be perfect, but without a clear label nobody knows what it is, who made it or when it was made. Apps such as Word, Illustrator and web browsers read this label to decide where your font appears in their menus, which styles belong together, and how much space to leave between lines.

Most fields can stay empty while you design. FontEasy fills in sensible values when you export. But a few of them are worth understanding before you release a font, because they cause the most common complaints: "my Bold doesn't show up next to my Regular", "the accents on capitals are cut off in Word", "the lines are too far apart on Mac".

In this chapter you will learn:

- how to open Font Info and what each group of fields is for;
- how family names and style names work, and how apps group Regular, Italic, Bold and Bold Italic;
- what the PostScript name, version number and credit fields are;
- what units per em means and why you rarely change it;
- how vertical metrics decide line height, and why text gets clipped or lines collide;
- how FontEasy works out the values you leave empty;
- how to set the weight class so apps sort your styles correctly.

## Opening Font Info

1. Open your font.
2. Choose **Font › Font Info…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>I</kbd>).
3. Change the fields you need. The dialog scrolls; there are four groups.
4. Click **OK** to apply your changes, or **Cancel** to leave everything as it was.

The whole edit is one step in the undo history, so <kbd>Ctrl</kbd>+<kbd>Z</kbd> brings all the old values back at once.

![The Font Info dialog for Mutator Sans: the Names and Dimensions groups at the top, the start of the OpenType group below.](screen:fontinfo)

In Simple mode, the first step of the **Font Journey** panel, **Name your font**, has a **Font Info…** button that opens the same dialog.

The four groups are:

| Group | What it holds |
|---|---|
| **Names** | Family name, style name, version |
| **Dimensions** | Units per em, ascender, descender, cap height, x-height, italic angle |
| **OpenType (empty = automatic)** | PostScript name, weight class and the three sets of line-spacing values |
| **Legal and credits** | Copyright, trademark, designer, manufacturer, license, vendor ID, description, note |

Fields that are empty are not an error. An empty field means "let FontEasy decide", and for most fonts that is exactly right.

:::note[Fonts with several masters]
If your font is a designspace with several [masters](/reference/glossary/#master) (see [Variable fonts](/advanced/variable/)), names, version, credits and the line-spacing values belong to the whole family: changing them changes every master. The style name, ascender, descender, cap height, x-height, italic angle, weight class and PostScript name belong to the master you are editing, so each master can have its own.
:::

## Names: family and style

Every font has two names that work together.

- The **family name** is the name of the whole [family](/reference/glossary/#family): "Nusantara Sans", "Source Serif 4". All the styles of one design share it.
- The **style name** says which member of the family this file is: "Regular", "Italic", "Bold", "Light", "SemiBold Condensed Italic".

A font file is one style. If you design a Regular and a Bold, you have two fonts (or one [variable font](/reference/glossary/#variable-font) with a weight axis), both with the family name "Nusantara Sans", one with the style name "Regular" and one with "Bold".

To name your font:

1. Open **Font › Font Info…**.
2. In **Family name**, type the name of the family, for example `Nusantara Sans`. Do not put the style in it.
3. In **Style name**, type the style, for example `Regular`.
4. Click **OK**.

When no glyph is selected, the **Glyph Info** panel now shows the new family and style.

### Good family names

- Keep the family name short and plain. Windows shows at most 31 characters of a family name in some menus, and Font Check warns when your name is longer.
- Use plain letters, digits and spaces. Accented letters (é, ñ) work in modern apps, but some older apps show them wrongly, so Font Check adds a note about them.
- Do not put the style in the family name ("Nusantara Sans Bold"). The style goes in the style name.
- Pick a name that is not already used by another font, and that nobody owns as a trademark. The chapter [Testing and publishing](/production/testing-publishing/) has more on choosing a name.

### How apps group your styles

Here is where many first fonts go wrong. Older desktop apps, Word on Windows among them, think of a family as at most four fonts: **Regular**, **Italic**, **Bold** and **Bold Italic**. Type designers call them the "RIBBI" styles. In those apps the four appear as one entry in the font menu, and the **B** and **I** buttons switch between them. This connection is called *style linking*.

Every other style, such as Light, Medium, SemiBold, Black or Condensed, cannot be reached with the B and I buttons. Windows lists each of them as a family of its own: "Nusantara Sans Light", "Nusantara Sans SemiBold".

![Regular, Italic, Bold and Bold Italic share one entry in Word's font menu; Light and SemiBold each get an entry of their own.](diagram:font-info-style-linking)

You do not need to set any of this yourself. When you export, FontEasy looks at your style name:

- If the style name is exactly `Regular`, `Italic`, `Bold` or `Bold Italic`, the font is linked into the family under the family name, as that style.
- If it is anything else, say `Light`, the family name for these older menus becomes "Family Style" ("Nusantara Sans Light") and the font is linked there as its Regular.

Newer apps (Adobe apps, macOS, the web) read a second, fuller set of names and show your whole family together, with every style listed. FontEasy writes both sets.

:::tip
For style linking to work, spell the four styles exactly as `Regular`, `Italic`, `Bold` and `Bold Italic`, with a space in "Bold Italic". "BoldItalic" or "Bold-Italic" is treated as an ordinary style of its own.
:::

If you opened a font made in another program, it may already contain its own style-linking values. When they disagree with the style name (a font called "Bold" that is linked as Regular, for example), **Font › Check Font…** reports a **Style linking** warning, and its **Fix** button sets the link to match the style name. See [Checking your font](/production/quality/).

### The italic angle

The **Italic angle** in the Dimensions group tells apps how much your letters lean. It is used to slant the text cursor and to position things that should follow the slope.

- Upright fonts: leave it empty or `0`.
- Italic or oblique fonts: a **negative** number of degrees for letters leaning to the right, for example `-12`.

The minus sign surprises people, but it is the rule: the angle is measured counter-clockwise from vertical, and a right-leaning letter goes clockwise. Font Check catches a positive angle as an error. It also measures the slant of the straight stems of `l`, `I`, `H` or `d`, and its **Fix** button can copy the measured angle into the field.

## The PostScript name

The [PostScript name](/reference/glossary/#postscript-name) is a short technical name, without spaces, that identifies one style of your font inside files and printers: `NusantaraSans-Bold`. PDF files store it, and design apps use it to find the font when you open a document again.

Rules for a PostScript name:

- printable ASCII characters only (no accented letters);
- no spaces and none of the characters `( ) [ ] { } < > / %`;
- at most 63 characters;
- usually written as `FamilyName-StyleName`, without spaces.

You will find the field in the **OpenType (empty = automatic)** group. **Leave it empty** unless you have a reason not to: FontEasy then builds it from the family and style names. If your family name contains characters a PostScript name cannot have (letters with accents, for example), they are dropped, and Font Check suggests you type a PostScript name yourself.

:::caution
Never give two different fonts the same PostScript name, and never change the PostScript name of a font that people already use. Apps use it to recognise a font. Two fonts with one name confuse them, and a changed name makes old documents lose the font.
:::

## Version

Every release of a font carries a version number such as `1.000`. Apps show it in font information windows, and installers use it to tell an old copy from a new one.

In FontEasy the version is two fields in the **Names** group:

- **Version (major)**: the number before the point. `1` for the first real release, `2` when you redraw the font or change it a lot.
- **Version (minor)**: the number after the point, written with three digits. `0` is `.000`, `1` is `.001`, `10` is `.010`, `100` is `.100`.

So major `1` and minor `2` is version 1.002. A new font made in FontEasy starts at 1.000.

A version that starts with 0 (`0.500`) is a common way to mark a test or "beta" version. Font Check adds a note to remind you to use 1.000 or higher for a real release. If the version fields are empty, the font is exported as 0.000 and Font Check warns about it; its **Fix** button sets 1.000.

Raise the version every time you publish a changed font. The chapter [Testing and publishing](/production/testing-publishing/#version-numbers-and-updates) suggests a simple scheme.

## Legal and credits

The **Legal and credits** group holds the "label text" of your font. None of these fields changes how the font looks, but people read them, and shops and font libraries often require some of them.

| Field | What to write |
|---|---|
| **Copyright** | Who owns the font, with the year: `Copyright 2026 Ayu Lestari` |
| **Trademark** | Only if you have registered the font name as a trademark |
| **Designer** | The name of the person (or people) who designed it |
| **Designer URL** | The designer's website |
| **Manufacturer** | The person or studio publishing the font (often the same as the designer) |
| **Manufacturer URL** | Its website |
| **License** | A short statement of how the font may be used |
| **License URL** | A web address where the full license can be read |
| **Vendor ID** | A four-letter code for you or your studio |
| **Description** | A sentence or two about the font |
| **Note** | A note for yourself; it stays in the source |

A few of these need a word of explanation.

**License.** A [font license](/reference/glossary/#font-license) says what people may do with your font: install it, embed it in documents, use it on websites, change it, sell it. If you release a free, open-source font, the usual choice is the SIL Open Font License (OFL). Then the License field could read `This Font Software is licensed under the SIL Open Font License, Version 1.1.` and the License URL `https://openfontlicense.org`. If you sell your font, write a short sentence that points to your own license agreement and put its address in License URL. [Testing and publishing](/production/testing-publishing/#licensing-your-font) explains the choices.

**Vendor ID.** A four-character code that identifies the maker of a font, such as `ADBO` for Adobe. It is optional. If you want one, choose four letters or digits and check that nobody else uses them; Microsoft keeps a public list of registered vendor IDs where you can register yours. More than four characters, or letters with accents, are an error.

**Copyright** is a warning in Font Check when it is empty, and **License** and **Designer** are notes. They are not needed for the font to work, but a font without them leaves its users guessing.

## Units per em

Every glyph in your font is drawn on an invisible square called the [em](/reference/glossary/#em). The [units per em](/reference/glossary/#units-per-em) (UPM) is how many units fit along one side of that square. It is the size of the grid you draw on.

- `1000` is the most common value, and the FontEasy default.
- `2048` is common in TrueType fonts from the 1990s, such as Arial.
- Other values work but are unusual.

When text is set at 12 points, the em is 12 points tall, so with 1000 units per em one unit is 0.012 points. Everything else in Font Info (ascender, descender, heights) is measured in these units.

You choose the units per em when you create a font, in the **New Font** dialog. The Font Info field exists, but think twice before changing it:

:::caution
Changing **Units per em** in Font Info only changes the number. It does **not** resize your drawings, metrics or kerning. If you change 1000 to 2048, every glyph suddenly looks half as big. Choose the value when you start a font and leave it alone.
:::

## Vertical metrics: how tall is a line?

This is the part of Font Info that confuses most people, so let us go slowly. It is worth it, because wrong vertical metrics cause two of the most visible problems a font can have: letters cut off at the top or bottom, and lines of text that are too close together or too far apart.

### The measurements

You met these lines while drawing (see [Type basics](/start/type-basics/)):

- the [baseline](/reference/glossary/#baseline), the line letters sit on, at 0;
- the [x-height](/reference/glossary/#x-height), the top of lowercase letters such as `x`;
- the [cap height](/reference/glossary/#cap-height), the top of capitals such as `H`;
- the [ascender](/reference/glossary/#ascender), the top of tall lowercase letters such as `h`, `k`, `l`;
- the [descender](/reference/glossary/#descender), the bottom of letters such as `g`, `p`, `y`, written as a negative number because it is below the baseline.

In Font Info these are the **Ascender**, **Descender**, **Cap height** and **x-height** fields in the **Dimensions** group. A new FontEasy font with 1000 units per em starts with an ascender of 750, a descender of −250, a cap height of 700 and an x-height of 500.

The cap height and x-height are used for alignment and by [hinting](/reference/glossary/#hinting). They should match your actual letters. Font Check compares them with the real tops of `H` and `x`, and if they are off by more than 1% of the em, its **Fix** button sets them to what the letters measure.

### Line height

When an app sets several lines of text, it needs to know how far apart to put them. The font tells it, with three numbers:

- how much room to leave **above** the baseline (an ascender value);
- how much room to leave **below** the baseline (a descender value);
- how much extra space to add between lines (the [line gap](/reference/glossary/#line-gap)).

Add them up and you get the default line height: the distance from one baseline to the next. Typographers call this distance [leading](/reference/glossary/#leading), after the strips of lead that printers once put between lines of metal type.

![Two lines of text: each line takes its ascender and descender, a line gap sits between them, and together they make the line height of 1200 units.](diagram:font-info-line-height)

With the FontEasy defaults, a line is 750 + 250 + 200 = 1200 units tall, which is 1.2 times the type size. At 10 points the lines are 12 points apart. That is a comfortable default for most text faces.

Users can still change the line spacing in their app (in Word, for example, with line spacing 1.0, 1.15 or 2.0). The font's numbers decide what "single spacing" means.

### Three sets of the same numbers

Here comes the confusing part. For historical reasons, a font file does not store these values once, but **three times**, in three different places, and different systems read different ones:

| Set | In Font Info | Read mainly by |
|---|---|---|
| **Typo** ("typographic") | **Typo ascender**, **Typo descender**, **Typo line gap** | Newer apps, and others when the font asks them to |
| **hhea** | **hhea ascender**, **hhea descender**, **hhea line gap** | macOS and iOS |
| **Windows** (win) | **Windows ascent**, **Windows descent** | Windows, including Word and most desktop apps |

The Windows set has no line gap. Windows simply uses ascent + descent as the line height. Note also that **Windows descent** is written as a positive number (250), while the other descenders are negative (−250).

If the three sets disagree, your font gets different line spacing on Windows and on a Mac, and different again in some apps. That is the reason for the "my lines are too far apart on Mac" complaint.

### What FontEasy does when you leave them empty

All the Typo, hhea and Windows fields are in the **OpenType (empty = automatic)** group, and for most fonts you should leave them empty. When you export, FontEasy (through the [fontc](https://github.com/googlefonts/fontc) compiler it uses) works them out from your ascender, descender and units per em, the same way the widely used ufo2ft tools do:

1. The line height is made 1.2 times the units per em.
2. The **Typo** values are your ascender and descender, and the Typo line gap is whatever is left to reach 1.2 em.
3. The **hhea** ascender is your ascender plus that line gap, the hhea descender is your descender, and the hhea line gap is 0.
4. The **Windows** ascent is the same as the hhea ascender, and the Windows descent is your descender without the minus sign.

For a new font with 1000 units per em, ascender 750 and descender −250 that gives:

![The three sets for a new FontEasy font: Typo 750, 250 and a line gap of 200; hhea and Windows 950 and 250. All three add up to 1200.](diagram:font-info-three-sets)

All three sets add up to the same 1200 units, so lines are spaced the same everywhere. The space of the line gap sits above the ascender in the hhea and Windows sets, so the first line of a text box gets a little room above it.

### Why letters get cut off

Windows does something the other systems do not: in many apps it **cuts off** (clips) anything drawn above the Windows ascent or below the Windows descent. If an accent on a capital reaches higher than the Windows ascent, its top simply disappears in Word.

![On the left the Windows ascent is 750 and the top of the acute accent on Á is cut off; on the right it is 950 and the whole letter shows.](diagram:font-info-clipping)

This is easy to run into. Accented capitals (`Á`, `Ê`, `Ö`), Vietnamese letters with two stacked accents, and tall swashes reach well above the cap height. A deep descender, or a cedilla under a `Ç`, can reach below the descender.

With empty fields, the defaults usually leave enough room: in the example above, the Windows ascent of 950 is higher than the accented capitals of most designs. But if you type smaller values yourself, or your accents are tall, the top may be cut off.

FontEasy checks this for you. **Font › Check Font…** builds your font and compares the Windows ascent and descent with the highest and lowest point of all glyphs. If anything sticks out, it reports a **Windows clipping** error, for example "Glyphs reach from −271 to 1003, but Windows shows only −250 below to 950 above the baseline." Its **Fix** button raises the Windows ascent and descent just enough to cover every glyph.

### Why lines collide or drift apart

Raising the Windows values to stop clipping makes lines on Windows further apart (remember, Windows uses ascent + descent as the line height). Now Windows and macOS disagree. Font Check notices that too: the **Same line spacing everywhere** note says, for example, "Lines are 1200 units apart on macOS (hhea) and 1274 on Windows (winAscent + winDescent)." Its **Fix** button copies the Windows values into the hhea fields, so both systems space lines the same again.

The opposite problem, lines that collide, happens when the values are too small: if a font says its lines are only 1000 units apart but its letters, with accents, are 1250 units tall, the accents of one line touch the descenders of the line above. Leaving the fields empty, or keeping the line height around 1.2 em or a little more, avoids this.

If you set Typo and hhea values yourself, give both sets the same numbers. When they differ, Font Check shows a **Line spacing tables** note, and its **Fix** copies the Typo values into the hhea fields.

### Setting vertical metrics by hand

Most of the time, the automatic values plus the fixes from Font Check are all you need. If you want to set them yourself, for example to give a display font tighter line spacing, follow these steps:

1. Choose **Font › Check Font…** (<kbd>F7</kbd>) and note any **Windows clipping** error. It tells you the lowest and highest point of your glyphs.
2. Open **Font › Font Info…** and scroll to the **OpenType (empty = automatic)** group.
3. Set **Windows ascent** to at least the highest point and **Windows descent** to at least the lowest point (as a positive number).
4. Decide the line height you want. Set **Typo ascender** and **hhea ascender** to the same value, and **Typo descender** and **hhea descender** to the same negative value, so that ascender − descender equals that line height and matches Windows ascent + Windows descent. Set both line gaps to `0`.
5. Click **OK**, then run **Check Font** again. The **Windows clipping**, **Line spacing tables** and **Same line spacing everywhere** findings should be gone.
6. Test with several lines of accented text, in an app on Windows if you can (see [Testing and publishing](/production/testing-publishing/)).

:::tip
A line gap other than 0 is legal, but some apps ignore it, so line spacing then differs between apps. That is why most modern fonts put all the space into the ascender and descender and use a line gap of 0. Font Check adds a **Line gap** note when yours is not 0.
:::

## Weight class

Apps sort the styles of a family from light to heavy, and CSS on the web picks a style by a number between 1 and 1000. That number is the **weight class**. The standard values are:

| Weight class | Usual style name |
|---|---|
| 100 | Thin, Hairline |
| 200 | ExtraLight |
| 300 | Light |
| 400 | Regular |
| 500 | Medium |
| 600 | SemiBold |
| 700 | Bold |
| 800 | ExtraBold |
| 900 | Black, Heavy |

The **Weight class** field is in the **OpenType (empty = automatic)** group. If you leave it empty, the font is exported with weight class 400, which is right for a Regular or an Italic but wrong for any other weight.

So, for every style that is not Regular weight:

1. Open **Font › Font Info…**.
2. Type the weight class in **Weight class**, for example `700` for Bold or `300` for Light.
3. Click **OK**.

You do not have to remember the table. **Font › Check Font…** reads your style name and, if the weight class does not match, reports **Weight class**: "The style “Bold” suggests weight class 700, but it is 400." Click **Fix** and FontEasy fills in 700. It does the same for the **width class** (Condensed, Expanded and so on), which has no field in Font Info but is set by the fix.

The weight class is also what goes into the `font-weight` line of the CSS file FontEasy can write for web fonts; see [Exporting your font](/production/export/#css-for-web-fonts).

## A worked example

Ayu has drawn the Regular and the Bold of a family she calls "Nusantara Sans". Here is how she fills in Font Info for the Bold:

| Field | Value |
|---|---|
| Family name | `Nusantara Sans` |
| Style name | `Bold` |
| Version (major) / (minor) | `1` / `0` |
| Units per em | `1000` (unchanged) |
| Ascender / Descender | `750` / `-250` (unchanged) |
| Cap height / x-height | measured by Font Check's fix |
| PostScript name | empty (becomes `NusantaraSans-Bold`) |
| Weight class | `700` |
| Typo, hhea and Windows fields | empty |
| Copyright | `Copyright 2026 Ayu Lestari` |
| Designer | `Ayu Lestari` |
| License | `This Font Software is licensed under the SIL Open Font License, Version 1.1.` |
| License URL | `https://openfontlicense.org` |

Then she runs **Font › Check Font…**. It reports a **Windows clipping** error because her `Ǻ` reaches 980 units, and she clicks **Fix**, then **Fix** again on the **Same line spacing everywhere** note that appears. In Word, her two fonts now show as one family, the **B** button switches between them, and the accents are whole.

## Common mistakes

:::caution[The style in the family name]
Family name "Nusantara Sans Bold" with style name "Regular" makes Windows treat the Bold as a separate family, so the **B** button can't reach it. Put the family name in **Family name** and the style in **Style name**.
:::

:::caution[Changing names after release]
If people already use your font, keep its family name, style name and PostScript name. Changing them makes apps think it is a different font, and documents set in the old one lose it. Raise the version number instead.
:::

:::caution[Copying metrics from another font]
Vertical metrics copied from a font with a different design (taller accents, deeper descenders) can clip your letters or space your lines strangely. Start from the automatic values and let Font Check guide you.
:::

## Summary

- **Font › Font Info…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>I</kbd>) holds your font's names, version, dimensions, line-spacing values and credits, in four groups. Empty fields are filled in automatically on export.
- The **family name** is shared by all styles; the **style name** says which one this font is. Regular, Italic, Bold and Bold Italic are linked into one menu entry; other styles get entries of their own. FontEasy sets up the linking from the style name.
- Leave the **PostScript name** empty unless you need a special one; never reuse or change it.
- The **version** is major.minor with three digits after the point; start at 1.000 and raise it with each release.
- Fill in at least **Copyright**, **Designer** and **License** (with **License URL**).
- **Units per em** is the size of your drawing grid; changing it does not resize anything.
- Line height = ascender + descender + line gap. Fonts store it three times (Typo, hhea, Windows). Leave those fields empty and FontEasy makes all three agree at 1.2 em.
- Windows clips what reaches beyond the Windows ascent and descent; Font Check finds this and fixes it.
- Set the **weight class** for every style that is not Regular weight, or let Font Check fix it.

## Try it yourself

1. Open your font, choose **Font › Font Info…** and fill in your family name, style name, copyright, designer and a license. Click **OK**, then press <kbd>F7</kbd> and see which findings in the **Names and credits** section have disappeared.
2. Change the style name to `Bold` without touching the weight class. Run **Check Font** again, read the **Weight class** warning, and click **Fix**. Open Font Info and look at the value FontEasy filled in. Then press <kbd>Ctrl</kbd>+<kbd>Z</kbd> twice to put everything back.
