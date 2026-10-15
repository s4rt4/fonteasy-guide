---
title: Checking your font
description: Use Check Font to find problems in names, metrics, glyphs, outlines, kerning, features and the compiled font before you release, and fix many of them with one click.
---

A font is a small piece of software. Like any software, it can contain mistakes that you do not see while you work: a space character that has ink in it, a Bold that Windows thinks is a Regular, an accent cut off at the top of a line, a kerning pair that pushes two letters into each other. Some of these mistakes only show up on somebody else's computer, after you have shared the font.

Professional type studios run long lists of automatic checks before every release. The best known tool for this is Fontbakery, used by Google Fonts. FontEasy has its own set of checks in the same spirit, built in, so you can run them with one key press and without installing anything: **Font › Check Font…**.

Checking is not a final exam you pass once. It is more like a spell checker: run it often, read what it says, fix what matters, and run it again. Many findings have a **Fix** button that repairs them for you.

In this chapter you will learn:

- how to run Check Font and read the Font Check panel;
- what errors, warnings and notes mean, and which ones must be fixed;
- what each of the checks looks at, section by section;
- how automatic fixes work, and how to undo them;
- how to save a report as an HTML file;
- how Simple mode presents the same checks as **Check My Font**;
- how the Kerning Audit looks only at your kerning.

## Two kinds of checking

FontEasy checks your font in two ways, and it helps to know the difference.

- **Validation** watches your outlines all the time while you draw. It marks problems on the canvas and in the overview, and lists them in the **Validation** panel. It looks at one glyph at a time: open contours, wrong contour direction, missing extreme points and so on. The chapter [Fixing outline problems](/drawing/problems/) explains it.
- **Check Font** looks at the whole font at once, when you ask for it. It checks the names and credits, the vertical metrics, the glyph set, the kerning, the feature code and, after building the font, the compiled font file itself. The outline problems found by validation are included too, as one section.

Use validation while you draw, and Check Font when you think a version is ready, and before every export you want to share.

## Running Check Font

1. Open your font.
2. Choose **Font › Check Font…** or press <kbd>F7</kbd>.
3. The **Font Check** panel opens in the bottom dock and shows **Checking…** with a spinner. The checks run in the background, so you can keep working.
4. After a few seconds the findings appear, grouped into sections.

![The Font Check panel for Source Serif 4: buttons at the top, the counts of errors, warnings and notes, then the Names and credits section with two notes.](screen:fontcheck)

You can also open the panel from **Window › Panels › Font Check**. While no check has run yet, it shows a short description and a **Check Font** button.

If your font has several masters, Check Font looks at the master you are editing (the one shown in the master menu at the top of the Overview) and at the font as it would be exported.

## Reading the Font Check panel

From top to bottom, the panel shows:

- **Check Again** runs the checks again (before the first check this button is called **Check Font**).
- **Fix All (n)** fixes every finding that has an automatic fix; *n* is how many there are. It only appears when there is something to fix.
- **Save Report…** writes all findings to an HTML file.
- Three counters with icons: the number of errors, warnings and notes.
- **Notes**: a checkbox that shows or hides the notes, the least important findings.
- The findings, in sections. Click a section title to fold it away or open it again. The number after the title is how many findings it has.

When you change the font after a check, a small warning line appears: **The font changed since this check.** The findings may no longer be accurate; click **Check Again**.

When everything is fine, the panel says **No problems found.** with a green check mark.

Each finding is one sentence in plain language, such as "There is no copyright line." or "The style “Bold” suggests weight class 700, but it is 400." Rest the mouse pointer on a finding to see a sentence of advice about that check.

### Click to go there

Most findings know where the problem is. Click the sentence and FontEasy takes you there:

| The finding is about… | Clicking it… |
|---|---|
| A Font Info field | opens **Font Info** scrolled to that field, with its label highlighted |
| A glyph | opens the glyph in the editor |
| A kerning pair | opens the two glyphs in the editor with the **Kerning** tool and the **Kerning** panel |
| A kerning group | opens the **Kerning Groups** dialog |
| An error in the feature code | opens the feature editor at that line |

Long lists are cut after 60 findings per section ("… and 12 more (see the saved report)"). This happens mostly with empty or unused glyphs in a font that is still in progress. The saved report always lists everything.

## Errors, warnings and notes

Every finding has one of three levels of severity, shown by its icon.

![The three levels: an error is something broken, fix it before you release; a warning is probably a mistake, fix it unless you meant it; a note is good to know, read it and decide.](diagram:quality-severity)

