.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpException;
.source "HttpAbortException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
