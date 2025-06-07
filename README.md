# 📋 ClipCopy

**ClipCopy** is a lightweight system tray utility for Windows. Clicking the tray icon simulates the **Win + V** keyboard shortcut, opening the native **Clipboard History** window.

---

## 🖥️ Windows Support

- ✅ **64-bit** version is available under [Releases](https://github.com/avramovic/ClipCopy/releases)
- ⚠️ **32-bit** version is not provided due to **false positives** on VirusTotal and other antivirus tools when compiling AutoIt in 32-bit mode

If you require a 32-bit build, you can compile it yourself using [AutoIt](https://www.autoitscript.com/site/autoit/downloads/).

---

## 🔧 Installation

1. Download the latest release from the [Releases page](https://github.com/avramovic/ClipCopy/releases)
2. Place `clipcopy.exe` in your Windows **Startup folder**: *(Press `Win + R`, type `shell:startup`, press Enter)*  
This ensures it runs automatically every time you log in.
3. Run it once to see the tray icon

---

## 📌 Pin the Tray Icon

Windows might hide new tray icons by default. To keep the white paperclip icon always visible:

1. Click the `↑` arrow in your system tray (bottom right corner)
2. Drag the **ClipCopy** paperclip icon onto the taskbar area
3. Release it — now it's pinned and always visible

---

## 🔐 Security Note

This tool is safe and open-source. However, due to the nature of AutoIt executables, some antivirus programs (especially with 32-bit builds) may flag it with **false positives**. Use the [source code](https://github.com/avramovic/ClipCopy/blob/master/clipcopy.au3) to verify or compile your own build if desired.

---

## 🧾 Requirements

- Windows 10 or newer
- Clipboard History must be enabled in: Settings → System → Clipboard → Clipboard History (toggle ON)

---

## 🛠 Build Notes (for developers)

- Written in [AutoIt](https://www.autoitscript.com/)
- To customize the icon, use the **AutoIt compiler GUI** or run from CLI:
```bash
Aut2Exe.exe /in clipcopy.au3 clipcopy.ico /out clipcopy.exe

