# 🎨 System Font Toolkit

[中文文档](README.md) | **English**

A complete Linux font installation toolkit, including Windows core fonts, the full Google Noto series, CJK Chinese fonts, UI fonts, and more.

## 📋 Introduction

This project provides one-click installation scripts that automatically detect and install all commonly needed fonts on your system, covering:

- **Windows core fonts** (Arial, Times New Roman, Courier New, etc.)
- **Google Noto full series** (with all CJK font weights)
- **WenQuanYi Micro Hei / Zen Hei** (Chinese fonts)
- **LXGW WenKai** (Chinese calligraphy-style font)
- **Ubuntu, DejaVu, Liberation** and other open-source fonts
- **Noto UI series** (UI-specific fonts for multiple languages)
- **Free fonts** in OTF format
- **Math formula fonts, Emoji fonts**, and more

## 📊 Font Statistics

| Category | Font Files | Font Families | Description |
|----------|-----------|---------------|-------------|
| Noto Series | ~2460 | ~600+ | Covers 600+ languages worldwide, all CJK weights |
| Windows Core | ~290 | ~80+ | Arial, Times, Verdana, Segoe UI, etc. |
| Ubuntu Series | ~81 | ~20+ | Ubuntu font family |
| Chinese Fonts | ~45 | ~20+ | WenQuanYi, LXGW WenKai, AR PL, Source Han Sans |
| DejaVu Series | 9 | ~4 | DejaVu Sans/Mono/Serif |
| Liberation Series | 12 | ~3 | Liberation Sans/Serif/Mono |
| Free Series (OTF) | 12 | ~3 | FreeSerif/Sans/Mono |
| Math/Symbol Fonts | ~15 | ~10 | MathJax, OpenSymbol, etc. |
| **Total** | **3039** | **2236** | **All font families** |

## 🚀 Quick Installation

```bash
# Method 1: Run the install script directly (Recommended)
sudo bash install_fonts.sh

# Method 2: Specify installation type
sudo bash install_fonts.sh --all        # Install all fonts (default)
sudo bash install_fonts.sh --windows    # Windows core fonts only
sudo bash install_fonts.sh --chinese    # Chinese fonts only
sudo bash install_fonts.sh --noto       # Noto series only
bash install_fonts.sh --user            # Install to user directory (no sudo needed)

# Method 3: Use the download script
bash download_fonts.sh
```

## 📦 Included Fonts (Complete List)

### 1️⃣ Windows Core Fonts (~290 files)

| Font Family | Included Styles |
|-------------|-----------------|
| **Arial** | Regular, Bold, Italic, Bold Italic, Black, Narrow |
| **Times New Roman** | Regular, Bold, Italic, Bold Italic |
| **Courier New** | Regular, Bold, Italic, Bold Italic |
| **Verdana** | Regular, Bold, Italic, Bold Italic |
| **Calibri** | Regular, Light, Bold, Italic, Bold Italic |
| **Segoe UI** | Regular, Semibold, Light, Black, Semilight, Variable |
| **Microsoft YaHei** (微软雅黑) | Regular, Bold, UI, UI Light |
| **SimSun** (宋体) | Regular, ExtB, ExtG |
| **SimHei** (黑体) | Regular |
| **SimFang** (仿宋) | Regular |
| **SimKai** (楷体) | Regular |
| **Tahoma** | Regular, Bold |
| **Georgia** | Regular, Bold, Italic, Bold Italic |
| **Impact** | Regular |
| **Comic Sans MS** | Regular, Bold |
| **Cambria** | Regular, Bold, Italic, Bold Italic, Math |
| **Consolas** | Regular, Bold, Italic, Bold Italic |
| **Constantia** | Regular, Bold, Italic, Bold Italic |
| **Corbel** | Regular, Light, Bold, Italic, Bold Italic |
| **Candara** | Regular, Light, Bold, Italic, Bold Italic |
| **Trebuchet MS** | Regular, Bold, Italic, Bold Italic |
| **Bahnschrift** | Regular, SemiBold, Light |
| **Segoe UI Emoji** | Regular |
| **Segoe UI Symbol** | Regular |
| **Segoe MDL2 Assets** | Regular |
| **Segoe Fluent Icons** | Regular |
| **Webdings / Wingdings / Marlett** | Regular |
| **Microsoft JhengHei** (微軟正黑體) | Regular, Bold |
| **MingLiU** (細明體) / **PMingLiU** (新細明體) | Regular, ExtB |
| **AR PL UKai / UMing** (文泉驛) | Regular |
| **Segoe Print / Segoe Script** | Regular, Bold |
| **DengXian** (等线) | Regular, Light |
| Microsoft YaHei / NSimSun / KaiTi etc. | Regular |

### 2️⃣ Google Noto Series (~2460 files)

#### Noto Sans CJK (Source Han Sans)
| Variant | Font Weights |
|---------|--------------|
| Noto Sans CJK SC | Regular, Bold, Light, Medium, Thin, Black, DemiLight |
| Noto Sans CJK TC | Same as above |
| Noto Sans CJK HK | Same as above |
| Noto Sans CJK JP | Same as above |
| Noto Sans CJK KR | Same as above |

#### Noto Serif CJK (Source Han Serif)
| Variant | Font Weights |
|---------|--------------|
| Noto Serif CJK SC | Regular, Bold, Light, Medium, SemiBold, Black, ExtraLight |
| Noto Serif CJK TC/HK/JP/KR | Same as above |

