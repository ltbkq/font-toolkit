#!/bin/bash
# ============================================================
# 🎨 系统字体一键安装脚本
# ============================================================
# 功能: 自动检测并安装系统所需的所有常用字体
# 系统: Debian/Ubuntu/Linux Mint 系
# ============================================================

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 获取脚本名称
SCRIPT_NAME=$(basename "$0")

# 日志函数
print_info()  { echo -e "${BLUE}[INFO]${NC} $1"; }
print_ok()    { echo -e "${GREEN}[OK]${NC} $1"; }
print_warn()  { echo -e "${YELLOW}[WARN]${NC} $1"; }
print_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# 检查是否为 root
check_root() {
    if [[ $EUID -ne 0 ]]; then
        print_error "此脚本需要 root/sudo 权限"
        print_info "请使用: sudo bash $SCRIPT_NAME"
        exit 1
    fi
}

# 检测系统类型
detect_os() {
    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        OS_NAME=$ID
        OS_VERSION=$VERSION_ID
        print_ok "检测到系统: $NAME $VERSION_ID"
    else
        print_error "不支持的操作系统"
        exit 1
    fi
}

# 检查是否使用 apt
check_apt() {
    if ! command -v apt-get &> /dev/null; then
        print_error "未找到 apt-get，请使用其他包管理器"
        exit 1
    fi
}

# 安装字体包
install_fonts() {
    local install_type="$1"
    
    print_info "更新软件包列表..."
    apt-get update -qq 2>/dev/null
    
    case "$install_type" in
        --all)
            print_info "安装所有字体..."
            apt-get install -y \
                fonts-noto-cjk \
                fonts-noto-cjk-extra \
                fonts-noto-ui-core \
                fonts-noto-ui-extra \
                fonts-noto-extra \
                fonts-wqy-microhei \
                fonts-wqy-zenhei \
                fonts-freefont-otf \
                fonts-freefont-ttf \
                fonts-lxgw-wenkai \
                fonts-dejavu-core \
                fonts-dejavu-mono \
                fonts-liberation \
                fonts-ubuntu \
                fonts-noto-mono \
                fonts-noto-color-emoji \
                fonts-opensymbol \
                fonts-mathjax \
                fonts-urw-base35 \
                fonts-arphic-ukai \
                fonts-arphic-uming \
                ttf-mscorefonts-installer \
                2>&1
            ;;
        --windows)
            print_info "安装 Windows 核心字体..."
            apt-get install -y \
                ttf-mscorefonts-installer \
                fonts-liberation \
                fonts-dejavu-core \
                2>&1
            ;;
        --chinese)
            print_info "安装中文字体..."
            apt-get install -y \
                fonts-noto-cjk \
                fonts-noto-cjk-extra \
                fonts-wqy-microhei \
                fonts-wqy-zenhei \
                fonts-lxgw-wenkai \
                fonts-freefont-ttf \
                fonts-arphic-ukai \
                fonts-arphic-uming \
                fonts-noto-color-emoji \
                2>&1
            ;;
        --noto)
            print_info "安装 Noto 系列字体..."
            apt-get install -y \
                fonts-noto-cjk \
                fonts-noto-cjk-extra \
                fonts-noto-ui-core \
                fonts-noto-ui-extra \
                fonts-noto-extra \
                fonts-noto-mono \
                fonts-noto-color-emoji \
                fonts-noto-core \
                2>&1
            ;;
        *)
            print_error "未知参数: $install_type"
            echo "用法: bash $SCRIPT_NAME [--all|--windows|--chinese|--noto]"
            exit 1
            ;;
    esac
}

# 安装字体到用户目录（无需sudo）
install_user_fonts() {
    print_info "安装字体到用户目录 ~/.local/share/fonts/..."
    mkdir -p ~/.local/share/fonts
    
    # 下载并安装字体
    local tmp_dir=$(mktemp -d)
    cd "$tmp_dir"
    
    # 下载字体包
    print_info "下载字体包..."
    apt-get download -o Dir::Cache::archives="$tmp_dir" \
        fonts-noto-cjk-extra \
        fonts-noto-ui-core \
        fonts-wqy-microhei \
        fonts-wqy-zenhei \
        fonts-freefont-otf \
        fonts-lxgw-wenkai \
        2>/dev/null || true
    
    # 解压字体文件
    for deb in *.deb; do
        if [[ -f "$deb" ]]; then
            dpkg-deb -x "$deb" extracted/ 2>/dev/null || true
        fi
    done
    
    # 复制字体到用户目录
    if [[ -d "extracted/usr/share/fonts" ]]; then
        cp -r extracted/usr/share/fonts/* ~/.local/share/fonts/ 2>/dev/null || true
    fi
    
    cd - > /dev/null
    rm -rf "$tmp_dir"
    
    print_ok "用户字体目录安装完成"
}

# 更新字体缓存
update_cache() {
    print_info "更新字体缓存..."
    
    # 系统级缓存（需要sudo）
    if [[ $EUID -eq 0 ]]; then
        fc-cache -f -v 2>/dev/null
        print_ok "系统级字体缓存更新完成"
    else
        # 用户级缓存
        fc-cache -f ~/.local/share/fonts 2>/dev/null
        fc-cache -f 2>/dev/null || true
        print_ok "用户级字体缓存更新完成"
    fi
}

# 显示安装结果
show_results() {
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
    
    # 检查关键字体
    local fonts_to_check=("Noto Sans CJK SC" "wqy-microhei" "Arial" "Times New Roman" "LXGW WenKai")
    for font in "${fonts_to_check[@]}"; do
        if fc-list | grep -qi "$font"; then
            echo -e "  ✅ $font"
        else
            echo -e "  ❌ $font (未找到)"
        fi
    done
    
    echo ""
    print_info "如需安装最新字体，请运行: sudo apt-get update && sudo apt-get upgrade"
}

# 解析参数
INSTALL_TYPE="--all"
SKIP_SUDO=false

while [[ $# -gt 0 ]]; do
    case "$1" in
        --all)
            INSTALL_TYPE="--all"
            shift
            ;;
        --windows)
            INSTALL_TYPE="--windows"
            shift
            ;;
        --chinese)
            INSTALL_TYPE="--chinese"
            shift
            ;;
        --noto)
            INSTALL_TYPE="--noto"
            shift
            ;;
        --user)
            SKIP_SUDO=true
            shift
            ;;
        -h|--help)
            echo "用法: bash $SCRIPT_NAME [选项]"
            echo ""
            echo "选项:"
            echo "  --all        安装所有字体 (默认)"
            echo "  --windows    仅安装 Windows 核心字体"
            echo "  --chinese    仅安装中文字体"
            echo "  --noto       仅安装 Noto 系列字体"
            echo "  --user       仅安装到用户目录 (无需sudo)"
            echo "  -h, --help   显示帮助信息"
            exit 0
            ;;
        *)
            print_error "未知选项: $1"
            exit 1
            ;;
    esac
done

# 主流程
main() {
    echo ""
    echo "=========================================="
    echo "🎨 系统字体一键安装脚本"
    echo "=========================================="
    echo ""
    
    check_apt
    detect_os
    
    if [[ "$SKIP_SUDO" == "true" ]]; then
        install_user_fonts
    else
        check_root
        install_fonts "$INSTALL_TYPE"
    fi
    
    update_cache
    show_results
}

main "$@"
