.class public Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
.super Ljava/lang/Object;
.source "BatchResult.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/FileResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;,
        Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;
    }
.end annotation


# instance fields
.field private result:I

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->resultList:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->result:I

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->resultList:Ljava/util/List;

    return-object v0
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->result:I

    .line 20
    return-void
.end method

.method public setResultObjectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->resultList:Ljava/util/List;

    .line 16
    return-void
.end method
