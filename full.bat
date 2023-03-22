@echo off
set projectpath=%~dp0
if "%projectpath:~-1%"=="\" set projectpath=%projectpath:~0,-1%
cd /d "%projectpath%"

rem init
call %projectpath%\utils\is-in-wsb.bat
if %errorlevel% equ 0 (
  call %projectpath%\utils\folder-create.bat C:\wsb-tmp
  call %projectpath%\utils\logw.bat start time - %date% %time%
)

call %projectpath%\utils\command-prompt-encoding-utf8.bat
call %projectpath%\utils\wait-network-ready.bat

rem chocolatey
call %projectpath%\utils\scoop-install.bat

rem =======================================================
rem Custom begin
rem =======================================================

call %projectpath%\utils\scoop-pkg-ins.bat 7zip
call %projectpath%\utils\scoop-pkg-ins.bat notepadplusplus
call %projectpath%\utils\scoop-pkg-ins.bat googlechrome
call %projectpath%\utils\scoop-pkg-ins.bat git

call %projectpath%\utils\scoop-pkg-ins.bat python

rem =======================================================
rem Custom end
rem =======================================================


rem finish
call %projectpath%\utils\is-in-wsb.bat
if %errorlevel% equ 0 (
  call %projectpath%\utils\generate-ip.bat
  call %projectpath%\utils\generate-boot-ok.bat
  call %projectpath%\utils\logw.bat end time - %date% %time%
)
