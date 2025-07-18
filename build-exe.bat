@echo off
echo ========================================
echo    Building Inventory Management App
echo ========================================
echo.

echo [1/3] Building React application...
call npm run build
if %errorlevel% neq 0 (
    echo ERROR: React build failed
    pause
    exit /b 1
)

echo.
echo [2/3] Creating executable...
call npm run build-exe
if %errorlevel% neq 0 (
    echo ERROR: Executable build failed
    pause
    exit /b 1
)

echo.
echo [3/3] Build completed successfully!
echo.
echo Your .exe file is ready in the 'dist' folder:
dir /b dist\*.exe 2>nul
echo.
echo ========================================
echo    ✅ BUILD SUCCESSFUL!
echo ========================================
echo.
echo You can now share the .exe file with anyone!
echo No installation required - just double-click to run.
echo.
pause
