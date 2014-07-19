.class public final Lledroid/root/LedroidServiceLauncher;
.super Ljava/lang/Object;
.source "LedroidServiceLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/LedroidServiceLauncher$LedroidServiceDied;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "lenovo"

.field private static sErrorPath:Ljava/lang/String;

.field private static sLedroidApplication:Lledroid/app/LedroidApplication;

.field private static sLedroidService:Lledroid/services/ILedroidService;

.field private static sLedroidServiceInitTime:J

.field private static sNBJarFile:Lledroid/root/res/NBJarFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    sput-object v2, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    .line 21
    sput-object v2, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;

    .line 22
    const-wide/16 v0, -0x1

    sput-wide v0, Lledroid/root/LedroidServiceLauncher;->sLedroidServiceInitTime:J

    .line 23
    sput-object v2, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000()Lledroid/app/LedroidApplication;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    return-object v0
.end method

.method static synthetic access$100()Lledroid/root/res/NBJarFile;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    return-object v0
.end method

.method static synthetic access$302(Lledroid/services/ILedroidService;)Lledroid/services/ILedroidService;
    .locals 0
    .param p0, "x0"    # Lledroid/services/ILedroidService;

    .prologue
    .line 18
    sput-object p0, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;

    return-object p0
.end method

.method public static declared-synchronized getLedroidService()Lledroid/services/ILedroidService;
    .locals 3

    .prologue
    .line 231
    const-class v2, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v0, "svrBinder":Landroid/os/IBinder;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 235
    .end local v0    # "svrBinder":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v1, "lenovo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .restart local v0    # "svrBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lledroid/root/LedroidServiceLauncher;->initNativeLedroidService(Landroid/os/IBinder;)V

    .line 237
    sget-object v1, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static initNativeLedroidService(Landroid/os/IBinder;)V
    .locals 3
    .param p0, "svrBinder"    # Landroid/os/IBinder;

    .prologue
    .line 221
    const-string v1, "liubin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNativeLedroidService: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_1

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p0, :cond_0

    .line 223
    invoke-static {p0}, Lledroid/services/ILedroidService$Stub;->asInterface(Landroid/os/IBinder;)Lledroid/services/ILedroidService;

    move-result-object v0

    sput-object v0, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;

    .line 225
    :try_start_0
    new-instance v0, Lledroid/root/LedroidServiceLauncher$LedroidServiceDied;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lledroid/root/LedroidServiceLauncher$LedroidServiceDied;-><init>(Lledroid/root/LedroidServiceLauncher$1;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_1
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized initialize(Lledroid/app/LedroidApplication;Z)V
    .locals 3
    .param p0, "application"    # Lledroid/app/LedroidApplication;
    .param p1, "delayInit"    # Z

    .prologue
    .line 30
    const-class v1, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "LedroidServiceLauncherError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lledroid/root/LedroidServiceLauncher;->sErrorPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz p1, :cond_0

    .line 56
    :goto_0
    monitor-exit v1

    return-void

    .line 37
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lledroid/root/LedroidServiceLauncher$1;

    invoke-direct {v2}, Lledroid/root/LedroidServiceLauncher$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isUpToDataLedroidService()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 164
    const-class v3, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 177
    .local v1, "runningVersion":I
    :cond_0
    :goto_0
    monitor-exit v3

    return v2

    .line 168
    .end local v1    # "runningVersion":I
    :cond_1
    const/4 v1, 0x0

    .line 170
    .restart local v1    # "runningVersion":I
    :try_start_1
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;

    invoke-interface {v4}, Lledroid/services/ILedroidService;->getVersionCode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 175
    :goto_1
    :try_start_2
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    invoke-virtual {v4}, Lledroid/root/res/NBJarFile;->updateIfNeed()V

    .line 177
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    invoke-virtual {v4}, Lledroid/root/res/NBJarFile;->getNewVersionCode()I

    move-result v4

    if-lt v1, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static laucherLocked()V
    .locals 1

    .prologue
    .line 132
    const-string v0, "--start-lenovo-server"

    invoke-static {v0}, Lledroid/root/LedroidServiceLauncher;->runServerCommand(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static declared-synchronized launchLedroidService()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 59
    const-class v6, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    if-nez v5, :cond_1

    .line 60
    const-string v5, "LedroidApplication"

    const-string v7, "LedroidApplication is Null! Cannot launch Ledroid Service."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v0, "androidResources":Lledroid/utils/AndroidResources;
    .local v1, "currentTimeMillis":J
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 65
    .end local v0    # "androidResources":Lledroid/utils/AndroidResources;
    .end local v1    # "currentTimeMillis":J
    :cond_1
    :try_start_1
    sget-object v5, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v5}, Lledroid/app/LedroidApplication;->hasRootPermission()Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    new-instance v5, Lledroid/root/RootPermissionException;

    const-string v7, "Need Root Permission to lauch ledroid service."

    invoke-direct {v5, v7}, Lledroid/root/RootPermissionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .restart local v0    # "androidResources":Lledroid/utils/AndroidResources;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 69
    .end local v0    # "androidResources":Lledroid/utils/AndroidResources;
    :cond_2
    :try_start_2
    new-instance v0, Lledroid/utils/AndroidResources;

    sget-object v5, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lledroid/utils/AndroidResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 70
    .restart local v0    # "androidResources":Lledroid/utils/AndroidResources;
    new-instance v5, Lledroid/root/res/NBJarFile;

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    const-string v8, "raw"

    const-string v9, "nb"

    invoke-virtual {v0, v8, v9}, Lledroid/utils/AndroidResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lledroid/root/res/NBJarFile;-><init>(Landroid/content/Context;ILjava/io/File;)V

    sput-object v5, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 73
    .restart local v1    # "currentTimeMillis":J
    sget-wide v7, Lledroid/root/LedroidServiceLauncher;->sLedroidServiceInitTime:J

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    sget-wide v7, Lledroid/root/LedroidServiceLauncher;->sLedroidServiceInitTime:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x3e8

    cmp-long v5, v7, v9

    if-ltz v5, :cond_0

    .line 77
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->getLedroidService()Lledroid/services/ILedroidService;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 78
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->isUpToDataLedroidService()Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    sget-object v5, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    invoke-virtual {v5}, Lledroid/root/res/NBJarFile;->getNewVersionCode()I

    move-result v5

    invoke-static {v5}, Lledroid/root/LedroidServiceLauncher;->removeAllOldVersionDex(I)V

    .line 82
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->stopLocked()V

    .line 86
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lledroid/root/LedroidServiceLauncher;->sLedroidServiceInitTime:J

    .line 88
    new-instance v4, Ljava/io/File;

    sget-object v5, Lledroid/root/LedroidServiceLauncher;->sErrorPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v4, "errFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :goto_1
    :try_start_4
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->laucherLocked()V

    .line 100
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->tryToWaitLenovoManagerRunning()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lledroid/root/LedroidServiceLauncher;->initNativeLedroidService(Landroid/os/IBinder;)V

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 104
    sget-object v5, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v5, v4}, Lledroid/app/LedroidApplication;->onLedroidServiceLaunchFailed(Ljava/io/File;)V

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static removeAllOldVersionDex(I)V
    .locals 11
    .param p0, "newVersion"    # I

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/dalvik-cache/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v7, Lledroid/root/LedroidServiceLauncher$2;

    invoke-direct {v7, p0}, Lledroid/root/LedroidServiceLauncher$2;-><init>(I)V

    invoke-virtual {v0, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "oldNBfiles":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 197
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    .line 199
    aget-object v7, v3, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    sget-object v7, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v7}, Lledroid/app/LedroidApplication;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v6

    .line 203
    .local v6, "shellTerminalController":Lledroid/root/ShellTerminalController;
    invoke-virtual {v6}, Lledroid/root/ShellTerminalController;->hasRootPermission()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    new-instance v5, Lledroid/root/ShellCommand;

    invoke-virtual {v6}, Lledroid/root/ShellTerminalController;->getRootTransport()Lledroid/root/ICommandTransport;

    move-result-object v7

    invoke-direct {v5, v7}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 206
    .local v5, "sc":Lledroid/root/ShellCommand;
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mount -oremount,rw /data /data"

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "mount -oremount,rw"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "/data"

    invoke-static {v10}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "/data"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "rm "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "mount -oremount,ro /data /data"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "mount -oremount,ro"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "/data"

    invoke-static {v10}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "/data"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    invoke-virtual {v7}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "sc":Lledroid/root/ShellCommand;
    .end local v6    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :cond_1
    :goto_1
    return-void

    .line 212
    .restart local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "sc":Lledroid/root/ShellCommand;
    .restart local v6    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static runServerCommand(Ljava/lang/String;)V
    .locals 8
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v4}, Lledroid/app/LedroidApplication;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v3

    .line 138
    .local v3, "shellTerminalController":Lledroid/root/ShellTerminalController;
    invoke-virtual {v3}, Lledroid/root/ShellTerminalController;->hasRootPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    new-instance v0, Lledroid/root/ShellCommand;

    invoke-virtual {v3}, Lledroid/root/ShellTerminalController;->getRootTransport()Lledroid/root/ICommandTransport;

    move-result-object v4

    invoke-direct {v0, v4}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 141
    .local v0, "cmd":Lledroid/root/ShellCommand;
    const-string v4, "LD_LIBRARY_PATH"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "ldLibraryPath":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 143
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "export"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    .line 148
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "export"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLASSPATH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->sNBJarFile:Lledroid/root/res/NBJarFile;

    invoke-virtual {v7}, Lledroid/root/res/NBJarFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/app_process"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "ledroid.server.LenovoServer"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p0, v5, v6

    const/4 v6, 0x4

    const-string v7, "2>"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->sErrorPath:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v4

    invoke-virtual {v4}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;

    .line 157
    .end local v0    # "cmd":Lledroid/root/ShellCommand;
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local v3    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :cond_0
    :goto_1
    return-void

    .line 145
    .restart local v0    # "cmd":Lledroid/root/ShellCommand;
    .restart local v2    # "ldLibraryPath":Ljava/lang/String;
    .restart local v3    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "export"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LD_LIBRARY_PATH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "cmd":Lledroid/root/ShellCommand;
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local v3    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static stopLocked()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "--stop-lenovo-server"

    invoke-static {v0}, Lledroid/root/LedroidServiceLauncher;->runServerCommand(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private static tryToWaitLenovoManagerRunning()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->waitSomeTime()V

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "cnt":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 121
    const-string v2, "lenovo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->waitSomeTime()V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-object v0
.end method

.method private static waitSomeTime()V
    .locals 2

    .prologue
    .line 111
    :goto_0
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
