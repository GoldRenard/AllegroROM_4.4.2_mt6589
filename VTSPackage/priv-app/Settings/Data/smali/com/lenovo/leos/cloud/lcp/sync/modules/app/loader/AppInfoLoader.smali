.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;
.super Ljava/lang/Object;
.source "AppInfoLoader.java"


# static fields
.field private static apps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCache(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)V
    .locals 2
    .param p0, "pName"    # Ljava/lang/String;
    .param p1, "localAppInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .prologue
    .line 96
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public static getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 112
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .line 114
    .local v0, "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->isMoved(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    .end local v0    # "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :goto_0
    return-object v0

    .line 117
    .restart local v0    # "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_0
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v0    # "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    .line 124
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    .line 125
    .local v2, "tryToLoad":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    if-eqz v2, :cond_3

    .line 126
    invoke-static {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->addCache(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)V

    move-object v0, v2

    .line 127
    goto :goto_0

    .line 120
    .end local v2    # "tryToLoad":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_2
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMoved(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Z
    .locals 4
    .param p0, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadLocalApp(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "containSysApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    return-object v2

    .line 42
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;

    .line 44
    .local v0, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 47
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .end local v0    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static localAppInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;>;"
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 30
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    return-object v2

    .line 30
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;

    .line 31
    .local v0, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static localAppList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "containSysApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 60
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 61
    const/4 v5, 0x0

    .line 92
    :cond_0
    return-object v5

    .line 63
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 66
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    .line 70
    .local v6, "systemApp":Z
    sget-object v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    iget-object v9, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 71
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    .line 76
    .local v2, "localAppInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    :goto_1
    if-eqz v2, :cond_2

    .line 80
    if-nez v6, :cond_4

    .line 81
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "pName":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->apps:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 84
    invoke-static {v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->addCache(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)V

    goto :goto_0

    .line 73
    .end local v2    # "localAppInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v3    # "pName":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->newAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    .restart local v2    # "localAppInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    goto :goto_1

    .line 87
    :cond_4
    if-eqz p1, :cond_2

    .line 88
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 143
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 144
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 145
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->newAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 150
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
