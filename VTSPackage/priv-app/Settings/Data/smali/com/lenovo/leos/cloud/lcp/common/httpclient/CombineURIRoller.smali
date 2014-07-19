.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;
.super Ljava/lang/Object;
.source "CombineURIRoller.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private rootRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private subUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V
    .locals 1
    .param p1, "rootRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "subUri"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->rootRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 20
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->subUri:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public roll(Ljava/lang/Exception;)Ljava/net/URI;
    .locals 3
    .param p1, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->rootRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-interface {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object v0

    .line 26
    .local v0, "rootUri":Ljava/net/URI;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->subUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    goto :goto_0
.end method
