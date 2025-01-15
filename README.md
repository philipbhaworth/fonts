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

## Setup Instructions for macOS

### Prerequisites
Ensure you have a terminal application installed on macOS (e.g., the default Terminal app).

### Steps to Install the Fonts

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/philipbhaworth/fonts.git
   cd fonts
   ```

2. Run the installation script to copy all font files to your macOS user fonts directory:
   ```bash
   ./mac-install-fonts.sh
   ```

### What the Script Does
The script performs the following actions:
- Recursively searches the repository for `.ttf` and `.otf` font files.
- Copies all found font files into the `~/Library/Fonts/` directory, making them available to the current user.

After running the script, your fonts will be ready to use in all applications on your macOS system.

### Optional: System-Wide Installation
If you prefer to install the fonts for all users on your machine, you can modify the script to copy the fonts to `/Library/Fonts/` instead of `~/Library/Fonts/`. This requires `sudo` privileges:
```bash
sudo ./mac-install-fonts.sh
```

## Customization
Feel free to add or remove fonts from the repository to suit your personal preferences. Simply place new font files in the appropriate directory before running the installation script.




