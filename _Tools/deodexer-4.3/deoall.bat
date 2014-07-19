:: 
:: Daneshm90's Auto-Deodexer [SCRIPT] modified by Zen Arcade for JF's baksmali / smali v2.0
::   Added selectable Android API level, input validations, and error handling
::
echo off
java -version 
if errorlevel 1 goto errjava

if exist %~dp0 goto carryon
goto spacesbad
:carryon

cls
cls
set api=19
set usrc=9
set menunr=7
:restart 
cls
echo ------------------------------------------
echo ^| Compression-Level: %usrc% ^| Android API: %api% ^|
echo ------------------------------------------
echo **************** Auto-Deodexer 4.3 *******************
echo.
echo Choice                        Action
echo.
echo   1  Pull system (Phone must be in USB debugging mode and attached to USB)
echo   2  Set Android API level (Important!! - Do this before deodexing)
echo   3  Deodex a stock ROM (Either copied from image file or Pulled from phone)
echo   4  Zipalign apk's (After they are deodexed)
echo   5  Select compression level for apk's/jar's
echo   6  Clean up (Deletes intermediate folders after zipalign is complete)
echo   7  Help - Show How-To
echo   8  Quit
echo.
SET /P menunr=Please make your decision: 
IF %menunr%==1 (goto pullsys)
IF %menunr%==2 (goto setapi)
IF %menunr%==3 (goto stock)
IF %menunr%==4 (goto zalign)
IF %menunr%==5 (goto usrcomp)
IF %menunr%==6 (goto cleanup_files)
IF %menunr%==7 (goto help)
IF %menunr%==8 (goto quit)

:setapi
cls
echo.
echo    API      Version                Description
echo   --------------------------------------------------------
echo.
echo    19       Android 4.3            JELLY_BEAN_MR2
echo    18       Android 4.3            JELLY_BEAN_MR2
echo    17       Android 4.2.x          JELLY_BEAN_MR1
echo    16       Android 4.1.x          JELLY_BEAN
echo    15       Android 4.0.3 - 4.0.4  ICE_CREAM_SANDWICH_MR1
echo    14       Android 4.0 - 4.0.2    ICE_CREAM_SANDWICH
echo    13       Android 3.2            HONEYCOMB_MR2
echo    12       Android 3.1.x          HONEYCOMB_MR1
echo    11       Android 3.0.x          HONEYCOMB
echo    10       Android 2.3.3-2.3.7    GINGERBREAD_MR1
echo    9        Android 2.3-2.3.2      GINGERBREAD
echo    8        Android 2.2.x          FROYO
echo    7        Android 2.1.x          ECLAIR_MR1
echo    6        Android 2.0.1          ECLAIR_0_1
echo    5        Android 2.0            ECLAIR
echo    4        Android 1.6            DONUT
echo    3        Android 1.5	        CUPCAKE
echo.
SET /P menuapi=Please select Android API level: 
IF %menuapi%==3 (set api=3)
IF %menuapi%==4 (set api=4)
IF %menuapi%==5 (set api=5)
IF %menuapi%==6 (set api=6)
IF %menuapi%==7 (set api=7)
IF %menuapi%==8 (set api=8)
IF %menuapi%==9 (set api=9)
IF %menuapi%==10 (set api=10)
IF %menuapi%==11 (set api=11)
IF %menuapi%==12 (set api=12)
IF %menuapi%==13 (set api=13)
IF %menuapi%==14 (set api=14)
IF %menuapi%==15 (set api=15)
IF %menuapi%==16 (set api=16)
IF %menuapi%==17 (set api=17)
IF %menuapi%==18 (set api=18)
IF %menuapi%==19 (set api=19)
cls
goto restart

:usrcomp
set /P INPUT=Enter Compression Level (0-9) : %=%
IF %INPUT%==0 (set usrc=0)
IF %INPUT%==1 (set usrc=1)
IF %INPUT%==2 (set usrc=2)
IF %INPUT%==3 (set usrc=3)
IF %INPUT%==4 (set usrc=4)
IF %INPUT%==5 (set usrc=5)
IF %INPUT%==6 (set usrc=6)
IF %INPUT%==7 (set usrc=7)
IF %INPUT%==8 (set usrc=8)
IF %INPUT%==9 (set usrc=9)
cls
goto restart

:stock
:: deodex
md deodexed_APK
md deodexed_JAR
md framework_bc

echo Copying files...
copy /Y "%~dp0app\*.*" "%~dp0framework_bc\"
copy /Y "%~dp0framework\*.*" "%~dp0framework_bc\"

echo Optimizing JARs...
:: for loop call to deoJAR
FOR %%F IN (%~dp0framework\*.jar) DO call deoJAR %%F %api% %usrc% 

:: app(s)
echo Optimizing APKs...

:: for loop call to deoAPK
FOR %%F IN (%~dp0app\*.apk) DO call deoAPK %%F %api% %usrc%

