.class public Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
.super Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
.source "ServerRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 34
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorCode"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 40
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    .line 29
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->errorCode:I

    return v0
.end method
