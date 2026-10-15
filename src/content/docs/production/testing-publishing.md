---
title: Testing and publishing
description: Try your font in the preview, in a browser and in real apps, then choose a license and a name, publish it, keep its versions in order and keep your sources safe.
---

Your font is drawn, checked and exported. Now comes the moment of truth: does it work in the places where people will use it? A font that looks perfect in FontEasy can still surprise you in Word, in a browser or on a phone. Testing in real apps catches those surprises before your users do.

After testing comes publishing: deciding how others may use your font (its license), giving it a name that is truly yours, sharing or selling it, and later releasing better versions. Behind all of that sits one quiet habit that protects months of work: saving and backing up your sources.

This chapter covers that whole last stretch.

![The release cycle: design, check, test, export, publish, listen to feedback, then raise the version and go round again.](diagram:testing-publishing-cycle)

In this chapter you will learn:

- how to test with the **Preview** panel and its waterfall;
- how **Test Font in Browser** (<kbd>F5</kbd>) makes a test page;
- how to install a test copy on Windows (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) and remove it again, and how to deal with font caches;
- what to look for in Word, design apps and browsers, and in many languages;
- how people install fonts on Windows and macOS;
- how to choose a license, and which fonts you may not copy;
- how to choose a name that does not belong to someone else;
- how to publish on GitHub, submit to Google Fonts, or sell your font, and how to make a specimen;
- how to number versions and release updates;
- how to save your sources, back them up, and recover after a crash.

## Testing inside FontEasy: the Preview panel

