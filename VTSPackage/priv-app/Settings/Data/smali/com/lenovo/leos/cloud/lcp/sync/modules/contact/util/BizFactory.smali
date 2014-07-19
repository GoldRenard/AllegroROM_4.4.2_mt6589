.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;
.super Ljava/lang/Object;
.source "BizFactory.java"


# static fields
.field private static inst:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->inst:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->inst:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->inst:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->inst:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->I()Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->backupSimCardContact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>(Landroid/content/Context;)V

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
