---
title: Scripting and Plugins
description: How to automate repetitive font work with small Python scripts, record macros, and add your own commands to FontEasy with plugins.
---

Sooner or later every type designer meets a boring job. You need to give ten figures exactly the same width. You want to add forty [kerning pairs](/reference/glossary/#kerning-pair) that a friend sent you as a list. You want to know which of your 300 [glyphs](/reference/glossary/#glyph) are still empty. You can do all of this by hand, one glyph at a time, but it is slow and it is easy to make mistakes.

A **script** is a short list of instructions that FontEasy carries out for you. You write it once, press a key, and the computer does the boring part in a second. Scripts in FontEasy are written in **Python**, a programming language that is popular with beginners because it reads almost like English. You do not need to be a programmer to use this chapter: every example is complete, and you can copy it, run it and change one number at a time to see what happens.

When a script turns out to be useful every day, you can make it a **plugin**. A plugin puts your script in the **Tools** menu and in the command palette, with its own name and even its own keyboard shortcut, as if it were part of FontEasy.

Scripting is a Pro Mode feature. If you only work in Simple Mode, you can still run plugins, but the Scripting panel itself appears only in Pro Mode (see [Simple and Pro mode](/power/preferences/#simple-or-pro-mode)).

In this chapter you will learn:

- why scripts are worth a few minutes of your time;
- how to use the Scripting panel: the editor, the output, the examples, Stop and macro recording;
- which Python runs your scripts and how to choose another one;
- how the `fonteasy` Python API works: fonts, glyphs, contours, points and pens;
- six small scripts that really work, explained line by line;
- how undo works with scripts;
- how to use, switch off and write plugins;
- how to stay safe when you run scripts from other people.

## Why write scripts?

Think of a script as a recipe. A recipe does not cook by itself, but once it is written down, anyone can follow it and get the same result every time. A script is a recipe for FontEasy.

Scripts are good at three kinds of work:

- **Repetition.** "Do this to every glyph" or "do this to these twenty glyphs". A person gets tired after the fifth glyph; a script does not.
- **Checking.** "Which glyphs have no [Unicode](/reference/glossary/#unicode) value?" or "Which glyph is the widest?" A script can look at the whole [font](/reference/glossary/#font) and print a short report.
- **Precision.** "Make every figure exactly 600 units wide and centre the drawing." Typing numbers by hand invites small mistakes; a script uses the same number every time.

Scripts are not good at drawing beautiful letters. Design is your job. Scripts take care of the chores around the design so you have more time for it.

:::tip[You already know more than you think]
Every menu command in FontEasy is also a script command. If you can find a command in a menu, a script can run it too. And if you do not want to type anything at all, [macro recording](#recording-a-macro) writes a script for you while you click.
:::

## How scripting works in FontEasy

When you run a script, FontEasy starts a separate program, **Python**, and hands it your script. Python reads the script line by line. Whenever the script wants to look at or change the font, it sends a request (a *command*) to FontEasy. FontEasy carries the command out on your open font and sends the answer back. Anything the script prints appears in the Scripting panel.

![FontEasy and Python are two separate programs: your script asks FontEasy to run commands, FontEasy answers, and the whole run becomes one undo step.](diagram:scripting-process)

Because Python runs on its own, three good things follow:

- FontEasy starts and works normally even on a computer without Python. You only need Python when you run a script.
- A script that hangs, for example one that loops forever, never freezes FontEasy. You press **Stop** and the Python program is ended.
- The commands a script uses are exactly the same ones the menus, the keyboard shortcuts and the command palette use. Nothing is "script only" or "menu only".

## The Scripting panel

The Scripting panel lives in the bottom dock, next to **Preview** and **Font Check**. To open it, do one of these:

1. Choose **Tools › Scripting**, or press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>P</kbd>.
2. Or choose **Window › Panels › Scripting**.

You should now see the panel at the bottom of the window. The left part is a code editor with line numbers. The right part is the output, where the script's messages appear. Above them is a row of buttons.

![The Scripting panel after running the "Glyphs without Unicode" example: the code is on the left, the output on the right says one glyph has no Unicode, and the status bar says the script finished in 1.5 seconds.](screen:scripting)

The buttons, from left to right:

| Button | What it does |
|---|---|
| Play (triangle) | **Run** the script (also <kbd>Ctrl</kbd>+<kbd>Enter</kbd>). While a script runs it becomes a square: **Stop the script**. |
| Folder | **Open a script…** from a `.py` file. |
| Disk | **Save the script** to its file (the first time it asks where). |
| **Examples** | A menu of ready-made scripts, plus **Save As…**. |
| Circle | **Record a macro**: what you do from now on becomes a script. |
| X | **Clear the output**. |
| Plug | **Plugins…**: opens the Plugins window. |

On the far right you see the name of the script file, or **Untitled script** if it has not been saved yet. While a script runs, a spinner and a counter ("12 calls") show that it is busy talking to FontEasy.

### Running a script

1. Open the Scripting panel. The first time, it already contains the **Hello** example.
2. Click inside the code editor.
3. Press <kbd>Ctrl</kbd>+<kbd>Enter</kbd>, or click the Play button.

The output shows `▶ Script`, then the lines your script printed, then `✔ Done in 0.4 s` (the time varies). The status bar at the bottom of the window says **Script finished in … s**.

The code editor colours Python for you: keywords such as `for` and `if`, text in quotes, numbers and comments (lines starting with `#`) each have their own colour. A comment is a note for humans; Python ignores it.

### The output console

Everything your script prints with `print()` appears in the output. Errors appear in red. When Python stops because of an error, it prints a *traceback*: a short report that ends with the kind of error and names the line where it happened. FontEasy helps you with it:

- the line with the error is underlined in red in the editor, and its line number turns red;
- the status bar shows the error message and the line;
- you can click a red traceback line in the output to jump to that line in the editor.

As soon as you type in the editor again, the red underline goes away.

### Examples, opening and saving

The **Examples** menu holds six small scripts you can learn from: **Hello**, **Glyphs without Unicode**, **Center selected glyphs**, **Draw with a pen**, **Kerning report** and **fontTools: tables**. Choosing one replaces the code in the editor (save your own work first).

Scripts are ordinary text files with the extension `.py`. Use the folder button to open one and the disk button to save. **Examples › Save As…** saves under a new name. A saved script also has a small advantage: while it runs, its own folder is the *current folder*, so a file name like `"pairs.txt"` in the script means the file next to the script.

### Stopping a script

While a script runs, the Play button turns into a square. Click it to stop the script at once. FontEasy ends the Python program; changes the script already made stay in the font, and they are still [one undo step](#undo-and-scripts), so one <kbd>Ctrl</kbd>+<kbd>Z</kbd> takes them back.

Only one script can run at a time. If you try to start a second one, the output says **A script is already running.**

### Recording a macro

A *macro* is a recording of what you did, which you can play back later. You do not need to write any code:

1. Click the circle button (**Record a macro**). The status bar says **Recording… do the steps, then press Stop Recording.**
2. Do your steps with menu commands, for example select some glyphs in the Overview and choose **Glyph › Contours › Remove Overlap**, then **Glyph › Contours › Correct Direction**.
3. Click **■ Stop Recording** (it is red while recording).

The editor now contains a script that starts with `# Recorded by FontEasy` and has one `fe.run(...)` line for each command you used:

```python
# Recorded by FontEasy
import fonteasy as fe

fe.run("glyph.removeOverlap", {"names": ["A", "B", "R"]})
fe.run("glyph.correctDirection", {"names": ["A", "B", "R"]})
```

Run it on another font, or save it for next time. Notice that the glyph names you had selected are written into the script. To use the macro on other glyphs, change the list, or replace it with the current selection as shown in [running any command](#running-any-command-with-ferun).

:::note
Macros record the commands FontEasy runs on the whole font or on the glyphs selected in the Overview, whether you start them from a menu, a dialog or the command palette. Work inside the glyph editor is not recorded: drawing, dragging points, and contour commands applied to the open glyph.
:::

## Which Python runs your scripts

The Windows download of FontEasy (the zip and the installer) includes its own copy of **Python 3.14** together with **fontTools**, the well-known Python library for reading and writing font files. You do not need to install anything. The bundled Python lives in the `python` folder next to `FontEasy.exe`.

FontEasy looks for Python in this order:

1. the `python.exe` you chose in **Edit › Preferences… › General › Scripting**;
2. the bundled Python next to FontEasy;
3. a Python found on your computer's `PATH` (the "Microsoft Store" shortcut that only opens the Store is skipped).

The Plugins window shows which one it found at the bottom (**Python: …**), and so does Preferences.

### Using another Python

The bundled Python is small and has no `pip`, so you cannot install extra packages into it. If you want to use other Python libraries in your scripts, install Python from python.org and point FontEasy to it:

1. Install Python 3 from python.org.
2. In a Command Prompt, install the packages you want, and fontTools too: `py -m pip install fonttools`.
3. In FontEasy, choose **Edit › Preferences…**, open the **General** tab and, under **Scripting**, click **Choose…** next to **Python**.
4. Pick the `python.exe` of that installation and click **OK**.

The path you chose now appears next to **Python**. Click **Reset** to go back to the bundled one. More about this in [Preferences](/power/preferences/#scripting).

:::caution
If you choose another Python without fontTools, scripts that use `f.ttfont()` or `from fontTools import …` fail with `ModuleNotFoundError`. Install fontTools for that Python with `pip install fonttools`.
:::

## The fonteasy Python API

An *API* is the set of names a program offers to scripts. FontEasy's is a Python package called `fonteasy`. Most scripts start with:

```python
import fonteasy as fe
```

This means "load the `fonteasy` package and call it `fe` for short". (In the Scripting panel `fe`, `CurrentFont` and the other main names are even available without the import, but writing it keeps your scripts clear and lets them work as plugins too.)

The API looks like fontParts, the scripting library used by other font editors, so many scripts you find online are easy to adapt.

### Fonts

| Code | What it gives you |
|---|---|
| `fe.CurrentFont()` | The font you are editing, or `None` if no font is open. |
| `fe.AllFonts()` | Every open font, as a list. |
| `fe.CurrentGlyph()` | The glyph open in the glyph editor (or picked in the Overview), or `None`. |
| `fe.SelectedGlyphs()` | The glyphs selected in the Overview, as a list. |

With a font `f = fe.CurrentFont()`:

| Code | Meaning |
|---|---|
| `f.name`, `f.path` | The font's name and where it is saved. |
| `len(f)` | How many glyphs it has. |
| `for g in f:` | Go through every glyph. |
| `"A" in f` | Is there a glyph called `A`? |
| `f["A"]` | The glyph `A` (a `KeyError` if there is none). |
| `f.keys()` | All glyph names in order. |
| `f.newGlyph("a.alt", width=500)` | Make a new glyph (also `unicodes=[...]`). |
| `del f["a.alt"]` | Delete a glyph. |
| `f.selection` | Names of the glyphs selected in the Overview; assign a list to select others. |
| `f.info.family`, `f.info["ascender"]` | Font Info values; assign to change them (`f.info.designer = "Ayu"`). `f.info.keys()` lists them all. |
| `f.kerning[("A", "V")]` | A kerning value; assign a number to set it, `del` to remove it. `f.kerning.items()` lists all pairs. |
| `f.save()` | Save the font (like **File › Save**). |
| `f.compile("C:/out/My.ttf")` | Build a font file; see [compiling](#compiling-and-fonttools). |

### Glyphs

A glyph object `g = f["A"]` has:

| Code | Meaning |
|---|---|
| `g.name` | Its [glyph name](/reference/glossary/#glyph-name). |
| `g.width` | Its [advance width](/reference/glossary/#advance-width). |
| `g.unicodes`, `g.unicode` | Its Unicode values as numbers (`65` for A); assign to change. |
| `g.leftMargin`, `g.rightMargin` | Its [sidebearings](/reference/glossary/#sidebearing); assign to change. |
| `g.bounds` | The box around its points: `(xMin, yMin, xMax, yMax)`, or `None` when empty. |
| `g.contours`, `g.components`, `g.anchors` | Its [contours](/reference/glossary/#contour), [components](/reference/glossary/#component) and [anchors](/reference/glossary/#anchor), as lists. |
| `g.note`, `g.lib` | A text note, and a dictionary for your own data. |
| `g.moveBy((dx, dy))` | Move everything. |
| `g.scaleBy(2)` or `g.scaleBy((sx, sy), origin=(x, y))` | Scale everything. |
| `g.appendComponent("acutecomb", offset=(100, 0))` | Add a component. |
| `g.appendAnchor("top", (250, 700))` | Add an anchor. |
| `g.clearContours()`, `g.clear()` | Remove contours, or everything. |
| `g.update()` | Save contour, component, anchor and lib changes (see below). |

There are two kinds of change, and it is worth knowing the difference:

- **Simple values** (`width`, `unicodes`, `note`, `leftMargin`, `rightMargin`) are saved into the font as soon as you assign them.
- **Shapes** (contours, points, components, anchors, `lib`) are changed in Python first and saved when you call `g.update()`, or automatically when the script ends. A neat way to do this is a `with` block, which calls `update()` for you at the end:

```python
with f["A"] as g:
    g.moveBy((0, 10))
```

:::note
`g.bounds`, `g.leftMargin` and `g.rightMargin` are measured from the glyph's own points. When every curve has points at its [extreme points](/reference/glossary/#extreme-point) (left, right, top, bottom), this is exactly what the Metrics window shows. Components are not included.
:::

### Contours and points

A contour is one closed (or open) line of the drawing; an "O" has two. Each contour has a list of [points](/reference/glossary/#point):

```python
g = fe.CurrentFont()["O"]
for contour in g.contours:
    print(contour, "has", len(contour.points), "points")
    for p in contour.points:
        print("  ", p.x, p.y, p.type)
```

`p.type` tells you what kind of point it is:

| `p.type` | Meaning |
|---|---|
| `"line"` | An [on-curve point](/reference/glossary/#on-curve-point) that ends a straight segment. |
| `"curve"` | An on-curve point that ends a [cubic curve](/reference/glossary/#cubic-curve). |
| `"qcurve"` | An on-curve point that ends a [quadratic curve](/reference/glossary/#quadratic-curve). |
| `"move"` | The first point of an [open contour](/reference/glossary/#open-contour). |
| `None` | An [off-curve point](/reference/glossary/#off-curve-point) (a [handle](/reference/glossary/#handle)). |

You can change `p.x` and `p.y` directly, and `p.smooth` says whether it is a [smooth point](/reference/glossary/#smooth-point). A contour also has `contour.reverse()` (turn its direction around), `contour.open` and `contour.bounds`. To add a contour made of straight lines, give a list of `(x, y)` pairs:

```python
g.appendContour([(100, 0), (500, 0), (300, 600)])
g.update()
```

### Pens

A *pen* is the standard fontTools way to draw or read outlines, step by step: "move to here, draw a line to there, a curve to there, close". `g.getPen()` gives you a pen that draws new contours into the glyph. `g.draw(pen)` sends the glyph's outline into any fontTools pen, for example to measure it or to copy it into another font. You will use a pen in [example 4](#example-4-draw-a-shape-with-a-pen).

### Running any command with fe.run

Behind the objects above, everything goes through FontEasy's commands. You can call any command yourself with `fe.run`:

```python
import fonteasy as fe

names = [g.name for g in fe.SelectedGlyphs()]
fe.run("glyph.addExtremes", names=names)
fe.run("glyph.correctDirection", names=names)
```

`fe.commands()` returns the full list. Each item has an `id`, a `label`, the `params` it takes and `changesFont`. This little script prints all commands about kerning:

```python
import fonteasy as fe

for c in fe.commands():
    if c["id"].startswith("kerning."):
        print(c["id"], "-", c["label"], c["params"])
```

If a command refuses (a glyph does not exist, a parameter is wrong), the script stops with a `FontEasyError` that names the command and the reason, for example `` glyph.get: no glyph named `Q` ``.

`fe.message("text")` prints the text and also shows it in FontEasy's status bar, which is handy in plugins.

### Compiling and fontTools

`f.compile(path)` builds a real font file from your source, the same way export does, and returns the path. The format follows the extension: `.ttf`, `.otf`, `.woff` or `.woff2`. Without a path it makes a temporary `.ttf`. Use full paths such as `"C:/Users/You/Desktop/Test.ttf"` so you always know where the file goes.

`f.ttfont()` compiles the font and opens it with fontTools as a `TTFont` object, so you can inspect the finished [font file](/reference/glossary/#font-file) table by table.

## Worked examples

Each example below is complete. Copy it into the Scripting panel, open a font, and press <kbd>Ctrl</kbd>+<kbd>Enter</kbd>. Read the explanation after each one, then try changing something.

### Example 1: find glyphs without Unicode

A glyph without a Unicode value cannot be typed directly. That is fine for alternates such as `a.alt`, but a forgotten Unicode on a normal letter is a real bug.

```python
import fonteasy as fe

f = fe.CurrentFont()
print("Font:", f.name)
print("Glyphs:", len(f))

missing = [g.name for g in f if not g.unicodes]
print("Without Unicode:", " ".join(missing) or "none")
f.selection = missing
```

- `[g.name for g in f if not g.unicodes]` builds a list of the names of all glyphs whose Unicode list is empty.
- `" ".join(missing) or "none"` prints the names on one line, or "none" when the list is empty.
- `f.selection = missing` selects those glyphs in the Overview, so you can look at them right away.

You should now see the names in the output and those glyphs highlighted in the Overview.

### Example 2: make figures the same width

[Tabular figures](/reference/glossary/#tabular-figures) all have the same width so that numbers line up in tables. This script makes the ten figures 600 units wide and centres each drawing.

```python
import fonteasy as fe

FIGURES = ["zero", "one", "two", "three", "four",
           "five", "six", "seven", "eight", "nine"]
WIDTH = 600

f = fe.CurrentFont()
for name in FIGURES:
    if name not in f:
        print("skipped", name, "(not in the font)")
        continue
    g = f[name]
    if g.bounds is None:
        g.width = WIDTH
        continue
    left, right = g.leftMargin, g.rightMargin
    ink = g.width - left - right
    g.leftMargin = round((WIDTH - ink) / 2)
    g.width = WIDTH
    print(name, "now", g.width, "wide")
```

- Names written in capitals (`FIGURES`, `WIDTH`) are settings. Change `600` to the width you want.
- `ink` is the width of the drawing itself: the advance width minus both sidebearings.
- Setting `g.leftMargin` moves the drawing so the left sidebearing is half of the free space; setting `g.width` then fixes the right side.
- An empty figure only gets the width.

### Example 3: add kerning pairs from a list

[Kerning](/reference/glossary/#kerning) adjusts the space between two particular letters. If someone gives you a list of pairs, you do not have to type them into the Kerning window one by one.

```python
import fonteasy as fe

PAIRS = """
A V -80
V A -80
T o -70
L T -90
"""

f = fe.CurrentFont()
for line in PAIRS.strip().splitlines():
    left, right, value = line.split()
    if left in f and right in f:
        f.kerning[(left, right)] = int(value)
        print("kerned", left, right, value)
    else:
        print("skipped", left, right)
```

- The text between the triple quotes is the list: left glyph, right glyph, value. Negative values move the letters closer.
- `line.split()` cuts each line into its three parts.
- `f.kerning[(left, right)] = int(value)` sets the pair. Pairs whose glyphs are missing are skipped instead of stopping the script.

Open the Kerning window (**Kerning › Kerning Window**) to see the new pairs. To read the pairs from a text file instead, save the script next to a file `pairs.txt` and replace the `PAIRS` text with `open("pairs.txt", encoding="utf-8").read()`.

### Example 4: draw a shape with a pen

This script makes a new glyph `box.test` and draws a rectangle into it with a pen.

```python
import fonteasy as fe

f = fe.CurrentFont()
name = "box.test"
if name in f:
    g = f[name]
else:
    g = f.newGlyph(name, width=600)

g.clearContours()
pen = g.getPen()
pen.moveTo((50, 0))
pen.lineTo((550, 0))
pen.lineTo((550, 700))
pen.lineTo((50, 700))
pen.closePath()
g.update()
print(g.name, "has", len(g.contours), "contour")
```

- The `if` makes the script safe to run twice: the second time it reuses the glyph instead of failing.
- `clearContours()` removes old drawings so the rectangles do not pile up.
- Each pen call is one step of the outline; `closePath()` closes it. `pen.curveTo(...)` draws curves the same way, with two handles and an end point.
- `g.update()` saves the new contour into the font.

Find `box.test` at the end of the Overview and open it. Its contour runs counter-clockwise, the direction FontEasy expects for an outer shape (see [contour direction](/reference/glossary/#contour-direction)).

### Example 5: mark empty glyphs red

Mark colours in the Overview are a simple to-do list. This script colours every glyph that has no drawing yet.

```python
import fonteasy as fe

f = fe.CurrentFont()
empty = [g.name for g in f if not g.contours and not g.components]
empty = [n for n in empty if n != "space"]
if empty:
    fe.run("glyph.markColor", names=empty, color="Red")
fe.message("%d empty glyphs marked red" % len(empty))
```

- A glyph is empty when it has neither contours nor components. `space` is meant to be empty, so it is left out.
- `glyph.markColor` is the command behind **Glyph › Mark Color**. The colours are `Red`, `Orange`, `Yellow`, `Green`, `Blue`, `Purple` and `Gray`; `color=None` removes the mark.
- `fe.message` puts the result in the status bar.

This script reads the outline of every glyph, so on a big font it takes a few seconds; the counter next to the spinner shows the progress.

### Example 6: look inside the compiled font

This one uses fontTools to look at the finished font, the way an app or a browser will see it.

```python
import fonteasy as fe

font = fe.CurrentFont().ttfont()
print("Tables:", " ".join(sorted(font.keys())))
print("Glyphs:", font["maxp"].numGlyphs)
hmtx = font["hmtx"]
widest = max(font.getGlyphOrder(), key=lambda n: hmtx[n][0])
print("Widest glyph:", widest, hmtx[widest][0])
```

- `ttfont()` compiles the font to a temporary TTF and opens it with fontTools.
- An OpenType font is made of *tables* with four-letter names such as `cmap` (characters), `glyf` (outlines) and `hmtx` (widths). The first line lists them.
- `hmtx[n][0]` is the advance width of glyph `n` in the compiled font.

## Undo and scripts

However many changes a script makes, the whole run is **one step** in the undo history. In the **History** panel it is called `Run Script: Script` (or the file name of the script). One <kbd>Ctrl</kbd>+<kbd>Z</kbd> (**Edit › Undo**) takes back everything the script did, and <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd> puts it back.

This is also true when a script fails half-way or when you press **Stop**: what was done so far is one step, and one undo removes it. If a script changes several open fonts, each font gets its own single undo step.

:::tip[Experiment without fear]
Because a run is one undo step, the safest way to learn is: run, look at the result, press <kbd>Ctrl</kbd>+<kbd>Z</kbd>, change the script, run again.
:::

Note that `f.save()` in a script really writes the font to disk, and `f.compile()` really writes a file. Undo changes the font in FontEasy, not files that were already written.

## Plugins

A plugin is a script with a name tag. It lives in its own folder and appears in the menus, so you can use it without opening the Scripting panel. Plugins also work in Simple Mode.

All plugins live in one folder in your settings folder:

```
%APPDATA%\FontEasy\plugins\
```

The first time FontEasy needs the plugins folder, it creates it and puts three example plugins in it. Each plugin is a folder with a file `plugin.json` (its name tag) and one or more Python files.

### The Plugins window

Choose **Tools › Plugins…**, or **Tools › Plugins › Manage Plugins…**, or click the plug button in the Scripting panel.

![The Plugins window lists the three example plugins with a checkbox, version, description and commands each; below are the Open Plugins Folder and Reload buttons and the Python that will run them.](screen:plugins)

In the Plugins window you can:

- switch a plugin on or off with its checkbox (a switched-off plugin disappears from the menus and the palette, but its folder stays);
- read each plugin's description and the commands it adds;
- click **Open Plugins Folder** to open the folder in File Explorer;
- click **Reload** after you add, remove or change a plugin;
- see at the bottom which Python will run the plugins.

If a `plugin.json` has a mistake, the problem is listed in red at the end of the list, with the file name, so you know what to fix.

To run a plugin command, choose it from **Tools › Plugins**. A plugin with one command appears directly; a plugin with several commands gets its own submenu. You can also type its name in the command palette (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>). Plugin commands need an open font, and they are greyed out while another script runs.

### The three example plugins

| Plugin | Command | What it does |
|---|---|---|
| **Glyph Report** | **Glyph Report** | Lists empty glyphs, glyphs without Unicode and the five widest glyphs, and shows a summary in the status bar. |
| **Mirror** | **Flip Selected Glyphs Horizontally**, **Flip Selected Glyphs Vertically** | Flips the selected glyphs (or the glyph in the editor) inside their advance width, and reverses the contours so their direction stays correct. |
| **fontTools Table Sizes** | **Show Table Sizes (fontTools)** | Compiles the font and lists each OpenType table with its size in bytes, the number of glyphs and the units per em. |

What a plugin prints goes to the output of the Scripting panel (in Pro Mode). If a plugin fails, a **Plugin failed** message appears, and the full error is in the Scripting panel's output. Like scripts, each plugin run is one undo step.

The example plugins are also good starting points: open their `main.py` files to see how they are written.

### Making your own plugin

Let's make a plugin called "Hello" with one command that greets you in the status bar.

1. Choose **Tools › Plugins…** and click **Open Plugins Folder**.
2. Make a new folder called `hello` inside it.
3. In that folder, make a text file named `plugin.json` with this content:

   ```json
   {
     "id": "hello",
     "name": "Hello",
     "version": "1.0",
     "description": "Says hello to the current font.",
     "commands": [
       { "id": "greet", "label": "Say Hello", "script": "main.py",
         "function": "greet", "shortcut": "Cmd+Alt+H" }
     ]
   }
   ```

4. Next to it, make a file named `main.py`:

   ```python
   import fonteasy as fe


   def greet():
       f = fe.CurrentFont()
       fe.message("Hello from %s!" % f.name)
   ```

5. Back in the Plugins window, click **Reload**.

You should now see **Hello** in the Plugins window and **Say Hello** in **Tools › Plugins**. Choose it, or press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>H</kbd>, and the status bar greets your font.

What the parts of `plugin.json` mean:

| Key | Meaning |
|---|---|
| `id` | A short unique name: only letters, digits, `-` and `_`. |
| `name`, `version`, `description` | What the Plugins window shows. |
| `commands` | One entry per menu item. |
| `id` (of a command) | Letters, digits, `-` and `_`. The full command becomes `plugin.hello.greet`. |
| `label` | The text in the menu and the palette. |
| `script` | The Python file to run (`main.py` if you leave it out). |
| `function` | The function to call after the file is loaded. Leave it out to just run the file. |
| `shortcut` | An optional shortcut. `Cmd` means <kbd>Ctrl</kbd> on Windows, for example `Cmd+Alt+H`. |

:::caution
Pick a plugin shortcut that FontEasy does not use already: the built-in shortcuts are checked first, so a plugin shortcut that clashes with one of them never fires. The [shortcuts reference](/reference/shortcuts/) lists the ones that are taken.
:::

A plugin's own folder is also the current folder while it runs, and it is on Python's import path, so a plugin can keep helper files and extra Python modules next to `main.py`.

## A safety note

:::danger[Scripts can do anything your account can do]
A Python script is a real program. It runs with the same rights as your Windows user account: it can read, change and delete your files, and use the internet. FontEasy cannot limit what a script does outside the font. Only run scripts and install plugins from people you trust, and read the code first when you can. The undo step protects your open font, not your other files.
:::

The scripts in this chapter, the **Examples** menu and the three example plugins only work on your open font and print reports. The fontTools examples also write a temporary font file in your Temp folder.

## When something goes wrong

Here are the messages beginners meet most often, and what to do.

| Message | What it means and what to do |
|---|---|
| **Python was not found. Install Python 3 from python.org, or choose a python.exe in Preferences › Scripting.** | FontEasy found no Python. The bundled one is missing (for example, only `FontEasy.exe` was copied without its `python` folder). Reinstall FontEasy, or choose a Python in Preferences. |
| **The Python set in Preferences (…) does not exist.** | The `python.exe` you chose was moved or uninstalled. Choose it again, or click **Reset** to use the bundled one. |
| `AttributeError: 'NoneType' object has no attribute ...` | Usually `fe.CurrentFont()` or `fe.CurrentGlyph()` returned `None`: no font is open, or no glyph is open or picked. |
| `KeyError: 'Q'` | You asked for `f["Q"]` but the font has no glyph named `Q`. Check with `"Q" in f` first. |
| `FontEasyError: glyph.set: …` | A FontEasy command refused. The text after the colon says why. |
| `SyntaxError` / `IndentationError` | Python could not read the script: a missing `:` or bracket, or spaces at the start of a line that do not line up. The red underline shows the line. |
| `ModuleNotFoundError: No module named 'fontTools'` | The Python you chose has no fontTools. Install it there, or go back to the bundled Python. |
| The script never finishes | It may be in an endless loop, or waiting for `input()`, which scripts cannot use. Press **Stop**. |

Python cares about indentation: the lines inside a `for`, `if` or `def` must start with the same number of spaces (use four).

:::tip
To find a mistake, add `print()` lines that show the values you are not sure about, run the script, and look at the output.
:::

## Summary

- Scripts automate repetitive work, checks and precise changes. They are written in Python.
- Open the Scripting panel with **Tools › Scripting** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>P</kbd>, Pro Mode). Run with <kbd>Ctrl</kbd>+<kbd>Enter</kbd>; stop with the square button.
- The output shows `print()` text and errors; click a red traceback line to jump to it.
- **Examples** has six ready-made scripts; **Record a macro** turns your menu commands into a script.
- Scripts run in a separate Python: the bundled Python 3.14 with fontTools, or one you choose in **Edit › Preferences… › General › Scripting**.
- `fe.CurrentFont()`, `fe.CurrentGlyph()` and `fe.SelectedGlyphs()` give you fonts and glyphs; widths and Unicodes save at once, shapes on `g.update()` or at the end.
- `fe.run()` runs any FontEasy command; `f.compile()` and `f.ttfont()` hand the built font to fontTools.
- A whole script run is one undo step.
- Plugins are folders with `plugin.json` and Python in `%APPDATA%\FontEasy\plugins`; manage them in **Tools › Plugins…**.
- Scripts can do anything your user account can: only run code you trust.

## Try it yourself

1. Open a font, run [example 1](#example-1-find-glyphs-without-unicode), and then change the script so it prints only glyphs whose name contains a dot (hint: `"." in g.name`).
2. Record a macro: in the Overview select three glyphs, choose **Glyph › Contours › Add Extreme Points** (Pro Mode) and **Glyph › Contours › Correct Direction**, stop the recording, then save the script. Next, make a plugin from it: put the recorded lines inside a function `def run():` in a plugin folder, replace the glyph list with `[g.name for g in fe.SelectedGlyphs()]`, and give it the label "Tidy Selected Glyphs".
