echo off
if (%1)==() GOTO END
echo Optimizing %~n1...
IF NOT EXIST "deodexed_JAR/%~n1.apk" goto quiter

zipalign -f 4 %~dp0deodexed_JAR\%~n1.apk %~dp0zipaligned_framework\%~n1.apk


goto END

:quiter

echo Nothing there

:END