# Installation Guide

[中文文档](INSTALL.md) | **English**

## Quick Install (Recommended)

```bash
git clone https://github.com/ltbkq/font-toolkit.git
cd font-toolkit
sudo bash install_fonts.sh
```

## Available Options

```bash
# Install all fonts (default)
sudo bash install_fonts.sh --all

# Windows core fonts only
sudo bash install_fonts.sh --windows

# Chinese fonts only
sudo bash install_fonts.sh --chinese

# Noto series only
sudo bash install_fonts.sh --noto

# Install to user directory (no sudo required)
bash install_fonts.sh --user
```

## Manual Installation

1. **Debian/Ubuntu/Linux Mint**:
   ```bash
   sudo apt-get update
   sudo apt-get install -y \
     fonts-noto-cjk fonts-noto-cjk-extra \
     fonts-noto-ui-core fonts-noto-ui-extra \
     fonts-noto-extra fonts-noto-mono \
     fonts-noto-color-emoji \
     fonts-wqy-microhei fonts-wqy-zenhei \
     fonts-freefont-otf fonts-freefont-ttf \
     fonts-lxgw-wenkai \
     fonts-dejavu-core fonts-dejavu-mono \
     fonts-liberation fonts-ubuntu \
     fonts-opensymbol fonts-mathjax \
     fonts-urw-base35 \
     fonts-arphic-ukai fonts-arphic-uming \
     fonts-moe-standard-kai fonts-moe-standard-song \
     ttf-mscorefonts-installer \
     fonts-noto fonts-droid-fallback \
     xfonts-base xfonts-scalable xfonts-utils
   ```

2. **Update font cache**:
   ```bash
   sudo fc-cache -f -v
   ```

## Verify Installation

```bash
# Count total fonts
fc-list | wc -l

# Check specific fonts
fc-list | grep "Noto Sans CJK SC"
fc-list | grep "Microsoft YaHei"
fc-list | grep "Arial"
```

## Troubleshooting

### Fonts not showing up after install
```bash
sudo fc-cache -f -v
```

### ttf-mscorefonts-installer fails
Accept the license before installation:
```bash
echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula boolean true" | sudo debconf-set-selections
sudo apt-get install -y ttf-mscorefonts-installer
```

### Install without sudo
```bash
bash install_fonts.sh --user
```
This installs fonts to `~/.local/share/fonts/`.

## Project Structure

```
font-toolkit/
├── README.md              # Project documentation (Chinese)
├── README.en.md           # Project documentation (English)
├── LICENSE                # MIT License
├── INSTALL.md             # This file (Chinese)
├── INSTALL.en.md          # This file (English)
├── install_fonts.sh       # One-click install script (main script)
├── download_fonts.sh      # Font download script
├── generate_font_list.py  # Font list generator script
└── fonts/
    ├── font-list.md       # Complete font list (detailed categories)
    ├── font-full-list.txt # All font names
    ├── font_categories.txt # Fonts by category
    ├── FONT_CATEGORIES.md # Detailed font category catalog
    ├── catalog.md         # Font directory structure
    ├── all_families.txt   # All 2236 font families
    ├── all_fonts.txt      # All 3039 font files
    └── categories.json    # Font category JSON data
```
