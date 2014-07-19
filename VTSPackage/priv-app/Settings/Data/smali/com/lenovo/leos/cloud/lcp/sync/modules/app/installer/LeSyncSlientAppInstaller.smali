.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;
.super Ljava/lang/Object;
.source "LeSyncSlientAppInstaller.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_WAIT_COUNT:I = 0x258

.field private static final INSTALL_WAIT_STEP_TIME:I = 0x64


# instance fields
.field bContinueWait:Z

.field bInstallResult:I

.field private context:Landroid/content/Context;

.field private pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bContinueWait:Z

    .line 78
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bInstallResult:I

    .line 22
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->installCallback(I)V

    return-void
.end method

.method private installCallback(I)V
    .locals 1
    .param p1, "installResult"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bContinueWait:Z

    .line 97
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bInstallResult:I

    .line 98
    return-void
.end method

.method private isLeSyncSurpportSilentInstall()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->context:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private slientInstall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 59
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->instatll(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    return-void
.end method

.method private waitInstallEnd()I
    .locals 5

    .prologue
    .line 80
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bContinueWait:Z

    .line 81
    const/16 v3, -0x3e7

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bInstallResult:I

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "i":I
    :goto_0
    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bContinueWait:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/16 v3, 0x258

    if-lt v1, v3, :cond_1

    move v1, v2

    .line 91
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->bInstallResult:I

    return v3

    .line 85
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 86
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    const/4 v1, 0x6

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 33
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->isLeSyncSurpportSilentInstall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    const/16 v1, -0x3e7

    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->slientInstall(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->waitInstallEnd()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 44
    .local v1, "installResult":I
    goto :goto_0
.end method

.method public unInstatll(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->pi:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->uninstall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
