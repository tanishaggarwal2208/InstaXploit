@echo off
title InstaXploit Setup
color 0A

echo ========================================
echo       InstaXploit Setup Script
echo ========================================
echo.

echo [1/4] Downloading InstaXploit.zip...
echo Please wait while downloading...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/samay825/InstaXploit/releases/download/v1.0.0/InstaXploit.zip' -OutFile 'InstaXploit.zip'"

if not exist "InstaXploit.zip" (
    echo ERROR: Failed to download the zip file!
    echo Please check your internet connection and try again.
    pause
    exit /b 1
)

echo [2/4] Creating InstaXploit folder...
if exist "InstaXploit" (
    echo Removing existing InstaXploit folder...
    rmdir /s /q "InstaXploit"
)
mkdir "InstaXploit"

echo [3/4] Extracting zip file to InstaXploit folder...
powershell -Command "Expand-Archive -Path 'InstaXploit.zip' -DestinationPath 'InstaXploit' -Force"

if not exist "InstaXploit" (
    echo ERROR: Failed to extract the zip file!
    pause
    exit /b 1
)

echo [4/4] Installing requirements...
cd InstaXploit
if exist "requirements.txt" (
    echo Installing Python dependencies...
    pip install -r requirements.txt
    if %errorlevel% neq 0 (
        echo WARNING: Some packages might have failed to install.
        echo Please check the output above for any errors.
    )
) else (
    echo WARNING: requirements.txt not found in the extracted folder.
    echo You may need to install dependencies manually.
)

echo.
echo ========================================
echo          Setup Complete!
echo ========================================
echo.
echo The InstaXploit tool has been successfully set up.
echo.
echo To run the tool, use the following command:
echo python main.py
echo.
echo Current directory: %cd%
echo.
echo You can now run: python main.py
echo.
pause

echo Cleaning up zip file...
cd ..
del "InstaXploit.zip"

echo.
echo ========================================
echo        IMPORTANT: Setup ngrok
echo ========================================
echo.
echo Before running the tool, you need to:
echo 1. Set your ngrok auth token
echo 2. Run: ngrok config add-authtoken YOUR_TOKEN_HERE
echo.
echo Get your free ngrok token from: https://ngrok.com/
echo.
echo Opening InstaXploit folder...
start "" "InstaXploit"

echo.
echo Setup completed successfully!
echo.
echo NEXT STEPS:
echo 1. Set ngrok auth token: ngrok config add-authtoken YOUR_TOKEN
echo 2. Run the tool: python main.py
echo.
pause