.class public Lcom/lenovo/lsf/lds/QueryAddressRequest;
.super Lcom/lenovo/lsf/http/AbstractHttpRequest;
.source "QueryAddressRequest.java"


# static fields
.field private static final URL_LDS_PATH:Ljava/lang/String; = "addr/1.0/query?"


# instance fields
.field private context:Landroid/content/Context;

.field private ldsDefault:Ljava/lang/String;

.field private serverAddr:Lcom/lenovo/lsf/lds/ServerAddress;

.field private serverDate:J

.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/http/AbstractHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 23
    const-string v0, "http://lds.lenovomm.com/"

    iput-object v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->ldsDefault:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->context:Landroid/content/Context;

    .line 26
    iput-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->serverAddr:Lcom/lenovo/lsf/lds/ServerAddress;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->serverDate:J

    .line 28
    iput-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->sid:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->sid:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getLdsDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->ldsDefault:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->ldsDefault:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "addr/1.0/query?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string v2, "sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string v2, "&didt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lsf/common/Device;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string v2, "&did="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lsf/common/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/lds/QueryAddressRequest;->generateGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    return-object v1
.end method

.method public getServerAddress()Lcom/lenovo/lsf/lds/ServerAddress;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->serverAddr:Lcom/lenovo/lsf/lds/ServerAddress;

    return-object v0
.end method

.method public getServerDate()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->serverDate:J

    return-wide v0
.end method

.method protected handleError(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/http/RequestFailedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    and-int/lit16 v0, v0, 0x190

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    .line 104
    new-instance v0, Lcom/lenovo/lsf/http/RequestFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknow Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method

.method protected handleSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/http/RequestFailedException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lsf/lds/ServerAddress;->parse(Ljava/lang/String;)Lcom/lenovo/lsf/lds/ServerAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->serverAddr:Lcom/lenovo/lsf/lds/ServerAddress;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/apache/http/ParseException;
    new-instance v1, Lcom/lenovo/lsf/http/RequestFailedException;

    const-string v2, "Parsing response for request ST failed"

    invoke-direct {v1, v2, v0}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/lenovo/lsf/http/RequestFailedException;

    const-string v2, "Reading response for request ST failed"

    invoke-direct {v1, v2, v0}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLdsDefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "ldsDefault"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->ldsDefault:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setServerAddress(Lcom/lenovo/lsf/lds/ServerAddress;)V
    .locals 0
    .param p1, "addr"    # Lcom/lenovo/lsf/lds/ServerAddress;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/lsf/lds/QueryAddressRequest;->serverAddr:Lcom/lenovo/lsf/lds/ServerAddress;

    .line 48
    return-void
.end method
