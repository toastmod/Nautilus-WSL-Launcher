@ECHO OFF

QPROCESS vcxsrv.exe >NUL

IF %ERRORLEVEL%==0 (
	ECHO "===RUNNING==="
	ubuntu run "export DISPLAY=:0 && nautilus"
) ELSE (
	ECHO "===OPENING SERVER==="
	start config.xlaunch
	ECHO "===RUNNING==="
	ubuntu run "export DISPLAY=:0 && nautilus"
)
