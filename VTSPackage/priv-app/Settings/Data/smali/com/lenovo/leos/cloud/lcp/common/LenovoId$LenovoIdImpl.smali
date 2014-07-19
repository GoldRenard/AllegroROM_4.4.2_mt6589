.class public Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;
.super Ljava/lang/Object;
.source "LenovoId.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/LenovoId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LenovoIdImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getSt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "realmId"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "realmId"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
