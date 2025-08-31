@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo.
echo AppDelFaster by Diogo S. Lourenço
echo.
echo Enter the name of the application to remove (or 'q' to quit)
echo.

set apps=
:input_loop
set /p "app_name=App to uninstall: "
if "!app_name!"=="" goto end_input
if /i "!app_name!"=="q" goto end_input
if /i "!app_name!"=="exit" goto end_input
if /i "!app_name!"=="quit" goto end_input

set apps=!apps! "!app_name!"
goto input_loop

:end_input
echo.

if "!apps!"=="" (
    echo No apps were selected for uninstallation.
    goto end
)

for %%a in (!apps!) do (
    call :uninstall %%a
)

echo.
echo Uninstaller finished
goto :eof

:uninstall
set app_name=%~1
echo Attempting to uninstall: !app_name!
winget uninstall !app_name! >nul 2>&1

if !errorlevel! equ 0 (
    echo [✔] !app_name! successfully removed
) else (
    echo [✘] Failed to remove !app_name!
)

goto :eof

:end
endlocal
