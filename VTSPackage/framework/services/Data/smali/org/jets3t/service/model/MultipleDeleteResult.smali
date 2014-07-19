.class public Lorg/jets3t/service/model/MultipleDeleteResult;
.super Ljava/lang/Object;
.source "MultipleDeleteResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;,
        Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;
    }
.end annotation


# instance fields
.field protected deletedObjectResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;",
            ">;"
        }
    .end annotation
.end field

.field protected errorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "deletedObjectResults":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;>;"
    .local p2, "errorResults":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jets3t/service/model/MultipleDeleteResult;->deletedObjectResults:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lorg/jets3t/service/model/MultipleDeleteResult;->errorResults:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getDeletedObjectResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult;->deletedObjectResults:Ljava/util/List;

    return-object v0
.end method

.method public getErrorResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult;->errorResults:Ljava/util/List;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/jets3t/service/model/MultipleDeleteResult;->getErrorResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeletedObjectResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "deletedObjectResults":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;>;"
    iput-object p1, p0, Lorg/jets3t/service/model/MultipleDeleteResult;->deletedObjectResults:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setErrorResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "errorResults":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;>;"
    iput-object p1, p0, Lorg/jets3t/service/model/MultipleDeleteResult;->errorResults:Ljava/util/List;

    .line 68
    return-void
.end method
