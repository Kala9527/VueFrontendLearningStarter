#!/bin/bash

# 抹茶花园 - 一键部署启动脚本

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "========================================"
echo "     抹茶花园 - 一键部署启动脚本"
echo "========================================"
echo ""

# 获取脚本所在目录，任意位置运行均可
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# 选择运行模式
echo "请选择运行模式:"
echo "  1. 部署并预览 (安装依赖 + 构建 + 预览 4173)"
echo "  2. 开发模式 (安装依赖 + 启动开发服务器 3000)"
echo ""
read -p "请输入 1 或 2 [默认 1]: " runmode
runmode=${runmode:-1}
if [ "$runmode" != "1" ] && [ "$runmode" != "2" ]; then
    runmode=1
fi
echo ""

# 检查Node.js是否已安装
echo -e "${BLUE}[1/4]${NC} 检查Node.js环境..."

if command -v node &> /dev/null; then
    NODE_VERSION=$(node -v)
    echo -e "检测到Node.js版本: ${GREEN}$NODE_VERSION${NC}"
else
    echo -e "${YELLOW}未检测到Node.js，正在尝试安装...${NC}"
    echo ""

    # 检查是否有nvm
    if [ -d "$HOME/.nvm" ]; then
        echo "检测到nvm，正在安装Node.js 20..."
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        nvm install 20
        nvm use 20
        NODE_VERSION=$(node -v)
        echo -e "Node.js安装成功: ${GREEN}$NODE_VERSION${NC}"
    elif [ -f "$HOME/.nvm/nvm.sh" ]; then
        echo "检测到nvm脚本，正在安装Node.js 20..."
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        nvm install 20
        nvm use 20
        NODE_VERSION=$(node -v)
        echo -e "Node.js安装成功: ${GREEN}$NODE_VERSION${NC}"
    else
        echo "请选择安装方式:"
        echo "  1. 使用nvm (推荐) - 需要先安装nvm"
        echo "  2. 直接下载安装Node.js"
        echo ""
        read -p "请输入选项 (1/2): " choice

        if [ "$choice" = "1" ]; then
            echo "请先安装nvm:"
            echo "  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash"
            echo ""
            echo "安装完成后，请重新运行此脚本"
            exit 1
        elif [ "$choice" = "2" ]; then
            echo "正在打开Node.js下载页面..."
            if command -v open &> /dev/null; then
                open https://nodejs.org/
            elif command -v xdg-open &> /dev/null; then
                xdg-open https://nodejs.org/
            fi
            echo "请下载并安装 LTS 版本 (20.x)"
            echo "安装完成后，请重新运行此脚本"
            exit 1
        else
            echo -e "${RED}无效选项，请重新运行脚本并选择1或2${NC}"
            exit 1
        fi
    fi
fi

# 检查.node-version或.nvmrc文件指定Node版本
if [ -f ".nvmrc" ]; then
    REQUIRED_NODE_VERSION=$(cat .nvmrc)
    echo -e "项目需要Node.js版本: ${YELLOW}$REQUIRED_NODE_VERSION${NC}"

    if command -v nvm &> /dev/null || [ -d "$HOME/.nvm" ]; then
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

        if nvm list | grep -q "$REQUIRED_NODE_VERSION"; then
            nvm use "$REQUIRED_NODE_VERSION"
        else
            echo -e "正在安装Node.js $REQUIRED_NODE_VERSION..."
            nvm install "$REQUIRED_NODE_VERSION"
            nvm use "$REQUIRED_NODE_VERSION"
        fi
    fi
fi

echo ""

# 检查并安装依赖
echo -e "${BLUE}[2/4]${NC} 检查项目依赖..."

if [ ! -d "node_modules" ]; then
    echo "node_modules不存在，正在安装依赖..."
    npm install
    if [ $? -ne 0 ]; then
        echo -e "${RED}依赖安装失败，请检查网络连接${NC}"
        exit 1
    fi
else
    echo -e "依赖已安装"
fi

echo ""

if [ "$runmode" = "1" ]; then
    # 构建项目
    echo -e "${BLUE}[3/4]${NC} 构建项目..."
    npm run build
    if [ $? -ne 0 ]; then
        echo -e "${RED}构建失败，请检查错误信息${NC}"
        exit 1
    fi
    echo -e "${GREEN}构建成功！${NC}"
    echo ""
    echo -e "${BLUE}[4/4]${NC} 启动预览服务器..."
    echo "========================================"
    echo -e "${GREEN}服务器启动成功！${NC}"
    echo "访问地址: http://localhost:4173"
    echo "停止服务器请按 Ctrl+C"
    echo "========================================"
    echo ""
    npm run preview
else
    # 开发模式：直接启动开发服务器
    echo -e "${BLUE}[3/4]${NC} 启动开发服务器..."
    echo "========================================"
    echo -e "${GREEN}开发服务器启动成功！${NC}"
    echo "访问地址: http://localhost:3000"
    echo "停止服务器请按 Ctrl+C"
    echo "========================================"
    echo ""
    npm run dev
fi
