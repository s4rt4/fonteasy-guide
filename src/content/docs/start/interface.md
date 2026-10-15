---
title: A Tour of the Interface
description: Find your way around FontEasy, from the Home screen and the workspace to panels, modes, the command palette and every menu.
---

The first time you open a font in FontEasy, the screen fills up with a grid of boxes, a column of
tools, a few panels and a row of menus. It can look like a lot. The good news is that every part has
one clear job, and you will use only a handful of them in your first weeks.

This chapter walks around the window one part at a time. You do not need to remember everything:
read it once, try things out, and come back when you wonder what a panel is for. The pictures show
Pro Mode unless the text says otherwise, because Pro Mode has everything; in Simple Mode you will see
fewer tools and panels.

In this chapter you will learn:

- what the Home screen offers;
- the parts of the workspace: title bar and menus, options bar, toolbox, tabs, Overview, panels,
  Preview and status bar;
- what changes between Simple Mode and Pro Mode, and how to switch;
- how to move, hide and bring back panels;
- how to find any command with the command palette;
- how to change the appearance, the language and the keyboard shortcuts;
- what each of the eleven menus is for;
- how to replay the guided tour.

## The Home screen

When no font is open, FontEasy shows the Home screen. It is the place to start or reopen a font.

![The Home screen: New Font… and Open… on the left, four templates under Start a new font, the Recent list and the two mode cards under How do you want to work?.](screen:home)

On the left:

- **New Font…** (<kbd>Ctrl</kbd>+<kbd>N</kbd>) opens the **New Font** dialog, where you name the font
  and choose a template.
- **Open…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>) opens a font file: a UFO, a designspace, a Glyphs file, or
  a finished TTF or OTF font.
- **Back to Fonts** appears when fonts are open, and takes you back to them.
- **Preferences…** and **About FontEasy** sit at the bottom.

In the middle:

- **Start a new font** shows four templates. **Blank** is empty, **Latin Basic** has the 95
  characters of basic English text, **Latin Extended** adds the accented letters of most European
  languages (319 characters), and **Handwriting** has the 76 characters of a handwriting template.
  Click a card to open the **New Font** dialog with that template already chosen.
- **Recent** lists the fonts you opened lately. Click a name to open it again; the **✕** button
  removes it from the list (not from your disk).
- **How do you want to work?** chooses between **Simple Mode** and **Pro Mode**. The chosen card has a
  tick.

You can also open fonts by dragging their files from File Explorer onto the FontEasy window.

When fonts are open, you can still return to the Home screen with **Window › Home**
(<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>H</kbd>) or the house icon in the title bar.

## The workspace at a glance

As soon as a font is open, the window turns into the workspace. Here is a map of its parts, followed
by the real thing.

![A map of the workspace: the title bar with menus at the top, the options bar below it, the toolbox on the left, the tabs and Overview in the middle with filters on its left, the bottom dock, three panel groups in the right dock, and the status bar at the bottom.](diagram:start-workspace-map)

![The workspace in Pro Mode with a new font called Nusantara Sans: the Overview grid in the middle, Glyph Info and other panels on the right, and the Preview at the bottom.](screen:workspace)

### Title bar and menus

The top row holds the eleven menus on the left: **File**, **Edit**, **Glyph**, **Font**, **Metrics**,
**Kerning**, **Features**, **Tools**, **View**, **Window** and **Help**. In the middle is the name of
the font you are working on. A dot after the name, as in "Nusantara Sans •", means it has changes you
have not saved yet.

