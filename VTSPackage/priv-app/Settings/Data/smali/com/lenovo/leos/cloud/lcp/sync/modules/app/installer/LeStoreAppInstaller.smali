.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;
.super Ljava/lang/Object;
.source "LeStoreAppInstaller.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PACKAGE_INSTALL_PERMISSION:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_PERMISSION"

.field public static final ACTION_SYNC_APP_INSTALL:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

.field private static final ACTION_SYNC_APP_INSTALL_FAIL:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_FAIL"

.field private static final ACTION_SYNC_APP_INSTALL_SUCCESS:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_ADDED"

.field private static final INSTALL_PARAMS_FILEPATH:Ljava/lang/String; = "filepath"

.field private static final INSTALL_PARAMS_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final INSTALL_PARAMS_PERMISSION:Ljava/lang/String; = "permission"

.field public static final INSTALL_PARAMS_RESULT_CODE:Ljava/lang/String; = "resultcode"

.field private static final INSTALL_PARAMS_VERSIONCODE:Ljava/lang/String; = "versioncode"

.field public static final LESTORE_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.leos.appstore"

.field private static final LESTORE_RESP_TIMEOUT:I = 0x3c


# instance fields
.field bContinueWait:Z

.field bLeStorePermissionGranted:Z

.field private callbackReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private currentPackageName:Ljava/lang/String;

.field private currentVersionCode:Ljava/lang/String;

.field installResult:I

.field private leStoreSurpportFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->leStoreSurpportFlag:I

    .line 77
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentVersionCode:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bContinueWait:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bLeStorePermissionGranted:Z

    .line 110
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installResult:I

    .line 35
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->callbackReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;Z)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->setLeStorePermissionGrantedFlag(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installCallback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private installCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentVersionCode:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bContinueWait:Z

    .line 155
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installResult:I

    .line 157
    :cond_0
    return-void
.end method

.method private isLeStoreSurpportSilentInstall()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->leStoreSurpportFlag:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 67
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->context:Landroid/content/Context;

    .line 68
    const-string v4, "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

    .line 67
    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isReceiverAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 69
    .local v0, "isSurpport":Z
    if-eqz v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->leStoreSurpportFlag:I

    .line 73
    .end local v0    # "isSurpport":Z
    :goto_1
    return v0

    .restart local v0    # "isSurpport":Z
    :cond_0
    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    .end local v0    # "isSurpport":Z
    :cond_1
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->leStoreSurpportFlag:I

    if-ne v3, v1, :cond_2

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private registerInstallCallbackReceiver()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->callbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method private sendInstallBrodcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentPackageName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentVersionCode:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "installIntent":Landroid/content/Intent;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "versioncode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private setLeStorePermissionGrantedFlag(Z)V
    .locals 0
    .param p1, "granted"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bLeStorePermissionGranted:Z

    .line 161
    return-void
.end method

.method private unRegisterInstallCallbackReceiver()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->callbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private waitInstallEnd()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "bInstalled":Z
    iput-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bContinueWait:Z

    .line 115
    const/16 v4, -0x3e7

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installResult:I

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bLeStorePermissionGranted:Z

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "i":I
    :goto_0
    iget-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bContinueWait:Z

    if-eqz v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move v2, v3

    .line 135
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    :goto_1
    const-string v4, "DEBUG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LeStore status bLeStorePermissionGranted:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bLeStorePermissionGranted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installResult:I

    return v4

    .line 119
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_2
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_3

    iget-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->bLeStorePermissionGranted:Z

    if-nez v4, :cond_3

    move v2, v3

    .line 120
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 124
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 126
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->currentVersionCode:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    const/4 v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installResult:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 130
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->isLeStoreSurpportSilentInstall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    const/16 v0, -0x3e7

    .line 60
    :goto_0
    return v0

    .line 52
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->registerInstallCallbackReceiver()V

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->sendInstallBrodcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->waitInstallEnd()I

    move-result v0

    .line 59
    .local v0, "result":I
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->unRegisterInstallCallbackReceiver()V

    goto :goto_0
.end method
