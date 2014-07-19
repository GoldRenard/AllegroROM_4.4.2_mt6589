@echo off
SET LOCATION=%~dp0
SET LOCATION=%LOCATION:~0,-1%
SET RBOOTIMG=%LOCATION%\rbootimg.exe

SET TMPDIR=%TMP%\rbootimg-%RANDOM%
"%RBOOTIMG%" --unpack "%1" --output "%TMPDIR%"
IF EXIST "%TMPDIR%\*.mtkhdr" DEL /F /Q "%TMPDIR%\*.mtkhdr"
"%RBOOTIMG%" --pack "%TMPDIR%" --output "%2"
DEL /F /S /Q "%TMPDIR%" > nul