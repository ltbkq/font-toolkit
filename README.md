# 🎨 系统字体工具包

一套完整的 Linux 系统字体安装工具包，包含 Windows 核心字体、Noto 全系列、CJK 中文字体、UI 字体等。

## 📋 项目简介

本项目提供一键安装脚本，自动检测并安装系统所需的所有常用字体，涵盖：
- Windows 核心字体（Arial, Times New Roman, Courier New 等）
- Google Noto 全系列字体（含 CJK 全部字重）
- 文泉驿微米黑/正黑（中文字体）
- 霞鹜文楷（中文楷体）
- Ubuntu、DejaVu、Liberation 等开源字体
- Noto UI 系列（界面专用字体）
- Free 字体 OTF 版本
- 数学公式字体、Emoji 字体等

## 📊 字体统计

| 类别 | 字体文件数 | 字体族数 | 说明 |
|------|-----------|----------|------|
| Noto 系列 | ~2460 | ~600+ | 覆盖全球600+语言，含CJK全字重 |
| Windows 核心 | ~290 | ~80+ | Arial, Times, Verdana 等 |
| Ubuntu 系列 | ~81 | ~20+ | Ubuntu 字体家族 |
| 中文字体 | ~45 | ~20+ | 文泉驿, 霞鹜文楷, AR PL |
| DejaVu 系列 | 9 | ~4 | DejaVu Sans/Mono/Serif |
| Liberation 系列 | 12 | ~3 | Liberation Sans/Serif/Mono |
| Free 系列 (OTF) | 12 | ~3 | FreeSerif/Sans/Mono |
| 数学/符号字体 | ~15 | ~10 | MathJax, OpenSymbol等 |
| **总计** | **3039** | **2236** | **所有字体族** |

## 🚀 一键安装

```bash
# 方式一：直接运行安装脚本（推荐）
sudo bash install_fonts.sh

# 方式二：指定安装类型
sudo bash install_fonts.sh --all        # 安装所有字体（默认）
sudo bash install_fonts.sh --windows    # 仅安装 Windows 核心字体
sudo bash install_fonts.sh --chinese    # 仅安装中文字体
sudo bash install_fonts.sh --noto       # 仅安装 Noto 系列
bash install_fonts.sh --user            # 安装到用户目录（无需sudo）

# 方式三：下载脚本
bash download_fonts.sh
```

## 📦 项目包含字体（完整列表）

### 1️⃣ Windows 核心字体 (~290个文件)

| 字体族 | 包含样式 |
|--------|----------|
| **Arial** | Regular, Bold, Italic, Bold Italic, Black, Narrow |
| **Times New Roman** | Regular, Bold, Italic, Bold Italic |
| **Courier New** | Regular, Bold, Italic, Bold Italic |
| **Verdana** | Regular, Bold, Italic, Bold Italic |
| **Calibri** | Regular, Light, Bold, Italic, Bold Italic |
| **Segoe UI** | Regular, Semibold, Light, Black, Semilight, Variable |
| **Microsoft YaHei** | Regular, Bold, UI, UI Light |
| **SimSun 宋体** | Regular, ExtB, ExtG |
| **SimHei 黑体** | Regular |
| **SimFang 仿宋** | Regular |
| **SimKai 楷体** | Regular |
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
| **Microsoft JhengHei 微軟正黑體** | Regular, Bold |
| **MingLiU 細明體 / PMingLiU 新細明體** | Regular, ExtB |
| **AR PL UKai / UMing 文泉驛** | Regular |
| **Segoe Print / Segoe Script** | Regular, Bold |
| 等线 DengXian | Regular, Light |
| 微软雅黑 / 新宋体 / 楷体 等 | Regular |

### 2️⃣ Google Noto 系列 (~2460个文件)

#### Noto Sans CJK（思源黑体）
| 变体 | 字重 |
|------|------|
| Noto Sans CJK SC | Regular, Bold, Light, Medium, Thin, Black, DemiLight |
| Noto Sans CJK TC | 同上 |
| Noto Sans CJK HK | 同上 |
| Noto Sans CJK JP | 同上 |
| Noto Sans CJK KR | 同上 |

#### Noto Serif CJK（思源宋体）
| 变体 | 字重 |
|------|------|
| Noto Serif CJK SC | Regular, Bold, Light, Medium, SemiBold, Black, ExtraLight |
| Noto Serif CJK TC/HK/JP/KR | 同上 |

#### Noto Sans 语言变体 (600+语言)
包含以下语言的 Noto Sans 字体：
- **CJK 中文**: SC, TC, HK, JP, KR (全部字重)
- **阿拉伯语**: Arabic, Naskh, Kufi, etc.
- **希伯来语**: Hebrew, Rashi
- **印度语系**: Devanagari, Bengali, Gujarati, Gurmukhi, Tamil, Telugu, Malayalam, Kannada, Oriya, Sinhala
- **东亚语言**: Japanese, Korean, Thai, Vietnamese, Lao, Myanmar, Khmer
- **欧洲语言**: Latin, Greek, Cyrillic, Armenian, Georgian, etc.
- **其他**: Tibetan, Mongolian, Tibetan, Mongolian, Tai, etc.

#### Noto Serif 语言变体
包含 Noto Serif 的所有语言变体

