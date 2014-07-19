.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;
.super Ljava/util/Observable;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;
    }
.end annotation


# static fields
.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final KEY_RESULT_DESC:Ljava/lang/String; = "resultDescription"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->getResultDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deletePackage(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "deletePackage"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 74
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 88
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "PackInstaller"

    const-string v4, "No permission to invoke PackageManager.deletePackage"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    move v2, v3

    .line 88
    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "PackInstaller"

    const-string v4, "No such method: PackageManager.deletePackage"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "PackInstaller"

    const-string v4, "Illegal argument to invoke PackageManager.deletePackage"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "PackInstaller"

    const-string v4, "Illegal access to invoke PackageManager.deletePackage"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "PackInstaller"

    const-string v4, "Failed to invoke PackageManager.deletePackage"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getResultDescription(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 54
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 68
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :goto_1
    return-object v3

    .line 54
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_0
    aget-object v1, v2, v4

    .line 55
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, p2, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "PackInstaller"

    const-string v5, "No permission to invoke PackageManager.installPackage"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 62
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private installPackage(Landroid/net/Uri;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;ILjava/lang/String;)Z
    .locals 10
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "installPackage"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    aput-object v4, v3, v6

    const-class v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 34
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p4, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return v5
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "c"    # Ljava/lang/Object;
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public instatll(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pathFileApk"    # Ljava/lang/String;
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
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "installFlags":I
    if-eqz p2, :cond_0

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 97
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 98
    or-int/lit8 v0, v0, 0x2

    .line 99
    const-string v4, "PackInstaller"

    const-string v5, "Package already exsists, replace existing!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "mPackageURI":Landroid/net/Uri;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;)V

    .line 106
    .local v2, "observer":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->installPackage(Landroid/net/Uri;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;ILjava/lang/String;)Z

    move-result v4

    return v4

    .line 101
    .end local v1    # "mPackageURI":Landroid/net/Uri;
    .end local v2    # "observer":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 112
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public uninstall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;)V

    .line 117
    .local v0, "observer":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->deletePackage(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;I)Z

    move-result v1

    return v1
.end method
