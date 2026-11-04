@echo off
chcp 65001 >nul
cd /d "%~dp0"
where python >nul 2>nul
if errorlevel 1 (
  echo No encuentro Python. Instalalo desde python.org y marca la casilla "Add python.exe to PATH".
  pause
  exit /b
)
echo Revisando librerias, la primera vez tarda un poco...
python -m pip install --quiet --disable-pip-version-check aiohttp edge-tts
python script.py
pause
