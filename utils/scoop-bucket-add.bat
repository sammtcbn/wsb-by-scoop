@echo off

set bucketname=%1

where /q scoop
if /I %ERRORLEVEL% NEQ 0 (

	if exist C:\Users\%UserName%\scoop\shims\scoop.cmd (
        C:\Users\%UserName%\scoop\shims\scoop bucket add %bucketname% >> C:\wsb-tmp\scoop-log.txt
	) else (
        echo scoop not found >> C:\wsb-tmp\scoop-log.txt
	)

) else (
    scoop bucket add %bucketname% >> C:\wsb-tmp\scoop-log.txt
)
