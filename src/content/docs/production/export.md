---
title: Exporting your font
description: Turn your FontEasy source into font files people can install and use, choose the right formats for desktop and web, and set up export profiles that write everything in one go.
---

While you design, your font lives in FontEasy as a *source*: a [UFO](/reference/glossary/#ufo) folder (or a designspace with several UFOs) full of outlines, spacing, kerning and settings. Apps such as Word, Photoshop or a web browser cannot read a UFO. They need a compiled [font file](/reference/glossary/#font-file): a `.ttf`, `.otf`, `.woff` or `.woff2`. Making those files is called [exporting](/reference/glossary/#export).

Exporting is a little like baking. The source is your recipe and your ingredients; you can always change them. The exported font is the cake: ready to serve, but you cannot take the eggs back out. That is why you always keep the source, and export again whenever you change something.

This chapter explains the different font formats in plain words and helps you pick the right ones, then walks through every option of the Export Font dialog, export profiles, and exporting the separate styles of a variable font.

In this chapter you will learn:

- what TTF, OTF, WOFF, WOFF2 and variable fonts are, and which to choose for desktop apps and for the web;
- how to export with **File › Export › Export Font…** and what each option does;
- what removing overlaps and hinting are, and when they matter;
- how to make web fonts with a ready-made CSS file;
- how export profiles save your settings and export several sets at once, with subsetting;
- how to export static instances of a variable font;
- where the files go and how they are named.

## Font formats, explained

A [font format](/reference/glossary/#font-format) is the kind of file a font is saved in. All the formats FontEasy writes are [OpenType](/reference/glossary/#opentype) fonts underneath: they hold the same glyphs, spacing, kerning and features. They differ in how the outlines are stored and how the file is packed.

### TTF: TrueType

A [TTF](/reference/glossary/#ttf) file (`.ttf`) stores outlines as [TrueType](/reference/glossary/#truetype) curves, made of [quadratic curves](/reference/glossary/#quadratic-curve). It is the most widely supported format. Every operating system and nearly every app can use it. TrueType fonts can also carry [hinting](/reference/glossary/#hinting), instructions that make small text sharper on screen, especially on Windows.

FontEasy draws with [cubic curves](/reference/glossary/#cubic-curve), like Illustrator. When it writes a TTF, it converts them to quadratic curves automatically. You do not have to do anything; the difference is far too small to see.

### OTF: OpenType with CFF outlines

An [OTF](/reference/glossary/#otf) file (`.otf`) here means an OpenType font with [CFF](/reference/glossary/#cff) outlines, which are cubic curves, the same kind you draw with. FontEasy writes them straight from your own curves, so the outlines are exactly what you drew. Print shops and designers who work in Adobe apps often like OTF fonts.

FontEasy does not hint `.otf` files, and it does not make variable `.otf` fonts (a format called CFF2). A variable font is always exported as TrueType.

:::note
"OpenType" is a little confusing because the word means two things. In general it is the modern font standard that both `.ttf` and `.otf` files follow. In everyday talk "an OpenType font" often means an `.otf` file. In FontEasy's Export dialog the `.otf` option is called **OpenType CFF (.otf)**.
:::

### WOFF and WOFF2: fonts for websites

[WOFF](/reference/glossary/#woff) (`.woff`) and WOFF2 (`.woff2`) are the same font, compressed for the web so pages load faster. Browsers can use them; desktop apps cannot install them.

- **WOFF2** packs the font much smaller. Every current browser supports it. This is the one to use for a website.
- **WOFF** is the older version, a little bigger. You only need it for very old browsers.

### Variable fonts

A [variable font](/reference/glossary/#variable-font) holds a whole range of styles in one file, for example every weight from Light to Black, along one or more [axes](/reference/glossary/#axis). If your font is a designspace with several masters (see [Variable fonts](/advanced/variable/)), FontEasy exports it as one variable font, as `.ttf`, `.woff` or `.woff2`. Not every app understands variable fonts yet; for those, you can also export each named style as a separate *static* font (see [Exporting static instances](#exporting-static-instances)).

### Which format should I choose?

![From your UFO source: desktop apps take OTF or TTF, websites take WOFF2 with CSS, Google Fonts takes hinted TTF; a variable font is always TrueType.](diagram:export-which-format)

| You want to… | Choose |
|---|---|
| Install the font on your own computer, use it in Word or design apps | **TTF** (hinted), or **OTF**, or both |
| Give or sell the font to other people for their computers | **OTF** and **TTF**, so they can pick |
| Use the font on a website | **WOFF2** with the **CSS** file |
| Support very old browsers too | **WOFF2** and **WOFF** |
| Send the font to Google Fonts | hinted **TTF**, plus static instances of a variable font |
| Export a variable font | **TTF** for desktop, **WOFF2** for the web |

If you are unsure, export a hinted **TTF**. It works everywhere.

:::caution
Don't install the `.ttf` and the `.otf` of the same font at the same time. They have the same names, and apps can mix them up. Install one of them.
:::

## The Export Font dialog

1. Open your font.
2. Choose **File › Export › Export Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>).
3. Tick the formats you want under **Formats**.
4. Check the options (described below).
5. Check the **Folder** and the **File name**.
6. Click **Export**.

![The Export Font dialog: the Export Profiles… link, four format checkboxes with TrueType ticked, the CSS, overlap and hinting options, then the folder and file name.](screen:export)

FontEasy builds the font in the background, so you can keep working. When it is done, a message **Font exported** lists the files and the folder, and the status bar says **Exported to …** with the folder. If something stops the build, a message **Could not build the font** explains why; often [Check Font](/production/quality/) tells you more.

In Simple mode, the last step of the **Font Journey**, **Test and export**, has an **Export…** button that opens the same dialog.

### Formats

The four checkboxes are:

- **TrueType (.ttf) — desktop**
- **OpenType CFF (.otf) — desktop, print**
- **WOFF (.woff) — older browsers**
- **WOFF2 (.woff2) — web**

You can tick any combination; FontEasy builds the font once and writes each format from it. With a variable font, **OpenType CFF (.otf)** is greyed out; rest the pointer on it for the reason.

### Also write a CSS file with @font-face rules

For web fonts, this writes a small `.css` file next to the WOFF2 and WOFF files that tells a web page how to load them. Tick it together with WOFF2 or WOFF, because the CSS file points to those files. See [CSS for web fonts](#css-for-web-fonts).

### Remove overlaps (your source keeps them)

While drawing, it is handy to build a letter from overlapping shapes, such as an `H` made of two stems and a crossbar. In a finished font, overlapping contours can show as thin lines or holes in some apps and printers. [Removing overlaps](/reference/glossary/#remove-overlap) merges them into one clean outline.

With this option on (the default), FontEasy merges overlaps in the exported file only. Your source keeps the separate shapes, so you can still edit them. Leave it on unless you have a special reason.

A variable font needs its overlaps, because the shapes move differently between masters. For a variable font the dialog says **Overlaps are kept (variable fonts need them) and flagged for correct rendering.** instead, and FontEasy marks the overlapping glyphs so that apps fill them correctly.

### Hint TrueType outlines (ttfautohint)

This option adds [hinting](/reference/glossary/#hinting) to the TrueType outlines. To understand it, think about how text appears on a screen.

A screen is a grid of pixels. At large sizes there are enough pixels to draw a letter smoothly. At small sizes, say 12 pixels for the whole em, a stem might be 1.4 pixels wide and start in the middle of a pixel. The screen then shows it as two half-grey columns, and the letter looks soft and blurry. Hinting adds small instructions to the font that nudge the outline onto the pixel grid at small sizes: stems become exactly one or two pixels wide, the x-height lands on a whole pixel, and the text looks crisp.

![The letter n at 15 pixels per em: without hinting its edges fall between pixels and show grey; with hinting the outline is nudged onto the grid and the pixels are solid.](diagram:export-hinting)

Writing hinting instructions by hand is skilled, slow work. *Autohinting* does it automatically by analysing your outlines. FontEasy uses **ttfautohint**, a well-known free autohinter, which is included in the FontEasy download (in the `tools` folder next to `FontEasy.exe`).

Good to know:

- Hinting matters most for text at small sizes on Windows. macOS mostly ignores it, and at large sizes it makes no visible difference.
- Hinting makes the file somewhat bigger.
- Only static TrueType-based files are hinted: `.ttf`, and `.woff` and `.woff2` made from it. `.otf` files and variable fonts are not hinted, and the checkbox is not shown for a variable font.
- Your source is not changed; hinting is added to the exported files only.

The option is on by default. If FontEasy cannot find ttfautohint, the checkbox is greyed out and next to it you see **ttfautohint not found** and a **Locate…** link. Click it and choose `ttfautohint.exe`; FontEasy remembers the place. You can also set it in **Edit › Preferences…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>), on the **General** page under **Export**, with **Choose…** (and **Reset** to go back to looking in the usual places).

### Color font: also write an SVG table

This option only appears for a [colour font](/reference/glossary/#color-font). Next to the colour tables most apps use, it adds a second copy of the colour glyphs in the [OpenType-SVG](/reference/glossary/#opentype-svg) format, which some apps support instead. See [Colour fonts](/advanced/color/).

### Folder and file name

- **Folder** is where the files go. Type a path or click **Browse…**. If your font is saved, FontEasy suggests a folder called `fonts` next to it. For a font that was never saved, it suggests `Documents\FontEasy` in your user folder. The folder is created if it does not exist.
- **File name** is the name without the extension. FontEasy suggests the family name and the style name joined by a hyphen, without spaces: `NusantaraSans-Bold`. For a variable font it suggests `NusantaraSans-VF`. Each format adds its own extension: `NusantaraSans-Bold.ttf`, `NusantaraSans-Bold.woff2`.

:::caution
Exporting replaces files with the same name in that folder without asking. That is usually what you want (a fresh export of the same font), but don't point the export at a folder of files you want to keep.
:::

If you forget to tick a format, or leave the folder or name empty, the dialog says **Choose at least one format.** or **Choose a folder and a file name.** and waits.

## Exporting for the web

For a website, choose **File › Export › Export Web Font…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>). It opens the same dialog with **WOFF (.woff)**, **WOFF2 (.woff2)** and the CSS option already ticked, and suggests a folder called `webfonts` next to your font. Untick WOFF if you do not need very old browsers.

### CSS for web fonts

The CSS file tells a browser where the font files are and which style they are. For the Bold of "Nusantara Sans" it looks like this:

```css
@font-face {
  font-family: "Nusantara Sans";
  src: url("NusantaraSans-Bold.woff2") format("woff2"),
       url("NusantaraSans-Bold.woff") format("woff");
  font-weight: 700;
  font-style: normal;
  font-display: swap;
}
```

What each line means:

- `font-family` is the family name from Font Info. Every style of the family uses the same name, so your web page can switch between them with `font-weight` and `font-style`.
- `src` lists the files, best format first. The browser takes the first one it understands.
- `font-weight` is the [weight class](/production/font-info/#weight-class) from Font Info (700 for Bold). If the field is empty, FontEasy derives it from the style name. For a variable font with a weight axis it is the whole range, such as `100 900`.
- `font-style` is `italic` when the style name contains "Italic" or "Oblique", otherwise `normal`.
- `font-display: swap` lets the browser show text in a fallback font while yours loads, instead of showing nothing.

To use the font on your site:

1. Upload the `.woff2` (and `.woff`) files and the `.css` file to the same folder on your web server.
2. Link the CSS file in your page's `<head>`, or copy its contents into your own stylesheet.
3. Use the family name in your CSS, with a fallback:

```css
body { font-family: "Nusantara Sans", sans-serif; }
h1 { font-family: "Nusantara Sans", sans-serif; font-weight: 700; }
```

If you export each style to the same folder, you get one CSS file per style. You can combine them into one file.

## Export profiles

Exporting a finished family usually means several exports: OTF and TTF for desktop users, WOFF2 for your website, maybe a special set for a font library. Choosing the same options every time is tedious and easy to get wrong. An **export profile** remembers a set of choices (formats, folder, hinting, characters and more) under a name, and you can run one profile or all of them at once.

Export profiles are a Pro mode feature. Open them with **File › Export › Export Profiles…**, or with the **Export Profiles…** link at the top of the Export Font dialog.

![The Export Profiles dialog: the Desktop, Web and Google Fonts profiles on the left; on the right the Desktop profile's folder, formats, characters and options.](screen:exportprofiles)

### The built-in profiles

Every font starts with three profiles:

| Profile | Formats | Folder | Also |
|---|---|---|---|
| **Desktop** | OTF and TTF | `fonts/desktop` | hinted |
| **Web** | WOFF2 | `fonts/web` | hinted, Latin subset, CSS file |
| **Google Fonts** | TTF | `fonts/googlefonts` | hinted, runs Font Check first, static instances of a variable font |

You can change them, add your own and delete the ones you do not need. **Restore Defaults** brings back these three.

Profiles are saved **inside your font** (in the UFO), so they travel with it: open the font on another computer and the profiles are there. Changing them is a step in the undo history.

### Editing a profile

Select a profile in the list on the left. On the right you can set:

- **Name**: what the profile is called. Two profiles can't have the same name.
- **Folder**: where its files go. A relative folder such as `fonts/web` starts at the folder your font is saved in; the line under the field shows that folder (**Relative folders start at …**). For a font that was never saved it starts at `Documents\FontEasy`. You can also give a full path, or click **Browse…**.
- **Formats**: the same four formats as in the Export Font dialog.
- **Characters**: **Every glyph**, **Latin (ASCII, Western European)**, or **Latin + Latin Extended**. See [Subsetting](#subsetting) below.
- **Options**:
  - **Hint TrueType outlines (ttfautohint)**;
  - **Remove overlaps (your source keeps them)**;
  - **Also write a CSS file with @font-face rules**;
  - **Run Font Check first and stop on errors**;
  - **Also export the static instances** (only shown for a variable font);
  - **Color font: also write an SVG table (for apps without COLR support)**.

Under the list, **Add** makes a new profile, **Duplicate** copies the selected one, and **Delete** removes it (the last profile can't be deleted).

### Running profiles

1. Open **File › Export › Export Profiles…**.
2. Select a profile and click **Export “Desktop”** (the button shows the name of the selected profile), or click **Export All** to run every profile.
3. The dialog closes and the export runs in the background.

When it is finished, a message **Export profiles finished** lists, for each profile, how many files it wrote and where, with notes such as "ttfautohint not found; fonts are not hinted" or "variable fonts export as TrueType; .otf skipped". If a profile has **Run Font Check first and stop on errors** on and the font has errors, that profile stops and says how many errors it found, for example "Google Fonts: Font Check found 2 error(s), for example: …". The other profiles still run.

**Close** saves your changes to the profiles without exporting.

### Subsetting

A font for many languages can contain thousands of glyphs: Latin, Cyrillic, Greek, and more. A website in English or Indonesian only needs the Latin ones. Every unused glyph still has to be downloaded by every visitor. [Subsetting](/reference/glossary/#subsetting) means leaving out the glyphs a particular use does not need, to make the file smaller.

![On the left a font with Latin, Latin Extended, Cyrillic and Greek glyphs; on the right its Latin subset keeps only the Latin row.](diagram:export-subset)

The **Characters** setting of a profile offers two subsets, the same ranges Google Fonts uses for its web fonts:

- **Latin (ASCII, Western European)**: basic Latin and the Western European accented letters (Latin-1), plus common punctuation and symbols such as the euro sign. Enough for English, Indonesian, Malay, and most Western European languages.
- **Latin + Latin Extended**: also Central European letters (Polish, Czech, Turkish …), Vietnamese and other extended Latin.

FontEasy is careful about what it keeps. Along with the glyphs for the chosen characters, it also keeps:

- the [components](/reference/glossary/#component) those glyphs are built from;
- their alternates and ligatures, such as `a.sc` or `f_i`;
- any glyph named in feature code you wrote by hand;
- `.notdef`.

Kerning and kerning groups are trimmed to match. Your source is never changed; only the exported files are smaller.

:::caution
Use subsets for web fonts, where file size matters. For desktop fonts, keep **Every glyph**: someone may need that one accented letter you left out.
:::

## Exporting static instances

A variable font contains a range of styles, and its designspace usually names some of them as [instances](/reference/glossary/#instance): "Light", "Regular", "Bold", and so on. Some apps, older printers and font libraries want each of those as a separate, ordinary (static) font. FontEasy can make them.

1. Open your designspace font.
2. Choose **File › Export › Static Instances…** (Pro mode), or click the **Export Static Instances…** link in the Export Font dialog.
3. Under **Instances**, tick the styles you want. All are ticked at first.
4. Under **Formats**, tick the formats.
5. Set **Remove overlaps (your source keeps them)** and **Hint TrueType outlines (ttfautohint)** as for any static font.
6. Check the **Folder**. FontEasy suggests a folder called `instances` next to your font.
7. Click **Export**.

![The Export Static Instances dialog for Mutator Sans: every instance ticked, TrueType chosen, overlaps removed, and the folder.](screen:exportinstances)

Each instance is calculated ([interpolated](/reference/glossary/#interpolation)) from the masters and written as its own font, named with the family and the instance's style, for example `MutatorSans-LightCondensed.ttf`. When it is done, the message **Static instances exported** says how many files were written. If some glyphs could not be interpolated because they are not compatible between the masters, the message lists them per instance; those glyphs keep the outline of the default master. See [Variable fonts](/advanced/variable/) to make them compatible.

In an export profile, **Also export the static instances** does the same and writes the static fonts into a `static` folder inside the profile's folder.

## Where the files go, and their names

To sum up the defaults:

| Export | Suggested folder | File names |
|---|---|---|
| **Export Font…** | `fonts` next to your font | `Family-Style.ttf`, `.otf`, `.woff`, `.woff2` |
| **Export Web Font…** | `webfonts` next to your font | `Family-Style.woff2`, `.woff`, `.css` |
| **Static Instances…** | `instances` next to your font | `Family-Style.ext` per instance |
| Profiles | the profile's folder, relative to your font's folder | `Family-Style.ext`; instances in `static` |

"Family" and "Style" are the names from Font Info with the spaces taken out; a variable font is called `Family-VF`. If your font has never been saved, FontEasy suggests `Documents\FontEasy` in your user folder instead (and a folder called `FontEasy Exports` for static instances).

Keep exported files apart from your source. A good habit is one folder per project with the UFO in it, and the exports in `fonts` beside it, exactly as FontEasy suggests.

## Before you export

A quick list before exporting a font you will share:

1. Fill in [Font Info](/production/font-info/): family and style names, version, copyright, designer, license, weight class.
2. Press <kbd>F7</kbd> and fix all errors in the [Font Check](/production/quality/).
3. Save your source (<kbd>Ctrl</kbd>+<kbd>S</kbd>).
4. Export.
5. [Test](/production/testing-publishing/) the exported files, not just the preview in FontEasy.

## When something goes wrong

- **"Could not build the font".** The message gives a reason. Run **Font › Check Font…**; the **Font builds** and **Feature code error** findings usually point at the problem.
- **The hinting checkbox is greyed out.** ttfautohint was not found. Click **Locate…** and choose `ttfautohint.exe` from the `tools` folder of your FontEasy installation.
- **The OTF checkbox is greyed out.** Your font is a variable font, which is exported as TrueType only.
- **The exported font looks different in an app.** Make sure the app uses the new file: many apps keep the old version until restarted. See [Testing and publishing](/production/testing-publishing/).
- **Some characters are missing from the web font.** The profile probably uses a subset. Choose **Every glyph** or **Latin + Latin Extended** under **Characters**.

## Summary

- Exporting turns your source into font files. Keep the source; export again after changes.
- **TTF** works everywhere and can be hinted; **OTF** keeps your cubic curves exactly; **WOFF2** (and **WOFF** for old browsers) is for websites; a variable font is always TrueType.
- **File › Export › Export Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>) writes any combination of formats; **Export Web Font…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>) preselects WOFF, WOFF2 and CSS.
- **Remove overlaps** cleans up the exported outlines; **hinting** with ttfautohint sharpens small text on Windows.
- The CSS file contains a ready `@font-face` rule with `font-weight` and `font-style`.
- **Export profiles** (Pro) save sets of formats, folders and options in the font; **Export All** runs them together. Subsets make web fonts smaller.
- **Static Instances…** writes each named style of a variable font as a separate font.
- Files are named `Family-Style.ext` and go into `fonts` (or `webfonts`, `instances`) next to your font.

## Try it yourself

1. Export your font as **TrueType (.ttf)** and **WOFF2 (.woff2)** with the CSS option on. Open the folder and look at the files. Open the `.css` file in a text editor and find the `font-weight` line. Does it match your style?
2. In Pro mode, open **File › Export › Export Profiles…**, duplicate the **Web** profile, rename it `Web full`, change its **Folder** to `fonts/web-full` (otherwise both profiles write the same file), set **Characters** to **Every glyph**, and click **Export All**. Compare the sizes of the two `.woff2` files.
