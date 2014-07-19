.class Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$2;
.super Ljava/lang/Object;
.source "LCPHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 80
    const/16 v0, 0xa

    return v0
.end method
