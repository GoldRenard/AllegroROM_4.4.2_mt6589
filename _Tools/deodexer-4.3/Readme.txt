Auto-deodexer for any Android Firmware up to Jellybean 4.3

Modified from Daneshm90's Auto-Deodexer [SCRIPT] by Zen Arcade
Includes previous enhancements by crzyruski and crt60


All executables brought current as of October 2013.  Deodex scripts updated 
to allow for any Android API level supported by smali/baksmali 2.0, via 
menu selection in main script.

******************************************************************************
** The folder name of deodexer and the path to it cannot contain any spaces **
******************************************************************************

 Option 1 - Pulling system from phone
 * Make sure USB debugging mode is enabled on phone in
   Settings/Applications/Development or Settings/Developer Options.
 * Make sure adb runs as root (insecure) or files may be missed.
   Running from a custom recovery like CWM or TWRP or running a custom
   kernel which allows insecure adb usually takes care of this.
   If running while phone OS is booted, and using a stock kernel,
   try Chainfire's adbd Insecure (available from Google Play or XDA)
 * Connect your phone to a PC with the phone's USB cable.
 * When done, a copy of /system is in "ROM", with app and framework staged
   for deodexing. A backup copy of app and framework is also made.

 Option 2  - Set Android API Level 
 * Set this number to match the Android version of the stock firmware
   you are deodexing.  
 * Errors will result if API level is not set correctly.

 Option 3 - Deodexing the apk's
   Files are staged in Option 1 or you can copy app and framework 
   directory files from an extracted system partition or image file manually.
 * The deodexed jar's are placed into the deodexed_JAR directory
   and the deodexed apk's are placed into the deodexed_APK directory.
 * After deodexing is completed, check app and framework directories for
   any residual files.  These may be either apks or jars that had
   errors during conversion.  This is rare, but if this happens you may need
   need to run the conversion manually on those files with the "-c" option.
   (See info at end of readme for suggestions)

 Option 4 - Zipalign the apk's
 * The apk's are zipaligned and placed into the 
   zipaligned_app and zipaligned_framework directories, respectively.
 * The remaining jar files are copied to zipaligned_framework directory 
   to keep everything together.
 * You can also batch zipalign apk's by just placing them into the 
   deodexed_APK directory.

 Option 5 - Compression level for apk's and jar's
 * Use default of 9. On older phones, if FCs occur, try setting this value to 5

 Option 6 - Clean up (Deletes intermediate folders after zipalign is complete)
 * This option removes the deodexed_JAR and deodexed_APK directories if the
 * zipaligned_app and zipaligned_framework directories have been created.

 Option 7 - Help Menu

 Option 8 - Exit

 *******************************************************************************
 ** When done, copy the modified files (in the zipaligned__ folders) back to the  
 ** original app and framework directories in the "ROM" directory
 
 ** To completely reset the deodexer folder, delete or move the ROM and backup
 ** folders before starting a new project (as well as the deodexed and zipaligned
 ** folders)
 *******************************************************************************
 
 Auto-Deodexer Package Contains:

     * app (directory)
     * framework (directory)
     * adb.exe (v 18.0.1)
     *    AdbWinApi.dll
     *    AdbWinUsbApi.dll
     * 7za.exe (v 9.20)
     * baksmali-2.0.jar
     * deoall.bat
     * deoAPK.bat
     * deoJAR.bat
     * Readme.txt
     * smali-2.0.jar                 Credits:
     * zipalign.exe (v 22.2.1)         * Zen Arcade
     * zipappapk.bat                    * crt60
     * zipframeapk.bat                   * crzyruski
                                          * JesusFreke
                                           * Daneshm90
										   
-------------------------------------------

Bootclass and baksmali:
While it is unlikely you will need to do this with current versions of baksmali,
I've included some legacy files that help show how to use the "-c" option.  They 
are in the bootclass.zip file, and include two files fixcAPK.bat and fixcjar.bat (similar 
to deoAPK.bat and deojar.bat) and a text file which shows sample bootclass strings that 
follow the "-c" command option.  To use, make a copy of the deoall.bat file, and make the 
necessary edits to use the fixc batch files, adding a variable for the bootclass to the
calls to each. I've not needed to do this, and with any luck neither will you.

More on baksmali - http://code.google.com/p/smali/wiki/DeodexInstructions
