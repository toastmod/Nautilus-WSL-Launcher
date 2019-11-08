@ECHO OFF

QPROCESS vcxsrv.exe >NUL

IF %ERRORLEVEL%==0 (
	ECHO "===RUNNING==="
	ubuntu run "export DISPLAY=:0 && xterm"
) ELSE (
	ECHO "===OPENING SERVER==="
	start config.xlaunch -renderer
	ECHO "===RUNNING==="
	ubuntu run "export DISPLAY=:0 && xterm"
)

pause
