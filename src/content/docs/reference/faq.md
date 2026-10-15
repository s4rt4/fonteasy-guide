---
title: FAQ and Troubleshooting
description: Answers to the questions beginners ask most often, and what to do when something does not work as expected.
---

This chapter collects the questions people ask most when they start making fonts with FontEasy, and the problems they run into most often. Each answer is short and points you to the chapter with the full story.

You do not need to read this page from top to bottom. Find your topic in the list of sections, or press <kbd>Ctrl</kbd>+<kbd>F</kbd> in your browser or PDF reader and search for a word from your problem.

If your question is not here, see [Reporting a bug or asking for help](#reporting-a-bug-or-asking-for-help) at the end.

In this chapter you will find answers about:

- getting started, drawing, spacing and kerning, and OpenType features;
- exporting and installing fonts, web fonts, and licensing;
- Python scripts, performance, where your files are, and recovering lost work;
- how to report a bug.

## Getting started

### Do I need to know how to draw or program to use FontEasy?

No. If you can draw a letter on paper, you can make a font. You can even draw on paper, scan or photograph the page, and let the [Handwriting Font Wizard](/drawing/handwriting/) turn it into a font. Programming is only needed for [scripting](/power/scripting/), which is optional.

### Is FontEasy free?

Yes. FontEasy is open-source software under the MIT License or the Apache License 2.0, at your choice. You can use it for personal and commercial work without paying. See [Licensing](#licensing) for what this means for the fonts you make.

### Should I use Simple Mode or Pro Mode?

Start in **Simple Mode** if this is your first font. It shows the essential tools and the Font Journey checklist, which leads you step by step from naming your font to exporting it. Switch to **Pro Mode** when you want masters, export profiles, scripting or the extra drawing tools. Your font does not change when you switch; only the tools on screen do. Use the **Pro** / **Simple** switch in the title bar or <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>. See [Simple or Pro mode](/power/preferences/#simple-or-pro-mode).

### Which letters should I draw first?

Start with a few letters that show the main ideas of your design and then build from them. Many designers begin with `n`, `o`, `H` and `O`: they set the [stem](/reference/glossary/#stem) thickness, the round shapes and the spacing for the rest of the alphabet. The [first font chapter](/start/first-font/) walks you through a whole small font.

### What is the difference between Save and Export?

**Save** (<kbd>Ctrl</kbd>+<kbd>S</kbd>) keeps your *source*: a UFO folder that only font editors use, with everything you need to keep working. **Export** (<kbd>Ctrl</kbd>+<kbd>E</kbd>) makes the finished [font file](/reference/glossary/#font-file) (TTF, OTF, WOFF or WOFF2) that Word, Photoshop or a web page can use. Always keep the source: you cannot fully go back from an exported font to your source. See [Your project files](/power/preferences/#your-project-files-ufo-and-designspace) and [Exporting your font](/production/export/).

### Can I open fonts and files from other programs?

FontEasy opens:

- UFO folders and `.designspace` files, from FontEasy or any other font editor that writes UFO;
- Glyphs app files (`.glyphs`, and `.glyphspackage` folders with **File › Open UFO Folder…**);
- TTF and OTF fonts, including variable fonts. They are imported: outlines, metrics, kerning and many substitutions come in, and you save the result as a new UFO.

It does not open FontForge (`.sfd`) or FontLab (`.vfc`, `.vfj`) files directly. Export UFO from those programs first.

### Can I use FontEasy in Indonesian?

Yes. Choose **Edit › Preferences…**, open **Interface**, set **Language** to **Bahasa Indonesia** and click **OK**. The whole interface changes at once, without a restart.

## Drawing

### How do I draw a curve?

Choose the **Pen** tool (<kbd>P</kbd>). Click to place a corner point; press and **drag** to place a point with handles, which makes a curve. Click the first point again to close the shape. Afterwards, use the **Node** tool (<kbd>A</kbd>) to drag points and handles until the curve looks right. See [Outlines](/drawing/outlines/) and [Drawing tools](/drawing/drawing-tools/).

### The hole in my "O" is filled in black. Why?

The inner contour runs in the same direction as the outer one. For a hole, the inner contour must run the opposite way (see [contour direction](/reference/glossary/#contour-direction)). Choose **Glyph › Contours › Correct Direction** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) and FontEasy fixes all contours of the glyph. In the Overview, select several glyphs first to fix them all at once.

### My shapes overlap. Is that a problem?

Not while you design. Overlapping shapes, such as the two strokes of an "X", are easy to edit. When you export, the **Remove overlaps (your source keeps them)** option merges them in the font file only. If you want to merge them in the source too, use **Glyph › Contours › Remove Overlap** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>).

### What do the coloured marks on my glyphs mean?

They come from live validation, which checks your outlines as you draw: open contours, wrong directions, contours that cross themselves, overlaps, missing extreme points and more. The **Validation** panel lists them with a **Fix** button for each kind; **Glyph › Fix Problems** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) fixes the selected glyphs in one go. Not every mark is an error: some are only hints. See [Finding and fixing problems](/drawing/problems/).

![An "H" made of three overlapping rectangles: circles mark where the contours overlap, and the Validation panel at the bottom right lists "Overlapping contours" with Fix and Fix All buttons.](screen:problems)

### Can I bring in drawings from Illustrator, Figma or Inkscape?

Yes, in three ways:

- copy a shape in your drawing program and paste it into a glyph with <kbd>Ctrl</kbd>+<kbd>V</kbd>;
- **File › Import › Glyphs from SVG…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>) imports many SVG files at once, one per glyph, and can keep a folder in sync while you keep drawing;
- **Tools › Autotrace Image…** turns a picture (PNG or JPG) of a letter into outlines.

See [Importing and tracing](/drawing/import-trace/).

### My traced letter has far too many points. What can I do?

Choose **Glyph › Contours › Simplify**. It removes points while keeping the shape. In Pro Mode, **Glyph › Contours › Clean Up Points** also removes duplicate and unneeded points. Fewer points make smoother curves and smaller fonts.

### How do I make accented letters without drawing each one?

Draw the base letters (`a`, `e`, …) and the accents (`acutecomb`, `dieresiscomb`, …), then use **Glyph › Generate Composites…**. FontEasy builds letters such as `aacute` from [components](/reference/glossary/#component) and places the accents with [anchors](/reference/glossary/#anchor). When you later change the `a`, every accented `a` follows. See [Components and accents](/drawing/components/).

### I made a mistake. How far back can I undo?

**Edit › Undo** (<kbd>Ctrl</kbd>+<kbd>Z</kbd>) takes back one step at a time, and the **History** panel shows the steps so you can jump back several at once. Each open font has its own history. **File › Revert** goes all the way back to the last saved version.

## Spacing and kerning

### What is the difference between spacing and kerning?

[Spacing](/reference/glossary/#spacing) is the space each letter brings with it on its left and right, its [sidebearings](/reference/glossary/#sidebearing). It applies everywhere the letter appears. [Kerning](/reference/glossary/#kerning) is a correction for one particular pair, such as "AV", which would otherwise look too far apart. Always do the spacing first and kern only the pairs that still look wrong. See [Spacing](/spacing/metrics/) and [Kerning](/spacing/kerning/).

### My text looks uneven. Where do I start?

Open **Metrics › Metrics Window** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) and type test words such as `nnonnoo` and `HHOHHOO`. Adjust the `n`, `o`, `H` and `O` first; the other letters follow from them. **Metrics › Auto-Spacing…** gives you a good first version that you can then refine by eye.

### Can FontEasy kern my font automatically?

Yes: **Kerning › Auto-Kerning…** measures your outlines and suggests pairs. It is a very good start, but always look at the result in real words and correct what you do not like. Then run **Kerning › Kerning Audit** (Pro Mode) to find pairs that make letters collide.

### Kerning works for "A" but not for "Á". Why?

Kerning pairs are made for particular glyphs. To share them between a letter and its accented forms, put the letters into [kerning groups](/reference/glossary/#kerning-group) and kern the groups. **Kerning › Auto Groups from Composites** makes those groups for you from your accented letters.

### Kerning shows in FontEasy but not in Microsoft Word.

Word does not apply kerning unless you ask it to. In Word, select the text, open the **Font** dialog, go to **Advanced** and tick **Kerning for fonts**. Most design programs and web browsers apply kerning automatically.

## OpenType features

### My ligature (or small caps, or alternate) does not work.

FontEasy makes [OpenType features](/reference/glossary/#opentype-feature) from glyph names, so the names must follow the conventions: `f_i` for an fi ligature, `a.sc` for a small cap, `a.ss01` for stylistic set 1, `one.osf` for old-style figures. Check the name, then choose **Features › Update Automatic Features**. In the Preview panel, switch the feature on with its toggle (`liga`, `smcp`, `ss01`, …) to test it. See [OpenType features](/opentype/features/).

### The feature works in FontEasy but not in Word.

Many programs leave some features off until you switch them on. In Word, open the **Font** dialog, go to the **Advanced** tab and look under **OpenType Features**: there you choose **Ligatures** and **Stylistic sets**. Small caps and other features depend on the program; browsers and design programs such as InDesign give you full control.

### The feature editor shows an error.

Feature code is a small programming language, and a typo stops the whole font from building. The editor marks the line with the error and explains it. Fix that line, or undo the change. If you only use automatic features, **Features › Update Automatic Features** rewrites them for you. The Preview panel shows **Build failed — showing unshaped outlines** while the problem remains.

## Exporting and installing fonts

### Which format should I export?

| You want to… | Export |
|---|---|
| use the font in Word, Photoshop and similar programs | TTF (or OTF) |
| print professionally | OTF |
| use it on a website | WOFF2 (and WOFF for very old browsers) |
| publish on Google Fonts | the Google Fonts export profile (Pro) |

If you are unsure, TTF works everywhere. See [Exporting your font](/production/export/).

![The Export Font dialog: format checkboxes, the CSS option, Remove overlaps, ttfautohint hinting, the folder and the file name.](screen:export)

### Where did my exported font go?

To the **Folder** shown in the Export dialog. Unless you changed it, that is a `fonts` folder next to your saved font (`webfonts` for web fonts), or `Documents\FontEasy` if the font was never saved.

### How do I install my font on Windows?

1. Find the exported `.ttf` or `.otf` file in File Explorer.
2. Right-click it and choose **Install** (only for you) or **Install for all users** (needs administrator rights). You can also double-click it and click **Install**.
3. Close and reopen the program where you want to use the font.

### My font does not show up in Word.

Check these in order:

1. **Is it installed?** Exporting does not install. Install the file as described above.
2. **Restart Word.** Programs read the list of fonts when they start; a font installed while Word is open often only appears after restarting it.
3. **Look for the right name.** Word lists the font under its family name from **Font › Font Info…**. Regular, Italic, Bold and Bold Italic appear as one family; other styles (Light, Medium, SemiBold…) appear as their own entries, such as "Nusantara Sans Medium".
4. **Run Font › Check Font…** (<kbd>F7</kbd>) and fix what it reports under names and credits.

If you only want to try the font, **File › Install Font for Testing** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) installs a copy for your user with "Test" added to the family name, for example "Nusantara Sans Test". Programs you start afterwards can use it. **File › Remove Test Fonts** removes all test copies again.

### Some letters appear in a different font.

The program could not find those characters in your font and borrowed them from another font. Either the glyph does not exist yet, or it has no [Unicode](/reference/glossary/#unicode) value, so the program does not know it is, say, "é". Check the glyph's Unicode in the **Glyph Info** panel; the `Unencoded` category in the Overview shows glyphs without one.

### I installed a new version, but Windows still shows the old one.

Windows and some programs keep fonts in a cache. To replace a font cleanly:

1. Close every program that uses the font.
2. Open **Settings › Personalization › Fonts**, find your font and uninstall it.
3. Install the new version.
4. Start your programs again. If the old shapes still appear, restart Windows.

While you are still designing, avoid this cycle: use **File › Test Font in Browser** (<kbd>F5</kbd>), which builds a fresh copy for a test page every time, or **Install Font for Testing**, whose "Test" family name never clashes with the real one. Raising the version number in **Font › Font Info…** each time you release also helps you see which version you are looking at.

### Windows SmartScreen warns me when I run the FontEasy installer.

When you download a program that Windows does not know yet, Microsoft Defender SmartScreen may show "Windows protected your PC". If you downloaded FontEasy from its official GitHub page (https://github.com/s4rt4/fonteasy-guide), click **More info** and then **Run anyway**. The installer installs FontEasy for your user only and does not need administrator rights. If you downloaded it from anywhere else, do not run it. See [Installing FontEasy](/start/install/).

### Export says something failed.

Run **Font › Check Font…** (<kbd>F7</kbd>). It checks names, metrics, the glyph set, outlines, kerning and feature code, and it also tries to build the font, so it usually finds the cause. Each finding opens what it is about, and many have a **Fix** button. Problems in the feature code are the most common cause; see [the feature editor shows an error](#the-feature-editor-shows-an-error). See also [Checking your font](/production/quality/).

### What is the "Remove overlaps" option, and should I leave it on?

Leave it on. It merges overlapping shapes in the exported file, which some programs and printers need, and your source keeps them separate for easy editing.

## Web fonts

### How do I use my font on a website?

Choose **File › Export › Export Web Font…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>). It is set up for the web: WOFF2 and WOFF, plus a CSS file with `@font-face` rules. Upload the font files and the CSS file to your site, link the CSS from your page, and use the family name in your styles. See [Testing and publishing](/production/testing-publishing/).

### My web font file is large. How do I make it smaller?

Use WOFF2, which is compressed. In Pro Mode, the **Web** export profile (**File › Export › Export Profiles…**) also makes a Latin *subset*: it leaves out glyphs a typical Latin website does not need. See [subsetting](/reference/glossary/#subsetting).

### I uploaded a new version, but the browser still shows the old font.

Browsers keep downloaded fonts in their cache. Reload the page with <kbd>Ctrl</kbd>+<kbd>F5</kbd> in the browser, or give the new file a new name (for example with the version number) and update the CSS.

## Licensing

### Who owns the fonts I make with FontEasy?

You do. The FontEasy license covers the program, not what you make with it. You can give your fonts away, sell them, or use them in commercial work.

### How do I choose a license for my font?

Decide what others may do with it: only use it, or also change and share it. Many free fonts use the SIL Open Font License (OFL); commercial fonts usually come with the seller's own license. Write the license and its web address in **Font › Font Info…** (the license fields), so they travel inside the font file. **Check Font** reminds you when they are empty. See [Font info](/production/font-info/) and the glossary entry [font license](/reference/glossary/#font-license).

### Can I open a font I bought, or a Windows font, and change it?

FontEasy can open most TTF and OTF fonts, but whether you are *allowed* to change one depends on its license, not on FontEasy. The fonts that come with Windows, and most bought fonts, may not be modified or shared in changed form. Fonts under the Open Font License may be changed, but there are rules about the name. Read the license first.

## Python and scripting

### Do I need to install Python?

No. The Windows download includes Python 3.14 with fontTools, used only when you run a script or plugin. FontEasy itself works without Python. See [Which Python runs your scripts](/power/scripting/#which-python-runs-your-scripts).

### I see "Python was not found".

FontEasy could not find its bundled Python, usually because `FontEasy.exe` was copied somewhere without the `python` folder next to it. Reinstall FontEasy, or unzip the whole download again. You can also install Python from python.org and choose its `python.exe` in **Edit › Preferences… › General › Scripting**.

### My script stops with a red error.

Read the last line of the red text: it names the kind of error and the reason. The line with the mistake is underlined in the editor; click a red line in the output to jump to it. The most common causes are a missing font or glyph (`None` or `KeyError`) and indentation mistakes. The scripting chapter has a [table of common errors](/power/scripting/#when-something-goes-wrong). Whatever the script did before it failed is one undo step: press <kbd>Ctrl</kbd>+<kbd>Z</kbd>.

### A script seems stuck.

Click the square **Stop** button in the Scripting panel. FontEasy ends the Python program at once; the changes made so far can be undone in one step.

### I installed a package with pip, but my script cannot import it.

The bundled Python has its own packages and no `pip`. Install Python from python.org, install your packages and `fonttools` into it, and choose its `python.exe` in **Edit › Preferences… › General › Scripting**. See [Using another Python](/power/scripting/#using-another-python).

### A plugin does not appear in the menu.

Open **Tools › Plugins…** and click **Reload**. Check that the plugin's checkbox is ticked, and look for a red message about its `plugin.json` at the bottom of the list. The folder must be directly inside `%APPDATA%\FontEasy\plugins`, and its `plugin.json` must be valid JSON. Plugin commands are greyed out when no font is open or another script is running.

## Performance

### FontEasy feels slow with my big font.

A few things help:

- The Preview panel rebuilds the font in the background shortly after each change ("Compiling…"). With thousands of glyphs this takes longer; it never blocks your drawing, but you can hide the bottom panels with <kbd>Tab</kbd> while you draw.
- Close fonts you are not working on.
- Make the glyph cells smaller in the Overview (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>-</kbd>) so fewer glyphs are drawn at a time.
- **Check Font** and exports run in the background; you can keep working while they run.

### My script is slow.

Every time a script reads or changes something, it sends a request to FontEasy (the counter next to the spinner shows how many). Looping over `for g in f` and reading `g.name`, `g.width` and `g.unicodes` is cheap, because they come in one request. Reading the contours of every glyph costs one request per glyph. Read only what you need, and avoid reading the same glyph again and again inside a loop.

## Where things are

### Where are my fonts?

Wherever you saved them: **File › Save As…** shows the folder. Recent fonts are listed in **File › Open Recent** and on the Home screen. A saved font is a folder ending in `.ufo` (or a `.designspace` file with UFO folders next to it).

### Where are FontEasy's settings, plugins and recovery copies?

In `%APPDATA%\FontEasy`. Press <kbd>Win</kbd>+<kbd>R</kbd>, type `%APPDATA%\FontEasy` and press <kbd>Enter</kbd>. See [Where FontEasy keeps its settings](/power/preferences/#where-fonteasy-keeps-its-settings).

### Where is FontEasy itself installed?

The installer puts it in `%LOCALAPPDATA%\Programs\FontEasy`. The zip version runs from wherever you unpacked it. Fonts installed with **Install Font for Testing** go to your personal Windows fonts folder, and test pages from **Test Font in Browser** go to a `FontEasy-test` folder in your Temp folder.

## Recovering work

### FontEasy crashed. Is my work lost?

Probably not. Start FontEasy again. If fonts had unsaved changes, the **Recover Unsaved Fonts** window appears; click **Recover**, check the font, and save it right away. You lose at most the changes made since the last autosave (every 5 minutes unless you changed it). See [Autosave and crash recovery](/power/preferences/#autosave-and-crash-recovery).

### I clicked "Don't Save" by mistake.

When you close a font with **Don't Save**, FontEasy also deletes its recovery copy, so the unsaved changes are gone. What you saved before is safe on disk. Save often with <kbd>Ctrl</kbd>+<kbd>S</kbd>, and keep backup copies of your `.ufo` folder (for example zipped, with the date in the name) at important moments.

### I saved something I did not want.

If the font is still open, use **Edit › Undo** or the **History** panel to go back, and save again. Once the font is closed, its undo history is gone, so restore your `.ufo` folder from a backup.

## Reporting a bug or asking for help

### How do I report a bug?

Open an issue on GitHub: https://github.com/s4rt4/fonteasy-guide/issues. A good report helps the problem get fixed quickly:

1. **The FontEasy version.** It is at the bottom right of the window ("FontEasy 1.5.0") and in **Help › About FontEasy**.
2. **What you did**, step by step, so someone else can do the same.
3. **What you expected**, and **what happened instead**.
4. **A screenshot**, and the exact text of any error message.
5. If it is about a particular font and you can share it, attach the `.ufo` folder as a zip. For scripts, include the script and the red text from the output.

Check first whether someone already reported the same problem; if so, add your details there.

### Where can I find more help?

**Help › FontEasy Help** (<kbd>F1</kbd>) opens FontEasy's page on GitHub. **Help › Tour** shows the short guided tour again. The [glossary](/reference/glossary/) explains every font term used in this guide.

## Summary

- Save keeps your UFO source; Export makes TTF, OTF, WOFF or WOFF2 files for other programs.
- Most drawing problems are fixed with **Correct Direction**, **Remove Overlap**, **Fix Problems** and the **Validation** panel.
- Space first, kern second; use kerning groups for accented letters.
- Feature problems usually come from glyph names; check them and **Update Automatic Features**.
- After installing a font, restart the program; replace old versions cleanly and test with **Test Font in Browser** or **Install Font for Testing**.
- Autosave and **Recover** protect you against crashes, but not against **Don't Save**.
- Report bugs at https://github.com/s4rt4/fonteasy-guide/issues with the version, steps and a screenshot.

## Try it yourself

1. Find out where your settings folder is: press <kbd>Win</kbd>+<kbd>R</kbd>, type `%APPDATA%\FontEasy`, and look at what is inside. Which of the files and folders from the [preferences chapter](/power/preferences/#where-fonteasy-keeps-its-settings) do you see?
2. Export your font as TTF, install it, and type a sentence with it in Word or another program. If something looks wrong, use this page to find out why.
