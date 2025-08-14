@echo off
title InstaXploit - Social Engineering Tool
color 0A
cls

echo.
echo    InstaXploit - Social Engineering Tool
echo    ======================================
echo.
echo    SYSTEM: Initializing application...
echo    CHECK: Verifying Python installation...
echo.
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo    ERROR: Python not found in system PATH!
    echo    HELP: Please install Python from https://python.org
    echo    INFO: Make sure to add Python to PATH during installation
    echo.
    pause
    exit /b 1
)

echo    CHECK: Locating InstaXploit directory...
if exist "InstaXploit\main.py" (
    echo    SUCCESS: Found InstaXploit installation!
    cd InstaXploit
) else if exist "main.py" (
    echo    SUCCESS: Found main.py in current directory!
) else (
    echo    ERROR: InstaXploit not found!
    echo    HELP: Please run setup_instaxploit.bat first to install the tool
    echo    INFO: Or ensure main.py exists in the current directory
    echo.
    pause
    exit /b 1
)

echo    CHECK: Verifying ngrok configuration...
ngrok config check >nul 2>&1
if %errorlevel% neq 0 (
    echo    WARNING: ngrok may not be properly configured
    echo    INFO: If you encounter tunneling issues, run: ngrok config add-authtoken YOUR_TOKEN
    echo.
)

echo    STATUS: Loading modules and dependencies...
timeout /t 2 /nobreak >nul

echo    LAUNCH: Starting InstaXploit application...
echo.
echo    =====================================
echo              APPLICATION LOG
echo    =====================================
echo.

python main.py

echo.
echo    =====================================
echo           APPLICATION TERMINATED
echo    =====================================
echo.
echo    INFO: Application has been closed.
echo    OPTION: Press any key to restart, or close this window to exit.
pause >nul

echo    RESTART: Restarting application...
goto :eof
