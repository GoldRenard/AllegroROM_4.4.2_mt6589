.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final IS_USER_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static final isLteDcSupport:Z

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 179
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 181
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 182
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1600
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1603
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1604
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, "ret":Landroid/content/ComponentName;
    const-string v1, "ANR_DEBUG"

    const-string v2, "=== Start BadService2 ==="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1590
    if-eqz v0, :cond_0

    .line 1591
    const-string v1, "ANR_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== result to start BadService2 === Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :goto_0
    return-object v0

    .line 1593
    :cond_0
    const-string v1, "ANR_DEBUG"

    const-string v2, "=== result to start BadService2 === Name: Null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public initAndLoop()V
    .locals 192

    .prologue
    .line 193
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 196
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 197
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 201
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 204
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 205
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 209
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v162

    .line 211
    .local v162, "shutdownAction":Ljava/lang/String;
    if-eqz v162, :cond_0

    invoke-virtual/range {v162 .. v162}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 212
    const/4 v7, 0x0

    move-object/from16 v0, v162

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_28

    const/16 v155, 0x1

    .line 215
    .local v155, "reboot":Z
    :goto_0
    invoke-virtual/range {v162 .. v162}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_29

    .line 216
    const/4 v7, 0x1

    invoke-virtual/range {v162 .. v162}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v162

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v154

    .line 221
    .local v154, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v155

    move-object/from16 v1, v154

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 225
    .end local v154    # "reason":Ljava/lang/String;
    .end local v155    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 226
    .local v114, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v114

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/16 v113, 0x0

    .line 228
    .local v113, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 230
    .local v34, "headless":Z
    const/16 v121, 0x0

    .line 231
    .local v121, "installer":Lcom/android/server/pm/Installer;
    const/16 v72, 0x0

    .line 232
    .local v72, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v91, 0x0

    .line 233
    .local v91, "contentService":Lcom/android/server/content/ContentService;
    const/16 v125, 0x0

    .line 234
    .local v125, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 235
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v107, 0x0

    .line 236
    .local v107, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v81, 0x0

    .line 237
    .local v81, "battery":Lcom/android/server/BatteryService;
    const/16 v181, 0x0

    .line 238
    .local v181, "vibrator":Lcom/android/server/VibratorService;
    const/16 v75, 0x0

    .line 239
    .local v75, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v137, 0x0

    .line 240
    .local v137, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 241
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 242
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v140, 0x0

    .line 243
    .local v140, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v87, 0x0

    .line 244
    .local v87, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v188, 0x0

    .line 245
    .local v188, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v186, 0x0

    .line 246
    .local v186, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v161, 0x0

    .line 247
    .local v161, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v150, 0x0

    .line 248
    .local v150, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 249
    .local v5, "context":Landroid/content/Context;
    const/16 v190, 0x0

    .line 250
    .local v190, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v82, 0x0

    .line 252
    .local v82, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v71, 0x0

    .line 253
    .local v71, "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    const/16 v108, 0x0

    .line 254
    .local v108, "dock":Lcom/android/server/DockObserver;
    const/16 v94, 0x0

    .line 255
    .local v94, "cover":Lcom/android/server/CoverObserver;
    const/16 v179, 0x0

    .line 256
    .local v179, "usb":Lcom/android/server/usb/UsbService;
    const/16 v159, 0x0

    .line 257
    .local v159, "serial":Lcom/android/server/SerialService;
    const/16 v175, 0x0

    .line 258
    .local v175, "twilight":Lcom/android/server/TwilightService;
    const/16 v177, 0x0

    .line 259
    .local v177, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v156, 0x0

    .line 260
    .local v156, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v142, 0x0

    .line 261
    .local v142, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v84, 0x0

    .line 262
    .local v84, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v120, 0x0

    .line 263
    .local v120, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v165, 0x0

    .line 265
    .local v165, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v167, 0x0

    .line 266
    .local v167, "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    const/16 v169, 0x0

    .line 267
    .local v169, "telephonyRegistry3":Lcom/android/server/TelephonyRegistry;
    const/16 v170, 0x0

    .line 268
    .local v170, "telephonyRegistry4":Lcom/android/server/TelephonyRegistry;
    const/16 v89, 0x0

    .line 270
    .local v89, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v171, 0x0

    .line 272
    .local v171, "telephonyRegistryLteDc":Lcom/android/server/TelephonyRegistry;
    const/16 v136, 0x0

    .line 275
    .local v136, "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    const/16 v123, 0x0

    .line 278
    .local v123, "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    const/16 v131, 0x0

    .line 282
    .local v131, "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    const/16 v117, 0x0

    .line 285
    .local v117, "hdmiManager":Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    new-instance v191, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v191

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 286
    .local v191, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v191 .. v191}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v191 .. v191}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 288
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    const/16 v24, 0x0

    .line 306
    .local v24, "onlyCore":Z
    const/16 v115, 0x0

    .line 311
    .local v115, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v122, Lcom/android/server/pm/Installer;

    invoke-direct/range {v122 .. v122}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_74

    .line 313
    .end local v121    # "installer":Lcom/android/server/pm/Installer;
    .local v122, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/pm/Installer;->ping()Z

    .line 316
    sget-boolean v7, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_1

    .line 318
    const/16 v139, 0x0

    .line 321
    .local v139, "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :try_start_2
    const-class v7, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-object/from16 v139, v0

    .line 322
    const-string v7, "SystemServer"

    const-string v9, "Create message monitor service successfully ."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    :goto_3
    :try_start_3
    const-string v7, "msgmonitorservice"

    invoke-interface/range {v139 .. v139}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 335
    .end local v139    # "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :cond_1
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 337
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v151, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v151 .. v151}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 339
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v151, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_5
    const-string v7, "power"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 341
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static/range {v113 .. v113}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_75

    move-result-object v5

    move-object/from16 v4, v151

    .end local v151    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v121, v122

    .line 348
    .end local v122    # "installer":Lcom/android/server/pm/Installer;
    .restart local v121    # "installer":Lcom/android/server/pm/Installer;
    :goto_5
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v104

    .line 349
    .local v104, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v101

    .line 350
    .local v101, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 351
    .local v99, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v106

    .line 352
    .local v106, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 353
    .local v100, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v105

    .line 354
    .local v105, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v103

    .line 355
    .local v103, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v102

    .line 358
    .local v102, "disableNetwork":Z
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_69

    .line 360
    .end local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_7
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 362
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v166, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6a

    .line 364
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v166, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_8
    const-string v7, "telephony.registry"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 365
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v168, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v168

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6b

    .line 367
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .local v168, "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :try_start_9
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 388
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 393
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 394
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .line 401
    .local v96, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v96

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 402
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/16 v24, 0x1

    .line 409
    :cond_3
    :goto_6
    if-eqz v113, :cond_2c

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, v121

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v150

    .line 413
    :try_start_a
    invoke-interface/range {v150 .. v150}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    move-result v115

    .line 417
    :goto_8
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 419
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 422
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 426
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    .line 431
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v73, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 433
    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v73, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_d
    const-string v7, "account"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_73
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6c

    move-object/from16 v72, v73

    .line 441
    .end local v73    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_9
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "MobileManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-class v7, Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    move-object/from16 v136, v0

    .line 443
    const-string v7, "mobile"

    invoke-interface/range {v136 .. v136}, Lcom/mediatek/common/mom/IMobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    .line 450
    :goto_a
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v7, 0x1

    move/from16 v0, v113

    if-ne v0, v7, :cond_2d

    const/4 v7, 0x1

    :goto_b
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v91

    .line 454
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 457
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4

    .line 460
    .end local v125    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6d

    .line 462
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_11
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 464
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v182, Lcom/android/server/VibratorService;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6e

    .line 466
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .local v182, "vibrator":Lcom/android/server/VibratorService;
    :try_start_12
    const-string v7, "vibrator"

    move-object/from16 v0, v182

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 468
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v90, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6f

    .line 470
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v90, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_13
    const-string v7, "consumer_ir"

    move-object/from16 v0, v90

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 474
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 478
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_70

    .line 480
    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_14
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 482
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 485
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 487
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_71

    .line 490
    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v7, 0x1

    move/from16 v0, v113

    if-eq v0, v7, :cond_2e

    const/16 v22, 0x1

    :goto_c
    if-nez v115, :cond_2f

    const/16 v23, 0x1

    :goto_d
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v190

    .line 494
    const-string v7, "window"

    move-object/from16 v0, v190

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 495
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 497
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v190

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 499
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 500
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 502
    move-object/from16 v0, v190

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 503
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 508
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 509
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_6

    :goto_e
    move-object/from16 v89, v90

    .end local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v181, v182

    .line 544
    .end local v96    # "cryptState":Ljava/lang/String;
    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    :goto_f
    const/16 v97, 0x0

    .line 545
    .local v97, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v163, 0x0

    .line 546
    .local v163, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v118, 0x0

    .line 547
    .local v118, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v76, 0x0

    .line 548
    .local v76, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v144, 0x0

    .line 549
    .local v144, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v184, 0x0

    .line 550
    .local v184, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v126, 0x0

    .line 551
    .local v126, "location":Lcom/android/server/LocationManagerService;
    const/16 v92, 0x0

    .line 552
    .local v92, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v173, 0x0

    .line 553
    .local v173, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v128, 0x0

    .line 554
    .local v128, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v110, 0x0

    .line 555
    .local v110, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v172, 0x0

    .line 556
    .local v172, "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/16 v146, 0x0

    .line 557
    .local v146, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v149, 0x0

    .line 558
    .local v149, "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    const/16 v78, 0x0

    .line 559
    .local v78, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v152, 0x0

    .line 560
    .local v152, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v133, 0x0

    .line 563
    .local v133, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v113

    if-eq v0, v7, :cond_4

    .line 567
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v119, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v119

    move-object/from16 v1, v190

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7

    .line 569
    .end local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v119, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_17
    const-string v7, "input_method"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_68

    move-object/from16 v118, v119

    .line 575
    .end local v119    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_10
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    .line 585
    :cond_4
    :goto_11
    :try_start_19
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9

    .line 591
    :goto_12
    :try_start_1a
    invoke-interface/range {v150 .. v150}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a

    .line 597
    :goto_13
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040413

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_67

    .line 604
    :goto_14
    const/4 v7, 0x1

    move/from16 v0, v113

    if-eq v0, v7, :cond_37

    .line 605
    if-nez v104, :cond_5

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 612
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v138, Lcom/android/server/MountService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_b

    .line 614
    .end local v137    # "mountService":Lcom/android/server/MountService;
    .local v138, "mountService":Lcom/android/server/MountService;
    :try_start_1d
    const-string v7, "mount"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_66

    move-object/from16 v137, v138

    .line 620
    .end local v138    # "mountService":Lcom/android/server/MountService;
    .restart local v137    # "mountService":Lcom/android/server/MountService;
    :cond_5
    :goto_15
    if-nez v103, :cond_6

    .line 622
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v129, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_c

    .line 624
    .end local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v129, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1f
    const-string v7, "lock_settings"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_65

    move-object/from16 v128, v129

    .line 630
    .end local v129    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_16
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v98, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    .line 632
    .end local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v98, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_21
    const-string v7, "device_policy"

    move-object/from16 v0, v98

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_64

    move-object/from16 v97, v98

    .line 638
    .end local v98    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_6
    :goto_17
    if-nez v105, :cond_7

    .line 640
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v164, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v164

    move-object/from16 v1, v190

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    .line 642
    .end local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v164, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_23
    const-string v7, "statusbar"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_63

    move-object/from16 v163, v164

    .line 648
    .end local v164    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_7
    :goto_18
    if-nez v103, :cond_8

    .line 650
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_f

    .line 658
    :cond_8
    :goto_19
    if-nez v102, :cond_9

    .line 660
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 662
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10

    .line 668
    :cond_9
    :goto_1a
    if-nez v103, :cond_a

    .line 670
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v174, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_11

    .line 672
    .end local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v174, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_27
    const-string v7, "textservices"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_62

    move-object/from16 v173, v174

    .line 678
    .end local v174    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_a
    :goto_1b
    if-nez v102, :cond_36

    .line 680
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v141, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v141

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_12

    .line 682
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v141, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_29
    const-string v7, "netstats"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_61

    move-object/from16 v29, v141

    .line 688
    .end local v141    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1c
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_13

    .line 692
    .end local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_2b
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_60

    .line 698
    :goto_1d
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v189, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_14

    .line 700
    .end local v188    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v189, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2d
    const-string v7, "wifip2p"

    move-object/from16 v0, v189

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_5f

    move-object/from16 v188, v189

    .line 706
    .end local v189    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v188    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1e
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v187, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v187

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15

    .line 708
    .end local v186    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v187, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2f
    const-string v7, "wifi"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_5e

    move-object/from16 v186, v187

    .line 714
    .end local v187    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v186    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1f
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v88, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v88

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 717
    .end local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v88, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_31
    const-string v7, "connectivity"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 718
    move-object/from16 v0, v29

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 719
    move-object/from16 v0, v25

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 721
    invoke-virtual/range {v188 .. v188}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 722
    invoke-virtual/range {v186 .. v186}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_5d

    move-object/from16 v87, v88

    .line 728
    .end local v88    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_20
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v161

    .line 730
    const-string v7, "servicediscovery"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    .line 737
    :goto_21
    if-nez v103, :cond_b

    .line 739
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    .line 752
    :cond_b
    :goto_22
    if-eqz v137, :cond_c

    if-nez v24, :cond_c

    .line 753
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 757
    :cond_c
    if-eqz v72, :cond_d

    .line 758
    :try_start_34
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 764
    :cond_d
    :goto_23
    if-eqz v91, :cond_e

    .line 765
    :try_start_35
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 771
    :cond_e
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v145, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v145

    move-object/from16 v1, v163

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 773
    .end local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .local v145, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v7, "notification"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 774
    move-object/from16 v0, v25

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_5c

    move-object/from16 v144, v145

    .line 780
    .end local v145    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v144    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 787
    :goto_26
    if-nez v100, :cond_f

    .line 789
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v127, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 791
    .end local v126    # "location":Lcom/android/server/LocationManagerService;
    .local v127, "location":Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v7, "location"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_5b

    move-object/from16 v126, v127

    .line 797
    .end local v127    # "location":Lcom/android/server/LocationManagerService;
    .restart local v126    # "location":Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v93, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v93

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 799
    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v93, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v7, "country_detector"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_5a

    move-object/from16 v92, v93

    .line 805
    .end local v93    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_28
    if-nez v103, :cond_10

    .line 807
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1f

    .line 817
    :cond_10
    :goto_29
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 818
    const/16 v158, 0x0

    .line 820
    .local v158, "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :try_start_3f
    const-class v7, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-object/from16 v158, v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_21

    .line 826
    :goto_2a
    if-eqz v158, :cond_11

    .line 827
    :try_start_40
    const-string v7, "search_engine"

    invoke-interface/range {v158 .. v158}, Lcom/mediatek/common/search/ISearchEngineManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_21

    .line 837
    .end local v158    # "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :cond_11
    :goto_2b
    const/16 v116, 0x0

    .line 839
    .local v116, "hasAkg":Z
    :try_start_41
    const-string v7, "com.lenovo.akgservice"

    move-object/from16 v0, v150

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_59

    move-result v116

    .line 843
    :goto_2c
    const/4 v7, 0x1

    move/from16 v0, v116

    if-ne v7, v0, :cond_12

    .line 846
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "LenovoAkgService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v130, Lcom/android/server/AkgService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/AkgService;-><init>(Landroid/content/Context;)V

    .line 848
    .local v130, "mAkgService":Lcom/android/server/AkgService;
    const-string v7, "LenovoAkgService"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_22

    .line 878
    .end local v130    # "mAkgService":Lcom/android/server/AkgService;
    :cond_12
    :goto_2d
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "LaunchIconThemeService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v132, Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_23

    .line 880
    .end local v131    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .local v132, "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :try_start_44
    const-string v7, "LaunchIconThemeService"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_58

    move-object/from16 v131, v132

    .line 888
    .end local v132    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v131    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :goto_2e
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_24

    .line 895
    :goto_2f
    if-nez v103, :cond_13

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110030

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 898
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-nez v34, :cond_13

    .line 900
    new-instance v185, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v185

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_25

    .line 901
    .end local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v185, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_47
    const-string v7, "wallpaper"

    move-object/from16 v0, v185

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_57

    move-object/from16 v184, v185

    .line 908
    .end local v185    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_13
    :goto_30
    if-nez v101, :cond_14

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 910
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_26

    .line 919
    :cond_14
    :goto_31
    if-nez v101, :cond_15

    .line 921
    const/16 v80, 0x0

    .line 923
    .local v80, "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v80, v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_28

    .line 928
    :goto_32
    :try_start_4a
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioProfileService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v80

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-eqz v80, :cond_15

    .line 930
    const-string v7, "audioprofile"

    invoke-interface/range {v80 .. v80}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_28

    .line 939
    .end local v80    # "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_15
    :goto_33
    if-nez v103, :cond_16

    .line 941
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    new-instance v109, Lcom/android/server/DockObserver;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_29

    .end local v108    # "dock":Lcom/android/server/DockObserver;
    .local v109, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v108, v109

    .line 950
    .end local v109    # "dock":Lcom/android/server/DockObserver;
    .restart local v108    # "dock":Lcom/android/server/DockObserver;
    :cond_16
    :goto_34
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Cover Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v95, Lcom/android/server/CoverObserver;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/CoverObserver;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    .end local v94    # "cover":Lcom/android/server/CoverObserver;
    .local v95, "cover":Lcom/android/server/CoverObserver;
    move-object/from16 v94, v95

    .line 957
    .end local v95    # "cover":Lcom/android/server/CoverObserver;
    .restart local v94    # "cover":Lcom/android/server/CoverObserver;
    :goto_35
    if-nez v101, :cond_17

    .line 959
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .line 968
    :cond_17
    :goto_36
    if-nez v103, :cond_18

    .line 970
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v180, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v180

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2c

    .line 973
    .end local v179    # "usb":Lcom/android/server/usb/UsbService;
    .local v180, "usb":Lcom/android/server/usb/UsbService;
    :try_start_4f
    const-string v7, "usb"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_56

    move-object/from16 v179, v180

    .line 979
    .end local v180    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v179    # "usb":Lcom/android/server/usb/UsbService;
    :goto_37
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v160, Lcom/android/server/SerialService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2d

    .line 982
    .end local v159    # "serial":Lcom/android/server/SerialService;
    .local v160, "serial":Lcom/android/server/SerialService;
    :try_start_51
    const-string v7, "serial"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_55

    move-object/from16 v159, v160

    .line 989
    .end local v160    # "serial":Lcom/android/server/SerialService;
    .restart local v159    # "serial":Lcom/android/server/SerialService;
    :cond_18
    :goto_38
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v176, Lcom/android/server/TwilightService;

    move-object/from16 v0, v176

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2e

    .end local v175    # "twilight":Lcom/android/server/TwilightService;
    .local v176, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v175, v176

    .line 996
    .end local v176    # "twilight":Lcom/android/server/TwilightService;
    .restart local v175    # "twilight":Lcom/android/server/TwilightService;
    :goto_39
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v178, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v178

    move-object/from16 v1, v175

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2f

    .end local v177    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v178, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v177, v178

    .line 1003
    .end local v178    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v177    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_3a
    if-nez v103, :cond_19

    .line 1007
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Light adjust"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v124, Lcom/android/server/lightadjust/LightAdjustService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/lightadjust/LightAdjustService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_30

    .line 1009
    .end local v123    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    .local v124, "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    :try_start_55
    move-object/from16 v0, v124

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->registerTwilightService(Lcom/android/server/TwilightService;)V

    .line 1010
    invoke-virtual/range {v124 .. v124}, Lcom/android/server/lightadjust/LightAdjustService;->systemReady()V

    .line 1011
    const-string v7, "lightadjust"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_54

    move-object/from16 v123, v124

    .line 1018
    .end local v124    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v123    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    :goto_3b
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_31

    .line 1026
    :goto_3c
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v77, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_32

    .line 1028
    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v77, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_58
    const-string v7, "appwidget"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_53

    move-object/from16 v76, v77

    .line 1034
    .end local v77    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_3d
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v157, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_33

    .end local v156    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v157, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v156, v157

    .line 1044
    .end local v157    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v156    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_19
    :goto_3e
    const/16 v74, 0x0

    .line 1046
    .local v74, "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_5a
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v74, v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_35

    .line 1051
    :goto_3f
    :try_start_5b
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsMgr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v74

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-eqz v74, :cond_1a

    .line 1053
    const-string v7, "mtk-agps"

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_35

    .line 1066
    :cond_1a
    :goto_40
    :try_start_5c
    const-class v7, Lcom/mediatek/common/perfservice/IPerfServiceManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfServiceManager;

    move-object/from16 v149, v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_36

    .line 1072
    :goto_41
    const/16 v148, 0x0

    .line 1074
    .local v148, "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    :try_start_5d
    const-class v7, Lcom/mediatek/common/perfservice/IPerfService;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v149, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfService;

    move-object/from16 v148, v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_38

    .line 1078
    :goto_42
    :try_start_5e
    const-string v7, "perfservice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perfService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v148

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    if-eqz v148, :cond_1b

    .line 1080
    const-string v7, "mtk-perfservice"

    invoke-interface/range {v148 .. v148}, Lcom/mediatek/common/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_38

    .line 1090
    :cond_1b
    :goto_43
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_39

    .line 1101
    :goto_44
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3a

    .line 1108
    :goto_45
    if-nez v102, :cond_1c

    .line 1110
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v143, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3b

    .end local v142    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v143, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v142, v143

    .line 1117
    .end local v143    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v142    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1c
    :goto_46
    if-nez v101, :cond_1d

    .line 1119
    :try_start_62
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v85, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3c

    .line 1121
    .end local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v85, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_63
    const-string v7, "commontime_management"

    move-object/from16 v0, v85

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_52

    move-object/from16 v84, v85

    .line 1127
    .end local v85    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1d
    :goto_47
    if-nez v102, :cond_1e

    .line 1129
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3d

    .line 1136
    :cond_1e
    :goto_48
    if-nez v103, :cond_1f

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110049

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1139
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    new-instance v111, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3e

    .line 1142
    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v111, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_66
    const-string v7, "dreams"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_51

    move-object/from16 v110, v111

    .line 1148
    .end local v111    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1f
    :goto_49
    if-nez v103, :cond_20

    .line 1150
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v79, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3f

    .line 1152
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v79, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_68
    const-string v7, "assetatlas"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_50

    move-object/from16 v78, v79

    .line 1159
    .end local v79    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_20
    :goto_4a
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_40

    .line 1166
    :goto_4b
    :try_start_6a
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance v153, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_41

    .line 1168
    .end local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v153, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_6b
    const-string v7, "print"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_4f

    move-object/from16 v152, v153

    .line 1173
    .end local v153    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_4c
    if-nez v103, :cond_21

    .line 1175
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    new-instance v134, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_42

    .line 1177
    .end local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v134, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_6d
    const-string v7, "media_router"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_4e

    move-object/from16 v133, v134

    .line 1196
    .end local v134    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_21
    :goto_4d
    :try_start_6e
    const-string v7, "SystemServer"

    const-string v9, "PerfMgr state notifier"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    new-instance v147, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v147 .. v147}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_43

    .line 1198
    .end local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v147, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v147

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_4d

    move-object/from16 v146, v147

    .line 1205
    .end local v147    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_4e
    if-nez v103, :cond_22

    .line 1221
    .end local v74    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v116    # "hasAkg":Z
    .end local v148    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    :cond_22
    :goto_4f
    
    move-object/from16 v0, p0
    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/goldrenard/hooks/SystemServerHook;->initAndLoop(Landroid/content/ContentResolver;)V
    
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v49

    .line 1222
    .local v49, "safeMode":Z
    if-eqz v49, :cond_34

    .line 1223
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1225
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1227
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1236
    :goto_50
    :try_start_70
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_44

    .line 1241
    :goto_51
    if-eqz v128, :cond_23

    .line 1243
    :try_start_71
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_45

    .line 1249
    :cond_23
    :goto_52
    if-eqz v97, :cond_24

    .line 1251
    :try_start_72
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_46

    .line 1257
    :cond_24
    :goto_53
    if-eqz v144, :cond_25

    .line 1259
    :try_start_73
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_47

    .line 1266
    :cond_25
    :goto_54
    :try_start_74
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_48

    .line 1272
    :goto_55
    if-eqz v49, :cond_35

    .line 1273
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1287
    :cond_26
    :goto_56
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v86

    .line 1288
    .local v86, "config":Landroid/content/res/Configuration;
    new-instance v135, Landroid/util/DisplayMetrics;

    invoke-direct/range {v135 .. v135}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1289
    .local v135, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/view/WindowManager;

    .line 1290
    .local v183, "w":Landroid/view/WindowManager;
    invoke-interface/range {v183 .. v183}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v135

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1291
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v86

    move-object/from16 v1, v135

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1294
    :try_start_75
    move-object/from16 v0, v175

    move-object/from16 v1, v110

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_49

    .line 1300
    :goto_57
    :try_start_76
    invoke-interface/range {v150 .. v150}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_4a

    .line 1306
    :goto_58
    :try_start_77
    move/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_4b

    .line 1312
    :goto_59
    move-object/from16 v35, v5

    .line 1313
    .local v35, "contextF":Landroid/content/Context;
    move-object/from16 v36, v137

    .line 1314
    .local v36, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v37, v8

    .line 1315
    .local v37, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v38, v30

    .line 1316
    .local v38, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v39, v29

    .line 1317
    .local v39, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v40, v25

    .line 1318
    .local v40, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v41, v87

    .line 1319
    .local v41, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v42, v108

    .line 1320
    .local v42, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v43, v94

    .line 1321
    .local v43, "coverF":Lcom/android/server/CoverObserver;
    move-object/from16 v44, v179

    .line 1322
    .local v44, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v45, v175

    .line 1323
    .local v45, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v46, v177

    .line 1324
    .local v46, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v48, v76

    .line 1325
    .local v48, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v50, v184

    .line 1326
    .local v50, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v51, v118

    .line 1327
    .local v51, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v47, v156

    .line 1328
    .local v47, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v53, v126

    .line 1329
    .local v53, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v54, v92

    .line 1330
    .local v54, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v142

    .line 1331
    .local v55, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v56, v84

    .line 1332
    .local v56, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v57, v173

    .line 1333
    .local v57, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v52, v163

    .line 1334
    .local v52, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v58, v110

    .line 1335
    .local v58, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v59, v78

    .line 1336
    .local v59, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v60, v20

    .line 1337
    .local v60, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v165

    .line 1339
    .local v61, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v167

    .line 1340
    .local v62, "telephonyRegistryF2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v169

    .line 1341
    .local v63, "telephonyRegistryF3":Ljava/lang/Object;
    move-object/from16 v64, v170

    .line 1344
    .local v64, "telephonyRegistryF4":Ljava/lang/Object;
    move-object/from16 v65, v171

    .line 1346
    .local v65, "telephonyRegistryLteDcF":Ljava/lang/Object;
    move-object/from16 v66, v172

    .line 1347
    .local v66, "thermalF":Ljava/lang/Object;
    move-object/from16 v67, v149

    .line 1348
    .local v67, "perfServiceF":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    move-object/from16 v68, v152

    .line 1349
    .local v68, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v69, v133

    .line 1350
    .local v69, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v33, v136

    .line 1353
    .local v33, "momF":Lcom/mediatek/common/mom/IMobileManagerService;
    move-object/from16 v70, v131

    .line 1361
    .local v70, "launchIconThemeServiceF":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v70}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;Lcom/mediatek/common/mom/IMobileManagerService;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/CoverObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/mediatek/common/perfservice/IPerfServiceManager;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1574
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1575
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_27
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1580
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1581
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return-void

    .line 212
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "momF":Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v34    # "headless":Z
    .end local v35    # "contextF":Landroid/content/Context;
    .end local v36    # "mountServiceF":Lcom/android/server/MountService;
    .end local v37    # "batteryF":Lcom/android/server/BatteryService;
    .end local v38    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v39    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v40    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v42    # "dockF":Lcom/android/server/DockObserver;
    .end local v43    # "coverF":Lcom/android/server/CoverObserver;
    .end local v44    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v45    # "twilightF":Lcom/android/server/TwilightService;
    .end local v46    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v47    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v48    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v49    # "safeMode":Z
    .end local v50    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v51    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v52    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v53    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v54    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v55    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v56    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v57    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v58    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v59    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v60    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v61    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v62    # "telephonyRegistryF2":Lcom/android/server/TelephonyRegistry;
    .end local v63    # "telephonyRegistryF3":Ljava/lang/Object;
    .end local v64    # "telephonyRegistryF4":Ljava/lang/Object;
    .end local v65    # "telephonyRegistryLteDcF":Ljava/lang/Object;
    .end local v66    # "thermalF":Ljava/lang/Object;
    .end local v67    # "perfServiceF":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v68    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v69    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v70    # "launchIconThemeServiceF":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v71    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v86    # "config":Landroid/content/res/Configuration;
    .end local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v91    # "contentService":Lcom/android/server/content/ContentService;
    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v94    # "cover":Lcom/android/server/CoverObserver;
    .end local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v99    # "disableBluetooth":Z
    .end local v100    # "disableLocation":Z
    .end local v101    # "disableMedia":Z
    .end local v102    # "disableNetwork":Z
    .end local v103    # "disableNonCoreServices":Z
    .end local v104    # "disableStorage":Z
    .end local v105    # "disableSystemUI":Z
    .end local v106    # "disableTelephony":Z
    .end local v108    # "dock":Lcom/android/server/DockObserver;
    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v113    # "factoryTest":I
    .end local v114    # "factoryTestStr":Ljava/lang/String;
    .end local v115    # "firstBoot":Z
    .end local v117    # "hdmiManager":Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .end local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v121    # "installer":Lcom/android/server/pm/Installer;
    .end local v123    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    .end local v126    # "location":Lcom/android/server/LocationManagerService;
    .end local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v131    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v135    # "metrics":Landroid/util/DisplayMetrics;
    .end local v136    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v137    # "mountService":Lcom/android/server/MountService;
    .end local v142    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v149    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v150    # "pm":Landroid/content/pm/IPackageManager;
    .end local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v156    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v159    # "serial":Lcom/android/server/SerialService;
    .end local v161    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v169    # "telephonyRegistry3":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "telephonyRegistry4":Lcom/android/server/TelephonyRegistry;
    .end local v171    # "telephonyRegistryLteDc":Lcom/android/server/TelephonyRegistry;
    .end local v172    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v175    # "twilight":Lcom/android/server/TwilightService;
    .end local v177    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v179    # "usb":Lcom/android/server/usb/UsbService;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .end local v183    # "w":Landroid/view/WindowManager;
    .end local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v186    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v188    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v190    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v191    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_28
    const/16 v155, 0x0

    goto/16 :goto_0

    .line 218
    .restart local v155    # "reboot":Z
    :cond_29
    const/16 v154, 0x0

    .restart local v154    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 226
    .end local v154    # "reason":Ljava/lang/String;
    .end local v155    # "reboot":Z
    .restart local v114    # "factoryTestStr":Ljava/lang/String;
    :cond_2a
    invoke-static/range {v114 .. v114}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v113

    goto/16 :goto_2

    .line 323
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v34    # "headless":Z
    .restart local v71    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .restart local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v91    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v94    # "cover":Lcom/android/server/CoverObserver;
    .restart local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v108    # "dock":Lcom/android/server/DockObserver;
    .restart local v113    # "factoryTest":I
    .restart local v115    # "firstBoot":Z
    .restart local v117    # "hdmiManager":Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v131    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v136    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v137    # "mountService":Lcom/android/server/MountService;
    .restart local v139    # "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    .restart local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v142    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v150    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v156    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v159    # "serial":Lcom/android/server/SerialService;
    .restart local v161    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "telephonyRegistry3":Lcom/android/server/TelephonyRegistry;
    .restart local v170    # "telephonyRegistry4":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "telephonyRegistryLteDc":Lcom/android/server/TelephonyRegistry;
    .restart local v175    # "twilight":Lcom/android/server/TwilightService;
    .restart local v177    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v179    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v186    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v188    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v190    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v191    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v112

    .line 324
    .local v112, "e":Ljava/lang/Exception;
    :try_start_78
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create message monitor service Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_78} :catch_2

    goto/16 :goto_3

    .line 328
    .end local v112    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v112

    .line 329
    .local v112, "e":Ljava/lang/Throwable;
    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "Starting message monitor service exception "

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_79} :catch_2

    goto/16 :goto_4

    .line 343
    .end local v112    # "e":Ljava/lang/Throwable;
    .end local v139    # "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :catch_2
    move-exception v112

    move-object/from16 v121, v122

    .line 344
    .end local v122    # "installer":Lcom/android/server/pm/Installer;
    .local v112, "e":Ljava/lang/RuntimeException;
    .restart local v121    # "installer":Lcom/android/server/pm/Installer;
    :goto_5a
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 404
    .end local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v112    # "e":Ljava/lang/RuntimeException;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v96    # "cryptState":Ljava/lang/String;
    .restart local v99    # "disableBluetooth":Z
    .restart local v100    # "disableLocation":Z
    .restart local v101    # "disableMedia":Z
    .restart local v102    # "disableNetwork":Z
    .restart local v103    # "disableNonCoreServices":Z
    .restart local v104    # "disableStorage":Z
    .restart local v105    # "disableSystemUI":Z
    .restart local v106    # "disableTelephony":Z
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :cond_2b
    :try_start_7a
    const-string v7, "1"

    move-object/from16 v0, v96

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 405
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 409
    :cond_2c
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 434
    :catch_3
    move-exception v112

    .line 435
    .local v112, "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7a} :catch_4

    goto/16 :goto_9

    .line 539
    .end local v96    # "cryptState":Ljava/lang/String;
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v112

    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v125

    .line 540
    .end local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v112, "e":Ljava/lang/RuntimeException;
    :goto_5c
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 444
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "e":Ljava/lang/RuntimeException;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "cryptState":Ljava/lang/String;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_5
    move-exception v112

    .line 445
    .local v112, "e":Ljava/lang/Throwable;
    :try_start_7b
    const-string v7, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7b} :catch_4

    goto/16 :goto_a

    .line 451
    .end local v112    # "e":Ljava/lang/Throwable;
    :cond_2d
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 491
    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v125    # "lights":Lcom/android/server/LightsService;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v182    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2e
    const/16 v22, 0x0

    goto/16 :goto_c

    :cond_2f
    const/16 v23, 0x0

    goto/16 :goto_d

    .line 510
    :cond_30
    const/4 v7, 0x1

    move/from16 v0, v113

    if-ne v0, v7, :cond_31

    .line 511
    :try_start_7c
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 539
    :catch_6
    move-exception v112

    move-object/from16 v89, v90

    .end local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v181, v182

    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5c

    .line 512
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v182    # "vibrator":Lcom/android/server/VibratorService;
    :cond_31
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 514
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 515
    :cond_32
    if-eqz v99, :cond_33

    .line 516
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 521
    :cond_33
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v83, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_7c} :catch_6

    .line 523
    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v83, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_7d
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_7d} :catch_72

    move-object/from16 v82, v83

    .end local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_e

    .line 570
    .end local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v96    # "cryptState":Ljava/lang/String;
    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v126    # "location":Lcom/android/server/LocationManagerService;
    .restart local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v149    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v172    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_7
    move-exception v112

    .line 571
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 578
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v112

    .line 579
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 586
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v112

    .line 587
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 592
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v112

    .line 593
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 615
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v112

    .line 616
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 625
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v112

    .line 626
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 633
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v112

    .line 634
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 643
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v112

    .line 644
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 653
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v112

    .line 654
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 663
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v112

    .line 664
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 673
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v112

    .line 674
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 683
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v112

    .line 684
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 693
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v112

    move-object/from16 v25, v140

    .line 694
    .end local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 701
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v112

    .line 702
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 709
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v112

    .line 710
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 723
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v112

    .line 724
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 732
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v112

    .line 733
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 742
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v112

    .line 743
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 759
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v112

    .line 760
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 766
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v112

    .line 767
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 775
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v112

    .line 776
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 783
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v112

    .line 784
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 792
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v112

    .line 793
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 800
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v112

    .line 801
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 810
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v112

    .line 811
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 822
    .end local v112    # "e":Ljava/lang/Throwable;
    .restart local v158    # "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_20
    move-exception v112

    .line 823
    .local v112, "e":Ljava/lang/Exception;
    :try_start_7e
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ISearchEngineManagerService systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_21

    goto/16 :goto_2a

    .line 830
    .end local v112    # "e":Ljava/lang/Exception;
    .end local v158    # "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_21
    move-exception v112

    .line 831
    .local v112, "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 849
    .end local v112    # "e":Ljava/lang/Throwable;
    .restart local v116    # "hasAkg":Z
    :catch_22
    move-exception v112

    .line 850
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting LenovoAkgService"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 881
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v112

    .line 882
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting LaunchIconThemeService"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 891
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v112

    .line 892
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 903
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v112

    .line 904
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 912
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v112

    .line 913
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 925
    .end local v112    # "e":Ljava/lang/Throwable;
    .restart local v80    # "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_27
    move-exception v112

    .line 926
    .local v112, "e":Ljava/lang/Exception;
    :try_start_7f
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_28

    goto/16 :goto_32

    .line 933
    .end local v112    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v112

    .line 934
    .local v112, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 944
    .end local v80    # "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v112

    .line 945
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 953
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v112

    .line 954
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CoverObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 963
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v112

    .line 964
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 974
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v112

    .line 975
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 983
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v112

    .line 984
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 991
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v112

    .line 992
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 999
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v112

    .line 1000
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1012
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v112

    .line 1013
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_6f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting LightAdjust Service"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 1021
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v112

    .line 1022
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 1029
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v112

    .line 1030
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_70
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1036
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v112

    .line 1037
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1048
    .end local v112    # "e":Ljava/lang/Throwable;
    .restart local v74    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_34
    move-exception v112

    .line 1049
    .local v112, "e":Ljava/lang/Exception;
    :try_start_80
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_35

    goto/16 :goto_3f

    .line 1056
    .end local v112    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v112

    .line 1057
    .local v112, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 1067
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v112

    .line 1068
    .local v112, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAIL starting PerfService Manager"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v112

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 1075
    .end local v112    # "e":Ljava/lang/Exception;
    .restart local v148    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    :catch_37
    move-exception v112

    .line 1076
    .restart local v112    # "e":Ljava/lang/Exception;
    :try_start_81
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perfservice systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_38

    goto/16 :goto_42

    .line 1083
    .end local v112    # "e":Ljava/lang/Exception;
    :catch_38
    move-exception v112

    .line 1084
    .local v112, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "perfservice Failure starting PerfService"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 1092
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v112

    .line 1093
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1104
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v112

    .line 1105
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1112
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v112

    .line 1113
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1122
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v112

    .line 1123
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1131
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v112

    .line 1132
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1143
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v112

    .line 1144
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1153
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v112

    .line 1154
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1161
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v112

    .line 1162
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1169
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v112

    .line 1170
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1178
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v112

    .line 1179
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1199
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v112

    .line 1200
    .restart local v112    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v112

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    .line 1230
    .end local v74    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v112    # "e":Ljava/lang/Throwable;
    .end local v116    # "hasAkg":Z
    .end local v148    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v49    # "safeMode":Z
    :cond_34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_50

    .line 1237
    :catch_44
    move-exception v112

    .line 1238
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1244
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v112

    .line 1245
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1252
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v112

    .line 1253
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1260
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v112

    .line 1261
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1267
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v112

    .line 1268
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1276
    .end local v112    # "e":Ljava/lang/Throwable;
    :cond_35
    const-string v7, "ro.lenovo.check_safeapp"

    const/4 v9, 0x1

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1278
    if-nez v24, :cond_26

    .line 1279
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->checkSystemSafeApp()V

    goto/16 :goto_56

    .line 1295
    .restart local v86    # "config":Landroid/content/res/Configuration;
    .restart local v135    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v183    # "w":Landroid/view/WindowManager;
    :catch_49
    move-exception v112

    .line 1296
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1301
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v112

    .line 1302
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 1307
    .end local v112    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v112

    .line 1308
    .restart local v112    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 414
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v49    # "safeMode":Z
    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v86    # "config":Landroid/content/res/Configuration;
    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v112    # "e":Ljava/lang/Throwable;
    .end local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v126    # "location":Lcom/android/server/LocationManagerService;
    .end local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v135    # "metrics":Landroid/util/DisplayMetrics;
    .end local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v149    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v172    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v183    # "w":Landroid/view/WindowManager;
    .end local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "cryptState":Ljava/lang/String;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_4c
    move-exception v7

    goto/16 :goto_8

    .line 1199
    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v96    # "cryptState":Ljava/lang/String;
    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v125    # "lights":Lcom/android/server/LightsService;
    .end local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v74    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v116    # "hasAkg":Z
    .restart local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v126    # "location":Lcom/android/server/LocationManagerService;
    .restart local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v147    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v148    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v149    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v172    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4d
    move-exception v112

    move-object/from16 v146, v147

    .end local v147    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_76

    .line 1178
    .end local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v134    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_4e
    move-exception v112

    move-object/from16 v133, v134

    .end local v134    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_75

    .line 1169
    .end local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v153    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_4f
    move-exception v112

    move-object/from16 v152, v153

    .end local v153    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_74

    .line 1153
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v79    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_50
    move-exception v112

    move-object/from16 v78, v79

    .end local v79    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_73

    .line 1143
    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v111    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_51
    move-exception v112

    move-object/from16 v110, v111

    .end local v111    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_72

    .line 1122
    .end local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v85    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_52
    move-exception v112

    move-object/from16 v84, v85

    .end local v85    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_71

    .line 1029
    .end local v74    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v148    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v77    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_53
    move-exception v112

    move-object/from16 v76, v77

    .end local v77    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_70

    .line 1012
    .end local v123    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v124    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    :catch_54
    move-exception v112

    move-object/from16 v123, v124

    .end local v124    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v123    # "lightAdjustService":Lcom/android/server/lightadjust/LightAdjustService;
    goto/16 :goto_6f

    .line 983
    .end local v159    # "serial":Lcom/android/server/SerialService;
    .restart local v160    # "serial":Lcom/android/server/SerialService;
    :catch_55
    move-exception v112

    move-object/from16 v159, v160

    .end local v160    # "serial":Lcom/android/server/SerialService;
    .restart local v159    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_6e

    .line 974
    .end local v179    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v180    # "usb":Lcom/android/server/usb/UsbService;
    :catch_56
    move-exception v112

    move-object/from16 v179, v180

    .end local v180    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v179    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_6d

    .line 903
    .end local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v185    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_57
    move-exception v112

    move-object/from16 v184, v185

    .end local v185    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_6c

    .line 881
    .end local v131    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v132    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :catch_58
    move-exception v112

    move-object/from16 v131, v132

    .end local v132    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v131    # "mLaunchIconThemeService":Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    goto/16 :goto_6b

    .line 840
    :catch_59
    move-exception v7

    goto/16 :goto_2c

    .line 800
    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v116    # "hasAkg":Z
    .restart local v93    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_5a
    move-exception v112

    move-object/from16 v92, v93

    .end local v93    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_6a

    .line 792
    .end local v126    # "location":Lcom/android/server/LocationManagerService;
    .restart local v127    # "location":Lcom/android/server/LocationManagerService;
    :catch_5b
    move-exception v112

    move-object/from16 v126, v127

    .end local v127    # "location":Lcom/android/server/LocationManagerService;
    .restart local v126    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_69

    .line 775
    .end local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v145    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_5c
    move-exception v112

    move-object/from16 v144, v145

    .end local v145    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v144    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_68

    .line 723
    .end local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v88    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_5d
    move-exception v112

    move-object/from16 v87, v88

    .end local v88    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_67

    .line 709
    .end local v186    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v187    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_5e
    move-exception v112

    move-object/from16 v186, v187

    .end local v187    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v186    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_66

    .line 701
    .end local v188    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v189    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_5f
    move-exception v112

    move-object/from16 v188, v189

    .end local v189    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v188    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_65

    .line 693
    :catch_60
    move-exception v112

    goto/16 :goto_64

    .line 683
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v141    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_61
    move-exception v112

    move-object/from16 v29, v141

    .end local v141    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_63

    .line 673
    .end local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v174    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_62
    move-exception v112

    move-object/from16 v173, v174

    .end local v174    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_62

    .line 643
    .end local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v164    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_63
    move-exception v112

    move-object/from16 v163, v164

    .end local v164    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_61

    .line 633
    .end local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v98    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_64
    move-exception v112

    move-object/from16 v97, v98

    .end local v98    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_60

    .line 625
    .end local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v129    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_65
    move-exception v112

    move-object/from16 v128, v129

    .end local v129    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_5f

    .line 615
    .end local v137    # "mountService":Lcom/android/server/MountService;
    .restart local v138    # "mountService":Lcom/android/server/MountService;
    :catch_66
    move-exception v112

    move-object/from16 v137, v138

    .end local v138    # "mountService":Lcom/android/server/MountService;
    .restart local v137    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_5e

    .line 601
    :catch_67
    move-exception v7

    goto/16 :goto_14

    .line 570
    .end local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v119    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_68
    move-exception v112

    move-object/from16 v118, v119

    .end local v119    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_5d

    .line 539
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v126    # "location":Lcom/android/server/LocationManagerService;
    .end local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v149    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v172    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    :catch_69
    move-exception v112

    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v107

    .end local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v125

    .end local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_5c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    :catch_6a
    move-exception v112

    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v125

    .end local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_5c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_6b
    move-exception v112

    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v125

    .end local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_5c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v73    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "cryptState":Ljava/lang/String;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_6c
    move-exception v112

    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v125

    .end local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v72, v73

    .end local v73    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_5c

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_6d
    move-exception v112

    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_5c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_6e
    move-exception v112

    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_5c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v182    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6f
    move-exception v112

    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v181, v182

    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v182    # "vibrator":Lcom/android/server/VibratorService;
    :catch_70
    move-exception v112

    move-object/from16 v89, v90

    .end local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v75

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v181, v182

    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5c

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v182    # "vibrator":Lcom/android/server/VibratorService;
    :catch_71
    move-exception v112

    move-object/from16 v89, v90

    .end local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v120

    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v181, v182

    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5c

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v181    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v182    # "vibrator":Lcom/android/server/VibratorService;
    :catch_72
    move-exception v112

    move-object/from16 v89, v90

    .end local v90    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v167, v168

    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v82, v83

    .end local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v181, v182

    .end local v182    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v181    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5c

    .line 434
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v73    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_73
    move-exception v112

    move-object/from16 v72, v73

    .end local v73    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_5b

    .line 343
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v96    # "cryptState":Ljava/lang/String;
    .end local v99    # "disableBluetooth":Z
    .end local v100    # "disableLocation":Z
    .end local v101    # "disableMedia":Z
    .end local v102    # "disableNetwork":Z
    .end local v103    # "disableNonCoreServices":Z
    .end local v104    # "disableStorage":Z
    .end local v105    # "disableSystemUI":Z
    .end local v106    # "disableTelephony":Z
    .end local v166    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v165    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_74
    move-exception v112

    goto/16 :goto_5a

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v121    # "installer":Lcom/android/server/pm/Installer;
    .restart local v122    # "installer":Lcom/android/server/pm/Installer;
    .restart local v151    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_75
    move-exception v112

    move-object/from16 v4, v151

    .end local v151    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v121, v122

    .end local v122    # "installer":Lcom/android/server/pm/Installer;
    .restart local v121    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_5a

    .end local v75    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v107    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v120    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v125    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v97    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v99    # "disableBluetooth":Z
    .restart local v100    # "disableLocation":Z
    .restart local v101    # "disableMedia":Z
    .restart local v102    # "disableNetwork":Z
    .restart local v103    # "disableNonCoreServices":Z
    .restart local v104    # "disableStorage":Z
    .restart local v105    # "disableSystemUI":Z
    .restart local v106    # "disableTelephony":Z
    .restart local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v118    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v126    # "location":Lcom/android/server/LocationManagerService;
    .restart local v128    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v133    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v144    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v146    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v149    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v152    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v163    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v172    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v173    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v184    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_36
    move-object/from16 v25, v140

    .end local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_21

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_37
    move-object/from16 v25, v140

    .end local v140    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4f
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    return-void
.end method
