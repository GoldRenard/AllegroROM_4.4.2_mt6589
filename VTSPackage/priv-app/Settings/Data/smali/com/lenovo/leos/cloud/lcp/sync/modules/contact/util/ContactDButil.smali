.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;
.super Ljava/lang/Object;
.source "ContactDButil.java"


# static fields
.field public static final DB_COMMIT_SIZE:I = 0x32


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static commitOperations(Landroid/content/Context;Ljava/util/List;)[Landroid/content/ContentProviderResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 44
    .local v1, "result":[Landroid/content/ContentProviderResult;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 36
    return-object v1

    .line 37
    .end local v1    # "result":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 39
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    throw v2

    .line 40
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 42
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static readLastServerVersion(Landroid/content/Context;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    .line 55
    const-string v0, "CONTACT_LAST_SYNC_SERVER_VERSION2"

    const-wide/16 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static writeLastServerVersion(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # J

    .prologue
    .line 49
    .line 50
    const-string v0, "CONTACT_LAST_SYNC_SERVER_VERSION2"

    .line 49
    invoke-static {p0, v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51
    return-void
.end method
