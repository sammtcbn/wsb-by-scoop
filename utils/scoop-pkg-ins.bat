@echo off

if "%~1"=="" goto END

where /q scoop
if /I %ERRORLEVEL% NEQ 0 (

	if exist C:\Users\%UserName%\scoop\shims\scoop.cmd (
        C:\Users\%UserName%\scoop\shims\scoop install %* >> C:\wsb-tmp\scoop-log.txt
	) else (
        echo scoop not found >> C:\wsb-tmp\scoop-log.txt
	)

) else (
    scoop install %* >> C:\wsb-tmp\scoop-log.txt
)

:END
