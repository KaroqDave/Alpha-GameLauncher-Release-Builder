@echo off
cd /d "%~dp0"
echo ============================================
echo Building Game Launcher (Onefile WITH ICON)...
echo ============================================

if exist dist rmdir /s /q dist
if exist build rmdir /s /q build
if exist game_launcher.spec del game_launcher.spec

py -m PyInstaller ^
    --onefile ^
    --noconsole ^
    --windowed ^
    --icon=assets/game_launcher.ico ^
    --add-data "assets;assets" ^
    --collect-all requests ^
    --collect-all urllib3 ^
    --collect-all certifi ^
    --collect-all charset_normalizer ^
    --collect-all idna ^
    game_launcher.py

echo.
echo ============================================
echo Build fertig. EXE liegt in dist\game_launcher.exe
echo ============================================
pause
