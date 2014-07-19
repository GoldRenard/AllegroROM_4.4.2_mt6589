.class public final Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
.super Ljava/lang/Object;
.source "LcpConfigHub.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;


# instance fields
.field private context:Landroid/content/Context;

.field private lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->$assertionsDisabled:Z

    .line 10
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    return-void

    .line 7
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call init before call this method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->context:Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 75
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    return-object v0
.end method
