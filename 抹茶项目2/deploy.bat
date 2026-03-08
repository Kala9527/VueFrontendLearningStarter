@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title 抹茶花园 - 一键部署脚本

:: 切换到脚本所在目录，任意位置运行均可
cd /d "%~dp0"

echo ========================================
echo     抹茶花园 - 一键部署启动脚本
echo ========================================
echo.
echo 1 = 部署并预览 端口4173
echo 2 = 开发模式 端口3000
echo.
set /p runmode=Type 1 or 2 then Enter:
if not "!runmode!"=="1" set runmode=2
echo.

:: 检查Node是否已安装
echo Step 1/4 检查Node环境...
where node >nul 2>nul
if errorlevel 1 goto no_node
goto node_ok

:no_node
echo 未检测到 Node 请先安装
echo.
echo 1 = 使用 nvm 安装
echo 2 = 打开官网下载
echo.
set /p choice=Type 1 or 2 then Enter:
if "!choice!"=="1" goto try_nvm
if "!choice!"=="2" goto open_node_site
echo 无效选项
pause
exit /b 1

:try_nvm
where nvm >nul 2>nul
if errorlevel 1 (
    echo 请先安装 nvm-windows
    echo https://github.com/coreybutler/nvm-windows/releases
    pause
    exit /b 1
)
echo 使用 nvm 安装 Node 20...
call nvm install 20
call nvm use 20
goto node_ok

:open_node_site
start https://nodejs.org/
echo 安装完成后请重新运行此脚本
pause
exit /b 1

:node_ok
for /f "tokens=1" %%v in ('node -v 2^>nul') do set NODE_VERSION=%%v
echo Node 版本: !NODE_VERSION!
echo.

:: 检查依赖
echo Step 2/4 检查项目依赖...
if not exist "node_modules" (
    echo 正在安装依赖...
    call npm install
    if errorlevel 1 (
        echo 依赖安装失败
        pause
        exit /b 1
    )
) else (
    echo 依赖已安装
)
echo.

:: 根据模式构建或直接启动
if "!runmode!"=="1" goto do_build
goto do_dev

:do_build
echo Step 3/4 构建项目...
call npm run build
if errorlevel 1 (
    echo 构建失败
    pause
    exit /b 1
)
echo 构建成功
echo.
echo Step 4/4 启动预览服务器...
echo ========================================
echo 访问 http://localhost:4173
echo 按 Ctrl+C 停止
echo ========================================
call npm run preview
goto end

:do_dev
echo Step 3/4 启动开发服务器...
echo ========================================
echo 访问 http://localhost:3000
echo 按 Ctrl+C 停止
echo ========================================
call npm run dev
goto end

:end
echo 服务器已停止
pause
