@echo off
echo.
echo ==========================================
echo  Inventory Management App - First Setup
echo ==========================================
echo.
echo This will install the required dependencies.
echo Please wait, this may take a few minutes...
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo.
    echo Please install Node.js first:
    echo 1. Go to https://nodejs.org
    echo 2. Download and install the LTS version
    echo 3. Restart your computer
    echo 4. Run this setup again
    echo.
    pause
    exit /b 1
)

echo Node.js found! Installing app dependencies...
echo.

REM Install dependencies
call npm install

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to install dependencies!
    echo Please check your internet connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo  Setup Complete!
echo ==========================================
echo.
echo You can now run the app by double-clicking "start-app.bat"
echo.
echo The app will create a desktop shortcut on first launch.
echo.
pause
