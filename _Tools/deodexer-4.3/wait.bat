@ECHO OFF
IF "%1"=="" GOTO Syntax
CHOICE /C AB /T %1 /D A > NUL
IF ERRORLEVEL 255 ECHO Invalid parameter
IF ERRORLEVEL 255 GOTO Syntax
GOTO End

:Syntax
ECHO.
ECHO WAIT for a specified number of seconds
ECHO.
ECHO Usage:  WAIT  n
ECHO.
ECHO Where:  n  =  the number of seconds to wait (1 to 99)
ECHO.

:End