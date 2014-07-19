.class public Lorg/jets3t/service/S3ServiceException;
.super Lorg/jets3t/service/ServiceException;
.source "S3ServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0x3fc37069fefd4516L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/jets3t/service/ServiceException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "xmlMessage"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/ServiceException;)V
    .locals 3
    .param p1, "se"    # Lorg/jets3t/service/ServiceException;

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getXmlMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setResponseHeaders(Ljava/util/Map;)V

    .line 66
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setResponseCode(I)V

    .line 67
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getResponseStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setResponseStatus(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getResponseDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setResponseDate(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getRequestVerb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setRequestVerb(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getRequestPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setRequestPath(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lorg/jets3t/service/ServiceException;->getRequestHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/ServiceException;->setRequestHost(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getS3ErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getS3ErrorHostId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/jets3t/service/ServiceException;->getErrorHostId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getS3ErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/jets3t/service/ServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getS3ErrorRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/jets3t/service/ServiceException;->getErrorRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
