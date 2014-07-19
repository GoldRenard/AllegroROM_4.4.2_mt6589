.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;
.super Ljava/lang/RuntimeException;
.source "ValidateErrorException.java"


# static fields
.field private static final serialVersionUID:J = -0x1933fd62fcc0b6a4L


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->result:I

    .line 14
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->errorMsg:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;->result:I

    return v0
.end method