#### Noto Sans Language Variants (600+ languages)
Includes Noto Sans fonts for:
- **CJK**: Simplified Chinese, Traditional Chinese, Hong Kong, Japanese, Korean (all weights)
- **Arabic**: Arabic, Naskh, Kufi, etc.
- **Hebrew**: Hebrew, Rashi
- **Indic**: Devanagari, Bengali, Gujarati, Gurmukhi, Tamil, Telugu, Malayalam, Kannada, Oriya, Sinhala
- **East Asian**: Japanese, Korean, Thai, Vietnamese, Lao, Myanmar, Khmer
- **European**: Latin, Greek, Cyrillic, Armenian, Georgian, etc.
- **Others**: Tibetan, Mongolian, Tai, etc.

#### Noto Serif Language Variants
All Noto Serif language variants included.

#### Other Noto Fonts
- **Noto Color Emoji** - Color emoji font
- **Noto Music** - Musical symbols
- **Noto Sans Symbols / Symbols2** - Symbol fonts
- **Noto Sans Math** - Math symbols
- **Noto Nastaliq Urdu** - Urdu Nastaliq script
- **Noto Looped Lao** - Lao loop style font
- **Noto UI Series** - UI-specific fonts for multiple languages

### 3️⃣ Ubuntu Series (~81 files)
- **Ubuntu**: Thin, ExtraLight, Light, Regular, Medium, SemiBold, Bold, ExtraBold + Condensed variants
- **Ubuntu Sans**: All weights
- **Ubuntu Mono**: Regular, Bold, Italic, Bold Italic
- **Ubuntu Sans Mono**: All weights

### 4️⃣ Chinese Fonts (~45 files)
- **WenQuanYi Micro Hei** (文泉驿微米黑)
- **WenQuanYi Zen Hei** (文泉驿正黑)
- **LXGW WenKai** (霞鹜文楷) - Regular, Light, Bold
- **LXGW WenKai Mono** (霞鹜文楷等宽) - Regular, Light, Bold
- **AR PL UKai TW/MBE / UMing TW/HK/CN**
- **SimSun-ExtB / SimSun-ExtG** (宋体-ExtB/ExtG)
- **Source Han Sans SC / Source Han Serif SC** (思源黑体/思源宋体)
- **MOE Standard Kaiti / Song** (教育部標準楷書/宋體)

### 5️⃣ DejaVu Series (9 files)
- DejaVu Sans (Regular, Bold, Oblique, Bold Oblique)
- DejaVu Sans Mono (Regular, Bold, Oblique, Bold Oblique)
- DejaVu Serif (Regular, Bold, Italic, Bold Italic)
- DejaVu Math TeX Gyre

### 6️⃣ Liberation Series (12 files)
- Liberation Sans / Serif / Mono (Regular, Bold, Italic, Bold Italic)

### 7️⃣ Free Series OTF (12 files)
- FreeSerif / FreeSans / FreeMono (Regular, Bold, Italic, Bold Italic)

### 8️⃣ Math Formula Fonts (~15 files)
- **MathJax_Main**, **MathJax_Math**, **MathJax_SansSerif**, **MathJax_Serif**
- **MathJax_Script**, **MathJax_Typewriter**, **MathJax_Size1-4**
- **MathJax_Fraktur**, **MathJax_Caligraphic**, **MathJax_Vector**
- **MathJax_AMS**, **MathJax_WinIE6**, **MathJax_WinChrome**

### 9️⃣ Symbol & Decorative Fonts
- **OpenSymbol**, **Standard Symbols PS**, **Symbol**
- **Webdings**, **Wingdings**, **Marlett**
- **Impact**, **Comic Sans MS**
- **Segoe MDL2 Assets**, **Segoe Fluent Icons**, **Segoe Icons**

### 🔟 Other Fonts
- **Andale Mono**, **D050000L**, **Monotype Sorts**
- **Palatino Linotype**, **URW Bookman**, **URW Gothic**
- **P052**, **C059**, **Nimbus Sans**, **Nimbus Roman**
- **Franklin Gothic Medium**, **Gabriola**

---

## 🔧 System Requirements

- Debian / Ubuntu / Linux Mint based distributions
- apt package manager
- sudo privileges (optional: use `--user` mode without sudo)

## 📝 License

| Font | License |
|------|---------|
| Noto Series | Apache License 2.0 |
| Ubuntu Series | Ubuntu Font License |
| DejaVu | BSD |
| Liberation | GPL / AFL |
| Free Fonts | GPL |
| WenQuanYi | GPLv3 |
| LXGW WenKai | SIL Open Font License 1.1 |
| AR PL | GPL |
| Windows Fonts | Microsoft Proprietary License |

## 📁 Project Structure

```
font-toolkit/
├── README.md              # Project documentation (Chinese)
├── README.en.md           # Project documentation (English)
├── LICENSE                # MIT License
├── INSTALL.md             # Detailed installation instructions
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

## 🔗 Quick Start

```bash
# Clone the project
git clone https://github.com/ltbkq/font-toolkit.git
cd font-toolkit

# Install all fonts
sudo bash install_fonts.sh --all

# Or use the download script
bash download_fonts.sh
```

## 🤝 Contributing

Issues and Pull Requests are welcome!

---

> Project: https://github.com/ltbkq/font-toolkit  
> System: Linux Mint 22.3 Zena (Ubuntu 24.04 Noble)  
> Total Fonts: 3039 files / 2236 font families
