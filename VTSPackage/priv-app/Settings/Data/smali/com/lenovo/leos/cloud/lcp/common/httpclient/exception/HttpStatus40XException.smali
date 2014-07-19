.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
.source "HttpStatus40XException.java"


# static fields
.field public static final HTTP_AUTH_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

.field public static final HTTP_FORBIDDEN_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;-><init>(I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;->HTTP_AUTH_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    .line 7
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    const/16 v1, 0x193

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;-><init>(I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;->HTTP_FORBIDDEN_EXCEPTION:Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;-><init>(I)V

    .line 11
    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code should between 400 and 499 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    return-void
.end method
