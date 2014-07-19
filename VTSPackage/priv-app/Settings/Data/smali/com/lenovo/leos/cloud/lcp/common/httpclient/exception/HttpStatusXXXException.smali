.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpException;
.source "HttpStatusXXXException.java"


# static fields
.field protected static final HTTP_STATUS_400:I = 0x190

.field protected static final HTTP_STATUS_401:I = 0x191

.field protected static final HTTP_STATUS_403:I = 0x193

.field protected static final HTTP_STATUS_404:I = 0x194

.field protected static final HTTP_STATUS_405:I = 0x195

.field protected static final HTTP_STATUS_500:I = 0x1f4

.field protected static final HTTP_STATUS_600:I = 0x258

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpException;-><init>()V

    .line 16
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->statusCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpException;-><init>(Ljava/lang/String;)V

    .line 21
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->statusCode:I

    .line 22
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->statusCode:I

    .line 30
    return-void
.end method
