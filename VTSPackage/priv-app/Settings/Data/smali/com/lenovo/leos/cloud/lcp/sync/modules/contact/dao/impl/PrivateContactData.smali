.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;
.super Ljava/lang/Object;
.source "PrivateContactData.java"


# static fields
.field private static final PERSISIT_CHECKSUM_MAP_FILE_NAME:Ljava/lang/String; = "checksumMap.obj"

.field private static final PERSISIT_CONTACT_PORTRAIT_FILE_NAME:Ljava/lang/String; = "contactPortrait.obj"

.field private static final PERSISIT_DB_FILE_NAME:Ljava/lang/String; = "syncV2.obj"

.field private static final TAG:Ljava/lang/String; = "PrivateContactData"

.field private static checksumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ">;"
        }
    .end annotation
.end field

.field private static contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

.field private static contactPortraitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    .line 39
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    .line 41
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 294
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    .line 295
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    if-nez v0, :cond_0

    .line 296
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->currentUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    .line 294
    :cond_2
    monitor-exit v1

    .line 305
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static checkInitVdata()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->vrMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->vrMap:Ljava/util/Map;

    .line 178
    :cond_0
    return-void
.end method

.method public static declared-synchronized clearContactSid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 266
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit v1

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearData(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v2

    :try_start_0
    const-string v1, "syncV2.obj"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 473
    const-string v1, "checksumMap.obj"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 474
    const-string v1, "contactPortrait.obj"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    .line 479
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    .line 480
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    :goto_0
    monitor-exit v2

    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "PrivateContactData"

    const-string v3, "Unexcepted exception in clearData"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 478
    const/4 v1, 0x0

    :try_start_3
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    .line 479
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    .line 480
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 477
    :catchall_1
    move-exception v1

    .line 478
    const/4 v3, 0x0

    :try_start_4
    sput-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    .line 479
    const/4 v3, 0x0

    sput-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    .line 480
    const/4 v3, 0x0

    sput-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;

    .line 481
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static clearRawContactVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInitVdata()V

    .line 167
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->vrMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    return-void
.end method

.method public static declared-synchronized containsContactSid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized delContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 256
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit v1

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized delContactSid(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 245
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit v1

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized delGroupSid(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->cgMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static delRawContactVersion(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInitVdata()V

    .line 155
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->vrMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public static declared-synchronized getClonedContactData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getClonedGroupData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->cgMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getContactChecksumMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 279
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    monitor-exit v2

    return v1

    .line 283
    :cond_1
    :try_start_1
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 284
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 279
    .end local v0    # "cid":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getContactPortrait(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # Ljava/lang/Integer;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 339
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getContactPortraitMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 220
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getGroupCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 107
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    monitor-exit v2

    return v1

    .line 111
    :cond_1
    :try_start_1
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->cgMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 107
    .end local v0    # "cid":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getGroupSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->cgMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRawContactVersion(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInitVdata()V

    .line 142
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->vrMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->initSidDb(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->initChecksumMap(Landroid/content/Context;)V

    .line 351
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->initContactPortraitMap(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method private static initChecksumMap(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    const/4 v3, 0x0

    .line 372
    .local v3, "pfis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 374
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    const-string v4, "checksumMap.obj"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 375
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    new-array v4, v7, [Ljava/io/Closeable;

    .line 380
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 381
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .line 383
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    new-array v4, v7, [Ljava/io/Closeable;

    .line 380
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 381
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 380
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 381
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 382
    throw v4

    .line 379
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 377
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static initContactPortraitMap(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    const/4 v3, 0x0

    .line 388
    .local v3, "pfis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 390
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    const-string v4, "contactPortrait.obj"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 391
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    new-array v4, v7, [Ljava/io/Closeable;

    .line 396
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 397
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .line 399
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    new-array v4, v7, [Ljava/io/Closeable;

    .line 396
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 397
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 396
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 397
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 398
    throw v4

    .line 395
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 393
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static initSidDb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "pfis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 358
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    const-string v4, "syncV2.obj"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 359
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    new-array v4, v7, [Ljava/io/Closeable;

    .line 364
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 365
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .line 367
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    invoke-direct {v4, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    new-array v4, v7, [Ljava/io/Closeable;

    .line 364
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 365
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 364
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 365
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 366
    throw v4

    .line 363
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 361
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static persist(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->writeSidDb(Landroid/content/Context;)V

    .line 403
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->writeChecksumMap(Landroid/content/Context;)V

    .line 404
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->writeContactPortrait(Landroid/content/Context;)V

    .line 405
    return-void
.end method

.method public static declared-synchronized saveContactPortrait(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactPortrait"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 334
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->rawContactId:Ljava/lang/Integer;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit v1

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setContactChecksumMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "checksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    sput-object p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit v1

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setContactSid(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 233
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->ctMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit v1

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setGroupSid(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->cgMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v1

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setRawContactVersion(Landroid/content/Context;IILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "version"    # I
    .param p3, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checkInitVdata()V

    .line 128
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;->vrMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method private static writeChecksumMap(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 443
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v1, 0x0

    .line 432
    .local v1, "ois":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 434
    .local v3, "pfis":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "checksumMap.obj"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 435
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .local v2, "ois":Ljava/io/ObjectOutputStream;
    :try_start_1
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->checksumMap:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    new-array v4, v7, [Ljava/io/Closeable;

    .line 440
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 441
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "PrivateContactData"

    const-string v5, "Unexcepted exception in writeChecksumMap"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    new-array v4, v7, [Ljava/io/Closeable;

    .line 440
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 441
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 439
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 440
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 441
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 442
    throw v4

    .line 439
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ois":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 437
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ois":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method private static writeContactPortrait(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 446
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 462
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v1, 0x0

    .line 451
    .local v1, "ois":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 453
    .local v3, "pfis":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "contactPortrait.obj"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 454
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .local v2, "ois":Ljava/io/ObjectOutputStream;
    :try_start_1
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactPortraitMap:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    new-array v4, v7, [Ljava/io/Closeable;

    .line 459
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 460
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "PrivateContactData"

    const-string v5, "Unexcepted exception in writeSidDb"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    new-array v4, v7, [Ljava/io/Closeable;

    .line 459
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 460
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 459
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 460
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 461
    throw v4

    .line 458
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ois":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 456
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ois":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method private static writeSidDb(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    if-nez v4, :cond_0

    .line 424
    :goto_0
    return-void

    .line 412
    :cond_0
    const/4 v1, 0x0

    .line 413
    .local v1, "ois":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 415
    .local v3, "pfis":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "syncV2.obj"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 416
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .local v2, "ois":Ljava/io/ObjectOutputStream;
    :try_start_1
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->contactMappingData:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/PrivateData;

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 420
    new-array v4, v7, [Ljava/io/Closeable;

    .line 421
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 422
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "PrivateContactData"

    const-string v5, "Unexcepted exception in writeSidDb"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    new-array v4, v7, [Ljava/io/Closeable;

    .line 421
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 422
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 421
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 422
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 423
    throw v4

    .line 420
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ois":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 418
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ois":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
