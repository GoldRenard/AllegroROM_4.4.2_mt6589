@echo off
@setlocal enableextensions
@cd /d "%~dp0"

set OUT_NAME=S960_AllegroROM_%date:~0,2%%date:~3,2%%date:~6,4%.zip
set OUT_DIR=%CD%\_ZipOutput
set TOOLS_DIR=%CD%\_Tools
set OS_DIR=%CD%\OSPackage
set ZIP_DIR=%CD%\ZIPPackage
set CUST_DIR=%CD%\CUSTPackage
set VTS_DIR=%CD%\VTSPackage
set BOOT_DIR=%CD%\BOOTPackage

title ROM Build
echo.
echo =============================================================
echo Output directory will be deleted. Make sure save your work!
echo =============================================================
pause

echo Deleting mark files...
"%TOOLS_DIR%\empty_folders.exe" unmark

echo Deleting old files...
title Deleting old files...
if exist "%OUT_DIR%" rmdir /S /Q "%OUT_DIR%"
mkdir "%OUT_DIR%"
mkdir "%OUT_DIR%\system"
mkdir "%OUT_DIR%\system\app"
mkdir "%OUT_DIR%\system\priv-app"
mkdir "%OUT_DIR%\system\framework"
mkdir "%OUT_DIR%\system\vendor"
mkdir "%OUT_DIR%\system\vendor\app"

echo Copying ZIP Package...
title Copying ZIP Package...
xcopy /Y /R /E /H "%ZIP_DIR%" "%OUT_DIR%"

echo Copying OS Package...
title Copying OS Package...
xcopy /Y /R /E /H "%OS_DIR%" "%OUT_DIR%"

echo Copying Custom Package...
title Copying Custom Package...
xcopy /Y /R /E /H "%CUST_DIR%" "%OUT_DIR%"

echo Copying data from VTS Package...
title Copying data from VTS Package...
for /D %%d in ("%VTS_DIR%\app\*") do (
	if exist "%%d\Binary" (
		if not exist "%%d\Binary\ignore.dat" (
			for %%f in ("%%d\Binary\*.apk") do (
				xcopy /Y /R /H "%%f" "%OUT_DIR%\system\app" > NUL
			)
		)
	)
)

for /D %%d in ("%VTS_DIR%\priv-app\*") do (
	if exist "%%d\Binary" (
		if not exist "%%d\Binary\ignore.dat" (
			for %%f in ("%%d\Binary\*.apk") do (
				xcopy /Y /R /H "%%f" "%OUT_DIR%\system\priv-app" > NUL
			)
		)
	)
)

for /D %%d in ("%VTS_DIR%\vendor\app\*") do (
	if exist "%%d\Binary" (
		if not exist "%%d\Binary\ignore.dat" (
			for %%f in ("%%d\Binary\*.apk") do (
				xcopy /Y /R /H "%%f" "%OUT_DIR%\system\vendor\app" > NUL
			)
		)
	)
)

for /D %%d in ("%VTS_DIR%\framework\*") do (
	if exist "%%d\Binary" (
		if not exist "%%d\Binary\ignore.dat" (
			for %%f in ("%%d\Binary\*.apk") do (
				xcopy /Y /R /H "%%f" "%OUT_DIR%\system\framework" > NUL
			)
			for %%f in ("%%d\Binary\*.jar") do (
				xcopy /Y /R /H "%%f" "%OUT_DIR%\system\framework" > NUL
			)
		)
	)
)

SET BOOTIMG=%VTS_DIR%\boot\Binary\boot.img
if exist "%BOOTIMG%" (
	del "%OUT_DIR%\boot.img" > nul
	call "%TOOLS_DIR%\legacy2mtk.bat" "%BOOTIMG%" "%OUT_DIR%\boot.img"
)

echo Creating ZIP...
title Creating ZIP...
"%TOOLS_DIR%\7z" a -tzip -mx5 "%OUT_DIR%\%OUT_NAME%" "%OUT_DIR%\*"
explorer /select,"%OUT_DIR%\%OUT_NAME%"
echo Creating mark files
"%TOOLS_DIR%\empty_folders.exe" mark
pause