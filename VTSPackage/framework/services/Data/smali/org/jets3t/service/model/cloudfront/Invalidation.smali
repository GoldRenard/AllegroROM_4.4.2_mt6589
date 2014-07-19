.class public Lorg/jets3t/service/model/cloudfront/Invalidation;
.super Ljava/lang/Object;
.source "Invalidation.java"


# instance fields
.field private callerReference:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private objectKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->id:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->status:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->createTime:Ljava/util/Date;

    .line 29
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->callerReference:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->objectKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCallerReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->callerReference:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->objectKeys:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setCallerReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "callerReference"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->callerReference:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->createTime:Ljava/util/Date;

    .line 54
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setObjectKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "objectKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->objectKeys:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->status:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidation: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->createTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callerReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->callerReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", objectKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Invalidation;->objectKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
