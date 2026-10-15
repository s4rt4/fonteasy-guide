---
title: Installing FontEasy
description: How to download, install, start, update and remove FontEasy on Windows, with the installer or the portable zip.
---

Before you can draw a letter you need FontEasy on your computer. This takes a few minutes and needs
no technical knowledge: you download one file from the internet, open it, and click **Next** a few
times. You do not need administrator rights, and FontEasy never asks for an account or a license key.

FontEasy comes in two forms. The **installer** puts FontEasy in your Start menu like any other app,
and is the best choice for most people. The **portable zip** is a folder that runs from anywhere,
even a USB stick, without installing anything. Both contain exactly the same program.

In this chapter you will learn:

- what your computer needs to run FontEasy;
- which file to download, and where to find it;
- how to install FontEasy, or run it from the portable zip;
- what to do when Windows SmartScreen shows a warning;
- what happens the first time FontEasy starts, and how to switch it to Indonesian;
- how to update and uninstall FontEasy.

## What your computer needs

FontEasy is a Windows app for 64-bit PCs (often written "x64"). Almost every Windows computer sold
in the last ten years is 64-bit. If you are not sure, open **Settings › System › About** in Windows
and look at **System type**: it should say "64-bit operating system".

You also need:

- about 100 MB of free disk space (the installed program with its tools is about 80 MB);
- a screen of 1366 × 768 pixels or more is comfortable. FontEasy opens at 1440 × 900 when there is
  room and shrinks to fit smaller screens (the window can go down to 760 × 480);
- an internet connection only for the download. FontEasy itself works offline.

You do not need administrator rights: both the installer and the zip install for your Windows user
account only.

## Choose a download

FontEasy is published on its GitHub releases page:

**https://github.com/s4rt4/fonteasy-guide/releases**

GitHub is a website where software projects keep their source code and publish their releases. You
do not need a GitHub account to download. Open the page in your browser and look at the newest
release (at the top, version 1.5.0 at the time of writing). Scroll down to **Assets**, the list of
files that belong to the release, and pick one of these two:

| File | What it is | Choose it if… |
|---|---|---|
| `FontEasy-1.5.0-windows-x64-setup.exe` | The installer (about 25 MB) | you want FontEasy in your Start menu, with an uninstaller |
| `FontEasy-1.5.0-windows-x64.zip` | The portable version (about 35 MB) | you cannot or do not want to install programs, or you want FontEasy on a USB stick |

The other files on the page (such as "Source code") are for programmers. You can ignore them.

:::tip
When a newer version is out, the file names show the new version number instead of 1.5.0.
Everything in this chapter works the same way.
:::

## Install with the installer

1. On the releases page, click `FontEasy-1.5.0-windows-x64-setup.exe`. Your browser downloads it,
   usually to your **Downloads** folder.
2. Open the downloaded file (click it in the browser's download list, or double-click it in
   **Downloads**).