The quickest test is always at hand. The **Preview** panel, in the bottom dock (or **Window › Panels › Preview**), sets text in your font as it will appear in apps. FontEasy compiles your font in the background a moment after every change (you may see **Compiling…** briefly), then shapes the text with HarfRust, the same kind of [shaping](/reference/glossary/#shaping) engine browsers and apps use. So kerning, ligatures and accents show just as they will after export.

![The Preview panel showing “HAVANA LIVES” in Mutator Sans at 64 points, with the kern feature switched on.](screen:preview)

What you can do in the panel:

- Type your own text in the text field (**Type sample text**).
- Change the size with the slider or the number field next to it.
- Switch features on and off with the buttons under the text field (see [OpenType features](/opentype/features/)).
- Tick **Glyphs** to show, by name, the glyphs the text is shaped into. This tells you whether ligatures, small caps and localized forms really come in.
- Choose a language in the language menu (it shows **Default language** at first; it appears when your features name languages) to test localized forms.
- For a variable font, move the axis sliders above the text.

If the build fails, the panel shows **Build failed — showing unshaped outlines**; run **Font › Check Font…** to find out why.

### The waterfall

Tick **Waterfall** to set your text at several sizes at once: 12, 16, 24, 32, 48, 72 and 96. A [waterfall](/reference/glossary/#waterfall) shows quickly whether the font still reads well when small, and whether details that look fine at 96 become clumsy or disappear at 12.

![The Preview panel in waterfall mode: “Hamburgefonstiv” in Source Serif 4 at 12, 16 and 24 points, with the feature buttons above.](screen:g-waterfall)

:::tip[Good test words]
Designers love "Hamburgefonstiv": it contains most basic lowercase shapes. Also try "nnonnoonoo" and "HHOHHOOHOO" for spacing, "AVATAR", "Tokyo", "We'll" for kerning, and real sentences in the languages you want to support.
:::

## Test in the browser (F5)

The Preview shows your font inside FontEasy. To see it in a real browser, use the test page.

1. Choose **File › Test Font in Browser** (<kbd>F5</kbd>).
2. FontEasy builds your font (**Building the test page…** appears briefly) and opens a page in your default browser.

The page shows:

- a large line of editable text at 64 pixels, starting with the sample text from your Preview panel; click it and type anything;
- a checkbox for each [OpenType feature](/reference/glossary/#opentype-feature) in your font, so you can switch features on and off just as in apps; the features apps switch on by default start ticked;
- a waterfall of the same text at 12, 16, 20, 24, 32, 48, 64 and 96 pixels;
- a paragraph of test sentences, with pangrams, figures, punctuation and the words "Jakarta, Bandung & Yogyakarta".

The page follows your system's light or dark setting, so you can also check how the font looks as light text on a dark background.

Nothing is installed: the font is loaded only by this page. The page and a WOFF2 copy of the font are written to a folder called `FontEasy-test` in your Windows temporary folder. Each test uses a new file name with a time stamp, so the browser never shows an older copy from its cache: press <kbd>F5</kbd> in FontEasy again after every change.

To check other browsers, copy the address of the page from the address bar and paste it into Edge, Chrome or Firefox. Browsers on Windows and macOS draw text differently, so if you can, look at the page on a Mac or a phone too.

In Simple mode, the **Test and export** step of the Font Journey has a **Test (F5)** button.

## Install a test copy on Windows (Ctrl+F5)

Some things can only be tested in desktop apps: how the font looks in Word, whether line spacing is right, whether the **B** and **I** buttons find your Bold and Italic. For that the font must be installed. FontEasy can install a *test copy* for you.

1. Choose **File › Install Font for Testing** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>).
2. Wait for the message **Test font installed**.
3. Start the app you want to test in (or restart it if it was already open).
4. In its font menu, look for your family name followed by "Test", for example **Nusantara Sans Test**.

The test copy is installed only for your Windows user account, so no administrator rights are needed. It gets "Test" added to its family name and PostScript name on purpose: it can never clash with a "real" copy of the same font that you or your users installed in the normal way.

When you change your font, press <kbd>Ctrl</kbd>+<kbd>F5</kbd> again. The new copy replaces the old one; restart the app to see it. If Windows refuses because the font file is in use, close the apps that use the test font and try again.

To remove the test copies, choose **File › Remove Test Fonts**. It removes every test font FontEasy installed, and the status bar says how many (**2 test fonts removed**). Fonts you installed yourself are not touched.

:::note
The test copy is built without hinting, so tiny text on Windows may look a little softer than in your final hinted export. Install for testing only on Windows; the menu item is not available elsewhere.
:::

### Font caches: "I changed my font but nothing changed"

Computers keep track of installed fonts in lists called caches, and most apps read the list of fonts once, when they start. So:

- **Restart the app** after installing a new version. With Microsoft Office, close every Office app, not just the document.
- **Don't keep two copies with the same name.** If you installed your font the normal way earlier and now install a new version, uninstall the old one first. Two fonts with the same name confuse apps; that is exactly why FontEasy names its test copies "… Test".
- **Browsers cache web fonts.** On your own website, after uploading a new version, reload with the browser's hard reload, or give the files a new name (for example with the version number) so visitors get the new one.
- If a font still behaves strangely, restarting the computer clears most caches.

## Testing in real apps

Once the test copy is installed, spend some time with it in the apps your users will use. Here is what to look for.

**Word and other office apps:**

- Type a few paragraphs, including capitals with accents (`Á`, `Ê`, `Ö`) and letters with descenders. Are any tops or bottoms cut off? If so, see [Font Info](/production/font-info/#why-letters-get-cut-off).
- Is single line spacing comfortable? Too tight, too loose?
- Select text and click **B** and **I**. Does Word switch to your real Bold and Italic, or does it fake them by smearing and slanting the Regular? Fake styles mean the style names or style linking need attention; see [Font Info](/production/font-info/#how-apps-group-your-styles).
- Look at small sizes (8–10 points) and print a page.

**Design apps (Illustrator, Photoshop, Inkscape, Affinity …):**

- Open the app's OpenType or Glyphs panel and try your features: ligatures, alternates, small caps, figures.
- Set large headlines and check kerning between capitals.
- Check that the whole family appears together, sorted from light to heavy (that comes from the [weight class](/production/font-info/#weight-class)).

**Browsers:** use the test page (<kbd>F5</kbd>), and later your exported WOFF2 files with their CSS on a real page.

### Testing many languages

If your font supports more than English, test each language with real words and sentences, not just the alphabet. Ask a native reader if you can.

- The **Glyph sets** list in the Overview sidebar shows how much of each set you have drawn, such as "Latin Extended-A 122/128". Use **Font › Add Glyphs…** to add the characters a language needs (see [The glyph set](/drawing/glyph-set/)).
- Type sample sentences in the Preview: Indonesian ("Bahasa Indonesia mudah dipelajari"), Vietnamese with its stacked accents ("Tiếng Việt"), Polish ("Zażółć gęślą jaźń"), Turkish with dotless ı and dotted İ.
- If your feature code has language-specific forms (`locl`), choose the language in the Preview's language menu and check that the right forms appear. Tick **Glyphs** to see their names.
- Stacked accents are tall: check them for clipping on Windows with the test copy.

## Installing fonts: help for your users

People who download your font will ask how to install it. Here are the usual ways, which you can copy into your README or shop page.

**Windows 10 and 11:**

1. Unzip the download if it is a `.zip` file.
2. Right-click the `.otf` or `.ttf` file and choose **Install** (for your account) or **Install for all users** (needs administrator rights). Or double-click the file and click **Install**.
3. Restart open apps.

To remove a font: open **Settings › Personalization › Fonts**, click the font, and choose **Uninstall**.

**macOS:**

1. Double-click the `.otf` or `.ttf` file. **Font Book** opens and shows a preview.
2. Click **Install**.

To remove it, open Font Book, select the font and delete it.

Tell users to install either the OTF or the TTF version, not both, and to remove an old version before installing a new one.

## Licensing your font

A font is software, and like other software it comes with a [license](/reference/glossary/#font-license): a short legal text that says what people may do with it. Without a license, people don't know whether they may use your font in a logo, on a website or in a book, and careful users will not use it at all.

### Free and open: the SIL Open Font License

The SIL Open Font License, version 1.1 (OFL) is the most widely used license for free fonts. Google Fonts uses it for almost all of its fonts. In short, under the OFL people may:

- use the font for anything, including commercial work such as logos, books, apps and websites;
- embed it in documents and apps;
- share it, and change it.

But they may not:

- sell the font file on its own;
- release a changed version under the original name if you reserved that name ("Reserved Font Name");
- put a changed version under a different license.

To use the OFL, put the license text (`OFL.txt`, available at `https://openfontlicense.org`) next to your font files, and fill in **Copyright**, **License** and **License URL** in [Font Info](/production/font-info/#legal-and-credits).

### Commercial: your own license (EULA)

If you sell your font, you write your own license, often called an EULA (end-user license agreement). Commercial licenses usually set limits such as:

- how many computers or users may install the font (desktop license);
- how many page views a website may have (web license);
- whether the font may be built into an app, an e-book or a game (app and e-pub licenses);
- whether logos and products for sale are allowed.

Many marketplaces offer a standard license you can use. If you write your own, keep it clear and short, and consider asking a lawyer. Put a sentence and a link to it in Font Info's **License** and **License URL**.

### Embedding

Fonts contain an old setting (called fsType) that can forbid embedding the font in documents such as PDFs. FontEasy leaves embedding allowed. If you opened a font that restricts it, **Check Font** shows an **Embedding** note, and its **Fix** allows embedding again. Most fonts, free and commercial, allow it today; limits are better written into the license.

### What you may not copy

FontEasy can open TTF and OTF fonts, and that makes it easy to import someone else's font. Being able to open a font does not mean you may reuse it. Please respect the work of other designers, the same way you want yours respected:

- **Commercial fonts** (and the fonts that come with Windows, macOS or Office) are licensed, not owned. Their licenses almost never allow changing them, tracing them, or releasing them under a new name. Don't import their outlines, trace them from images, or base your font on them.
- **OFL fonts** may be changed, but your changed version must stay under the OFL, keep the original copyright lines, and use a new name if the original name is reserved.
- **Lettering and logos** you find online belong to whoever made them, even if they are not a font.
- **Your own handwriting**, your own drawings and your own scans are yours. That is the safest starting point of all (see [Handwriting fonts](/drawing/handwriting/)).

The rules about fonts differ between countries. When you are not sure, ask the designer, read the license, or ask a lawyer before you publish.

## Naming your font

A good name is easy to say, easy to spell, and yours alone. Before you publish:

1. **Search for it.** Look the name up in Google Fonts, in font shops and in a general web search, with and without the word "font". If another font has the same or a very similar name, pick another.
2. **Avoid trademarks.** Font names are often registered trademarks: "Helvetica", "Futura", "Segoe" and many more. Don't use them, also not with something added ("Helvetica Rounded"). Don't use the names of companies, brands or products either. Many countries have a public trademark database you can search (in Indonesia, the DJKI).
3. **Respect Reserved Font Names.** If your font is based on an OFL font with a Reserved Font Name, your version needs a different name.
4. **Keep it short.** Windows menus show at most 31 characters, and Font Check warns about longer names.
5. **Decide early, keep it forever.** Once people use your font, the name must not change, or their documents lose the font.

While you are still deciding, the test copies' "Test" suffix keeps your experiments apart from any final name.

## Publishing your font

### Sharing on GitHub

GitHub is a popular place to publish free fonts, together with their sources. A usual layout:

```
nusantara-sans/
  sources/          the UFO (or designspace and UFOs)
  fonts/
    otf/  ttf/  webfonts/  variable/
  OFL.txt
  README.md         what the font is, how to install it, a sample image
```

FontEasy's default export folders (`fonts/desktop`, `fonts/web`) fit right in. Use GitHub's **Releases** to attach a ZIP of the fonts for each version, so people can download them without knowing Git.

### Submitting to Google Fonts

Google Fonts accepts free fonts under the OFL. Its requirements change from time to time, so read its current guide for designers before you start. In broad strokes it expects:

- the OFL license, with the sources in a public repository (often on GitHub);
- a glyph set that covers at least its basic Latin set;
- fonts that pass its quality checks (Fontbakery), including its rules for names and vertical metrics;
- a variable font where the design has several weights, plus static fonts.

FontEasy's **Google Fonts** export profile is a good starting point: it writes hinted TTF files, runs Font Check first and stops on errors, and exports static instances of a variable font. FontEasy's checks follow the spirit of Fontbakery but are not the same list, so run Fontbakery itself before submitting.

### Selling your font

You can sell fonts through online marketplaces (MyFonts and Creative Market are two well-known examples) or from your own website. Each marketplace has its own rules; most ask for:

- OTF and/or TTF files, often also WOFF2 for web licenses;
- a license (theirs or yours);
- preview images and a description;
- complete names, version and copyright in the font itself.

Run **Check Font** and fix every error first. Shops check your files, and so do customers.

### Making a specimen

A specimen shows your font at its best: what it looks like, which styles and languages it has, what its features do. It is your font's shop window.

Simple ways to make one:

- Use the **Preview** waterfall and the **F5** test page, and take screenshots.
- Install the test copy (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) and lay out a page in your favourite design app: a big headline, the alphabet, figures, a paragraph at text size, examples of each feature, and sentences in each language you support.
- Show the whole family side by side, from light to heavy.

Use real text, not only "The quick brown fox". Show the font doing the job it was made for: a poster for a display font, a page of reading for a text font.

## Version numbers and updates

Fonts improve after release: someone finds a kerning pair that bumps, a missing letter, a glitch at small sizes. Each time you publish a change, give it a new version number, set in **Font Info** under **Version (major)** and **Version (minor)** (see [Font Info](/production/font-info/#version)).

![Versions over time: 1.000 for the first release, 1.001 for a small fix, 1.100 for new glyphs or features, 2.000 for a redrawn font; 1.100 is major 1 and minor 100.](diagram:testing-publishing-versions)

A simple scheme:

- **1.000** for the first release.
- Raise the last digits for small fixes: **1.001**, **1.002**.
- Raise the middle for additions (new glyphs, a new feature): **1.100**, **1.200**.
- Raise the major number for a redesign: **2.000**.

When you update:

1. Keep the family name, style names and PostScript names the same, so documents set in the old version use the new one.
2. Raise the version.
3. Note what changed. Many OFL projects keep a `FONTLOG.txt` file for this; a list in your README works too.
4. Check, test and export as before.
5. Publish the new files and tell users to uninstall the old version before installing the new one.

## Saving your sources, backups and recovery

The exported fonts are the cake; your source is the recipe. You can always bake a new cake from the recipe, but you can't get the recipe back from the cake. Opening an exported font in FontEasy brings back the outlines, but not everything: your separate overlapping shapes, live drawing effects, export profiles and other working details live only in the source.

### Saving

- **File › Save** (<kbd>Ctrl</kbd>+<kbd>S</kbd>) saves your font as a UFO (or as a designspace with its UFOs).
- **File › Save As…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>S</kbd>) saves under a new name or in a new place. Use it to keep a UFO copy when you started from a TTF or OTF.
- **File › Save All** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>S</kbd>) saves every open font with changes.

A UFO is a folder, not a single file: inside there is one small text file per glyph plus a few files for the font's settings. Copy, zip or back up the whole `.ufo` folder (for a variable font, the `.designspace` file together with all its UFO folders).

FontEasy saves safely: it writes the new version first and only then replaces the old one, so a crash or a full disk while saving never leaves you with a half-written font.

### Autosave and recovery

FontEasy also makes recovery copies of fonts with unsaved changes, every few minutes. You set how often in **Edit › Preferences…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>), on the **General** page, with **Autosave every** (5 minutes at first; 0 turns it off). See [Preferences](/power/preferences/).

These copies never overwrite your own files. They are kept in FontEasy's own folder (`%APPDATA%\FontEasy`) and deleted when you save or close the font normally. If FontEasy or Windows crashes, the next time you start FontEasy you see the window **Recover Unsaved Fonts**: "FontEasy closed unexpectedly. These fonts had unsaved changes:", with each font and how many minutes old its copy is.

- Click **Recover** to open the recovered fonts. Then save them with **File › Save As…** or **File › Save**.
- Click **Discard** to delete the recovery copies.

Autosave is a safety net, not a replacement for saving. Press <kbd>Ctrl</kbd>+<kbd>S</kbd> often.

### Backups

One copy of your work is no copy. Keep at least one more somewhere else:

- a regular copy of the project folder on an external drive;
- a cloud folder (OneDrive, Google Drive, Dropbox);
- version control with Git. Because a UFO is made of small text files, Git keeps a clear history of every change, and GitHub doubles as a backup.

Make a ZIP of the source with the version number in its name (`NusantaraSans-1.100-source.zip`) each time you release. Then you can always go back to exactly what you published.

## Summary

- The **Preview** panel shapes text like real apps; **Waterfall** shows sizes from 12 to 96; **Glyphs** shows which glyphs were used.
- **File › Test Font in Browser** (<kbd>F5</kbd>) opens a test page with editable text, feature checkboxes and a waterfall; nothing is installed.
- **File › Install Font for Testing** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) installs "… Test" for your Windows account; **File › Remove Test Fonts** removes it. Restart apps to see changes.
- Test in Word, design apps and browsers, with accented capitals, small sizes, the B and I buttons, and every language you support.
- Choose a license: the OFL for free fonts, your own EULA for commercial ones. Never reuse other people's fonts without permission.
- Choose a name that is unused and not a trademark, and keep it.
- Publish on GitHub, submit to Google Fonts (read its current guide), or sell through marketplaces; make a specimen.
- Raise the version with every release; keep names the same.
- Save your UFO sources, keep backups; autosave lets you recover after a crash.

## Try it yourself

1. Press <kbd>F5</kbd> and type a sentence in your language in the large line of the test page. Switch a feature off and on. Then change one letter in FontEasy, press <kbd>F5</kbd> again and compare.
2. Press <kbd>Ctrl</kbd>+<kbd>F5</kbd>, open Word (or WordPad), and set a paragraph in your test font with a few accented capitals. Try single and double line spacing. Afterwards choose **File › Remove Test Fonts**.
3. Write the README for your font: its name, a one-line description, its license, and the installation steps for Windows and macOS from this chapter.
