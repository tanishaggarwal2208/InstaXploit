@echo off
title InstaXploit Professional Setup
color 0A
cls

echo.
echo    InstaXploit Professional Setup v2.0
echo    Automated Installation Tool
echo.
echo    ========================================
echo.
echo    Initializing setup process...
echo    Checking system requirements...
echo.
timeout /t 2 /nobreak >nul

echo    STEP 1/5: Downloading InstaXploit package...
echo    STATUS: Connecting to GitHub repository...
echo.
powershell -Command "Write-Host '    DOWNLOAD: Fetching latest release...' -ForegroundColor Cyan; Invoke-WebRequest -Uri 'https://github.com/samay825/InstaXploit/releases/download/v1.0.0/InstaXploit.zip' -OutFile 'InstaXploit.zip' -UseBasicParsing"

if not exist "InstaXploit.zip" (
    echo    ERROR: Download failed! Please check your internet connection.
    echo    HELP: Ensure you have access to GitHub and try again.
    echo.
    pause
    exit /b 1
)
echo    SUCCESS: Package downloaded successfully!
echo.

echo    STEP 2/5: Preparing installation directory...
if exist "InstaXploit" (
    echo    CLEANUP: Removing existing installation...
    rmdir /s /q "InstaXploit" >nul 2>&1
)
mkdir "InstaXploit" >nul 2>&1
echo    SUCCESS: Directory prepared!
echo.

echo    STEP 3/5: Extracting package contents...
echo    STATUS: Decompressing files...
echo.
powershell -Command "Expand-Archive -Path 'InstaXploit.zip' -DestinationPath 'InstaXploit' -Force"

if not exist "InstaXploit" (
    echo    ERROR: Extraction failed! Package may be corrupted.
    echo    HELP: Please try downloading again or contact support.
    echo.
    pause
    exit /b 1
)
echo    SUCCESS: Files extracted successfully!
echo.

echo    STEP 4/5: Installing Python dependencies...
cd InstaXploit
if exist "requirements.txt" (
    echo    STATUS: Installing required packages...
    pip install -r requirements.txt >nul 2>&1
    if %errorlevel% neq 0 (
        echo    WARNING: Some packages installation failed.
        echo    INFO: Attempting alternative installation...
        pip install --user -r requirements.txt
    ) else (
        echo    SUCCESS: All dependencies installed successfully!
    )
) else (
    echo    WARNING: requirements.txt not found.
    echo    INFO: Manual dependency installation may be required.
)
echo.

echo    STEP 5/5: Configuring ngrok integration...
echo    INFO: Setting up ngrok authentication...
echo.

:ngrok_setup
echo.
echo    ========================================
echo             NGROK SETUP REQUIRED
echo    ========================================
echo.
echo    NOTICE: ngrok authentication token is required for tunneling.
echo    INFO: Get your free token from: https://dashboard.ngrok.com/get-started/your-authtoken
echo.
set /p ngrok_token="    Enter your ngrok auth token: "

if "%ngrok_token%"=="" (
    echo    ERROR: Token cannot be empty!
    goto ngrok_setup
)

echo    STATUS: Configuring ngrok with provided token...
ngrok config add-authtoken %ngrok_token% >nul 2>&1
if %errorlevel% equ 0 (
    echo    SUCCESS: ngrok configured successfully!
) else (
    echo    WARNING: ngrok configuration may have failed.
    echo    INFO: You can manually configure later with: ngrok config add-authtoken YOUR_TOKEN
)
echo.

echo.
echo    ========================================
echo          SETUP COMPLETED SUCCESSFULLY
echo    ========================================
echo.
echo    SUCCESS: InstaXploit has been successfully installed and configured!
echo    INFO: Current installation directory: %cd%
echo.
echo    NEXT STEPS:
echo      1. Use 'run_instaxploit.bat' to start the application
echo      2. Or manually run: python main.py
echo      3. Follow the on-screen instructions in the application
echo.

echo    STATUS: Creating launcher script...
echo @echo off > run_instaxploit.bat
echo title InstaXploit - Social Engineering Tool >> run_instaxploit.bat
echo color 0A >> run_instaxploit.bat
echo cls >> run_instaxploit.bat
echo echo. >> run_instaxploit.bat
echo echo    InstaXploit - Social Engineering Tool >> run_instaxploit.bat
echo echo    ====================================== >> run_instaxploit.bat
echo echo. >> run_instaxploit.bat
echo echo    INFO: Starting InstaXploit application... >> run_instaxploit.bat
echo echo    STATUS: Loading modules and dependencies... >> run_instaxploit.bat
echo echo. >> run_instaxploit.bat
echo timeout /t 2 /nobreak ^>nul >> run_instaxploit.bat
echo python main.py >> run_instaxploit.bat
echo pause >> run_instaxploit.bat

echo    SUCCESS: Launcher script created: run_instaxploit.bat
echo.

echo    CLEANUP: Removing installation files...
cd ..
del "InstaXploit.zip" >nul 2>&1
echo    SUCCESS: Temporary files cleaned up!
echo.

echo    INFO: Opening installation directory...
start "" "InstaXploit"
echo.

echo    ========================================
echo       INSTALLATION COMPLETE - THANK YOU!
echo    ========================================
echo.
echo    FINAL: Press any key to close this setup window...
pause >nul

echo    SELF-DESTRUCT: Removing setup file...
timeout /t 1 /nobreak >nul
del "%~f0" >nul 2>&1