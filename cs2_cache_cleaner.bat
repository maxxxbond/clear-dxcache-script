@echo off
echo Script is running...

REM List of cache dirs
set "CACHE_DIRS=%USERPROFILE%\AppData\Local\AMD\DxCache %USERPROFILE%\AppData\Local\AMD\DxcCache %USERPROFILE%\AppData\LocalLow\AMD %USERPROFILE%\AppData\Local\NVIDIA\DxCache %USERPROFILE%\AppData\Local\NVIDIA\DxcCache %USERPROFILE%\AppData\LocalLow\NVIDIA"

for %%F in (%CACHE_DIRS%) do (
    if exist "%%F" (
        echo Folder found: %%F
        echo Deleting cache files...
        del /q /s "%%F\*"
    ) else (
        echo Folder not found: %%F
    )
)

echo Done.
pause
