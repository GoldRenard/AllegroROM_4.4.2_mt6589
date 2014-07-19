.class public final Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;
.super Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;
.source "LCPSyncAPILocalImpl.java"


# static fields
.field private static syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;-><init>()V

    .line 17
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/LocalDispatcher;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/LocalDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    .line 18
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;->syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;->syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;

    .line 29
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;->syncApi:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPILocalImpl;

    return-object v0
.end method
