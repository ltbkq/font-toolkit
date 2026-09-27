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

| 类别 | 字体文件数 | 说明 |
|------|-----------|------|
| Noto 系列 | ~2460 | 覆盖全球大部分语言 |
| Windows 核心 | ~290 | Arial, Times, Verdana 等 |
| Ubuntu 系列 | ~81 | Ubuntu 字体家族 |
| 其他开源字体 | ~142 | DejaVu, Liberation 等 |
| 中文字体 | ~45 | 文泉驿, 霞鹜文楷, AR PL |
| **总计** | **3039** | **2236 个字体族** |

## 🚀 一键安装

```bash
# 方式一：直接运行安装脚本
bash install_fonts.sh

# 方式二：source 执行
source install_fonts.sh

# 方式三：指定安装类型
./install_fonts.sh --all        # 安装所有字体
./install_fonts.sh --windows    # 仅安装 Windows 核心字体
./install_fonts.sh --chinese    # 仅安装中文字体
./install_fonts.sh --noto       # 仅安装 Noto 系列
```

## 📦 项目包含字体

详见 [fonts/font-list.md](fonts/font-list.md)

## 🔧 系统要求

- Debian/Ubuntu/Linux Mint 系
- apt 包管理器
- sudo 权限

## 📝 许可证

各字体遵循其各自的许可证，详见字体列表中的说明。

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！
