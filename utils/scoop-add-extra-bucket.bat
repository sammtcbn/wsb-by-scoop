@echo off

where /q scoop
if /I %ERRORLEVEL% NEQ 0 (

	if exist C:\Users\%UserName%\scoop\shims\scoop.cmd (
        C:\Users\%UserName%\scoop\shims\scoop bucket add extras
	) else (
        echo scoop not found >> C:\wsb-tmp\scoop-log.txt
	)

) else (
    scoop bucket add extras
)
