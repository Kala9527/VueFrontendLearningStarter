@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js 20 or newer is required.
  echo Download: https://nodejs.org/
  exit /b 1
)

if not exist node_modules (
  call npm install
  if errorlevel 1 exit /b 1
)

call npm run build
if errorlevel 1 exit /b 1

echo Preview: http://localhost:4173
call npm run preview