- An **error** (red circle with a cross) means something is broken or will not work: the font cannot be built, Windows will cut off letters, a space character has ink. Fix every error before you share a font.
- A **warning** (orange triangle) means something is probably a mistake or missing: no copyright line, a glyph that has a character but no drawing yet, a kerning pair that makes letters collide. Fix it, unless you are sure it is what you want.
- A **note** (blue circle with an "i") is information: no vendor ID, an unusual units-per-em value, a glyph nobody uses. Many notes are a matter of taste. Read them once; you can hide them with the **Notes** checkbox.

Within each section, errors come first, then warnings, then notes.

A font in progress often shows hundreds of findings, mostly "has no outline yet" warnings for glyphs you have not drawn. That is normal. They disappear as you draw.

## Automatic fixes

About twenty of the checks know how to repair what they find. Those findings have a **Fix** button at the end of the line.

- **Fix** repairs that one finding. It disappears from the list straight away; the rest of the list stays.
- **Fix All (n)** repairs every finding that has a fix, then runs the checks again.

Each click is one step in the undo history, called "Fix Issue" or "Fix Issues". If you do not like the result, press <kbd>Ctrl</kbd>+<kbd>Z</kbd>.

Fixes only touch the master you are editing. They never delete glyphs you drew. When a fix removes something (a kerning pair that does nothing, a group member that does not exist), it is something that had no effect anyway.

:::tip
Read the findings before you click **Fix All**. Most fixes simply do the obvious thing, but a few make a choice for you: for example, the **Windows clipping** fix makes Windows line spacing larger. You may prefer to fix some problems by hand instead.
:::

The usual way of working is a loop:

![Check Font, read the findings, fix them or click to open what they are about, then Check Again, until no errors are left.](diagram:quality-loop)

## What Font Check looks at

The checks are grouped into eight sections. Here is every check, with what it means in plain words. "Fix" says whether a **Fix** button is offered.

### Names and credits

These checks look at the fields of **Font › Font Info…**. See [Font Info](/production/font-info/) for what the fields mean.

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Family name | The font has no family name yet; or it has letters outside plain ASCII, which some older apps show wrongly | Warning, note | — |
| Style name | There is no style name (it would be exported as Regular) | Warning | sets "Regular" |
| Name length | The name Windows shows in its menus is longer than 31 characters | Warning | — |
| PostScript name | It has spaces, forbidden characters or more than 63 characters; or it would be made from a family name with accented letters | Error, warning | rebuilds it |
| Version | There is no version number; or the version starts with 0 (a pre-release) | Warning, note | sets 1.000 |
| Copyright | There is no copyright line | Warning | — |
| License | There is no license text or URL | Note | — |
| Vendor ID | It is longer than four characters or not ASCII; or there is none | Error, note | — |
| Designer | The designer is not credited | Note | — |
| Weight class | The weight class does not match the style name (Bold should be 700) | Warning | sets it |
| Width class | The width class does not match the style name (Condensed, Expanded …) | Note | sets it |
| Italic angle | The angle is positive; an italic style has angle 0; or the angle differs from the measured slant of the stems | Error, warning, note | corrects it |
| Style linking | The font is linked as a different style than its name says in Windows menus | Warning | relinks it |

### Vertical metrics

