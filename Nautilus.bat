tasklist /FI "IMAGENAME eq vcxsrv.exe"

SET /A RESULT=%ERRORLEVEL%

IF "RESULT"=="0" (
	ECHO "===RUNNING==="
	ubuntu run "export DISPLAY=:0 && nautilus"
) ELSE (
	ECHO "===OPENING SERVER==="
	start config.xlaunch
	ECHO "===RUNNING==="
	ubuntu run "export DISPLAY=:0 && nautilus"
)
