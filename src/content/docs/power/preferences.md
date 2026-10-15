---
title: Preferences and Settings
description: Every setting in Edit › Preferences, autosave and crash recovery, your own keyboard shortcuts, the command palette, and where FontEasy keeps its settings and your font files.
---

FontEasy works well straight after installation, so you can make a whole font without ever opening the settings. Still, a few minutes in **Edit › Preferences…** can make FontEasy feel more like your own: a light or dark look, bigger text, the interface in Bahasa Indonesia, a shorter autosave interval, or a keyboard shortcut for a command you use all the time.

This chapter goes through every setting, one by one. It also explains two safety nets that work quietly in the background, **autosave** and **crash recovery**, and shows you the **command palette**, the quickest way to find any command without knowing which menu it lives in. At the end you will learn where FontEasy keeps its settings and what the files of your font project are.

In this chapter you will learn:

- how to open Preferences and what OK, Apply, Cancel and Restore Defaults do;
- every setting on the **General** and **Interface** tabs;
- how autosave and crash recovery protect your work, and where the recovery copies live;
- how to change, remove and reset keyboard shortcuts;
- how to use the command palette;
- where FontEasy stores its settings (`%APPDATA%\FontEasy`);
- what UFO folders and designspace files are.

## Opening Preferences

1. Choose **Edit › Preferences…**, or press <kbd>Ctrl</kbd>+<kbd>K</kbd>.
2. On the Home screen you can also click **Preferences…** at the bottom left.

You should now see the **Preferences** window with three tabs at the top: **General**, **Interface** and **Keyboard Shortcuts**.

![The Preferences window on the General tab: Startup, New fonts, Export and Scripting sections, with Restore Defaults, Apply, Cancel and OK at the bottom.](screen:prefs)

The buttons at the bottom work like in most Windows programs:

| Button | What it does |
|---|---|
| **OK** | Use the changes, save them, and close the window. |
| **Apply** | Use and save the changes, but keep the window open, so you can see the effect. |
| **Cancel** | Forget the changes you made since the last Apply, and close. |
| **Restore Defaults** | Put every setting **on the current tab** back to how FontEasy came. On the Keyboard Shortcuts tab it removes all your own shortcuts. |

Nothing you change takes effect until you click **Apply** or **OK**. Preferences are saved straight away; you do not need to save anything else.

## The General tab

The **General** tab has four sections.

### Startup

| Setting | What it means |
|---|---|
| **Home screen** — **Show when no font is open** | The Home screen is the welcome page with **New Font…**, **Open…**, templates and your recent fonts. |
| **Splash screen** — **Show while starting** | The small window with the FontEasy logo that appears while the program loads. Turn it off if you prefer FontEasy to open straight into its main window. |
| **Recent fonts** | How many fonts FontEasy remembers in **File › Open Recent** and on the Home screen (1 to 50; 12 at first). |

You can always go back to the Home screen with **Window › Home** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>H</kbd>).

### New fonts