These look at the **Dimensions** and **OpenType** groups of Font Info. The chapter [Font Info](/production/font-info/#vertical-metrics-how-tall-is-a-line) explains vertical metrics.

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Units per em | The value is outside 16–16384; or it is unusual (not 1000, 2048 or another power of two) | Error, note | — |
| Ascender, descender and heights | The descender is positive (it must be below the baseline); or the ascender, cap height or x-height is not set | Error, warning | makes the descender negative |
| Heights match the glyphs | The cap height or x-height is more than 1% of the em away from the real top of `H` or `x` | Warning | sets the measured value |
| Line spacing tables | The Typo and hhea values are both set but differ | Note | copies Typo to hhea |
| Line gap | A line gap other than 0 is set | Note | — |

### Glyph set

These look at which [glyphs](/reference/glossary/#glyph) the font has and how they are named. See [The glyph set](/drawing/glyph-set/).

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| .notdef | There is no `.notdef` glyph (the box shown for missing characters), or it is not the first glyph | Warning | adds it or moves it first |
| Space | There is no space (U+0020) (error); or no no-break space (U+00A0) (warning) | Error, warning | adds the missing one |
| Ink in a space | A space character has outlines | Error | — |
| Empty glyph | A glyph has a character but no outline yet, so typing it shows nothing | Warning | — |
| Glyph name | A [glyph name](/reference/glossary/#glyph-name) uses characters other than A–Z, a–z, 0–9, `_` and `.`, starts with a digit or period, or is 64 characters or longer | Warning | — |
| Basic characters | Some of A–Z, a–z, 0–9 and common punctuation are missing | Note | — |
| Combining mark width | A combining accent (a [mark](/reference/glossary/#mark)) has a width; it should be 0 | Warning | — |
| Unused glyph | A glyph has no character, and no component, colour layer or feature code uses it, so nobody can ever type it | Note | — |

### Outlines

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Outline problem | The errors and warnings that validation finds in a glyph (open contour, contour crossing itself, wrong direction, missing extreme point …), one finding per kind of problem per glyph | Error, warning | the same fix as in the Validation panel, where there is one |

The less important outline notes of the Validation panel (overlapping contours, almost straight lines, fractional coordinates) are not repeated here. Overlaps are removed when you export anyway.

### Kerning

These checks are also called the **Kerning Audit**. The chapter [Kerning](/spacing/kerning/) explains pairs, groups and exceptions.

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Kerning of a missing glyph | A pair names a glyph or group that doesn't exist, so it does nothing | Warning | removes the pair |
| Group member missing | A kerning group lists a glyph that doesn't exist | Warning | removes it from the group |
| Glyph in two groups | A glyph is in two left-side or two right-side groups (it may be in only one of each) | Error | — |
| Exception that changes nothing | An exception has the same value its groups already give | Note | removes the exception |
| Zero kerning | A pair is kerned by 0 and overrides nothing | Note | removes the pair |
| Very large kerning | A pair is kerned by more than 30% of the em, usually a typing mistake | Warning | — |
| Kerning makes glyphs collide | With this kerning the two shapes overlap by more than 1% of the em | Warning | — |

The collision check measures the actual shapes. Shapes that already touch without kerning (by design, as in some script fonts) are not counted; only overlaps that the kerning causes. For a group pair, it reports the member pair that overlaps most.

### Color

These checks only run in a [colour font](/reference/glossary/#color-font). See [Colour fonts](/advanced/color/).

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Color outside the palette | A layer uses a palette colour that doesn't exist; it shows black or not at all | Error | — |
| Missing layer glyph | A colour layer names a glyph that doesn't exist | Error | removes the layer |
| Empty color layer | A colour layer has no outline yet, so it adds nothing | Warning | — |
| Palettes of different sizes | The palettes don't all have the same number of colours | Note | fills up the short ones |
| No fallback outline | A colour glyph has no outline of its own, so apps without colour support show nothing | Note | combines the layers into its outline |

### OpenType features

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Feature code error | The [feature code](/reference/glossary/#feature-code) doesn't compile; the message gives the line and the reason | Error | — |

Clicking it opens the feature editor at the line with the problem. See [OpenType features](/opentype/features/). A font with broken feature code cannot be exported, so this one matters. Font Check still checks the rest of the compiled font by building a copy without the feature code.

### Compiled font

For these checks FontEasy builds the font, as it would for a preview, and examines the result.

| Check | What it looks for | Severity | Fix |
|---|---|---|---|
| Font builds | The font compiles at all; the message gives the reason when it doesn't | Error | — |
| Windows clipping | Some glyphs reach higher than the Windows ascent or lower than the Windows descent, so Windows cuts them off | Error | raises the Windows ascent and descent |
| Embedding | The font restricts embedding in documents (an old setting called fsType) | Note | allows embedding |
| Same line spacing everywhere | Lines are spaced differently on macOS (hhea) and Windows | Note | copies the Windows values to hhea |
| Style bits | The bold and italic flags in two tables of the font disagree | Error | — |
| Character map | The font has no Unicode character map, so it can't be typed with | Error | — |

That makes 41 checks, plus 5 for colour fonts. Each check can produce a few different messages; the panel shows the exact one.

## The HTML report

A report is useful when you want to keep a record of a release, send the findings to someone who helps you, or work through a long list away from FontEasy.

1. Run **Check Font** (<kbd>F7</kbd>).
2. Click **Save Report…**.
3. Choose a folder. The suggested file name is your font's name plus `-check.html`, for example `NusantaraSans-Bold-check.html`.
4. Click **Save**.

The status bar shows **Report saved to …**. Open the file in any web browser. It has the font's name, a summary such as "0 errors, 6 warnings, 27 notes", and every finding grouped into the same sections as the panel, each with its severity, the name of the check and the message. Unlike the panel, the report is never cut short, and it includes the notes even when you have hidden them. It is written in the language FontEasy is using.

## Check My Font in Simple mode

In Simple mode the same checks are available, with a friendlier start.

- The **Font Journey** panel has a step **Check your font**, just before **Test and export**. Its button is **Check My Font**. Before the first check the step says "Names, metrics, outlines and kerning, checked before you release"; afterwards it shows how many errors and warnings are left, or **No problems found.**
- **Font › Check Font…** and <kbd>F7</kbd> work as in Pro mode.
- Before the first check, the button at the top of the Font Check panel is called **Check My Font**.
- **Notes** are hidden at first, so you see only errors and warnings. Tick **Notes** to see them too.

![Check My Font in Simple mode: the Font Check panel shows the Outlines section with three warnings, each with a Fix button; the Notes box is unticked.](screen:fontcheck-simple)

Everything else, including the **Fix** buttons, **Fix All** and **Save Report…**, works the same.

## The Kerning Audit

When you are working on kerning, you may want to see only the kerning findings. In Pro mode, choose **Kerning › Kerning Audit**.

It runs the same checks, but the Font Check panel shows only the **Kerning** section. A highlighted **Kerning ×** label next to the counters tells you a filter is on; click it to show every section again. **Fix All** then only fixes kerning findings.

![The Kerning Audit for Source Serif 4: three warnings, among them “The kerning of T o (−900) makes them overlap by 623 units.”](screen:kerningaudit)

In this example, someone has kerned `T` and `o` by −900 units. The audit reports both that the kerning is very large and that it makes the shapes overlap by 623 units. Click the finding to open `T` and `o` with the Kerning tool and correct the value. The chapter [Kerning](/spacing/kerning/) explains how.

## Checking before export

Check Font runs when you ask for it, but you can make it part of exporting. In an export profile (Pro mode), the option **Run Font Check first and stop on errors** runs all checks before the profile writes any file. If there is an error, the export stops and says how many errors were found, with the first one as an example. Warnings and notes do not stop it. The built-in **Google Fonts** profile has this option on. See [Exporting your font](/production/export/#export-profiles).

For scripts, the commands `font.check` and `font.fixIssues` do the same as the panel; see [Scripting](/power/scripting/).

## When something goes wrong

- **A finding does not go away after you fixed it by hand.** Click **Check Again**. The list is not updated by itself after you edit the font; the line **The font changed since this check.** reminds you.
- **"The font doesn't build".** Read the rest of the message: it names the reason. Often it is a glyph or component that is missing, or a problem in the feature code. Fix that first; many other checks need a font that builds.
- **Fix did nothing, or an error says "nothing to fix".** The problem may already be gone. Run **Check Again**.
- **Hundreds of "has no outline yet" warnings.** You have characters in the font that you have not drawn yet. Draw them, or delete the glyphs you do not plan to draw, so the font does not contain blank letters.
- **A warning you disagree with.** That is allowed. Checks follow common practice, but a display font with a giant swash or a deliberate collision may break a rule on purpose. Just make sure there are no errors.

## Summary

- **Font › Check Font…** (<kbd>F7</kbd>) checks the whole font in the background and lists the findings in the **Font Check** panel, in eight sections.
- **Errors** must be fixed, **warnings** usually should be, **notes** are information; the **Notes** box hides them.
- Click a finding to go to the field, glyph, pair, group or line it is about; hover it for advice.
- **Fix** and **Fix All** repair about twenty kinds of problems; each is one undo step.
- **Save Report…** writes every finding to an HTML file.
- Simple mode calls it **Check My Font** and has a **Check your font** step in the Font Journey.
- **Kerning › Kerning Audit** shows only the kerning findings.
- Run **Check Again** after changes, and check before every export you want to share.

## Try it yourself

1. Open a font you have been working on and press <kbd>F7</kbd>. Count the errors, warnings and notes. Click a finding in the **Names and credits** section and see which Font Info field opens. Fill it in, click **OK**, and click **Check Again**.
2. In a test copy of your font, kern `A` and `V` by −600 in the Kerning window. Choose **Kerning › Kerning Audit** (Pro mode) and find the collision warning. Click it, correct the value, and run the audit again. Then click **Save Report…** and open the HTML file in your browser.
