#!/bin/bash
# ============================================================
# 🎨 字体下载与安装脚本
# ============================================================
# 从 apt 仓库下载并安装所有字体
# 适用于 Debian/Ubuntu/Linux Mint 系
# ============================================================

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_info()  { echo -e "${BLUE}[INFO]${NC} $1"; }
print_ok()    { echo -e "${GREEN}[OK]${NC} $1"; }
print_warn()  { echo -e "${YELLOW}[WARN]${NC} $1"; }
print_error() { echo -e "${RED}[ERROR]${NC} $1"; }

print_info "开始下载并安装所有字体..."
echo ""

# 更新软件包列表
print_info "更新软件包列表..."
sudo apt-get update -qq

# 预先接受微软字体许可证（必须在安装之前）
print_info "接受微软字体许可证..."
echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula boolean true" | sudo debconf-set-selections 2>/dev/null || true
echo "ttf-mscorefonts-installer msttcorefonts/present-mscorefonts-eula seen true" | sudo debconf-set-selections 2>/dev/null || true

# 安装所有字体包
print_info "安装字体包..."
sudo apt-get install -y \
    fonts-noto-cjk \
    fonts-noto-cjk-extra \
    fonts-noto-ui-core \
    fonts-noto-ui-extra \
    fonts-noto-extra \
    fonts-noto-mono \
    fonts-noto-color-emoji \
    fonts-wqy-microhei \
    fonts-wqy-zenhei \
    fonts-freefont-otf \
    fonts-freefont-ttf \
    fonts-lxgw-wenkai \
    fonts-dejavu-core \
    fonts-dejavu-mono \
    fonts-liberation \
    fonts-ubuntu \
    fonts-opensymbol \
    fonts-mathjax \
    fonts-urw-base35 \
    fonts-arphic-ukai \
    fonts-arphic-uming \
    fonts-moe-standard-kai \
    fonts-moe-standard-song \
    ttf-mscorefonts-installer \
    fonts-noto \
    fonts-droid-fallback \
    xfonts-base \
    xfonts-scalable \
    xfonts-utils \
    2>&1

# 更新字体缓存
print_info "更新字体缓存..."
sudo fc-cache -f -v 2>/dev/null

# 验证安装
echo ""
echo "============================================"
print_ok "字体安装完成！"
echo "============================================"
echo ""
echo "📊 字体统计:"
echo "  总字体文件: $(fc-list | wc -l)"
echo "  字体族数: $(fc-list : family | sort -u | wc -l)"
echo ""
echo "🔍 快速检查:"
fonts_to_check=("Noto Sans CJK SC" "wqy-microhei" "Arial" "Times New Roman" "LXGW WenKai")
for font in "${fonts_to_check[@]}"; do
    if fc-list | grep -qi "$font"; then
        echo -e "  ✅ $font"
    else
        echo -e "  ❌ $font (未找到)"
    fi
done

echo ""
print_info "如需更新字体，请运行: sudo apt-get update && sudo apt-get upgrade"