move %~dp0framework\*.apk %~dp0deodexed_JAR

echo Jar's/Apk's Optimized...

goto restart

:cleanup_files
rd /s /q %~dp0framework_bc
IF EXIST "%~dp0zipaligned_framework\*.jar" rd /s /q %~dp0deodexed_JAR
IF EXIST "%~dp0zipaligned_app\*.apk" rd /s /q %~dp0deodexed_APK
echo Cleanup Complete...
echo.
echo.
goto restart

:zalign
:: zipalign
echo Zipalign APK...
md zipaligned_app
md zipaligned_framework
FOR %%F IN (%~dp0deodexed_JAR\*.apk) DO call zipframeapk %%F
FOR %%F IN (%~dp0deodexed_APK\*.apk) DO call zipappapk %%F 
copy "%~dp0deodexed_JAR\*.jar" "%~dp0zipaligned_framework\"

echo Zipalign Finished...
goto restart

:pullsys
echo Pulling system

adb devices
adb pull /system %~dp0ROM

move %~dp0ROM\app\*.apk %~dp0app
move %~dp0ROM\app\*.odex %~dp0app
move %~dp0ROM\framework\*.apk %~dp0framework
move %~dp0ROM\framework\*.jar %~dp0framework
move %~dp0ROM\framework\*.odex %~dp0framework

:: create a backup - files in above folders will be removed during conversion
md %~dp0backup
md %~dp0backup\app
md %~dp0backup\framework

xcopy %~dp0app\*.* %~dp0backup\app\*.* /s
xcopy %~dp0framework\*.* %~dp0backup\framework\*.* /s

echo Finished
goto restart

:help
cls
echo. 
echo Option 1 - Pulling system from phone
echo * Make sure USB debugging mode is enabled on phone in
echo   Settings/Applications/Development or Settings/Developer Options.
echo * Make sure adb runs as root (insecure) or files may be missed.
echo * Connect your phone to a PC with the phone's USB cable.
echo * When done, a copy of /system is in ROM, with app and framework staged
echo   for deodexing. A backup copy of app and framework is also made.
echo.
echo Option 2  - Set Android API Level 
echo * Set this number to match the Android version of the stock firmware
echo   you are deodexing.  
echo * Errors will result if API level is not set correctly.
echo.
echo Option 3 - Deodexing the apk's
echo   Files are staged in Option 1 or you can copy app and framework 
echo   directory files from an extracted system partition or image file manually.
echo * The deodexed jar's are placed into the deodexed_JAR directory
echo   and the deodexed apk's are placed into the deodexed_APK directory.
echo * After deodexing is completed, check app and framework directories for
echo   any residual files.  These may be either apks or jars that had
echo   errors during conversion.  This is rare, but if this happens you may need
echo   need to run the conversion manually on those files with the "-c" option.
pause
cls
echo.
echo Option 4 - Zipalign the apk's
echo * The apk's are zipaligned and placed into the 
echo   zipaligned_app and zipaligned_framework directories, respectively.
echo * The remaining jar files are copied to zipaligned_framework directory 
echo   to keep everything together.
echo * You can also batch zipalign apk's by just placing them into the 
echo   deodexed_APK directory.
echo.
echo Option 5 - Compression level for apk's and jar's
echo * Use default of 9. On older phones, if FCs occur, try setting this value to 5
echo.
echo Option 6 - Clean up (Deletes intermediate folders after zipalign is complete)
echo * This option removes the deodexed_JAR and deodexed_APK directories if the
echo * zipaligned_app and zipaligned_framework directories have been created.
echo.
echo Option 7 - Help Menu
echo.
echo Option 8 - Exit
echo.
echo ** When done, copy the modified files back to the original app and framework 
echo ** directories in the "ROM" directory
echo.
pause
cls
echo.
echo Auto-Deodexer Package Contains:
echo.
echo     * app (directory)
echo     * framework (directory)
echo     * adb.exe
echo     * AdbWinApi.dll
echo     * AdbWinUsbApi.dll
echo     * 7za.exe
echo     * baksmali-2.0.jar
echo     * deoall.bat
echo     * deoAPK.bat
echo     * deoJAR.bat
echo     * Readme.txt
echo     * smali-2.0.jar                 Credits:
echo     * zipalign.exe                    * Zen Arcade
echo     * zipappapk.bat                    * crt60
echo     * zipframeapk.bat                   * crzyruski
echo                                          * JesusFreke
echo                                           * Daneshm90
echo.
pause
goto restart

:errjava
cls
echo.
echo.
echo.
echo    Java was not found, you will not be able to deodex apks or jars
echo.
echo.
echo.
PAUSE
goto restart

:spacesbad
cls
echo.
echo.
echo.
echo       The folder path you are running this script from contains spaces.  
echo.
echo.
echo                        Please correct and try again.
echo.
echo.
PAUSE
echo.
echo.
echo          "%~dp0"
echo.
echo.
PAUSE

:quit