| Setting | What it means |
|---|---|
| **Units per em** | The starting value for new fonts in the **New Font** dialog (1000 at first). |
| **Autosave every** | How often FontEasy makes a safety copy of fonts with unsaved changes, in minutes (5 at first; 0 turns autosave off). See [Autosave and crash recovery](#autosave-and-crash-recovery). |

[Units per em](/reference/glossary/#units-per-em) is the size of the invisible grid every glyph is drawn on: the height of the [em](/reference/glossary/#em) square divided into units. 1000 is the usual choice and the easiest to think in. Some TrueType designers use 2048. You can still change the value for each font in the **New Font** dialog, so this setting only saves you typing.


### Export

**ttfautohint** is a small program that adds [hinting](/reference/glossary/#hinting) to TrueType fonts: extra instructions that help letters look crisp at small sizes on Windows screens. The Windows download of FontEasy includes it (in the `tools` folder), so normally you see its path here and you never need to touch this setting.

- If it says **not found: TrueType fonts are exported without hints**, FontEasy cannot find the program. Your fonts still export fine, just without hinting.
- Click **Choose…** to point to a `ttfautohint.exe` yourself, and **Reset** to go back to automatic search.

When FontEasy searches by itself, it looks next to `FontEasy.exe` (and in its `tools` folder) and then on the system `PATH`. More about hinting in [Exporting your font](/production/export/).

### Scripting

**Python** shows which Python program will run your scripts and plugins. Normally this is the Python that comes with FontEasy, in the `python` folder next to `FontEasy.exe`.

- **Choose…** lets you pick another `python.exe`, for example one you installed from python.org with extra packages.
- **Reset** (shown after you chose one) goes back to the bundled Python.
- **not found: scripts and plugins can't run** means no Python was found at all. FontEasy itself works normally; only scripting is unavailable.

See [Which Python runs your scripts](/power/scripting/#which-python-runs-your-scripts) for the details.

## The Interface tab

The **Interface** tab changes how FontEasy looks. Changes show as soon as you click **Apply**.

### Appearance

| Setting | Choices |
|---|---|
| **Theme** | **Dark** (the default), **Light**, or **System**, which follows the light or dark setting of Windows. |
| **UI font size** | **Small**, **Medium** (the default) or **Large**: the size of the text in menus, panels and dialogs. |
| **Language** | **English** or **Bahasa Indonesia**. |

![FontEasy with the Light theme: the same window as before, with light panels and a light glyph grid.](screen:light)

You can also switch the theme without opening Preferences: **View › Appearance › Dark**, **Light** or **Follow System**.

The **Language** setting changes all menus, panels, dialogs and messages at once; you do not need to restart. The names of your glyphs, your Font Info and the text of plugins (which come from their authors) do not change.

:::tip
If your eyes get tired, try **Large** text together with the **Light** theme during the day and **Dark** in the evening.
:::

### Simple or Pro mode

**Mode** chooses between **Simple** and **Pro**.

- **Simple** Mode shows the essential tools, wizards and the Font Journey checklist. It is made for your first font.
- **Pro** Mode shows everything, including masters, export profiles, scripting and the extra drawing tools.

Your fonts are exactly the same in both modes; only the amount of tools on screen changes. You can switch at any moment, even in the middle of a glyph, in several ways:

1. Click **Pro** or **Simple** in the title bar, at the top right.
2. Choose **Window › Simple Mode**, **Window › Pro Mode**, or **Window › Switch Mode** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>).
3. Change **Mode** here in Preferences.

FontEasy remembers the mode you used last and starts in it next time. The [interface chapter](/start/interface/) compares the two modes in detail.

![The same font in Simple Mode: fewer tools in the toolbox, the Font Journey checklist at the top right, no Scripting tab at the bottom, and the first step of the guided tour.](screen:simple)

### Title bar

FontEasy draws its own title bar, with the menus, the mode switch and the window buttons in one row, as Adobe programs do. If you prefer the normal Windows title bar, tick **Use the system title bar (after restart)**. As the label says, the change appears the next time you start FontEasy.

## Autosave and crash recovery

Computers crash, laptops run out of battery, and power cuts happen. FontEasy has two safety nets so that a crash costs you minutes, not days.

### What autosave does

Every few minutes (5 by default, see [New fonts](#new-fonts)), FontEasy looks at your open fonts. Each font that has changes you have not saved yet is copied into a separate **recovery folder**. This is the [autosave](/reference/glossary/#autosave).

Important things to know about autosave:

- It **never writes over your own font files**. Your `.ufo` stays exactly as you last saved it. The copy goes somewhere else.
- It only copies fonts with unsaved changes, and only when they changed since the last copy.
- When you **save** a font, or **close** it on purpose, its recovery copy is deleted, because it is no longer needed.
- Autosave is not a replacement for **File › Save** (<kbd>Ctrl</kbd>+<kbd>S</kbd>). Save often.

Saving itself is also crash-safe: FontEasy writes the new version next to the old one and only then swaps them, so a crash in the middle of saving cannot leave you with a half-written font.

### Recovering after a crash

If FontEasy closed unexpectedly, the recovery copies are still there the next time you start it. FontEasy notices them and shows the **Recover Unsaved Fonts** window: "FontEasy closed unexpectedly. These fonts had unsaved changes:", with the name of each font and how long ago it was copied ("3 min ago").

1. Click **Recover** to open the copies. Each font opens with the changes it had at the moment of the last autosave.
2. Look through the font, then save it right away with **File › Save** or **File › Save As…**.

Or click **Discard** to delete the recovery copies and start clean.

:::caution
When you close a font and answer **Don't Save**, FontEasy treats this as your decision and deletes the recovery copy too. Only use **Don't Save** when you really want to throw the changes away.
:::

### Where recovery copies live

Recovery copies are kept in:

```
%APPDATA%\FontEasy\recovery\
```

Each copy is a folder with a small `manifest.json` (the font's name, where it was saved before, and when the copy was made) and the font itself: a `font.ufo` folder, or a `font.designspace` with a `masters` folder for fonts with several masters. You normally never need to open this folder; the **Recover** button does the work. If you ever need a copy by hand, copy that `font.ufo` or `font.designspace` somewhere else first and open the copy with **File › Open…** or **File › Open UFO Folder…**.

To type the path quickly, press <kbd>Win</kbd>+<kbd>R</kbd>, type `%APPDATA%\FontEasy` and press <kbd>Enter</kbd>.

## Keyboard shortcuts

A keyboard shortcut runs a command without the mouse. FontEasy comes with many shortcuts (see the [list of shortcuts](/reference/shortcuts/)), and you can change any of them.

To open the shortcut editor, choose **Edit › Keyboard Shortcuts…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>K</kbd>) or **Help › Keyboard Shortcuts**. Both open Preferences on the **Keyboard Shortcuts** tab.

![The Keyboard Shortcuts tab: a filter field at the top, and a list of commands with their menu path, current shortcut and a Remove button.](screen:shortcuts)

The list shows every menu command (with its menu path, such as **File › Save As…**) and every tool of the toolbox (**Tools › Pen**, and so on). The middle column shows the current shortcut, or a dash when there is none.

### Changing a shortcut

1. Type part of the command's name in **Filter commands**, for example `smooth`.
2. Click the shortcut button of the command. It now says **Press keys…**.
3. Press the new key combination, for example <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>J</kbd>. Press <kbd>Esc</kbd> instead if you change your mind.
4. Click **OK**.

You should now see your new shortcut next to the command, and in the menu too.

If the combination already belonged to another command, FontEasy moves it to your command and removes it from the other one. A yellow note at the bottom tells you, for example "P was moved from “Tools › Pen”.", so you are never surprised.

### Removing and resetting

- **Remove** takes the shortcut away from a command.
- **Reset** (it appears when you changed a shortcut) puts back FontEasy's original shortcut for that command.
- **Restore Defaults** at the bottom resets **all** shortcuts.

Some tips:

- Tool shortcuts are single keys (<kbd>P</kbd> for Pen, <kbd>V</kbd> for Select). They only work when a font is open and you are not typing in a text field.
- Shortcuts do not work while the cursor is in a text field, so typing a "P" in the preview text never switches tools.
- In combinations, <kbd>Ctrl</kbd>, <kbd>Alt</kbd> and <kbd>Shift</kbd> can be mixed; a plain key without them is allowed too.
- Plugin commands are not in this list. A plugin can suggest its own shortcut in its `plugin.json` (see [Plugins](/power/scripting/#making-your-own-plugin)).

Your shortcuts are stored in your preferences file, so they survive updates of FontEasy.

## The command palette

The command palette is a search box for commands. Instead of remembering in which menu a command lives, you type a few letters of its name.

1. Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>, choose **View › Command Palette**, or click the magnifying glass in the title bar.
2. Type part of a command name, for example `mode`.
3. Use <kbd>↑</kbd> and <kbd>↓</kbd> to pick a line, then press <kbd>Enter</kbd> (or click it).

![The command palette searching for "mode": Simple Mode, Pro Mode and Switch Mode, each with its menu (Window) and Switch Mode with its shortcut Ctrl+Alt+M.](screen:palette)

Each line shows the command, the menu it belongs to and its shortcut, so the palette is also a good way to learn shortcuts. The palette shows up to twelve results. Commands that start with what you typed come first, then commands with a word that starts with it, then commands that contain it anywhere, and finally commands whose menu name matches; typing `kerning` therefore also finds everything in the **Kerning** menu. Greyed-out lines are commands that cannot run right now (for example, **Previous Glyph** when no glyph is open in the editor). Plugin commands are included too. In Simple Mode, Pro-only commands are left out.

Press <kbd>Esc</kbd> or click anywhere outside to close the palette.

## Where FontEasy keeps its settings

FontEasy keeps its own settings in one folder:

```
%APPDATA%\FontEasy
```

On most computers this is `C:\Users\<your name>\AppData\Roaming\FontEasy`. `AppData` is a hidden folder, so the quickest way there is <kbd>Win</kbd>+<kbd>R</kbd>, then type `%APPDATA%\FontEasy` and press <kbd>Enter</kbd>.

![The FontEasy settings folder: prefs.json, workspace.json, and the recovery, plugins and python-1.5.0 folders.](diagram:preferences-config-folder)

| File or folder | What is in it |
|---|---|
| `prefs.json` | All Preferences, your keyboard shortcuts, the list of recent fonts and which plugins are switched off. |
| `workspace.json` | Where your panels are docked, which bars are visible, the size of the glyph cells in the Overview, and whether the window was maximized. Saved when you quit. |
| `recovery\` | Autosave copies for [crash recovery](#recovering-after-a-crash). |
| `plugins\` | Your [plugins](/power/scripting/#plugins), one folder each. |
| `python-1.5.0\` | The `fonteasy` Python package that scripts use, written by FontEasy itself the first time you run a script. |

Some useful facts:

- **Your fonts are not stored here.** They are wherever you saved them.
- If `prefs.json` is damaged or deleted, FontEasy simply starts with the default settings; it never refuses to start.
- To **start fresh**, close FontEasy and rename `prefs.json` (for example to `prefs-old.json`). To get your panels back without touching anything else, use **Window › Reset Workspace** instead.
- To **move your settings to another computer**, copy `prefs.json` and the `plugins` folder.
- **Uninstalling** FontEasy keeps this folder, so a reinstall finds your settings and plugins again. Delete it by hand if you want to remove everything.
- Advanced: if the environment variable `FONTEASY_CONFIG_DIR` is set, FontEasy uses that folder instead, which is handy for a portable copy on a USB drive.

The program itself lives elsewhere: the installer puts it in `%LOCALAPPDATA%\Programs\FontEasy`, and the zip version wherever you unpacked it.

## Your project files: UFO and designspace

While you work, FontEasy saves your font as a **source**, not as a finished font file. A source keeps everything you need to keep designing: every glyph, guides, mark colours, notes, kerning groups, feature code and more. When the font is ready, you [export](/reference/glossary/#export) it to font files such as TTF or OTF that other programs can use. Think of the source as the cake recipe and the exported font as the baked cake.

### UFO folders

FontEasy's main format is [UFO](/reference/glossary/#ufo) (Unified Font Object), an open format that many font editors can read. A UFO is not one file but a **folder** whose name ends in `.ufo`, for example `Nusantara Sans.ufo`. Inside are small text files:

| Inside a UFO | What it holds |
|---|---|
| `metainfo.plist` | Which UFO version this is. |
| `fontinfo.plist` | Font Info: names, vertical metrics, version, license. |
| `glyphs\` | One `.glif` file per glyph, with its outline, width and Unicode. |
| `kerning.plist`, `groups.plist` | Kerning pairs and kerning groups. |
| `features.fea` | The OpenType feature code. |
| `lib.plist` | Extra data, such as glyph order and FontEasy's own settings for the font. |

Because a UFO is a folder of text files, it works well with backup tools and version control, and a damaged glyph file never takes the whole font with it. Treat the `.ufo` folder as one thing: copy, move, zip or back it up as a whole, and do not edit the files inside by hand.

### Designspace files

A [variable font](/reference/glossary/#variable-font) or a family with several weights has more than one [master](/reference/glossary/#master), for example Light and Bold. Each master is its own UFO. A **designspace** file (ending in `.designspace`) ties them together: it lists the [axes](/reference/glossary/#axis) (such as weight), where each master sits on them, and the named [instances](/reference/glossary/#instance) (Regular, Medium, …). The master UFOs are stored next to the designspace file. Keep them together in one folder.

When you turn a single-master font into a variable one, FontEasy saves a `.designspace` file next to your UFO; the UFO stays in place as the default master. See [Variable fonts](/advanced/variable/).

### Opening and saving

- **File › Open…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>) opens a `.designspace`, a `.ttf` or `.otf`, a `.glyphs` file, or a UFO when you pick a file inside it (such as `metainfo.plist`).
- **File › Open UFO Folder…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd>) opens a UFO by choosing the folder itself.
- You can also drag a font onto the FontEasy window.
- **File › Save** (<kbd>Ctrl</kbd>+<kbd>S</kbd>) saves a UFO or designspace in place. A font you opened from a TTF, OTF or Glyphs file, or a brand-new font, asks where to save it as a new UFO (or designspace) the first time, because FontEasy never writes over those files.

## Summary

- **Edit › Preferences…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>) has three tabs: **General**, **Interface** and **Keyboard Shortcuts**. **Apply** and **OK** save; **Restore Defaults** resets the current tab.
- **General**: Home screen, splash screen, number of recent fonts, units per em for new fonts, the autosave interval, ttfautohint and the Python for scripts.
- **Interface**: Dark, Light or System theme, UI font size, English or Bahasa Indonesia, Simple or Pro mode, and the system title bar.
- Autosave copies fonts with unsaved changes to `%APPDATA%\FontEasy\recovery` every few minutes, never over your own files; after a crash, **Recover** brings them back.
- **Edit › Keyboard Shortcuts…** lets you change, remove and reset any shortcut, including tool keys.
- The command palette (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) finds and runs any command by name.
- Settings live in `%APPDATA%\FontEasy`: `prefs.json`, `workspace.json`, `recovery`, `plugins` and the scripting package.
- Fonts are saved as UFO folders; designspace files tie several master UFOs together.

## Try it yourself

1. In Preferences, switch FontEasy to Bahasa Indonesia and the Light theme, click **Apply** and look around, then switch the language back. Switch the theme back with the command palette instead: press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>, type `dark` and press <kbd>Enter</kbd>.
2. Give **Glyph › Toggle Smooth** a new shortcut of your choice, check that the menu shows it, and then use **Reset** to put the original <kbd>Alt</kbd>+<kbd>S</kbd> back.
