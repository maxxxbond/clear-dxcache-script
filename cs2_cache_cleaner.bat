@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

REM ESC-symbol
for /F "delims=" %%i in ('echo prompt $E^|cmd') do set "ESC=%%i"

REM Centering spaces
set "SPACES=               "

REM Gradient banner
echo.
echo.
echo.
echo %ESC%[32m%SPACES%███╗   ███╗ █████╗ ██╗  ██╗██╗  ██╗██╗  ██╗██████╗  ██████╗ ███╗   ██╗██████╗
echo %ESC%[32;1m%SPACES%████╗ ████║██╔══██╗╚██╗██╔╝╚██╗██╔╝╚██╗██╔╝██╔══██╗██╔═══██╗████╗  ██║██╔══██╗
echo %ESC%[32m%SPACES%██╔████╔██║███████║ ╚███╔╝  ╚███╔╝  ╚███╔╝ ██████╔╝██║   ██║██╔██╗ ██║██║  ██║
echo %ESC%[32;1m%SPACES%██║╚██╔╝██║██╔══██║ ██╔██╗  ██╔██╗  ██╔██╗ ██╔══██╗██║   ██║██║╚██╗██║██║  ██║
echo %ESC%[32;2m%SPACES%██║ ╚═╝ ██║██║  ██║██╔╝ ██╗██╔╝ ██╗██╔╝ ██╗██████╔╝╚██████╔╝██║ ╚████║██████╔╝
echo %ESC%[32m%SPACES%╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝%ESC%[0m
echo.
echo.
echo.

pause

echo Script is running...
echo.

REM List of cache dirs
set "CACHE_DIRS=%USERPROFILE%\AppData\Local\AMD\DxCache %USERPROFILE%\AppData\Local\AMD\DxcCache %USERPROFILE%\AppData\LocalLow\AMD %USERPROFILE%\AppData\Local\NVIDIA\DxCache %USERPROFILE%\AppData\Local\NVIDIA\DxcCache %USERPROFILE%\AppData\LocalLow\NVIDIA"

set /a totalFound=0
set /a totalDeleted=0

for %%F in (%CACHE_DIRS%) do (
    set /a countBefore=0
    for /f %%C in ('dir "%%F" /a-d /b /s 2^>nul ^| find /v /c ""') do set /a countBefore=%%C

    if !countBefore! gtr 0 (
        del /q /s "%%F\*" >nul 2>nul

        set /a countAfter=0
        for /f %%C in ('dir "%%F" /a-d /b /s 2^>nul ^| find /v /c ""') do set /a countAfter=%%C

        set /a deleted=countBefore - countAfter
        set /a totalFound+=countBefore
        set /a totalDeleted+=deleted

        echo Folder: %%F
        echo Found: !countBefore!
        echo Deleted: !deleted!
        echo.
    ) else (
        echo Folder: %%F
        echo Found: 0
        echo Deleted: 0
        echo.
    )
)

echo Total files found: %totalFound%
echo Total files deleted: %totalDeleted%
echo Done. GLHF!
pause
endlocal
