.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
.source "HttpStatus50XException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;-><init>(I)V

    .line 8
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code should between 500 and 599 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    return-void
.end method
