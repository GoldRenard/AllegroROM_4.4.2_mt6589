.class public final Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;
.super Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;
.source "LCPSyncAPICloudImpl.java"


# static fields
.field private static syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;-><init>()V

    .line 19
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    .line 32
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    return-object v0
.end method


# virtual methods
.method public varargs sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V
    .locals 0
    .param p1, "syncTaskIDs"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;,
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 38
    return-void
.end method
