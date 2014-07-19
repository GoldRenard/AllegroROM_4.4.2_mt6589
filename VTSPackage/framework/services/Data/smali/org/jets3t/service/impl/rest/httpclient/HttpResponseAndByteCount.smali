.class public Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
.super Ljava/lang/Object;
.source "HttpResponseAndByteCount.java"


# instance fields
.field private final byteCount:J

.field private final httpResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;J)V
    .locals 0
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "byteCount"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 39
    iput-wide p2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->byteCount:J

    .line 40
    return-void
.end method


# virtual methods
.method public getByteCount()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->byteCount:J

    return-wide v0
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method
