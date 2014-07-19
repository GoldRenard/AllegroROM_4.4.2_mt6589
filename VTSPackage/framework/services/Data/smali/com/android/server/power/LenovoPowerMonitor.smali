.class public Lcom/android/server/power/LenovoPowerMonitor;
.super Ljava/lang/Object;
.source "LenovoPowerMonitor.java"


# static fields
.field private static final CABC_OFF_LEVEL:I = 0x28

.field private static final CABC_ON_LEVEL:I = 0x55

.field private static final MAX_CORE_SET_FILE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/hotplug/cpu_num_limit"

.field private static final TAG:Ljava/lang/String; = "LenovoPowerMonitor"

.field private static final TPD_BOOST_CPU_CORES:Ljava/lang/String; = "/sys/module/tpd_debug/parameters/tpd_boost_cpu_cores"

.field private static final TP_TURBO_OFF_LIST:Ljava/util/ArrayList;

.field private static final package_action:Ljava/lang/String; = "action.boardcast.resume.activity.info"


# instance fields
.field private currentPackageName:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCabcOn:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentCABCStates:I

.field private mIsTpBoostModeChanged:Z

.field private mIslightModeChanged:Z

.field private mScreenBrightness:I

.field private mService:Lcom/android/server/power/PowerManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/server/power/LenovoPowerMonitor$1;

    invoke-direct {v0}, Lcom/android/server/power/LenovoPowerMonitor$1;-><init>()V

    sput-object v0, Lcom/android/server/power/LenovoPowerMonitor;->TP_TURBO_OFF_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->currentPackageName:Ljava/lang/String;

    .line 65
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mScreenBrightness:I

    .line 66
    iput-boolean v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mIslightModeChanged:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mIsTpBoostModeChanged:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCurrentCABCStates:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCabcOn:Z

    .line 157
    new-instance v0, Lcom/android/server/power/LenovoPowerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/LenovoPowerMonitor$2;-><init>(Lcom/android/server/power/LenovoPowerMonitor;)V

    iput-object v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/server/power/LenovoPowerMonitor;->mService:Lcom/android/server/power/PowerManagerService;

    .line 120
    const-string v0, "LenovoPowerMonitor"

    const-string v1, "LenovoPowerMonitor() init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/LenovoPowerMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LenovoPowerMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/power/LenovoPowerMonitor;->executePackageChange(Ljava/lang/String;)V

    return-void
.end method

.method private static echo2File(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {p0}, Lcom/android/server/power/LenovoPowerMonitor;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    :goto_0
    return v2

    .line 101
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 102
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 105
    const-string v3, "LenovoPowerMonitor"

    const-string v4, "file write successed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v2, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    const-string v3, "LenovoPowerMonitor"

    const-string v4, "file write failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTPBoost(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 181
    const-string v0, "LenovoPowerMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTPBoost,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_0

    .line 183
    const-string v0, "/sys/module/tpd_debug/parameters/tpd_boost_cpu_cores"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/LenovoPowerMonitor;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/module/tpd_debug/parameters/tpd_boost_cpu_cores"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/LenovoPowerMonitor;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized executePackageChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/LenovoPowerMonitor;->isPackageChange(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    const-string v0, "LenovoPowerMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package changed: current package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCabcOn:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/power/LenovoPowerMonitor;->setCABC(Ljava/lang/String;)V

    .line 239
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/power/LenovoPowerMonitor;->judgeLowPowerMode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPackageChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 246
    :cond_1
    iput-object p1, p0, Lcom/android/server/power/LenovoPowerMonitor;->currentPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private judgeLowPowerMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 210
    sget-object v0, Lcom/android/server/power/LenovoPowerMonitor;->TP_TURBO_OFF_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, v1}, Lcom/android/server/power/LenovoPowerMonitor;->enableTPBoost(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mIsTpBoostModeChanged:Z

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mIsTpBoostModeChanged:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/LenovoPowerMonitor;->enableTPBoost(Z)Z

    .line 218
    iput-boolean v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mIsTpBoostModeChanged:Z

    goto :goto_0
.end method

.method private limitCPUCoreNum(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 175
    const-string v0, "LenovoPowerMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCoreNum,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "/sys/devices/system/cpu/cpufreq/hotplug/cpu_num_limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/LenovoPowerMonitor;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    return-void
.end method

.method public static readEchoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCABC(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 191
    const-string v1, "persist.sys.cabcswitch"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 192
    .local v0, "cabcSwitch":Z
    if-nez v0, :cond_1

    .line 193
    const-string v1, "LenovoPowerMonitor"

    const-string v2, "cabc switch off, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v1, "com.android.gallery3d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.scg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.scgmtk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    :cond_2
    iget v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCurrentCABCStates:I

    if-eq v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService;->setCabc(I)V

    .line 200
    iput v2, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCurrentCABCStates:I

    goto :goto_0

    .line 203
    :cond_3
    iget v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCurrentCABCStates:I

    if-eq v1, v3, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService;->setCabc(I)V

    .line 205
    iput v3, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCurrentCABCStates:I

    goto :goto_0
.end method


# virtual methods
.method public initReceiver()V
    .locals 3

    .prologue
    .line 124
    const-string v1, "LenovoPowerMonitor"

    const-string v2, "initReceiver() init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action.boardcast.resume.activity.info"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LenovoPowerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public notifybrightness(I)V
    .locals 2
    .param p1, "bright"    # I

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCabcOn:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    if-gt p1, v0, :cond_1

    .line 145
    iput-boolean v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCabcOn:Z

    .line 146
    iget-object v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService;->setCabc(I)V

    .line 147
    const-string v0, "LenovoPowerMonitor"

    const-string v1, "brightness is low, turn off cabc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCabcOn:Z

    if-nez v0, :cond_0

    const/16 v0, 0x55

    if-le p1, v0, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCabcOn:Z

    .line 150
    iget-object v0, p0, Lcom/android/server/power/LenovoPowerMonitor;->mService:Lcom/android/server/power/PowerManagerService;

    iget v1, p0, Lcom/android/server/power/LenovoPowerMonitor;->mCurrentCABCStates:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService;->setCabc(I)V

    .line 151
    const-string v0, "LenovoPowerMonitor"

    const-string v1, "brightness is high, turn on cabc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
