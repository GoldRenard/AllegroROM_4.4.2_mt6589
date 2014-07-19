.class public Lcom/lenovo/lsf/account/PsCheckEnvUtil;
.super Ljava/lang/Object;
.source "PsCheckEnvUtil.java"


# static fields
.field private static final APK_NAME_ICS:Ljava/lang/String; = "com.lenovo.lsf"

.field static bInstallICS:I

.field private static bPackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput v0, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bInstallICS:I

    .line 17
    sput-boolean v0, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bPackage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canSsoLogin(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 49
    sget-boolean v3, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isNoUi:Z

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 55
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.lenovo.lsf"

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "V3.5."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "V4.0.0."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "V4.0.5."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isLeCloudHelper(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 61
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isICSApkInstalled(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 20
    sget-boolean v6, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isNoUi:Z

    if-eqz v6, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v4

    .line 23
    :cond_1
    sget v6, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bInstallICS:I

    if-ne v6, v5, :cond_2

    move v4, v5

    goto :goto_0

    .line 24
    :cond_2
    sget v6, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bInstallICS:I

    if-eq v6, v8, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 28
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "com.lenovo.lsf"

    const/16 v7, 0x40

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 30
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v7, "V3.5."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v7, "V4.0.0."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v7, "V4.0.5."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 31
    :cond_3
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "username":Ljava/lang/String;
    if-eqz v3, :cond_0

    move v4, v5

    .line 35
    goto :goto_0

    .line 38
    .end local v3    # "username":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    sput v6, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bInstallICS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 39
    goto :goto_0

    .line 41
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    sput v8, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bInstallICS:I

    goto :goto_0
.end method

.method static isLeCloudHelper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "com.lenovo.leos.cloud.sync"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v2, 0x1

    .line 79
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
