@echo off
echo.
echo ==========================================
echo  Starting Inventory Management App
echo ==========================================
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo Please run setup.bat first.
    pause
    exit /b 1
)

REM Check if dependencies are installed
if not exist "node_modules" (
    echo Dependencies not found! Running setup...
    call setup.bat
    if %errorlevel% neq 0 (
        echo Setup failed! Please check setup.bat
        pause
        exit /b 1
    )
)

echo Starting the app...
echo.
echo The app window will open shortly.
echo Keep this window open while using the app.
echo.
echo To stop the app: Close this window or press Ctrl+C
echo.

npm start
