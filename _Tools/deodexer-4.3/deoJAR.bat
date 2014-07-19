:: 
:: Daneshm90's Auto-Deodexer [SCRIPT] modified by Zen Arcade for JF's baksmali / smali v2.0
:: File: deoJAR.bat
:: Description: Called by a loop to deodex framework JARs found in "framework" folder
::
echo off
if (%1)==() GOTO END
echo Optimizing framework: %~n1
IF NOT EXIST "%~dp0framework\%~n1.odex" goto quiter 
md "%~dp0temp_%~n1"

:: deodex
echo Deodexing JAR
java -Xmx512m -jar baksmali-2.0.jar -a %2 -d framework_bc -x "%~dp0framework\%~n1.odex"
if errorlevel 1 goto error

java -jar smali-2.0.jar out -a %2 -o "%~dp0temp_%~n1\classes.dex"
if errorlevel 1 goto error

IF EXIST "%~dp0framework\%~n1.apk" goto apk_odex

IF NOT EXIST "%~dp0temp_%~n1\classes.dex" goto error

copy "%~dp0framework\%~n1.jar" "%~dp0deodexed_JAR\%~n1.jar"

7za a -tzip %~dp0deodexed_JAR\%~n1.jar "%~dp0temp_%~n1\classes.dex" -mx%3

goto cleanup

:apk_odex
copy "%~dp0framework\%~n1.apk" "%~dp0deodexed_JAR\%~n1.apk"

7za a -tzip %~dp0deodexed_JAR\%~n1.apk "%~dp0temp_%~n1\classes.dex" -mx%3


:: cleanup
:cleanup
echo Cleaning up...
rd /s /q "%~dp0temp_%~n1"
rd /s /q out
del /q "%~dp0framework\%~n1.odex"
del /q "%~dp0framework\%~n1.jar"

echo %~n1 framework optimized...
echo --------------------------------
goto END
:quiter
IF EXIST "%~dp0framework\%~n1.jar" MOVE /Y "%~dp0framework\%~n1.jar" "%~dp0deodexed_JAR\%~n1.jar"
goto END
:error
rd /s /q out
rd /s /q "%~dp0temp_%~n1"
wait 1
:END