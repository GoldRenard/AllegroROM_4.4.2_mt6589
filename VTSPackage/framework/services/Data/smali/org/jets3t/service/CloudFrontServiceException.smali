.class public Lorg/jets3t/service/CloudFrontServiceException;
.super Ljava/lang/Exception;
.source "CloudFrontServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0x2b91abc29c356edaL


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorDetail:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private errorType:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    .line 33
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    .line 33
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMessage"    # Ljava/lang/String;
    .param p6, "errorDetail"    # Ljava/lang/String;
    .param p7, "errorRequestId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    .line 33
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    .line 44
    iput p2, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    .line 45
    iput-object p3, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    .line 33
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    .line 33
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-super {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudFrontServiceException: httpResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontServiceException;->errorRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