#### 其他 Noto 字体
- **Noto Color Emoji** - 彩色 Emoji 字体
- **Noto Music** - 音乐符号
- **Noto Sans Symbols / Symbols2** - 符号字体
- **Noto Sans Math** - 数学字体
- **Noto Nastaliq Urdu** - 巴基斯坦乌尔都语
- **Noto Looped Lao** - 老挝语 Loop 字体
- **Noto UI 系列** - 各语言界面专用字体

### 3️⃣ Ubuntu 系列 (~81个文件)
- **Ubuntu**: Thin, ExtraLight, Light, Regular, Medium, SemiBold, Bold, ExtraBold + Condensed variants
- **Ubuntu Sans**: 全部字重
- **Ubuntu Mono**: Regular, Bold, Italic, Bold Italic
- **Ubuntu Sans Mono**: 全部字重

### 4️⃣ 中文字体 (~45个文件)
- **文泉驿微米黑** (WenQuanYi Micro Hei)
- **文泉驿正黑** (WenQuanYi Zen Hei)
- **霞鹜文楷** (LXGW WenKai) - Regular, Light, Bold
- **霞鹜文楷等宽** (LXGW WenKai Mono) - Regular, Light, Bold
- **AR PL UKai TW/MBE / UMing TW/HK/CN**
- **宋体-ExtB / 宋体-ExtG**
- **思源黑体 SC / 思源宋体 SC**
- **教育部標準楷書 / 教育部標準宋體UN**

### 5️⃣ DejaVu 系列 (9个文件)
- DejaVu Sans (Regular, Bold, Oblique, Bold Oblique)
- DejaVu Sans Mono (Regular, Bold, Oblique, Bold Oblique)
- DejaVu Serif (Regular, Bold, Italic, Bold Italic)
- DejaVu Math TeX Gyre

### 6️⃣ Liberation 系列 (12个文件)
- Liberation Sans / Serif / Mono (Regular, Bold, Italic, Bold Italic)

### 7️⃣ Free 系列 OTF (12个文件)
- FreeSerif / FreeSans / FreeMono (Regular, Bold, Italic, Bold Italic)

### 8️⃣ 数学公式字体 (~15个文件)
- **MathJax_Main**, **MathJax_Math**, **MathJax_SansSerif**, **MathJax_Serif**
- **MathJax_Script**, **MathJax_Typewriter**, **MathJax_Size1-4**
- **MathJax_Fraktur**, **MathJax_Caligraphic**, **MathJax_Vector**
- **MathJax_AMS**, **MathJax_WinIE6**, **MathJax_WinChrome**

### 9️⃣ 符号与装饰字体
- **OpenSymbol**, **Standard Symbols PS**, **Symbol**
- **Webdings**, **Wingdings**, **Marlett**
- **Impact**, **Comic Sans MS**
- **Segoe MDL2 Assets**, **Segoe Fluent Icons**, **Segoe Icons**

### 🔟 其他字体
- **Andale Mono**, **D050000L**, **Monotype Sorts**
- **Palatino Linotype**, **URW Bookman**, **URW Gothic**
- **P052**, **C059**, **Nimbus Sans**, **Nimbus Roman**
- **Franklin Gothic Medium**, **Gabriola**

---

## 🔧 系统要求

- Debian / Ubuntu / Linux Mint 系
- apt 包管理器
- sudo 权限（可选 --user 模式无需sudo）

## 📝 许可证

| 字体 | 许可证 |
|------|--------|
| Noto 系列 | Apache License 2.0 |
| Ubuntu 系列 | Ubuntu Font License |
| DejaVu | BSD |
| Liberation | GPL / AFL |
| Free 字体 | GPL |
| 文泉驿 | GPLv3 |
| 霞鹜文楷 | SIL Open Font License 1.1 |
| AR PL | GPL |
| Windows 字体 | Microsoft 专有许可 |

## 📁 项目结构

```
font-toolkit/
├── README.md              # 项目说明
├── LICENSE                # MIT 许可证
├── INSTALL.md             # 详细安装说明
├── install_fonts.sh       # 一键安装脚本（主脚本）
├── download_fonts.sh      # 字体下载脚本
├── generate_font_list.py  # 字体列表生成脚本
└── fonts/
    ├── font-list.md       # 完整字体列表（含所有字体详细分类）
    ├── font-full-list.txt # 所有字体名称（405行）
    ├── font_categories.txt # 按类别分类
    ├── FONT_CATEGORIES.md # 字体分类详细目录
    ├── catalog.md         # 字体目录结构
    ├── all_families.txt   # 2236个字体族列表
    ├── all_fonts.txt      # 3039个字体文件列表
    └── categories.json    # 字体分类JSON数据
```

## 🔗 快速开始

```bash
# 克隆项目
git clone https://github.com/ltbkq/font-toolkit.git
cd font-toolkit

# 安装所有字体
sudo bash install_fonts.sh --all

# 或使用下载脚本
bash download_fonts.sh
```

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

> 项目: https://github.com/ltbkq/font-toolkit  
> 系统信息: Linux Mint 22.3 Zena (Ubuntu 24.04 Noble)  
> 字体总数: 3039个文件 / 2236个字体族
