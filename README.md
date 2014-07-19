Lenovo Vibe X AllegroROM v2 Kitchen (Android 4.4.2)
=======================================================

AllegroROM is global modification of VibeUI 1.5. The goal of this project is creating an AOSP-like firmware with some CyanogenMod features.

# Building parts from sources:
1. Download and install Android SDK: http://developer.android.com/sdk/index.html
2. Download and install Android NDK: https://developer.android.com/tools/sdk/ndk/index.html
3. Download and install SDK Platform of **Android 4.4.2 (API 19)** using **SDK Manager**
4. Most important step. You **must** modify your SDK to support internal and hidden API. By following next instrustions: https://devmaze.wordpress.com/2011/01/18/using-com-android-internal-part-1-introduction/
add to your SDK classes of **framework.jar + framework2.jar + android.policy.jar + services.jar** (take it from **/OSPackage/system/framework**)
5. Set up your **%JAVA_HOME%** environment variable to proper JRE/JDK location.
6. Download latest **Apache ANT** binary distribution http://ant.apache.org/ and add it to your **%PATH%** environment variable. Check that you can execute "ant -version" from your command line.
7. Go to **_Sources/** folder. Set up **KITCHEN_HOME** variable of every *.bat to proper kitchen location (repo root, absolute path)
8. Open **local.properties** and set proper paths to SDK and NDK.
9. You should able to build parts from source. Open command line, cd to **_Sources/** folder. Type **build_all** to build everything. Type **build %app%** to build specified application. Builded apk or jar will be automatically copied to kitchen.
