.class public Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "RestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/RestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadSafeConnManager"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 618
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 619
    return-void
.end method


# virtual methods
.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 6
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 627
    const-string v3, "org.jets3t.service.JetS3tProperties"

    invoke-interface {p1, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/Jets3tProperties;

    .line 629
    .local v2, "props":Lorg/jets3t/service/Jets3tProperties;
    const/16 v0, 0x14

    .line 630
    .local v0, "maxConn":I
    const/4 v1, 0x0

    .line 631
    .local v1, "maxConnectionsPerHost":I
    if-eqz v2, :cond_0

    .line 632
    const-string v3, "httpclient.max-connections"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 633
    const-string v3, "httpclient.max-connections-per-host"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    .line 637
    :cond_0
    if-nez v1, :cond_1

    .line 638
    move v1, v0

    .line 640
    :cond_1
    iget-object v3, p0, Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-virtual {v3, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    .line 641
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v4, p0, Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    iget-object v5, p0, Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v3, v4, v5, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/params/ConnPerRoute;I)V

    return-object v3
.end method
