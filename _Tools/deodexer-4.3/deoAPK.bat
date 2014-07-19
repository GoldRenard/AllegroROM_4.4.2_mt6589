:: 
:: Daneshm90's Auto-Deodexer [SCRIPT] modified by Zen Arcade for JF's baksmali / smali v2.0
:: File: deoAPK.bat
:: Description: Called by a loop to deodex app(s) and optimize APKs found in "app" folder
::
echo off
if (%1)==() GOTO END
echo Optimizing %~n1...
IF NOT EXIST "app/%~n1.odex" goto quiter
md "%~dp0temp_%~n1"

:: deodex
echo Deodexing APK

java -Xmx512m -jar baksmali-2.0.jar -a %2 -d framework_bc -x "%~dp0app\%~n1.odex" -T "%~dp0inline.txt"
if errorlevel 1 goto error

java -jar smali-2.0.jar out -a %2 -o "%~dp0temp_%~n1\classes.dex"
if errorlevel 1 goto error

IF NOT EXIST "%~dp0temp_%~n1\classes.dex" goto error

copy "%~dp0app\%~n1.apk" "%~dp0deodexed_APK\%~n1.apk"

7za a -tzip %~dp0deodexed_APK\%~n1.apk "%~dp0temp_%~n1\classes.dex" -mx%3

:: cleanup
echo Cleaning up...
rd /s /q "%~dp0temp_%~n1"
rd /s /q out
del /q "%~dp0app\%~n1.odex"
del /q "%~dp0app\%~n1.apk"
echo %~n1 is optimized...
echo --------------------------------
goto END
:quiter
IF EXIST "%~dp0app\%~n1.apk" MOVE "%~dp0app\%~n1.apk" "%~dp0deodexed_APK\%~n1.apk"
goto END
:error
rd /s /q "%~dp0temp_%~n1"
rd /s /q "%~dp0out"
wait 1
:END