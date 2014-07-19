.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;
.super Ljava/lang/RuntimeException;
.source "LocalAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedAppInfoException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x38511d7e644dec24L


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 264
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;->result:I

    .line 265
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;->errorMsg:Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;->result:I

    return v0
.end method
