@echo off

if "%~1"=="" goto END

where /q choco
if errorlevel 0 (
    if exist C:\wsb-tmp (
        scoop install %* >> C:\wsb-tmp\scoop-log.txt
    ) else (
        scoop install %*
    )
)

:END
