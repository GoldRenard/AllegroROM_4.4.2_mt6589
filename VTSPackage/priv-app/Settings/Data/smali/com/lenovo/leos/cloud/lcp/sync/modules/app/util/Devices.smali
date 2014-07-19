.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;
.super Ljava/lang/Object;
.source "Devices.java"


# static fields
.field private static final DIRECTORY_DOWNLOADS:Ljava/lang/String; = "data/com.lenovo.leos.cloud.sync/apps"

.field private static final TAG:Ljava/lang/String; = "Devices"

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

.field public static dpi:Ljava/lang/String;

.field public static iconHeight:I

.field public static iconWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    .line 40
    const-string v0, "mdpi"

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->dpi:Ljava/lang/String;

    .line 51
    sput v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->iconWidth:I

    .line 52
    sput v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->iconHeight:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method private static addCache(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)V
    .locals 2
    .param p0, "pName"    # Ljava/lang/String;
    .param p1, "localAppInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .prologue
    .line 286
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method public static getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 308
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .line 310
    .local v0, "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isMoved(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    .end local v0    # "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :goto_0
    return-object v0

    .line 313
    .restart local v0    # "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_0
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v0    # "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    .line 320
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    .line 321
    .local v2, "tryToLoad":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    if-eqz v2, :cond_3

    .line 322
    invoke-static {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->addCache(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)V

    move-object v0, v2

    .line 323
    goto :goto_0

    .line 316
    .end local v2    # "tryToLoad":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_2
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 326
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDownloadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getInternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 408
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getExternalFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 412
    :cond_0
    return-object v0
.end method

.method public static getDownloadFile(Ljava/lang/String;J)Ljava/io/File;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "fileSize"    # J

    .prologue
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getInternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 395
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getExternalAvailable()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 396
    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getExternalFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 399
    :cond_0
    return-object v0
.end method

.method public static getExternalAppDataDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 429
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string v1, "data/com.lenovo.leos.cloud.sync/apps"

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 434
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalAvailable()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 175
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 176
    .local v0, "AvailableSize":Ljava/lang/Long;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 179
    .local v1, "dir":Ljava/io/File;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getFileSize(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v0

    .line 182
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public static getExternalFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "defaultFile"    # Ljava/io/File;

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    const-string v2, "data/com.lenovo.leos.cloud.sync/apps"

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 442
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 445
    :cond_0
    new-instance p1, Ljava/io/File;

    .end local p1    # "defaultFile":Ljava/io/File;
    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    return-object p1
.end method

.method private static getFileSize(Ljava/io/File;)Ljava/lang/Long;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 187
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 190
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 191
    .local v0, "availableBlocks":J
    mul-long v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 193
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v5

    :cond_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0
.end method

.method private static getInternalFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getPhoneAppDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 417
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 420
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v2, "zh-CN"

    .line 140
    .local v2, "lang":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 142
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :goto_0
    return-object v2

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "language":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "language":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMBSize(J)D
    .locals 4
    .param p0, "size"    # J

    .prologue
    .line 362
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 363
    .local v0, "byteSize":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    const/high16 v2, 0x100000

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 364
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 363
    return-wide v1
.end method

.method public static getPhoneAppDataDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 425
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.lenovo.leos.cloud.sync/apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 265
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 266
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 267
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 268
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    const/4 v3, 0x1

    .line 276
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return v3

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Devices"

    const-string v5, "APP not installed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDownload(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)Z
    .locals 5
    .param p0, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .param p1, "version"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .prologue
    .line 452
    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getDownloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 454
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 456
    const/4 v1, 0x1

    .line 464
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMoved(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Z
    .locals 4
    .param p0, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .prologue
    .line 336
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

.method public static isReceiverAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 516
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 518
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 522
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 302
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static localAppList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
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
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 237
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 258
    return-object v4

    .line 239
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 240
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 241
    .local v5, "systemApp":Z
    const/4 v2, 0x0

    .line 244
    .local v2, "localAppInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    sget-object v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->apps:Ljava/util/Map;

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    .line 250
    :goto_1
    if-eqz v2, :cond_0

    .line 254
    if-nez v5, :cond_0

    if-nez p1, :cond_0

    .line 255
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_2
    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->newAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    goto :goto_1
.end method

.method public static tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 383
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 384
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->newAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 386
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method
