.class public Lorg/jets3t/service/model/cloudfront/InvalidationList;
.super Ljava/lang/Object;
.source "InvalidationList.java"


# instance fields
.field private invalidationSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/InvalidationSummary;",
            ">;"
        }
    .end annotation
.end field

.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxItems:I

.field private nextMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;)V
    .locals 1
    .param p1, "marker"    # Ljava/lang/String;
    .param p2, "nextMarker"    # Ljava/lang/String;
    .param p3, "maxItems"    # I
    .param p4, "isTruncated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/InvalidationSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "invalidationSummaries":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/InvalidationSummary;>;"
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->marker:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->nextMarker:Ljava/lang/String;

    .line 28
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->maxItems:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->isTruncated:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->invalidationSummaries:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->marker:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->nextMarker:Ljava/lang/String;

    .line 38
    iput p3, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->maxItems:I

    .line 39
    iput-boolean p4, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->isTruncated:Z

    .line 40
    iput-object p5, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->invalidationSummaries:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getInvalidationSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/InvalidationSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->invalidationSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->maxItems:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvalidationList: marker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->marker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->nextMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->maxItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/InvalidationList;->isTruncated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", invalidationSummaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/InvalidationList;->invalidationSummaries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