3. If a blue window titled "Windows protected your PC" appears, read
   [If Windows SmartScreen warns you](#if-windows-smartscreen-warns-you) below, then come back here.
4. The installer greets you with a welcome page. Click **Next**.
5. The next page shows the license: FontEasy is free and open source under the MIT License. Click
   **I Agree**.
6. Choose where to install. The suggested folder is `%LOCALAPPDATA%\Programs\FontEasy`, a folder that
   belongs to your user account, so no administrator rights are needed. Keep it unless you have a
   reason to change it, and click **Next**.
7. Choose the components. **FontEasy** itself is always installed. **Desktop shortcut** is ticked;
   untick it if you do not want an icon on your desktop. Click **Install**.
8. Wait a few seconds while the files are copied, then click **Next**.
9. On the last page, leave **Run FontEasy 1.5.0** ticked and click **Finish**.

FontEasy starts. From now on you find it in the Start menu: press the <kbd>Windows</kbd> key, type
`FontEasy` and press <kbd>Enter</kbd>. You can also right-click it there and choose **Pin to taskbar**
or **Pin to Start**.

:::note
The installer speaks English or Indonesian. If Windows itself is set to Indonesian, the installer
pages may appear in Indonesian; the steps are the same.
:::

## Use the portable zip

A zip file is a compressed folder. Windows can open it, but FontEasy must be *extracted* (copied out
of the zip) before it can run, because the program needs the folders that sit next to it.

1. On the releases page, click `FontEasy-1.5.0-windows-x64.zip` to download it.
2. In File Explorer, right-click the downloaded zip and choose **Extract All…**.
3. Choose where the folder should go, for example your **Documents** folder or a USB stick, and click
   **Extract**.
4. Open the extracted folder `FontEasy-1.5.0-windows-x64`.
5. Double-click `FontEasy.exe`. If SmartScreen warns you, see the next section.

To start FontEasy quickly next time, right-click `FontEasy.exe` and choose **Show more options › Send
to › Desktop (create shortcut)** (on Windows 10: **Send to › Desktop (create shortcut)**).

:::caution
Do not double-click `FontEasy.exe` inside the zip without extracting it first, and do not move
`FontEasy.exe` out of its folder on its own. FontEasy looks for its helpers (the `python` and `tools`
folders) next to itself. Without them it still starts, but scripting and TrueType hinting will not
work. Move the whole folder instead.
:::

### What is in the folder

Whichever download you choose, the FontEasy folder contains the same things:

| Item | What it is for |
|---|---|
| `FontEasy.exe` | The app itself |
| `python` | A private copy of Python 3.14 with fontTools, used only for scripts and plugins |
| `tools\ttfautohint.exe` | ttfautohint 1.8.4, which adds hints to TrueType fonts when you export |
| `licenses` | The licenses of Python, fontTools, ttfautohint and other parts |
| `README.md`, `LICENSE-MIT`, `LICENSE-APACHE`, `NOTICE`, `ATTRIBUTION.md` | About FontEasy and its licenses |

You never have to touch these files. Python is a programming language; FontEasy only uses it when you
run a script in the **Scripting** panel or use a plugin (see [Scripting](/power/scripting/)). It runs
as a separate helper program, so FontEasy starts and works normally even if Python is missing.
[Hinting](/reference/glossary/#hinting) is extra information that makes small text look sharper on
Windows screens; the chapter [Exporting](/production/export/) explains when you want it.

## If Windows SmartScreen warns you

When you open the installer or `FontEasy.exe` for the first time, Windows may show a blue window:
**Windows protected your PC**, with the text "Microsoft Defender SmartScreen prevented an
unrecognized app from starting."

This does not mean that FontEasy is harmful. SmartScreen warns about programs that are new or that
not many people have downloaded yet, and about programs without a digital signature (a paid
certificate that identifies the publisher). FontEasy is a young open-source project and its files are
not signed, so Windows does not recognize them yet.

If you downloaded the file from the official releases page above, you can start it like this:

1. In the blue window, click **More info**. The window now shows the file name and "Publisher:
   Unknown publisher".
2. Check that the file name is the one you downloaded, such as
   `FontEasy-1.5.0-windows-x64-setup.exe`.
3. Click **Run anyway**.

Usually the warning does not come back for that file after this.

Your browser may also ask whether you want to keep the download, because the file "isn't commonly
downloaded". In Microsoft Edge, open the download list, point to the file, click the **…** button and
choose **Keep**. Other browsers have a similar option.

:::danger
Only click **Run anyway** for files you downloaded yourself from
`https://github.com/s4rt4/fonteasy-guide/releases`. If a file claiming to be FontEasy reached you some other
way (an email attachment, a download site you do not know), delete it and download FontEasy again
from the releases page.
:::

## The first start

When FontEasy starts, a small dark window shows the FontEasy logo, the version number and a progress
bar while it loads its preferences, fonts and icons. This is the splash screen. After a moment it
grows into the main window.

![The FontEasy splash screen: the logo, "Type design for everyone", the version v1.5.0 and a progress bar with "Loading interface fonts…".](screen:splash)

The main window opens on the **Home** screen. On the left are **New Font…** and **Open…**; in the
middle you can start a new font from a template, reopen a recent font, and choose how you want to
work.

![The Home screen right after installing: four templates under "Start a new font", an empty Recent list and Pro Mode selected.](screen:home)

FontEasy starts with these settings:

- the **dark** appearance;
- the **English** interface;
- **Pro Mode**, with every tool and panel.

If this is your first font, click **Simple Mode** under **How do you want to work?**. The card gets a
tick, and FontEasy remembers the choice. The first time you then open or create a font, a short
guided tour explains the screen in five steps. You can go through it with **Next**, close it with
**Skip tour** or <kbd>Esc</kbd>, and see it again any time with **Help › Tour**.

### Switch the interface to Indonesian

FontEasy speaks English and Indonesian. To change the language:

1. On the Home screen click **Preferences…** at the bottom left (or choose **Edit › Preferences…**,
   <kbd>Ctrl</kbd>+<kbd>K</kbd>).
2. Click the **Interface** tab.
3. Open the **Language** list and choose **Bahasa Indonesia**.
4. Click **OK**.

The menus, panels and dialogs switch to Indonesian straight away; no restart is needed. To go back,
choose **English** in the same list (in Indonesian: **Edit › Preferensi… › Antarmuka › Bahasa**).
The same tab also has the **Theme** (Dark, Light or System) and the **UI font size**.

:::tip
If you find the splash screen slow, turn it off: **Edit › Preferences… › General**, untick **Show
while starting** next to **Splash screen**.
:::

### Where FontEasy keeps your settings

FontEasy saves your preferences, the window layout, your plugins and the recovery copies of unsaved
work in the folder `%APPDATA%\FontEasy`. To open it, press <kbd>Windows</kbd>+<kbd>R</kbd>, type
`%APPDATA%\FontEasy` and press <kbd>Enter</kbd>.

Your fonts are not stored there. You save each font wherever you like, as you will see in
[Your First Font](/start/first-font/).

:::note
The recovery copies are FontEasy's safety net. While you work, it writes a copy of every changed font
there every five minutes. If FontEasy or your computer crashes, the next start offers to bring your
work back in a **Recover Unsaved Fonts** dialog. It never overwrites your own files.
:::

## Updating FontEasy

FontEasy does not update itself. Visit the releases page now and then to see whether there is a
newer version. To see which version you have, choose **Help › About FontEasy**, or look at the right
end of the status bar at the bottom of the window.

**If you used the installer:**

1. Save your work and close FontEasy.
2. Download the new `…-setup.exe` and run it.
3. Click through the pages as before. The installer finds your existing FontEasy folder and replaces
   the old program, including its `python` and `tools` folders.

**If you used the zip:** extract the new zip next to the old folder, check that the new version
starts, then delete the old folder.

Either way your preferences, layout and plugins in `%APPDATA%\FontEasy` stay as they are.

## Uninstalling FontEasy

If you installed test copies of your fonts (see [Your First Font](/start/first-font/)), remove them
first: in FontEasy choose **File › Remove Test Fonts**. They are not part of FontEasy's folder, so
uninstalling would leave them behind.

To remove the installed version:

1. Open **Settings › Apps › Installed apps** (on Windows 10: **Settings › Apps › Apps & features**).
2. Find **FontEasy** in the list.
3. Click the **…** button next to it (Windows 10: click the entry) and choose **Uninstall**.
4. Confirm, and click **Uninstall** in the window that opens.

This removes the program, the Start menu entry and the desktop shortcut. It keeps two things on
purpose: the fonts you made (they are your files) and the `%APPDATA%\FontEasy` folder with your
preferences and plugins, so a later reinstall picks up where you left off. If you want to remove
everything, delete that folder yourself afterwards.

To remove the portable version, delete its folder.

## When something goes wrong

**Nothing happens when I double-click FontEasy.exe.** Make sure you extracted the zip first. If you
did, update your graphics driver through Windows Update or your PC maker's website; FontEasy draws its
window with your graphics card.

**Preferences says Python is "not found".** The `python` folder is missing next to `FontEasy.exe`,
usually because the program was moved out of its folder. Reinstall, or extract the zip again.
Everything except scripts and plugins keeps working.

**The Export dialog says "ttfautohint not found".** The same cause: the `tools` folder is missing.
Fonts still export, only without TrueType hints.

**The text is too small or too big.** Change **UI font size** in **Edit › Preferences… › Interface**.

## Summary

- FontEasy runs on 64-bit Windows and needs no administrator rights.
- Download it from https://github.com/s4rt4/fonteasy-guide/releases: the `…-setup.exe` installer for most
  people, the `.zip` for a portable copy.
- The installer puts FontEasy in your user folder, adds a Start menu entry and optionally a desktop
  shortcut, and can be removed through Settings › Apps.
- FontEasy brings its own Python with fontTools (for scripting) and ttfautohint (for hinting).
- SmartScreen may warn about the unsigned app: **More info › Run anyway**, but only for files from the
  official releases page.
- FontEasy starts in English, dark, in Pro Mode; switch to Simple Mode on the Home screen and to
  Indonesian in **Preferences › Interface › Language**.
- Settings live in `%APPDATA%\FontEasy` and survive updates and uninstalling.

## Try it yourself

1. Install FontEasy, start it, and choose **Simple Mode** on the Home screen.
2. Open **Edit › Preferences…** and look at all three tabs. Switch the **Theme** to **Light**, click
   **Apply** to see it, then switch back if you prefer the dark look.
3. Open **Help › About FontEasy** and check which version you have.
