@echo off
SET LOCATION=%~dp0
SET OLD_CD=%CD%
SET KITCHEN_HOME=D:\Devices\S960_AllegroROM2.0

set PROJECT=%1
cd "%LOCATION%\%PROJECT%"
title Building %PROJECT%...
call ant clean & if errorlevel 1 goto fail

goto end
:fail
title Building "%PROJECT%" failed!
echo Building "%PROJECT%" failed!
pause
:end
cd "%OLD_CD%"