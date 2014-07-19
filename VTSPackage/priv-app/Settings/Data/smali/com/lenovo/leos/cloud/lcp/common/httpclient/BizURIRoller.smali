.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
.source "BizURIRoller.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bizUrl:Ljava/lang/String;

.field private lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private lpsust:Ljava/lang/String;

.field private realmId:Ljava/lang/String;

.field private ssl:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uris"    # [Ljava/lang/String;
    .param p2, "bizUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->bizUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V
    .locals 1
    .param p1, "uris"    # [Ljava/lang/String;
    .param p2, "bizUrl"    # Ljava/lang/String;
    .param p3, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .param p4, "realmId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-interface {p3, p4}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 43
    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->realmId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uris"    # [Ljava/lang/String;
    .param p2, "bizUrl"    # Ljava/lang/String;
    .param p3, "lpsust"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lpsust:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getLpsustUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string v0, ""

    .line 69
    .local v0, "lpsustUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lpsust:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 79
    .end local v0    # "lpsustUrl":Ljava/lang/String;
    .local v1, "lpsustUrl":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 73
    .end local v1    # "lpsustUrl":Ljava/lang/String;
    .restart local v0    # "lpsustUrl":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->bizUrl:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&lpsust="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lpsust:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 79
    .end local v0    # "lpsustUrl":Ljava/lang/String;
    .restart local v1    # "lpsustUrl":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v1    # "lpsustUrl":Ljava/lang/String;
    .restart local v0    # "lpsustUrl":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?lpsust="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lpsust:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized roll(Ljava/lang/Exception;)Ljava/net/URI;
    .locals 5
    .param p1, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->realmId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->lpsust:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 54
    .local v1, "serverUri":Ljava/net/URI;
    if-nez v1, :cond_1

    .line 55
    const/4 v2, 0x0

    .line 63
    :goto_0
    monitor-exit p0

    return-object v2

    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "serverAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->ssl:Z

    if-eqz v2, :cond_2

    .line 60
    const-string v2, "http:"

    const-string v3, "https:"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->bizUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->getLpsustUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 49
    .end local v0    # "serverAddress":Ljava/lang/String;
    .end local v1    # "serverUri":Ljava/net/URI;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setSsl(Z)V
    .locals 1
    .param p1, "ssl"    # Z

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->ssl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