On the right are, from left to right: the house icon (back to the Home screen), the magnifying glass
(the [command palette](#the-command-palette)), the **Pro** / **Simple** switch, and the usual
buttons to minimize, maximize and close the window. You can drag the window by the empty part of the
title bar, and double-click it to maximize.

### The options bar

Under the title bar sits the options bar. On the left it names the current tool, such as **Select**
or **Pen**, and next to it are the settings of that tool, followed by a one-line hint. In the glyph
editor, the **Select** tool shows the **Width**, **LSB** and **RSB** of the glyph when nothing is
selected, and **X**, **Y**, **W** and **H** fields for the selection when something is.

### The toolbox

The narrow column on the left is the toolbox. Each button is a tool you use in the glyph editor:
click it, or press its key. Hover over a button to see its name and key.

A small triangle in the corner of a button means it holds more tools. Right-click the button, or
press and hold it, to choose another tool from that group; the button then shows the tool you chose.

| Group | Tools (key) |
|---|---|
| Select | **Select** (<kbd>V</kbd>), **Node** (<kbd>A</kbd>) |
| Pen | **Pen** (<kbd>P</kbd>), **Add Point** (<kbd>=</kbd>), **Delete Point** (<kbd>-</kbd>) |
| Pencil | **Pencil** (<kbd>N</kbd>) |
| Shapes | **Rectangle** (<kbd>M</kbd>), **Ellipse** (<kbd>L</kbd>), **Polygon** (<kbd>Shift</kbd>+<kbd>L</kbd>) |
| Cutting | **Knife** (<kbd>K</kbd>), **Scissors** (<kbd>C</kbd>) |
| Transform | **Rotate** (<kbd>R</kbd>), **Scale** (<kbd>S</kbd>) |
| Measure | **Measure** (<kbd>U</kbd>), **Anchor** (<kbd>Shift</kbd>+<kbd>A</kbd>) |
| Spacing | **Metrics** (<kbd>Y</kbd>), **Kerning** (<kbd>J</kbd>) |
| Text | **Text** (<kbd>T</kbd>) |
| View | **Hand** (<kbd>H</kbd>), **Zoom** (<kbd>Z</kbd>) |

In Simple Mode, **Add Point**, **Delete Point**, **Polygon**, **Scissors**, **Rotate**, **Scale** and
**Measure** are hidden. The chapter [Drawing Tools](/drawing/drawing-tools/) explains each tool.

:::tip
Hold <kbd>Space</kbd> to pan the canvas with the mouse while any tool is active, just like the
**Hand** tool.
:::

### Tabs

Below the options bar is a row of tabs, one per open font. Click a tab to switch fonts, and its **×**
to close the font. You can have several fonts open at once, which is handy for comparing or copying
glyphs.

Inside each font there is a second row of tabs. The first is always **Overview**, the grid of all
glyphs. When you open a glyph to edit it, it gets a tab of its own next to the Overview, so you can
keep several glyphs open and jump between them. The **Features** editor and the **Sketchboard** also
open as tabs here.

### The Overview

The Overview shows every glyph of the font as a box in a grid. A drawn glyph shows its outline; an
empty glyph shows its letter faintly, so you can see what still needs drawing. The glyph name is
written under each box. Hover over a box to see its name, code point and Unicode name.

![The Overview of Source Serif 4: categories, scripts and glyph sets on the left, and a grid of real letters on the right with the letter a selected.](screen:g-overview)

To work with the grid:

- Click a glyph to select it. <kbd>Ctrl</kbd>+click adds or removes glyphs from the selection, and
  <kbd>Shift</kbd>+click selects a range. The arrow keys move the selection.
- Double-click a glyph, or press <kbd>Enter</kbd>, to open it in the glyph editor.
- Right-click a glyph for **Rename Glyph…**, **Duplicate Glyph**, **Copy Names** and **Mark Color**.
- Type in the search field, or press <kbd>/</kbd> to jump into it, to find glyphs by name, character
  or code point (`U+00E9`).
- Make the boxes bigger or smaller with **View › Larger Glyph Cells** and **Smaller Glyph Cells**, or
  hold <kbd>Ctrl</kbd> and turn the mouse wheel.

The column on the left filters the grid. **All Glyphs** shows everything. **Categories** (Letter,
Number, Punctuation…) and **Scripts** (Latin, Greek…) show parts of the font. **Glyph Sets** lists
standard sets of characters with how many of them your font has, such as "95/95" for Basic Latin;
choose a set to see what is missing and add it in one click. The chapter
[Choosing Your Characters](/drawing/glyph-set/) explains glyph sets in detail.

### Panels and docks

Panels are the small windows around the edges. They are arranged in tabbed groups in three docks:
right, bottom and (when you put something there) left. Click a panel's tab to show it.

| Panel | What it shows |
|---|---|
| **Font Journey** | The steps from an empty font to a finished one (Simple Mode only) |
| **Glyph Info** | Name, code point, character, script, advance width, contours and points of the selected glyph |
| **Layers** | The layers of the glyph being edited, such as the background layer |
| **Transform** | Move, scale, rotate and skew by numbers |
| **Variations** | Sliders for the masters of a variable font (Pro Mode) |
| **Color** | Colors and layers of a color glyph |
| **Drawing** | Live effects: strokes, corner effects, smart parts |
| **Validation** | Problems found in the outlines, with **Fix** buttons |
| **Kerning** | A searchable list of the font's kerning pairs |
| **History** | Every change you made; click an entry to go back to it |
| **Preview** | Your font, compiled and set in a line of text |
| **Font Check** | The results of **Check Font** |
| **Scripting** | Python scripts (Pro Mode) |

Ways to arrange them:

- **Collapse a group:** double-click one of its tabs, or click the small arrow at the right end of the
  tab row. Do it again to expand.
- **Move a panel:** right-click its tab and choose **Move to Left Dock**, **Move to Right Dock** or
  **Move to Bottom Dock**.
- **Close a panel:** right-click its tab and choose **Close Panel**. Bring it back from
  **Window › Panels**.
- **Hide all panels** for more room: **View › Panels**, or press <kbd>Tab</kbd>. Press it again to
  show them.
- **Start over:** **Window › Reset Workspace** puts every panel and bar back where it was at the
  start.

![The workspace with the History and Layers panels moved into a new dock on the left.](screen:dock-left)

FontEasy remembers your layout when you close it.

### The Preview panel

The **Preview** at the bottom shows your font the way an app would: FontEasy compiles it into a real
font in the background and sets your text with it. While it builds, you briefly see "Compiling…".

![The Preview panel showing HAVANA LIVES in Mutator Sans at 64 pt, with the size slider, the Waterfall and Glyphs checkboxes, and the kern feature switched on.](screen:preview)

- Type any text in the field on the left. "Hamburgefonstiv" is the classic test word.
- Drag the slider or type a size in points.
- **Waterfall** shows the same text at several sizes, one under the other.
- **Glyphs** lists, by name, which glyphs the text was turned into, useful to check ligatures and
  alternates.
- When the font has OpenType features, a row of feature tags appears under the text field ("Shaped
  with HarfRust"); click a tag to switch that feature on or off, and pick a language to test
  language-specific forms.

### The status bar

The thin bar at the very bottom shows messages on the left, such as "Ready", "Saved …" or the result
of the last command. On the right it shows, depending on what you do: the cursor position in font
units while you are in the glyph editor, the selected glyph and its code point (for example
"A · U+0041"), the number of glyphs and the units per em ("320 glyphs · 1000 UPM"), the current mode,
and the FontEasy version.

## Simple Mode and Pro Mode

FontEasy has two modes. They work on the same font files and you can switch at any moment without
losing anything; only the amount of tools on screen changes.

![The same font in Simple Mode: the Font Journey panel at the top right, fewer tools in the toolbox, and the first step of the guided tour at the bottom.](screen:simple)

| | Simple Mode | Pro Mode |
|---|---|---|
| Toolbox | Essential tools | All 20 tools |
| Panels | Font Journey added; no Variations or Scripting | All panels except Font Journey |
| Menus | Advanced items hidden | Every item |
| Validation | Essential checks (open contours, crossing contours, directions…) | All checks |
| Font Check button | **Check My Font** | **Check Font** |
| New Font dialog | Units per em hidden (1000) | **Units per em** field |

Hidden in Simple Mode are, among others, **File › Import › Glyphs App File (.glyphs)…**,
**File › Export › Static Instances…** and **Export Profiles…**, **Font › Masters & Axes…**,
**Instances…** and **Make Compatible**, **Kerning › Kerning Audit**, **Features › Check Features**,
**Tools › Scripting** and a few contour commands.

To switch modes, use any of these:

- the **Pro** / **Simple** switch at the top right of the window;
- **Window › Simple Mode**, **Window › Pro Mode**, or **Window › Switch Mode**
  (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>);
- the mode cards on the Home screen;
- **Edit › Preferences… › Interface › Mode**.

The status bar confirms the change, for example "Simple Mode: essential tools and guided wizards."

:::tip
Simple Mode is not a "lite" version. It is the same FontEasy with less on screen. Many people draw in
Simple Mode and switch to Pro Mode only for a particular job, such as editing feature code.
:::

## The command palette

Cannot remember where a command lives? Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> (or
click the magnifying glass in the title bar, or choose **View › Command Palette**) and start typing.

![The command palette with "mode" typed in: it lists Simple Mode, Pro Mode and Switch Mode, each with its menu and shortcut.](screen:palette)

The palette lists every matching command with the menu it lives in and its shortcut. Use the arrow
keys to choose one and <kbd>Enter</kbd> to run it, or click it. Press <kbd>Esc</kbd> to close the
palette. Commands that cannot run right now (for example **Zoom In** when no glyph is open) are shown
but cannot be chosen.

## Appearance, language and text size

FontEasy has a dark and a light appearance. Switch with **View › Appearance › Dark**, **Light** or
**Follow System** (which follows the Windows setting). The pictures in this guide use the dark
appearance.

![The workspace in the light appearance.](screen:light)

More choices are in **Edit › Preferences…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>), on the **Interface** tab:

- **Theme**: Dark, Light or System;
- **UI font size**: Small, Medium or Large;
- **Language**: English or Bahasa Indonesia, applied immediately;
- **Mode**: Simple or Pro;
- **Title bar**: tick **Use the system title bar (after restart)** if you prefer the standard Windows
  title bar to FontEasy's own.

Click **Apply** to try a change and keep the window open, **OK** to apply and close, or **Cancel** to
forget the changes. **Restore Defaults** resets the current tab.

![The Preferences window on the General tab, with Startup, New fonts, Export and Scripting settings.](screen:prefs)

The **General** tab sets what happens at start (show the Home screen, show the splash screen, how
many recent fonts to list), the units per em and autosave interval for new fonts, and which
ttfautohint and Python FontEasy uses. In the installed app these point to the copies inside the
FontEasy folder; you only change them if you want to use your own. The chapter
[Preferences](/power/preferences/) covers every setting.

## Keyboard shortcuts

Most menu commands and all tools have a keyboard shortcut, shown next to the command in the menu.
A few to learn first:

| Shortcut | Command |
|---|---|
| <kbd>Ctrl</kbd>+<kbd>N</kbd> | New Font… |
| <kbd>Ctrl</kbd>+<kbd>O</kbd> | Open… |
| <kbd>Ctrl</kbd>+<kbd>S</kbd> | Save |
| <kbd>Ctrl</kbd>+<kbd>Z</kbd> / <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd> | Undo / Redo |
| <kbd>Enter</kbd> | Edit Glyph |
| <kbd>PageUp</kbd> / <kbd>PageDown</kbd> | Previous / Next Glyph |
| <kbd>Ctrl</kbd>+<kbd>0</kbd> | Fit in Window |
| <kbd>F5</kbd> | Test Font in Browser |
| <kbd>Ctrl</kbd>+<kbd>E</kbd> | Export Font… |
| <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> | Command Palette |

You can change any shortcut. Choose **Edit › Keyboard Shortcuts…**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>K</kbd>) or **Help › Keyboard Shortcuts**.

![The Keyboard Shortcuts tab of Preferences: a filter field and a list of commands such as File › New Font… with their shortcuts and Remove buttons.](screen:shortcuts)

1. Type part of a command name in **Filter commands**.
2. Click the shortcut next to the command. It changes to "Press keys…".
3. Press the new key combination. Press <kbd>Esc</kbd> instead to cancel.
4. Click **OK**.

If the keys were already used by another command, FontEasy moves them and tells you which command
lost them. **Remove** clears a shortcut, and **Reset** brings back the default. The complete list is
in [Keyboard Shortcuts](/reference/shortcuts/).

## The menus in brief

The menus contain every command in FontEasy. Here is what each one is for. The pictures show the
menus in Pro Mode with Source Serif 4 open; in Simple Mode some items are hidden, and items that
cannot be used right now are grayed out.

### File

Creating, opening, saving and closing fonts; importing glyphs from SVG files or a Glyphs file;
exporting fonts and web fonts; testing your font in the browser (<kbd>F5</kbd>) or installing a test
copy (<kbd>Ctrl</kbd>+<kbd>F5</kbd>); and **Open Recent**.

![The File menu open: New Font…, Open…, Open UFO Folder…, Close, Save, Import, Export, Test Font in Browser, Install Font for Testing, Remove Test Fonts, Exit and Open Recent.](screen:g-menu-file)

### Edit

Undo and redo, cut, copy, paste and delete, selecting, **Find Glyph…** (<kbd>Ctrl</kbd>+<kbd>F</kbd>),
and the **Keyboard Shortcuts…** and **Preferences…** windows.

![The Edit menu open, with Undo, Redo, Cut, Copy, Paste, Delete, Select All, Deselect, Find Glyph…, Keyboard Shortcuts… and Preferences….](screen:g-menu-edit)

### Glyph

Everything about one glyph or the selected glyphs: editing, moving to the previous or next glyph,
new, duplicate and rename, mark colors, placing a reference image, components and anchors,
**Transform** and **Contours** submenus (remove overlap, combine shapes, correct directions, round
corners…), building accented letters with **Generate Composites…**, and **Fix Problems**.

![The Glyph menu open, with Edit Glyph, New Glyph…, Mark Color, Add Component…, the Transform and Contours submenus, Generate Composites… and Fix Problems.](screen:g-menu-glyph)

### Font

Settings and tools for the whole font: **Font Info…**, adding and sorting glyphs, making small caps,
**Check Font…** (<kbd>F7</kbd>), color palettes, variable fonts (**Make Variable…**, masters,
instances) and **Validate Font**.

![The Font menu open, with Font Info…, Add Glyphs…, Sort Glyphs, Make Small Caps…, Check Font…, Color Palettes…, Make Variable…, Masters & Axes… and Validate Font.](screen:g-menu-font)

### Metrics

Spacing: the **Metrics Window** for spacing glyphs in a line of text, **Auto-Spacing…** and
**Update Metrics**.

![The Metrics menu open, with Metrics Window, Auto-Spacing… and Update Metrics.](screen:g-menu-metrics)

### Kerning

Kerning: the **Kerning Window**, kerning groups, automatic groups and **Auto-Kerning…**, and in Pro
Mode the **Kerning Audit**.

![The Kerning menu open, with Kerning Window, Kerning Groups…, Auto Groups from Composites, Auto-Kerning… and Kerning Audit.](screen:g-menu-kerning)

### Features

OpenType features: the **Features** editor, **Update Automatic Features**, and in Pro Mode
**Check Features**.

![The Features menu open, with Features, Update Automatic Features and Check Features.](screen:g-menu-features)

### Tools

Helpers and wizards: the **Wizards** submenu (New Font Wizard, Handwriting Font Wizard, Auto
Composites Wizard), **Autotrace Image…**, **Transform Glyphs…** for changing many glyphs at once,
the **Sketchboard**, **Scripting**, **Plugins…**, and the commands that plugins add.

![The Tools menu open, with Wizards, Autotrace Image…, Transform Glyphs…, Sketchboard, Scripting, Plugins… and the Plugins submenu.](screen:g-menu-tools)

### View

Zooming the glyph editor, what to show on the canvas (fill, background layer, other masters, colors,
problems), the size of the Overview boxes, the **Command Palette**, which bars to show (toolbox,
options bar, status bar, panels) and the **Appearance**.

![The View menu open, with Zoom In, Zoom Out, Fit in Window, the Show options, Larger and Smaller Glyph Cells, Command Palette, Toolbox, Options Bar, Status Bar, Panels and Appearance.](screen:g-menu-view)

### Window

The modes, the **Home** screen, the **Panels** submenu to show any panel, **Reset Workspace**, and at
the bottom a list of the open fonts to switch between them.

![The Window menu open, with Simple Mode, Pro Mode (ticked), Switch Mode, Home, Panels, Reset Workspace and the open font Source Serif 4.](screen:g-menu-window)

### Help

**FontEasy Help** (<kbd>F1</kbd>) opens the FontEasy project page in your browser. **Keyboard
Shortcuts** opens the shortcut editor, **Tour** replays the guided tour, and **About FontEasy** shows
the version and the credits.

![The Help menu open, with FontEasy Help, Keyboard Shortcuts, Tour and About FontEasy.](screen:g-menu-help)

## The guided tour

The first time you open or create a font in Simple Mode, FontEasy shows a short tour in five steps,
in a box near the bottom of the window:

1. **Your font, glyph by glyph**: each box in the Overview is a glyph; double-click one to draw it.
2. **Tools on the left**: Pen and Pencil draw, Rectangle and Ellipse make shapes, Metrics and Kerning
   space letters.
3. **The Font Journey**: the panel on the right walks you from the first letter to the finished font.
4. **Preview as you go**: the Preview at the bottom shows your font while you work.
5. **Ready for more?**: switch to Pro for every tool and panel.

![The first step of the tour, "Your font, glyph by glyph", with dots for the five steps, Skip tour and Next.](screen:tour)

Click **Next** to go on, **Back** to go back, and **Start** on the last step to finish. **Skip tour**
or <kbd>Esc</kbd> closes it at any time. To see it again, choose **Help › Tour**.

## Summary

- The Home screen starts new fonts from templates, reopens recent ones, and chooses the mode.
- The workspace has a title bar with menus, an options bar for the current tool, a toolbox on the
  left, tabs for fonts and glyphs, the Overview grid, docked panels, the Preview and a status bar.
- Panels can be collapsed, moved to another dock with a right-click on their tab, closed and brought
  back with **Window › Panels**; <kbd>Tab</kbd> hides them all and **Window › Reset Workspace** puts
  them back.
- Simple Mode hides advanced tools and adds the Font Journey; Pro Mode shows everything. Switch with
  the **Pro** / **Simple** switch or <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>.
- The command palette (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) finds any command by name.
- Appearance, language, text size and shortcuts are set in **Edit › Preferences…**.
- **Help › Tour** replays the five-step tour.

## Try it yourself

1. Create a font from the **Latin Basic** template. Find the glyph `g` with the search field, select
   it and read its code point in **Glyph Info**.
2. Right-click the **History** tab and move the panel to the left dock. Then choose
   **Window › Reset Workspace** to put it back.
3. Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>, type `light` and press <kbd>Enter</kbd>.
   Then do the same with `dark`.
4. Switch to Simple Mode and back to Pro Mode, and count how many tools appear and disappear in the
   toolbox.
