# My Favorite Fonts Repo

This repository contains a collection of fonts that I frequently use across my systems. I wanted to make them easily accessible for setup on new machines, particularly on macOS. These fonts include a mix of highly readable and aesthetically pleasing options for both design and coding purposes.

## Fonts Included
Here are the fonts included in this repository, along with links to their official sources when available:

1. [Atkinson Hyperlegible](https://brailleinstitute.org/freefont) - Designed for maximum readability.
2. [iA Fonts](https://github.com/iaolo/iA-Fonts) - A set of carefully designed fonts for writers and coders.
3. [IBM Plex Sans](https://github.com/IBM/plex) - A versatile font family for modern usage.
4. [Nerd Fonts](https://www.nerdfonts.com/) - Iconic fonts designed for developers.
5. [Noto Sans](https://fonts.google.com/noto/specimen/Noto+Sans) - Modern sans-serif with extensive language support.
6. [Noto Sans Mono](https://fonts.google.com/noto/specimen/Noto+Sans+Mono) - A monospaced version of Noto Sans.
7. [Nunito](https://fonts.google.com/specimen/Nunito) - A well-balanced sans-serif font.
8. [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) - A monospaced font designed for coding.
9. [Ubuntu Font](https://design.ubuntu.com/font/) - A clean and modern font family.
10. [UnderCaseType Fraunces](https://fonts.google.com/specimen/Fraunces) - A variable font with a touch of character.

---

# Font Installation and Cache Refresh Runbook

This guide explains how to copy font files (`.ttf`, `.otf`) to the appropriate directories and refresh the font cache on **Linux** and **macOS** systems.

## **Linux (Ubuntu/Debian)**

### 1. **Copy Fonts to the Local User Directory**

* Create the font directory (if it doesn't exist):

  ```bash
  mkdir -p ~/.local/share/fonts
  ```

* Copy `.ttf` and `.otf` font files to the local font directory:

  ```bash
  cp *.ttf *.otf ~/.local/share/fonts/
  ```

### 2. **Copy Fonts to the System-wide Directory (Optional)**

If you want the fonts to be available system-wide for all users:

* Create directories for TrueType and OpenType fonts:

  ```bash
  sudo mkdir -p /usr/share/fonts/truetype/my_fonts
  sudo mkdir -p /usr/share/fonts/opentype/my_fonts
  ```

* Copy `.ttf` files to the TrueType directory and `.otf` files to the OpenType directory:

  ```bash
  sudo cp *.ttf /usr/share/fonts/truetype/my_fonts/
  sudo cp *.otf /usr/share/fonts/opentype/my_fonts/
  ```

### 3. **Refresh the Font Cache**

To make the newly copied fonts available, refresh the font cache:

```bash
fc-cache -fv
```

* `-f`: Force the rebuild of the font cache.
* `-v`: Provide verbose output.

---

## **macOS**

### 1. **Copy Fonts to the User Font Directory**

* macOS automatically detects fonts placed in the **user-specific font directory**:

  ```bash
  mkdir -p ~/Library/Fonts
  ```

* Copy the `.ttf` and `.otf` font files into this directory:

  ```bash
  cp *.ttf *.otf ~/Library/Fonts/
  ```

### 2. **Copy Fonts to the System-wide Font Directory (Optional)**

If you want the fonts to be available system-wide for all users:

* Copy fonts to the system-wide font directory:

  ```bash
  sudo cp *.ttf *.otf /Library/Fonts/
  ```

### 3. **Refresh Font Cache**

macOS typically auto-detects fonts once they’re placed in the correct directories, but if necessary, you can use **Font Book** to manually validate and refresh fonts:

1. Open **Font Book**.
2. In the **File** menu, select **Restore Standard Fonts**.

Alternatively, you can restart your machine, or simply restart any app that uses the fonts.

---

## **Font Troubleshooting**

If the font does not show up after installation:

* **Linux**: Run the following command to ensure the font is registered in the system:

  ```bash
  fc-list | grep "FontName"
  ```

* **macOS**: If the font is not recognized, ensure the font is correctly placed in `~/Library/Fonts` (user-specific) or `/Library/Fonts` (system-wide) and restart relevant applications.

---

### **Additional Notes**

* **Font Formats**: `.ttf` (TrueType) and `.otf` (OpenType) are the most common font formats supported by most applications.
* **Font Cache**: After installing fonts, always remember to refresh the font cache on Linux. On macOS, font cache is typically handled automatically by the system.

---




