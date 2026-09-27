# 安装说明

[中文文档](INSTALL.md) | **English** [INSTALL.en.md](INSTALL.en.md)

## 快速安装 (推荐)

```bash
git clone https://github.com/ltbkq/font-toolkit.git
cd font-toolkit
sudo bash install_fonts.sh
```

## 可选参数

```bash
# 安装所有字体 (默认)
sudo bash install_fonts.sh --all

# 仅安装 Windows 核心字体
sudo bash install_fonts.sh --windows

# 仅安装中文字体
sudo bash install_fonts.sh --chinese

# 仅安装 Noto 系列
sudo bash install_fonts.sh --noto

# 安装到用户目录 (无需 sudo)
bash install_fonts.sh --user
```

## 手动安装

1. **Debian/Ubuntu/Linux Mint**:
   ```bash
   sudo apt-get update
   sudo apt-get install -y fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-ui-core fonts-noto-ui-extra fonts-noto-extra fonts-wqy-microhei fonts-wqy-zenhei fonts-freefont-otf fonts-lxgw-wenkai ttf-mscorefonts-installer
   ```

2. **更新字体缓存**:
   ```bash
   sudo fc-cache -f -v
   ```

## 验证安装

```bash
# 查看字体数量
fc-list | wc -l

# 检查特定字体
fc-list | grep "Noto Sans CJK SC"
fc-list | grep "Microsoft YaHei"
```

## 项目结构

```
font-toolkit/
├── README.md              # 项目说明（中文）
├── README.en.md           # 项目说明（英文）
├── LICENSE                # MIT 许可证
├── INSTALL.md             # 安装说明（中文）
├── INSTALL.en.md          # 安装说明（英文）
├── install_fonts.sh       # 一键安装脚本（主脚本）
├── download_fonts.sh      # 字体下载脚本
├── generate_font_list.py  # 字体列表生成脚本
└── fonts/
    ├── font-list.md       # 完整字体列表
    ├── font-full-list.txt # 所有字体名称
    ├── font_categories.txt # 按类别分类
    ├── FONT_CATEGORIES.md # 字体分类详细目录
    ├── catalog.md         # 字体目录结构
    ├── all_families.txt   # 所有字体族列表
    ├── all_fonts.txt      # 所有字体文件列表
    └── categories.json    # 字体分类JSON
```
